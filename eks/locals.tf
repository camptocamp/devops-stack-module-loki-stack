locals {
  iam_role_arn = var.logs_storage.create_role ? module.iam_assumable_role_loki.iam_role_arn : var.logs_storage.iam_role_arn

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
            s3 = "s3://${data.aws_s3_bucket.loki.region}/${data.aws_s3_bucket.loki.id}"
          }
          boltdb_shipper = {
            shared_store = "s3"
          }
        }
        structuredConfig = {
          compactor = {
            shared_store = "s3"
          }
        }
      }
      serviceAccount = {
        create = true
        annotations = {
          "eks.amazonaws.com/role-arn" = local.iam_role_arn
        }
      }
    }
  }]
}
