locals {
  helm_values = [{
    loki-stack = {
      loki = {
        config = {
          schema_config = {
            configs = [
              {
                from         = "2020-10-24"
                store        = "boltdb-shipper"
                object_store = "s3"
                schema       = "v11"
                index = {
                  prefix = "index_"
                  period = "24h"
                }
              }
            ]
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
        }
        serviceAccount = {
          annotations = {
            "eks.amazonaws.com/role-arn" = var.logs_storage.iam_role_arn
          }
        }
      }
    }
  }]
}
