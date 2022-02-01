module "loki-stack" {
  source = "../"

  cluster_info = var.cluster_info

  namespace      = var.namespace

  extra_yaml = concat([templatefile("${path.module}/values.tmpl.yaml", {
    cluster_info     = var.cluster_info,
    minio_access_key = var.minio.access_key,
    minio_secret_key = var.minio.secret_key,
  })], var.extra_yaml)
}
