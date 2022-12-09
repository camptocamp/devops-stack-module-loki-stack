variable "logs_storage" {
  description = "Azure Log storage configuration"
  type = object({
    container_name       = string
    storage_account_name = string
    storage_account_key  = string
  })
}
