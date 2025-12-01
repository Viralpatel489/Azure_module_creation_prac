output "subnet" {
    description = "subnet name"
    value = azurerm_subnet.subnet.name 
}

output "subnet_prefix" {
    description = "subnet prefix"
    value = azurerm_subnet.subnet.address_prefixes
}
# Inside Azure_module_creation_prac/subnet/outputs.tf
output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet.subnet.id
}
