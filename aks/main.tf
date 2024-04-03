# This null_resource is required otherwise Terraform would try to read the resource group data and/or the storage 
# account even if they were not created yet. 
resource "null_resource" "dependencies" {
  triggers = var.dependency_ids
}

data "azurerm_resource_group" "node_resource_group" {
  count = local.use_managed_identity ? 1 : 0

  name = var.logs_storage.managed_identity_node_rg_name

  depends_on = [
    resource.null_resource.dependencies
  ]
}

data "azurerm_storage_container" "container" {
  count = local.use_managed_identity ? 1 : 0

  name                 = var.logs_storage.container
  storage_account_name = var.logs_storage.storage_account

  depends_on = [
    resource.null_resource.dependencies
  ]
}

resource "azurerm_user_assigned_identity" "loki" {
  count = local.use_managed_identity ? 1 : 0

  name                = "loki"
  resource_group_name = data.azurerm_resource_group.node_resource_group[0].name
  location            = data.azurerm_resource_group.node_resource_group[0].location
}

resource "azurerm_role_assignment" "storage_contributor" {
  count = local.use_managed_identity ? 1 : 0

  scope                = data.azurerm_storage_container.container[0].resource_manager_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_user_assigned_identity.loki[0].principal_id
}

resource "azurerm_federated_identity_credential" "loki" {
  count = local.use_managed_identity ? 1 : 0

  name                = "loki"
  resource_group_name = data.azurerm_resource_group.node_resource_group[0].name
  audience            = ["api://AzureADTokenExchange"]
  issuer              = var.logs_storage.managed_identity_oidc_issuer_url
  parent_id           = azurerm_user_assigned_identity.loki[0].id
  subject             = "system:serviceaccount:loki-stack:loki" # "loki" is the fullnameOverride value
}

module "loki-stack" {
  source = "../"

  argocd_project      = var.argocd_project
  argocd_labels       = var.argocd_labels
  destination_cluster = var.destination_cluster
  target_revision     = var.target_revision
  app_autosync        = var.app_autosync
  dependency_ids      = var.dependency_ids

  resources = var.resources
  retention = var.retention
  ingress   = var.ingress

  helm_values = concat(local.helm_values, var.helm_values)
}
