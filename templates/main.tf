terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0, < 4.0.0"
    }
  }
}

provider "azurerm" {
  features {
  }
}

# Resource Groups

resource "azurerm_resource_group" "hub-rg" {
  name     = "hub-rg"
  location = var.azure_location
}

resource "azurerm_resource_group" "app1-rg" {
  name     = "app1-rg"
  location = var.azure_location
}

resource "azurerm_resource_group" "app2-rg" {
  name     = "app2-rg"
  location = var.azure_location
}
