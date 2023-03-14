locals {
  helm_values = [var.distributed_mode ? {
    loki-distributed = {
      loki = {
        schemaConfig  = local.schema_config
        storageConfig = local.storage_config
        structuredConfig = {
          compactor = {
            shared_store      = "azure"
            working_directory = "/var/loki"
          }
        }
      }
    }
    } : null, var.distributed_mode ? null : {
    loki-stack = {
      loki = {
        config = {
          schema_config  = local.schema_config
          storage_config = local.storage_config
        }
      }
    }
  }]

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
    azure = {
      container_name  = var.logs_storage.container
      account_name    = var.logs_storage.storage_account
      request_timeout = "180s"
      max_retries     = 50
      min_retry_delay = "1s"
      max_retry_delay = "5s"
    }
    boltdb_shipper = {
      shared_store = "azure"
    }
  }
}
