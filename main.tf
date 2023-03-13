provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "dev_rg" {
  name     = "Dev-RG"
  location = "West Europe"
}