resource_group_name = "rg"
location            = "Central US"
cluster_name        = "myakscluster"
node_count          = 2
node_vm_size        = "Standard_B2s"
environment         = "dev"
acr_name            = "myacr0012"
sku                 = "Basic"

# Compare this snippet from modules/aks/main.tf:
# resource "azurerm_kubernetes_cluster" "aks" {
#     name                = var.cluster_name
#     location            = var.location
#     resource_group_name = var.resource_group_name
#     dns_prefix          = var.cluster_name 