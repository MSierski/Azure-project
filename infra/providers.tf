terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.89.0"
    }
  }
    backend "azurerm" {
    resource_group_name = "mateusz-resources"
    storage_account_name = "mateuszstoracc"
    container_name = "mateuszcontent"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}
