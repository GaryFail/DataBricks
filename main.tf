terraform {
  backend "azurerm" {
    resource_group_name  = "AzureDevOps"
    storage_account_name = "sa007azuredevops"
    container_name       = "data-bricks"
    key                  = "dev.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.41.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.prefix}-${var.location}-databricks"
  location = var.location
}