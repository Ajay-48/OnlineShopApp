output "kube_config" {
  description = "The raw kubeconfig for the AKS cluster."
  value       = module.aks.kube_config
  sensitive   = true
}
output "aks_cluster_name" {
  description = "The name of the AKS cluster."
  value       = module.aks.aks_cluster_name
}
output "resource_group_name" {
  description = "The name of the resource group in which the AKS cluster is created."
  value       = azurerm_resource_group.rg.name
}
output "acr_name" {
  description = "The name of the Azure Container Registry."
  value       = module.acr.acr_name
}