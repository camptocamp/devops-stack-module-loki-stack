#######################
## Standard variables
#######################

variable "cluster_name" {
  type    = string
  default = null
}

variable "base_domain" {
  type    = string
  default = null
}

variable "argocd_namespace" {
  type    = string
  default = "argocd"
}

variable "target_revision" {
  description = "Override of target revision of the application chart."
  type        = string
  default     = "v1.0.0-alpha.3" # x-release-please-version
}

variable "namespace" {
  type    = string
  default = "loki-stack"
}

variable "helm_values" {
  description = "Helm chart value overrides. They should be passed as a list of HCL structures."
  type        = any
  default     = []
}

variable "dependency_ids" {
  type    = map(string)
  default = {}
}

#######################
## Module variables
#######################

variable "distributed_mode" {
  description = "Deploy Loki in distributed mode"
  type        = bool
  default     = false
}
