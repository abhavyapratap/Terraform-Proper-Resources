variable "storage_info" {
  type = map(object({
    location            = string
    resource_group_name = string
  }))

  default = {
    "bhavyastoragezzzz" = {
      location            = "centralindia"
      resource_group_name = "rg-bhavya"
    }

    "takshstoragezzzz" = {
      location            = "westjapan"
      resource_group_name = "rg-taksh"
    }

    "rockystoragezzzz" = {
      location            = "eastjapan"
      resource_group_name = "rg-rocky"
    }
  }
}

resource "azurerm_storage_account" "storage" {
  for_each                 = var.storage_info
  name                     = each.key
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}