variable "vm_name" {
    description = "The name of the Linux virtual machine."
    type        = string
}
variable "vm_size" {
    description = "The size of the Linux virtual machine."
    type        = string
  
}   

variable "admin_username" {
    description = "The admin username for the Linux virtual machine."
    type        = string
  
}
variable "ssh_public_key" {
  description = "this var is for ssh public key file used by devops agent"
  type = string
}

variable "rg_name" {
    description = "resource group name"
    type = string
}
variable "location" {
    description = "The location/region where the resources will be created."
    type        = string
}
variable "network_interface_ids" {
    description = "The IDs of the network interfaces to attach to the VM."
    type        = list(string)
}
