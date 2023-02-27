locals {
  helm_values = [var.distributed_mode ? {
    loki-distributed = {
      loki = {
        schemaConfig  = local.schema_config
        storageConfig = local.storage_config
        structuredConfig = {
          compactor = local.compactor
        }
        serviceAccount = local.service_account
      }
    }
    } : null, var.distributed_mode ? null : {
    loki-stack = {
      loki = {
        config = {
          ingester = {
            lifecycler = {
              ring = {
                kvstore = {
                  store = "memberlist"
                }
                replication_factor = 1
              }
              final_sleep = "0s"
            }
            chunk_idle_period   = "5m"
            chunk_retain_period = "30s"
          }
          schema_config  = local.schema_config
          storage_config = local.storage_config
          compactor      = local.compactor
        }
        serviceAccount = local.service_account
      }
    }
  }]

  schema_config = {
    configs = [{
      from         = "2020-10-24"
      store        = "boltdb-shipper"
      object_store = "s3"
      schema       = "v11"
      index = {
        prefix = "index_"
        period = "24h"
      }
    }]
  }

  storage_config = {
    aws = {
      s3 = "s3://${var.logs_storage.region}/${var.logs_storage.bucket_id}"
    }
    boltdb_shipper = {
      active_index_directory = "/data/loki/index"
      shared_store           = "s3"
      cache_location         = "/data/loki/boltdb-cache"
    }
  }

  compactor = {
    working_directory = "/data/compactor"
    shared_store      = "s3"
  }

  service_account = {
    create = true
    annotations = {
      "eks.amazonaws.com/role-arn" = var.logs_storage.iam_role_arn
    }
  }
}
