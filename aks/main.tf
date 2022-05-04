data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

data "azurerm_subscription" "primary" {
}

resource "random_string" "storage_account" {
  length  = 24
  lower   = true
  upper   = false
  special = false
}

resource "azurerm_storage_account" "this" {
  name                     = random_string.storage_account.result
  resource_group_name      = data.azurerm_resource_group.this.name
  location                 = data.azurerm_resource_group.this.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_storage_container" "loki" {
  name                  = "loki"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}

module "loki-stack" {
  source = "../"

  cluster_name     = var.cluster_name
  base_domain      = var.base_domain
  argocd_namespace = var.argocd_namespace
  namespace        = var.namespace
  helm_values      = concat(local.helm_values, var.helm_values)
  dependency_ids   = var.dependency_ids
}
