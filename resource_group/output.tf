output "rg" {
    description = "resource group name"
    value = azurerm_resource_group.rg
}

output "location" {
    description = "location name"
    value = azurerm_resource_group.rg.location  
}