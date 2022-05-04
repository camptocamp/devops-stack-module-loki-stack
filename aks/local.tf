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
              container_name = "${azurerm_storage_container.loki.name}"
              account_name   = "${azurerm_storage_account.this.name}"
              account_key    = "${azurerm_storage_account.this.primary_access_key}"
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
}
