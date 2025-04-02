output "kube_config" {
    description = "The raw kubeconfig for the AKS cluster."
    value     = azurerm_kubernetes_cluster.aks.kube_config_raw
    sensitive = true
}
output "aks_cluster_name" {
    description = "The name of the AKS cluster."
    value = azurerm_kubernetes_cluster.aks.name
}
output "resource_group_name" {
    description = "The name of the resource group in which the AKS cluster is created."
    value       = azurerm_resource_group.rg.name
}