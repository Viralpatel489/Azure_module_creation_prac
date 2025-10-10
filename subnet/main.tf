resource "azurerm_subnet" "subnet" {
    name                 = var.subnet
    resource_group_name  = var.rg_name
    virtual_network_name = var.vnet_name
    address_prefixes     = [var.subnet_prefix]
}