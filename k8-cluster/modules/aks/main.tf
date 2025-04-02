resource "azurerm_kubernetes_cluster" "aks" {
    name                = var.cluster_name
    location            = var.location
    resource_group_name = var.resource_group_name
    dns_prefix          = var.cluster_name
    
    default_node_pool {
        name       = "default"
        node_count = var.node_count
        vm_size   = var.node_vm_size
    }
    auto_scaler_profile {
        scale_down_unneeded = "10m"
        scale_down_utilization_threshold = 0.5
    }
    identity {
        type = "SystemAssigned"
    }
    
    tags = {
        environment = var.environment
    }
    
}