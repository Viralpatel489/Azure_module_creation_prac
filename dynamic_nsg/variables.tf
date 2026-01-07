variable "rg_name" {
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

variable "nsg_inbound_rules" {
  description = "Inbound NSG rules"
  type = map(object({
    priority               = number
    protocol               = string
    destination_port_range = string
    source_address_prefix  = string
    direction                = optional(string, "Inbound")
    access                      = optional(string, "Allow")
    destination_address_prefix  = optional(string, "*")
  }))
}