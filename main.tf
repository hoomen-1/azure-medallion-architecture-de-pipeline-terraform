terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "medallion-project"
  location = "Switzerlandnorth"
}

resource "azurerm_storage_account" "sa" {
  name                     = "medallionstorage0b01"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_storage_container" "bronze" {
  name                  = "bronzeraw"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "silver" {
  name                  = "silverclean"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "gold" {
  name                  = "goldbusiness"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}