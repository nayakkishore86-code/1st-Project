terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "KK-rg"
    storage_account_name = "kkstorage12345"
    container_name       = "kkcontainer"
    key                  = "kk.tfstate"
  }
}

provider "azurerm" {
  features {}

}