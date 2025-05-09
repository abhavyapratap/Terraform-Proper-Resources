variable "container_info" {
  type = map(string)

  default = {
    "bhavyacontainer" = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-bhavya/providers/Microsoft.Storage/storageAccounts/bhavyastoragezzzz"
    
    "takshcontainer"  = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-taksh/providers/Microsoft.Storage/storageAccounts/takshstoragezzzz"
    
    "rockycontainer"  = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-rocky/providers/Microsoft.Storage/storageAccounts/rockystoragezzzz"
  }
}

resource "azurerm_storage_container" "container" {
  for_each = var.container_info
  name                  = each.key
  storage_account_id    = each.value
  container_access_type = "private"
}