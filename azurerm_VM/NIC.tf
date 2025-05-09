variable "nic-vnet-info" {
  type = map(object({
    location              = string
    resource_group_name   = string
    ip_configuration_name = string
    subnet_id             = string
  }))
}

resource "azurerm_network_interface" "nic" {
  for_each            = var.nic-vnet-info
  name                = each.key
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_configuration_name
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}