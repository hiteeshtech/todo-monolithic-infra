module "resource_group" {
  source  = "../../modules/azurerm_resource_group"
  rg_name = var.rg_name
}

module "virtual_network" {
  source    = "../../modules/azurerm_networking"
  vnet_name = var.vnet_name
}

module "key_vaults" {
  source  = "../../modules/azurerm_key_vaults"
  kv_name = var.key_vaults
}

module "public_ip" {
  source         = "../../modules/azurerm_public_ip"
  public_ip_name = var.public_ip_name
}