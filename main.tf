terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "dev_rg" {
  name     = var.namerg
  location = "West Europe"
}