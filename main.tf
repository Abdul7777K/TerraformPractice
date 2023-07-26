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

}

module "RG" {
    source = "./ResourceGroups"
}
