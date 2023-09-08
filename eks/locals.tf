locals {
  helm_values = [{
    loki-distributed = {
      loki = {
        schemaConfig = {
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
        storageConfig = {
          aws = {
            s3 = "s3://${var.logs_storage.region}/${var.logs_storage.bucket_id}"
          }
          boltdb_shipper = {
            shared_store = "s3"
          }
        }
        structuredConfig = {
          compactor = {
            working_directory = "/data/compactor"
            shared_store      = "s3"
          }
        }
      }
      serviceAccount = {
        create = true
        annotations = {
          "eks.amazonaws.com/role-arn" = var.logs_storage.iam_role_arn
        }
      }
    }
  }]
}
