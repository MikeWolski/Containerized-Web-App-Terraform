# Configure the Azure provider
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "7fdf605c-e6b5-4f51-b9c0-27d0799ce221"
}

# Resource Group Module
module "resource_group" {
  source               = "./modules/resource_group"
  location             = var.location
  name                 = var.resource_group_name
}

# ACR Module
module "acr" {
  source               = "./modules/acr"
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
  acr_sku              = "Basic"
}

# AKS Module
module "aks" {
  source               = "./modules/aks"
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
  node_count           = 1
  node_vm_size         = "Standard_B2s"
}

# Function App Module
module "function_app" {
  source               = "./modules/function_app"
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
  storage_account_tier = "Standard"
}

# Log Analytics Module
module "log_analytics" {
  source               = "./modules/log_analytics"
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
  name                 = "aks"
  retention_in_days    = 30
}

module "monitoring" {
  source                      = "./modules/monitoring"
  resource_group_name         = module.resource_group.name
  #log_analytics_workspace_id  = module.log_analytics.workspace_id
  aks_id                      = module.aks.id
  action_group_id             = azurerm_monitor_action_group.action_group.id
}


# Action Group for Alerts
resource "azurerm_monitor_action_group" "action_group" {
  name                = "aks-action-group"
  resource_group_name = module.resource_group.name
  short_name          = "aksalerts"

  email_receiver {
    name          = "Admin"
    email_address = "wolski17@gmail.com"
  }
}
