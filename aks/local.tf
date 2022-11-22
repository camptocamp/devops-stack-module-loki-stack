locals {
  helm_values = [{
    loki-stack = {
      loki = {
        config = {
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
              },
            ]
          }
          storage_config = {
            azure = {
              container_name = "${local.loki.log_storage.container_name}"
              account_name   = "${local.loki.log_storage.storage_account}"
              account_key    = "${local.loki.log_storage.storage_account_key}"
            }
            boltdb_shipper = {
              active_index_directory = "/data/loki/index"
              shared_store           = "azure"
              cache_location         = "/data/loki/boltdb-cache"
            }
          }
        }
      }
    }
  }]

  loki_defaults = {}

  loki = merge(
    local.loki_defaults,
    var.loki,
  )
}
