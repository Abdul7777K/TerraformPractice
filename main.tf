terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }

  backend "azurerm" {
}
}

provider "azurerm" {


  features {
  }
  use_oidc = true

}

module "RG" {
    source = "./ResourceGroups"
}
