variable "logs_storage" {
  description = "Azure Log storage configuration"
  type = object({
    container           = string
    storage_account     = string
    storage_account_key = string
  })
}
