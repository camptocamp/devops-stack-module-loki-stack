locals {
  default_yaml = [templatefile("${path.module}/values.tmpl.yaml", {
  })]
  all_yaml = concat(local.default_yaml, var.extra_yaml)
}
