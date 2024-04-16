variable "logs_storage" {
  description = <<-EOT
    AWS S3 bucket configuration values for the bucket where the logs will be stored.

    An IAM role is required to give the Loki components read and write access to the S3 bucket. You can create this role yourself or let the module create it for you. If you want the module to create the role, you need to provide the OIDC issuer's URL for the EKS cluster. If you create the role yourself, you need to provide the ARN of the IAM role you created.
  EOT
  type = object({
    bucket_id               = string
    create_role             = bool
    iam_role_arn            = optional(string, null)
    cluster_oidc_issuer_url = optional(string, null)
  })

  validation {
    condition     = var.logs_storage.create_role ? var.logs_storage.cluster_oidc_issuer_url != null : var.logs_storage.iam_role_arn != null
    error_message = "If you want to create a role, you need to provide the OIDC issuer's URL for the EKS cluster. Otherwise, you need to provide the ARN of the IAM role you created."
  }
}
