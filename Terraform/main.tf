provider "azurerm" {
  features {}
}
variable "prefix" {
  default = "project"
}

resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-resources"
  location = "uksouth"
}
module "azurerm_VM" {
    source = "./VM"
    resource_group_name = azurerm_resource_group.main.name
    resource_group_location = azurerm_resource_group.main.location
    prefix = var.prefix
}

module "azure_ScaleSet" {
    source = "./ScaleSet"
    resource_group_name = azurerm_resource_group.main.name
    resource_group_location = azurerm_resource_group.main.location
    subnet_id = module.azurerm_VM.subnet_id
}
