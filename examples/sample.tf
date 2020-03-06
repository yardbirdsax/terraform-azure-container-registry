provider azurerm {
  version = "=2.0.0"
  features {}
}

resource azurerm_resource_group resource_group {
  name = "acr-test"
  location = "eastus2"
}

module acr {
  source = "git::https://github.com/yardbirdsax/terraform-azure-container-registry?ref=1.1"
  resource_group_name = azurerm_resource_group.resource_group.name
  registry_name = "jeftestacr"
  location = "eastus2"
  sku_name = "Basic"
}

output registry {
  value = module.acr.registry
}