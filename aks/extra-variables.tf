variable "resource_group_name" {
  description = "The Resource Group where the Managed Kubernetes Cluster should exist."
  type        = string
}

variable "logs_storage" {
  description = "Azure Blob Storage configuration values for the storage container where the logs will be stored."
  type = object({
    container_name       = string
    storage_account_name = string
    storage_account_key  = string
  })
  sensitive = true
}
