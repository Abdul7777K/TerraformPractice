terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }

  backend "azurerm" {
    resource_group_name                = var.resource_group_name
    storage_account_name               = var.storage_account_name
    container_name                     = var.container_name
    key                                = var.key
}
}

provider "azurerm" {
  # Configuration optionss
  #  client_id = var
  #  tenant_id = 
  #  subscription_id = 
  features {
  }
}

module "RG" {
    source = "./ResourceGroups"
}
