variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}
variable "location" {
  description = "Location of the Azure Container Registry"
  type        = string
}
variable "environment" {
  description = "Tags to be applied to the Azure Container Registry"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the resource group where the Azure Container Registry will be created"
  type        = string
}
variable "sku" {
  description = "SKU name of the Azure Container Registry"
  type        = string
}