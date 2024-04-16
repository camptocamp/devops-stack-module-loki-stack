variable "logs_storage" {
  description = "Azure Blob Storage configuration for logs persistence."
  type = object({
    container                        = string
    storage_account                  = string
    managed_identity_node_rg_name    = optional(string, null)
    managed_identity_oidc_issuer_url = optional(string, null)
    storage_account_key              = optional(string, null)
  })

  validation {
    condition     = (var.logs_storage.managed_identity_node_rg_name == null && var.logs_storage.managed_identity_oidc_issuer_url == null) != (var.logs_storage.storage_account_key == null)
    error_message = "You can either set the variables for the managed identity or use a storage account key, not both at the same time."
  }

  validation {
    condition     = (var.logs_storage.managed_identity_node_rg_name == null) == (var.logs_storage.managed_identity_oidc_issuer_url == null)
    error_message = "When using the managed identity, both `managed_identity_node_rg_name` and `managed_identity_oidc_issuer_url` are required."
  }
}
