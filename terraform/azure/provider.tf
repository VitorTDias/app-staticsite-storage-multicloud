terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.109.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-vitor-torto-001-tf"
    storage_account_name = "vitortorto001tf"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true
  alias                      = "cloud"
}