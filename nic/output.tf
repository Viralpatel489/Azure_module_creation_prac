output "nic_name" {
  value = azurerm_network_interface.nic.name
  description = "nic name"
}

output "nic_id" {
  value = azurerm_network_interface.nic.id
  description = "nic id"
}

output "private_ip_address" {
  value = azurerm_network_interface.nic.private_ip_address
  description = "nic private ip address"
}