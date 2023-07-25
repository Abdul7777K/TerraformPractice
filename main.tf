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
    client_id = "35235280-c7c2-49a7-99c3-9dc48a54d919"
    tenant_id = "acbae620-8f3f-470a-ae82-6d8fc8b498d2"
  #  subscription_id = 
  features {
  }
  use_oidc = true
}

module "RG" {
    source = "./ResourceGroups"
}
