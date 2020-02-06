# Configure the Azure provider
provider "azurerm" {
  version = "~>1.42.0"
  use_msi = true
}

# Create a new resource group
resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "eastus"
}
