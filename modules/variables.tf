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

variable "namespace" {
  type    = string
  default = "loki-stack"
}

variable "extra_yaml" {
  type    = list(string)
  default = []
}

#######################
## Module variables
#######################
