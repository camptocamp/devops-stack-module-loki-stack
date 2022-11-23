locals {
  helm_values = [{
    loki_stack = {
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
              bucketnames       = "${var.log_storage.bucket_name}"
              endpoint          = "${var.log_storage.endpoint}"
              access_key_id     = "${var.log_storage.access_key}"
              secret_access_key = "${var.log_storage.secret_access_key}"
              s3forcepathstyle  = true
              insecure          = true
              http_config = {
                idle_conn_timeout       = "90s"
                response_header_timeout = "0s"
                insecure_skip_verify    = true
              }
            }
            boltdb_shipper = {
              active_index_directory = "/data/loki/index"
              cache_location         = "/data/loki/index_cache"
              shared_store           = "s3"
            }
          }
          limits_config = {
            enforce_metric_name        = false
            reject_old_samples         = true
            reject_old_samples_max_age = "168h"
          }
          compactor = {
            working_directory   = "/data/compactor"
            shared_store        = "s3"
            compaction_interval = "5m"
          }
        }
      }
    }
  }]
}
