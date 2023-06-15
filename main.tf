resource "null_resource" "dependencies" {
  triggers = var.dependency_ids
}

resource "random_password" "loki_password" {
  count  = var.ingress != null ? 1 : 0
  length = 30
}

resource "htpasswd_password" "loki_password_hash" {
  count    = var.ingress != null ? 1 : 0
  password = random_password.loki_password.0.result
}

resource "argocd_project" "this" {
  metadata {
    name      = "loki-stack"
    namespace = var.argocd_namespace
    annotations = {
      "devops-stack.io/argocd_namespace" = var.argocd_namespace
    }
  }

  spec {
    description  = "Loki application project"
    source_repos = ["https://github.com/camptocamp/devops-stack-module-loki-stack.git"]

    destination {
      name      = "in-cluster"
      namespace = var.namespace
    }

    orphaned_resources {
      warn = true
    }

    cluster_resource_whitelist {
      group = "*"
      kind  = "*"
    }
  }
}

data "utils_deep_merge_yaml" "values" {
  input = [for i in concat(local.helm_values, var.helm_values) : yamlencode(i)]
}

resource "argocd_application" "this" {
  metadata {
    name      = "loki-stack"
    namespace = var.argocd_namespace
  }

  timeouts {
    create = "15m"
    delete = "15m"
  }

  wait = var.app_autosync == { "allow_empty" = tobool(null), "prune" = tobool(null), "self_heal" = tobool(null) } ? false : true

  spec {
    project = argocd_project.this.metadata.0.name

    source {
      repo_url        = "https://github.com/camptocamp/devops-stack-module-loki-stack.git"
      path            = format("charts/%s", var.distributed_mode ? "loki-microservice" : "loki-stack")
      target_revision = var.target_revision
      plugin {
        name = "avp-helm"
        env {
          name  = "HELM_VALUES"
          value = data.utils_deep_merge_yaml.values.output
        }
      }
    }

    destination {
      name      = "in-cluster"
      namespace = var.namespace
    }

    sync_policy {
      automated = var.app_autosync

      retry {
        backoff = {
          duration     = ""
          max_duration = ""
        }
        limit = "0"
      }

      sync_options = [
        "CreateNamespace=true"
      ]
    }
  }

  depends_on = [
    resource.null_resource.dependencies,
  ]
}

resource "null_resource" "this" {
  depends_on = [
    resource.argocd_application.this,
  ]
}
