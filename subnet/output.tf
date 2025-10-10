output "subnet" {
    description = "subnet name"
    value = azurerm_subnet.subnet.name 
}

output "subnet_prefix" {
    description = "subnet prefix"
    value = azurerm_subnet.subnet.address_prefixes
}