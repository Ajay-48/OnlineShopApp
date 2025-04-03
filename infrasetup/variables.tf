variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster."
  type        = string
}
variable "location" {
  description = "The Azure region in which to create the AKS cluster."
  type        = string
}
variable "cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
}
variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
}
variable "node_vm_size" {
  description = "The size of the virtual machines in the AKS cluster."
  type        = string
}
variable "environment" {
  description = "The environment for the AKS cluster (e.g., dev, prod)."
  type        = string
}
variable "sku_name" {
  description = "The SKU name for the Azure Container Registry."
  type        = string
}
variable "sku_tier" {
  description = "The SKU tier for the Azure Container Registry."
  type        = string
}
variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}
