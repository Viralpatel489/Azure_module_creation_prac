output "vm" {
  description = "The public IP address of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}