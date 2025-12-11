output "vnet" {
  description = "Vnet name"
  value       = azurerm_virtual_network.vnet.name

}

output "address_space" {
  description = "vnet adress space"
  value       = azurerm_virtual_network.vnet.address_space
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}
