terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"

    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "electricwizard3456263"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

