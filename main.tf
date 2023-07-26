terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }

  backend "azurerm" {
    use_oidc = true
    resource_group_name                = "RG-TerraForm-SA"
    storage_account_name               = "saterraform7"
    container_name                     = "tfstate"
    key                                = "terraform.tfstate"
}
}

provider "azurerm" {


  features {
  }

}

module "RG" {
    source = "./ResourceGroups"
}
