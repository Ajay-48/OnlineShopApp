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
  type        = map(string)
}
variable "resource_group_name" {
  description = "Name of the resource group where the Azure Container Registry will be created"
  type        = string
}
variable "sku_name" {
  description = "SKU name of the Azure Container Registry"
  type        = string
}
variable "sku_tier" {
  description = "SKU tier of the Azure Container Registry"
  type        = string
}