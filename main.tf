terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "miniconomy-2025"
    storage_account_name = "miniconomylgdr98"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "miniconomy_rg" {
  name     = var.resource_group_name
  location = var.location
  
  tags = local.common_tags
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "miniconomy${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.miniconomy_rg.name
  location                 = azurerm_resource_group.miniconomy_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = "false"
  tags                     = local.common_tags
}

resource "azurerm_dns_cname_record" "calendar_cname" {
  name                = "calendar"
  record              = "calendar.bbdgrad.com"
  
  zone_name           = data.azurerm_dns_zone.grad_projects_dns_zone.name
  resource_group_name = "the-hive"
  ttl                 = 3600
  tags                = local.common_tags
}