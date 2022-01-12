locals {
  profiles_yaml = [ for i in var.profiles : templatefile("${path.module}/profiles/${i}.yaml", {
  }) ]
  all_yaml = concat(local.profiles_yaml, var.extra_yaml)
}
