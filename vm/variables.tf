variable "pip_name" {}
variable "location" {}
variable "allocation_method" {}
variable "pip_sku" {}





variable "rg_name" {}
variable "vm_name" {}
variable "vm_size" {}
variable "delete_os_disk" {
  description = "Whether to delete the OS disk when the VM is deleted"
  type        = bool
}
variable "delete_data_disks" {
  description = "Whether to delete the data disks when the VM is deleted"
  type        = bool
}
# OS profile variables
variable "host_name" {}
variable "admin_username" {}
variable "admin_password" {}
variable "disable_password_authentication" {
  description = "Whether to disable password authentication for the VM"
  type        = bool
}
# storage_image_reference variables
variable "publisher" {}
variable "offer" {}
variable "sku" {}
variable "storage_version" {}
# storage_os_disk variables
variable "storage_disk_name" {}
variable "caching" {}
variable "create_option" {}
variable "managed_disk_type" {}
variable "public_ip_address" {
    description = "The public IP address of the Azure VM."
    type        = string
}