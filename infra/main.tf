module "rg" {
  source        = "../azurerm_resource_group"
  resource_info = var.resource_info
}

module "storage" {
  depends_on   = [module.rg]
  source       = "../azurerm_storage_acc"
  storage_info = var.storage_info
}

module "container" {
  depends_on     = [module.storage]
  source         = "../azurerm_blob_container"
  container_info = var.container_info
}

module "vnet" {
  source        = "../azurerm_VM"
  vnet_info     = var.vnet_info
  nic-vnet-info = var.nic-vnet-info
}