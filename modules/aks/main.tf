resource "azurerm_storage_account" "this" {
  name                     = random_string.storage_account.result
  resource_group_name      = module.cluster.node_resource_group
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

  namespace      = var.namespace
  profiles       = var.profiles

  extra_yaml = [ templatefile("${path.module}/values.yaml", {
    loki_container_name = azurerm_storage_container.loki.name,
    loki_account_name   = azurerm_storage_account.this.name,
    loki_account_key    = azurerm_storage_account.this.primary_access_key,
  }) ]
}
