variable "resource_info" {
  type = map(string)
}

resource "azurerm_resource_group" "rg" {
  for_each = var.resource_info
  name     = each.key
  location = each.value
}