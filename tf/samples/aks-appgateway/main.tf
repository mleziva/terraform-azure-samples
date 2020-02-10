provider "azurerm" {
    version = "~>1.18"
}

terraform {
    backend "azurerm" {}
}