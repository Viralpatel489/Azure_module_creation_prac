resource "azurerm_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.rg_name
  network_interface_ids = var.network_interface_ids
  vm_size               = var.vm_size
  
  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = var.delete_os_disk

  # Uncomment this line to delete the data disks automatically when deleting the VM
  delete_data_disks_on_termination = var.delete_data_disks

  storage_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.storage_version
  }
  storage_os_disk {
    name              = var.storage_disk_name
    caching           = var.caching
    create_option     = var.create_option
    managed_disk_type = var.managed_disk_type
  }
  os_profile {
    computer_name  = var.host_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication
  }
public_ip_address     = azurerm_public_ip.pip.ip_address
  
}
