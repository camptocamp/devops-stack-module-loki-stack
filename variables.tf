#######################
## Standard variables
#######################

variable "argocd_project" {
  description = "Name of the Argo CD AppProject where the Application should be created. If not set, the Application will be created in a new AppProject only for this Application."
  type        = string
  default     = null
}

variable "argocd_labels" {
  description = "Labels to attach to the Argo CD Application resource."
  type        = map(string)
  default     = {}
}

variable "destination_cluster" {
  description = "Destination cluster where the application should be deployed."
  type        = string
  default     = "in-cluster"
}

variable "target_revision" {
  description = "Override of target revision of the application chart."
  type        = string
  default     = "v10.0.0" # x-release-please-version
}

variable "enable_service_monitor" {
  description = "Enable Prometheus ServiceMonitor in the Helm chart."
  type        = bool
  default     = true
}

variable "helm_values" {
  description = "Helm chart value overrides. They should be passed as a list of HCL structures."
  type        = any
  default     = []
}

variable "app_autosync" {
  description = "Automated sync options for the Argo CD Application resource."
  type = object({
    allow_empty = optional(bool)
    prune       = optional(bool)
    self_heal   = optional(bool)
  })
  default = {
    allow_empty = false
    prune       = true
    self_heal   = true
  }
}

variable "dependency_ids" {
  description = "IDs of the other modules on which this module depends on."
  type        = map(string)
  default     = {}
}

#######################
## Module variables
#######################

variable "resources" {
  description = <<-EOT
    Resource limits and requests for Loki's components. Follow the style on https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/[official documentation] to understand the format of the values.

    IMPORTANT: These are not production values. You should always adjust them to your needs.
  EOT
  type = object({

    ingester = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    distributor = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    querier = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    query_frontend = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    query_scheduler = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    compactor = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "512Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "1Gi")
      }), {})
    }), {})

    index_gateway = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "1Gi")
      }), {})
    }), {})

    memcached_chunks = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    memcached_frontend = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    memcached_index_queries = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    memcached_index_writes = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})

    promtail = optional(object({
      requests = optional(object({
        cpu    = optional(string, "100m")
        memory = optional(string, "256Mi")
      }), {})
      limits = optional(object({
        cpu    = optional(string)
        memory = optional(string, "512Mi")
      }), {})
    }), {})
  })
  default = {}
}

variable "ingress" {
  description = "Loki frontend ingress configuration."
  type = object({
    hosts          = list(string)
    cluster_issuer = string
    allowed_ips    = optional(list(string), [])
  })
  default = null
}

variable "retention" {
  description = "Logs retention period. To deactivate retention, pass 0s."
  type        = string
  default     = "30d"

  validation {
    condition     = var.retention != null
    error_message = "Variable must not be null."
  }
}
