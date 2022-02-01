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

  cluster_info     = var.cluster_info

  namespace = var.namespace

  extra_yaml = concat([templatefile("${path.module}/values.tmpl.yaml", {
    loki_container_name = azurerm_storage_container.loki.name,
    loki_account_name   = azurerm_storage_account.this.name,
    loki_account_key    = azurerm_storage_account.this.primary_access_key,
  })], var.extra_yaml)
}
