locals {
  use_managed_identity = var.logs_storage.managed_identity_node_rg_name != null

  helm_values = [{
    loki-distributed = merge(local.use_managed_identity ? {
      serviceAccount = {
        annotations = {
          "azure.workload.identity/client-id" = azurerm_user_assigned_identity.loki[0].client_id
        }
      }
      } : null, {
      loki = merge(local.use_managed_identity ? {
        podLabels = {
          "azure.workload.identity/use" = "true"
        }
        } : null, {
        schemaConfig = {
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
        storageConfig = {
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
        structuredConfig = {
          compactor = {
            shared_store = "azure"
          }
        }
      })
    })
  }]
}
