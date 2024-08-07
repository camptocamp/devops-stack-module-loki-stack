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
            bucketnames       = "${var.logs_storage.bucket_name}"
            region            = "${var.logs_storage.region}"
            endpoint          = "sos-${var.logs_storage.region}.exo.io"
            access_key_id     = "${var.logs_storage.access_key}"
            secret_access_key = "${var.logs_storage.secret_key}"
            s3forcepathstyle  = true
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
    }
  }]
}
