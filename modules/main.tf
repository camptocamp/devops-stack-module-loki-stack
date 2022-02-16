resource "argocd_project" "this" {
  metadata {
    name      = "loki-stack"
    namespace = var.argocd_namespace
    annotations = {
      "devops-stack.io/argocd_namespace" = var.argocd_namespace
    }
  }

  spec {
    description  = "loki-stack application project"
    source_repos = ["https://github.com/camptocamp/devops-stack-module-loki-stack.git"]

    destination {
      server    = "https://kubernetes.default.svc"
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
  input = local.all_yaml
}

resource "argocd_application" "this" {
  metadata {
    name      = "loki-stack"
    namespace = var.argocd_namespace
  }

  spec {
    project = argocd_project.this.metadata.0.name

    source {
      repo_url        = "https://github.com/camptocamp/devops-stack-module-loki-stack.git"
      path            = "charts/loki-stack"
      target_revision = "main"
      helm {
        values = data.utils_deep_merge_yaml.values.output
      }
    }

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = var.namespace
    }

    sync_policy {
      automated = {
        prune     = true
        self_heal = true
      }

      sync_options = [
        "CreateNamespace=true"
      ]
    }
  }
}
