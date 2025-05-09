#Resource Groups
variable "resource_info" {
  type = map(string)
}

#Storage Accounts
variable "storage_info" {
  type = map(object({
    location            = string
    resource_group_name = string
  }))
}

#Containers
variable "container_info" {
  type = map(string)
}

#V-Net/Subnet
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
#NIC-Vnet
variable "nic-vnet-info" {
  type = map(object({
    location              = string
    resource_group_name   = string
    ip_configuration_name = string
    subnet_id             = string
  }))
}