module "loki-stack" {
  source = "../"

  cluster_name     = var.cluster_name
  base_domain      = var.base_domain
  argocd_namespace = var.argocd_namespace
  target_revision  = var.target_revision
  namespace        = var.namespace
  dependency_ids   = var.dependency_ids

  distributed_mode = var.distributed_mode

  helm_values = concat(local.helm_values, var.helm_values)
}
