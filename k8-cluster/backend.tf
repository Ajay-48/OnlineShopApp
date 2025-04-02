terraform {
  backend "azurerm" {
    resource_group_name  = "terraformBackend-rg"
    storage_account_name = "tfbackendsc"
    container_name       = "tfstatefiles"
    key                  = "aks/terraform.tfstate"
  }
}