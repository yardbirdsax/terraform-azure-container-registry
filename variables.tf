variable registry_name {
  type = string
  description = "The name of the registry to create. Must be globally unique."
}

variable resource_group_name {
  type = string
  description = "The name of the resource group where the ACR is deployed to. Must pre-exist."
}

variable location {
  type = string
  description = "The Azure region where the ACR is deployed to."
}

variable sku_name {
  type = string
  description = "The SKU of the ACR. See https://docs.microsoft.com/en-us/azure/container-registry/container-registry-skus."
  default = "Basic"
}