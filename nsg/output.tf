output "nsg" {
    value = azurerm_network_security_group.nsg.name
    description = "The name of the Network Security Group"
    sensitive = false
}