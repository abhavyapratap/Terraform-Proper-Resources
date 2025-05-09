resource_info = {

  "rg-bhavya" = "centralindia"
  "rg-taksh"  = "west us"
  "rg-rocky"  = "east us"
}

storage_info = {

  "bhavyastoragezzzz" = {
    location            = "centralindia"
    resource_group_name = "rg-bhavya"
  }

  "takshstoragezzzz" = {
    location            = "west us"
    resource_group_name = "rg-taksh"
  }

  "rockystoragezzzz" = {
    location            = "east us"
    resource_group_name = "rg-rocky"
  }
}

container_info = {

  "bhavyacontainer" = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-bhavya/providers/Microsoft.Storage/storageAccounts/bhavyastoragezzzz"

  "takshcontainer" = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-taksh/providers/Microsoft.Storage/storageAccounts/takshstoragezzzz"

  "rockycontainer" = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-rocky/providers/Microsoft.Storage/storageAccounts/rockystoragezzzz"
}

vnet_info = {

  "Vnet-1" = {
    location             = "centralindia"
    resource_group_name  = "rg-bhavya"
    address_space        = ["10.0.0.0/16"]
    subnet_name          = "subnet1"
    address_prefixes     = ["10.0.0.0/24"]
    virtual_network_name = "Vnet-1"
  }

  "Vnet-2" = {
    location             = "west us"
    resource_group_name  = "rg-taksh"
    address_space        = ["10.1.0.0/16"]
    subnet_name          = "subnet2"
    address_prefixes     = ["10.1.0.0/24"]
    virtual_network_name = "Vnet-2"
  }

  "Vnet-3" = {
    location             = "east us"
    resource_group_name  = "rg-rocky"
    address_space        = ["10.2.0.0/16"]
    subnet_name          = "subnet3"
    address_prefixes     = ["10.2.0.0/24"]
    virtual_network_name = "Vnet-3"
  }
}

nic-vnet-info = {

  "nic1" = {
    location              = "centralindia"
    resource_group_name   = "rg-bhavya"
    ip_configuration_name = "configuration1"
    subnet_id             = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-bhavya/providers/Microsoft.Network/virtualNetworks/Vnet-1/subnets/subnet1"
  }

  "nic2" = {
    location              = "west us"
    resource_group_name   = "rg-taksh"
    ip_configuration_name = "configuration2"
    subnet_id             = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-taksh/providers/Microsoft.Network/virtualNetworks/Vnet-2/subnets/subnet2"
  }

  "nic3" = {
    location              = "east us"
    resource_group_name   = "rg-rocky"
    ip_configuration_name = "configuration3"
    subnet_id             = "/subscriptions/d55bec86-ed53-491a-92d6-dee26920678f/resourceGroups/rg-rocky/providers/Microsoft.Network/virtualNetworks/Vnet-3/subnets/subnet3"
  }
}