variable "name" {
    description = "The name of the resource group"
    type        = string
}
variable "location" {
    description = "The location of the resource group"
    type        = string
}
variable "nsg_name" {
    description = "network security group name"
    type = string
}