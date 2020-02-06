terraform {
  backend "azurerm" {
    resource_group_name  = "tstate"
    storage_account_name = "tstate1811"
    container_name       = "tstate"
    key                  = "terraform.tfstate"
    use_msi              = true
    subscription_id      = "${var.subscription_id}"
    tenant_id            = "${var.tenant_id}"
  }
}
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
