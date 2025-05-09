variable "vnet_info" {
  type = map(object({
    location             = string
    resource_group_name  = string
    address_space        = list(string)
    subnet_name          = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet_info
  name                = each.key
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_subnet" "subnet" {
  depends_on           = [azurerm_virtual_network.vnet]
  for_each             = var.vnet_info
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}
