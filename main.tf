provider azurerm {
  version = "=2.0.0"
  features {}
}

resource azurerm_container_registry registry {
  name = var.registry_name
  location = var.location
  resource_group_name = var.resource_group_name
  sku = var.sku_name
}