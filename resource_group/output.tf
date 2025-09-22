output "org" {
    description = "resource group name"
    value = azurerm_resource_group.prg.name
}

output "oloc" {
    description = "location name"
    value = azurerm_resource_group.prg.location  
}