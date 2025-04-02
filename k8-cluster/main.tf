terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 4.24.0"
        }
    }
    
}
provider "azurerm" {
  
  subscription_id = "subscription_id"
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
module "aks" {
  source = "./modules/aks/main.tf"
  cluster_name = var.cluster_name
  resource_group_name = var.resource_group_name
  location = var.location
  node_count = var.node_count
  node_vm_size = var.node_vm_size
  tags = {
    environment = var.environment
  }
}
