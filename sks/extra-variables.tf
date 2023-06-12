variable "cluster_id" {
  description = "ID of the SKS cluster."
  type        = string
}

variable "logs_storage" {
  description = "Exoscale SOS bucket configuration values for the bucket where the logs will be stored."
  type = object({
    bucket_name = string
    region      = string
    access_key  = string
    secret_key  = string
  })
}
