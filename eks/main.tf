data "aws_s3_bucket" "loki" {
  bucket = var.logs_storage.bucket_id
}

# As per https://grafana.com/docs/loki/latest/operations/storage/#s3
data "aws_iam_policy_document" "loki" {
  count = var.logs_storage.create_role ? 1 : 0

  statement {
    actions = [
      "s3:ListBucket",
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
    ]

    resources = [
      data.aws_s3_bucket.loki.arn,
      format("%s/*", data.aws_s3_bucket.loki.arn),
    ]

    effect = "Allow"
  }
}

resource "aws_iam_policy" "loki" {
  count = var.logs_storage.create_role ? 1 : 0

  name_prefix = "loki-s3-"
  description = "Loki IAM policy for accessing the S3 bucket named ${data.aws_s3_bucket.loki.id}"
  policy      = data.aws_iam_policy_document.loki[0].json
}

module "iam_assumable_role_loki" {
  source                     = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version                    = "~> 5.0"
  create_role                = var.logs_storage.create_role
  number_of_role_policy_arns = 1
  role_name_prefix           = "loki-s3-"
  provider_url               = var.logs_storage.create_role ? trimprefix(var.logs_storage.cluster_oidc_issuer_url, "https://") : ""
  role_policy_arns           = [var.logs_storage.create_role ? resource.aws_iam_policy.loki[0].arn : null]

  # List of ServiceAccounts that have permission to attach to this IAM role
  oidc_fully_qualified_subjects = [
    "system:serviceaccount:loki-stack:loki",
  ]
}

module "loki-stack" {
  source = "../"

  argocd_project      = var.argocd_project
  argocd_labels       = var.argocd_labels
  destination_cluster = var.destination_cluster
  target_revision     = var.target_revision
  app_autosync        = var.app_autosync
  dependency_ids      = var.dependency_ids

  resources = var.resources
  retention = var.retention
  ingress   = var.ingress

  helm_values = concat(local.helm_values, var.helm_values)
}
