terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "aks" {
  for_each = var.environments

  source              = "./modules/aks"
  environment         = each.key
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  kubernetes_version  = each.value.kubernetes_version
  node_count          = each.value.node_count
}
