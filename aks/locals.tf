locals {
  use_managed_identity = var.logs_storage.managed_identity_node_rg_name != null

  helm_values = [var.distributed_mode ? {
    loki-distributed = merge(local.use_managed_identity ? {
      serviceAccount = {
        annotations = {
          "azure.workload.identity/client-id" = azurerm_user_assigned_identity.loki[0].client_id
        }
      }
      } : null, {
      loki = merge(local.use_managed_identity ? {
        # version >= 2.8 is required for workload identity support. Current chart version uses loki 2.7.5.
        # TODO remove once chart uses a version >= 2.8.
        image = {
          tag = "2.8.0"
        }
        podLabels = {
          "azure.workload.identity/use" = "true"
        }
        } : null, {
        schemaConfig  = local.schema_config
        storageConfig = local.storage_config
        structuredConfig = {
          compactor = {
            shared_store      = "azure"
            working_directory = "/var/loki"
          }
        }
      })
    })
    } : null, var.distributed_mode ? null : {
    loki-stack = {
      loki = merge(local.use_managed_identity ? {
        # Current chart version uses loki 2.6.1.
        # TODO remove once chart uses a version >= 2.8.
        image = {
          tag = "2.8.0"
        }
        serviceAccount = {
          annotations = {
            "azure.workload.identity/client-id" = azurerm_user_assigned_identity.loki[0].client_id
          }
        }
        podLabels = {
          "azure.workload.identity/use" = "true"
        }
        } : null, {
        config = {
          schema_config  = local.schema_config
          storage_config = local.storage_config
        }
      })
    }
    }
  ]

  schema_config = {
    configs = [
      {
        from         = "2020-12-22"
        store        = "boltdb-shipper"
        object_store = "azure"
        schema       = "v11"
        index = {
          prefix = "index_"
          period = "24h"
        }
      }
    ]
  }

  storage_config = {
    azure = merge(local.use_managed_identity ? null : {
      account_key = var.logs_storage.storage_account_key
      }, local.use_managed_identity ? {
      use_federated_token = true
      } : null,
      {
        container_name  = var.logs_storage.container
        account_name    = var.logs_storage.storage_account
        request_timeout = "180s"
        max_retries     = 50
        min_retry_delay = "1s"
        max_retry_delay = "5s"
    })
    boltdb_shipper = {
      shared_store = "azure"
    }
  }
}
