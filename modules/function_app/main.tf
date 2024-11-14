# Storage account for the Function App
resource "azurerm_storage_account" "storage" {
  name                     = "${var.name}funcstorage"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = "LRS"
}

# App Service Plan for the Linux Function App (using Consumption Plan)
resource "azurerm_service_plan" "function_app_plan" {
  name                = "${var.name}-function-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "Y1"

}

# Linux Function App
resource "azurerm_linux_function_app" "function_app" {
  name                       = "${var.name}-function"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
  service_plan_id            = azurerm_service_plan.function_app_plan.id
  https_only                 = true

  site_config {
  }

  app_settings = {
    FUNCTIONS_EXTENSION_VERSION = "~4"           # Specifies the Function runtime version
    FUNCTIONS_WORKER_RUNTIME    = "python"       # Or "node" depending on the application
  }
}
