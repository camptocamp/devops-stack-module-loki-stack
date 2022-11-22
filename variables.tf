#######################
## Standard variables
#######################

variable "cluster_name" {
  type = string
}

variable "base_domain" {
  type = string
}

variable "argocd_namespace" {
  type = string
}

variable "target_revision" {
  description = "Override of target revision of the application chart."
  type        = string
  default     = "v1.0.0-alpha.1" # x-release-please-version
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
  type = map(string)

  default = {}
}

#######################
## Module variables
#######################

variable "loki" {
  description = "Most frequently used Loki settings. This variable is merged with the local value `loki_defaults`, which contains some sensible defaults. You can check the default values on the link:./local.tf[`local.tf`] file. If there still is anything other that needs to be customized, you can always pass on configuration values using the variable `helm_values`."
  type        = any
  default     = {}
}
