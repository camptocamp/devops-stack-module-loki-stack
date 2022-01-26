variable "storage_account_tier" {
  description = "Storage account tier used for storing loki logs"
  default     = "Standard"
  type        = string
}

variable "storage_account_replication_type" {
  description = "Storage account replication type for storing loki logs"
  default     = "GRS"
  type        = string
}

variable "resource_group_name" {
  description = "The Resource Group where the Managed Kubernetes Cluster should exist."
  type        = string
}
