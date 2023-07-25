terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }

  backend "azurerm" {
    resource_group_name                = "RG-TerraForm-SA"
    storage_account_name               = "saterraform7"
    container_name                     = "tfstate"
    key                                = "terraform.tfstate"
    use_oidc                           = true
}
}

provider "azurerm" {
  # Configuration optionss
  #  client_id = var
  #  tenant_id = 
  #  subscription_id = 
  features {
  }
  use_oidc = true
}

module "RG" {
    source = "./ResourceGroups"
}
