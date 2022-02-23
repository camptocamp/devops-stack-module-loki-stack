resource "aws_s3_bucket" "loki" {
  force_destroy = true

  tags = {
    Name        = "Loki"
    Environment = var.cluster_name
  }
}

data "aws_region" "current" {}

module "iam_assumable_role_loki" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version                       = "4.0.0"
  create_role                   = true
  number_of_role_policy_arns    = 1
  role_name                     = format("loki-%s", var.cluster_name)
  provider_url                  = replace(var.cluster_oidc_issuer_url, "https://", "")
  role_policy_arns              = [aws_iam_policy.loki.arn]
  oidc_fully_qualified_subjects = ["system:serviceaccount:loki-stack:loki-stack"]
}

resource "aws_iam_policy" "loki" {
  name_prefix = "loki"
  description = "EKS loki policy for cluster ${var.cluster_name}"
  policy      = data.aws_iam_policy_document.loki.json
}

# As per https://grafana.com/docs/loki/latest/operations/storage/#s3
data "aws_iam_policy_document" "loki" {
  statement {
    actions = [
      "s3:ListBucket",
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
    ]

    resources = [
      aws_s3_bucket.loki.arn,
      format("%s/*", aws_s3_bucket.loki.arn),
    ]

    effect = "Allow"
  }
}


module "loki-stack" {
  source = "../"

  cluster_name     = var.cluster_name
  base_domain      = var.base_domain
  argocd_namespace = var.argocd_namespace

  namespace = var.namespace

  extra_yaml = concat([templatefile("${path.module}/values.tmpl.yaml", {
    aws_default_region = data.aws_region.current.name,
    bucket_name        = aws_s3_bucket.loki.id,
    assumable_role_arn = module.iam_assumable_role_loki.iam_role_arn,
  })], var.extra_yaml)
}
