# Configure the Azure provider
provider "azurerm" {
  version = "~>1.42.0"
  use_msi = true
}


# Create Resource Groups
resource "azurerm_resource_group" "resource-group-global" {
  name     = "rgp-global-contoso-${var.environment}"
  location = "Central US"
}


resource "azurerm_resource_group" "resource-group-westus" {
  name     = "rgp-westus-contoso-${var.environment}"
  location = "West US"
}


resource "azurerm_resource_group" "resource-group-eastus" {
  name     = "rgp-eastus-contoso-${var.environment}"
  location = "East US"
}
