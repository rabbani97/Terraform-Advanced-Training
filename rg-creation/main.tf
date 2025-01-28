# provider "azurerm" {
#   features {}
#   subscription_id = var.subscription_id
#   client_id       = var.client_id
# }

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

}

# resource "azurerm_storage_account" "example" {
#   name                     = var.storage_account_name
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = azurerm_resource_group.rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

# }


module "storage-account_1" {
  source               = "../modules/storage-account"
  storage_account_name = var.storage_account_name_1
  resource_group_name  = azurerm_resource_group.rg.name
  location             = azurerm_resource_group.rg.location
}

module "storage-account_2" {
  source               = "../modules/storage-account"
  storage_account_name = var.storage_account_name_2
  resource_group_name  = var.resource_group_name
  location             = var.location

}