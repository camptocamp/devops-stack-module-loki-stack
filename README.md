# devops-stack-module-loki-stack

A [DevOps Stack](https://devops-stack.io) module to deploy and configure [Loki](https://github.com/grafana/loki/tree/main/production/helm/loki-stack).


## Usage

## On K3S

```hcl
module "storage" {
  source = "git::https://github.com/camptocamp/devops-stack-module-minio.git//modules"

  cluster_info     = module.cluster.info
  cluster_issuer   = "ca-issuer"

  minio = {
    buckets = {
      loki = {}
      thanos = {}
    }
  }

  depends_on = [ module.monitoring ]
}

module "loki-stack" {
  source = "git::https://github.com/camptocamp/devops-stack-module-loki-stack.git//modules/k3s"

  cluster_info     = module.cluster.info

  minio = {
    access_key = module.storage.access_key
    secret_key = module.storage.secret_key
  }

  depends_on = [ module.monitoring, module.storage ]
}
```


## On EKS

```hcl
module "loki-stack" {
  source = "git::https://github.com/camptocamp/devops-stack-module-loki-stack.git//modules/eks"

  cluster_name     = var.cluster_name
  argocd_namespace = module.cluster.argocd_namespace
  base_domain      = module.cluster.base_domain

  cluster_oidc_issuer_url = module.cluster.cluster_oidc_issuer_url

  depends_on = [ module.monitoring ]
}
```
