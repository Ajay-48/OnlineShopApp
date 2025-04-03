resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku {
    name     = var.sku_name
    tier     = var.sku_tier
  }
  admin_enabled = true
}

  tags = var.environment
}
