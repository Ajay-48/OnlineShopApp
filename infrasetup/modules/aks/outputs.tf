output "kube_config" {
    description = "The raw kubeconfig for the AKS cluster."
    value     = azurerm_kubernetes_cluster.aks.kube_config
    sensitive = true
}
output "aks_cluster_name" {
    description = "The name of the AKS cluster."
    value = azurerm_kubernetes_cluster.aks.name
}
