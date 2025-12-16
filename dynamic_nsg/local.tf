locals {
  nsg_inbound_rules = {
    "allow_ssh" = {
      priority                     = 100
      protocol                     = "Tcp"
      destination_port_range       = "22"
      source_address_prefix        = "*"
    },
    "allow_http" = {
      priority                     = 110
      protocol                     = "Tcp"
      destination_port_range       = "80"
      source_address_prefix        = "Internet" # A common Azure tag
    },
    "allow_custom_port" = {
      priority                     = 120
      protocol                     = "Udp"
      destination_port_range       = "12345"
      source_address_prefix        = "192.168.1.0/24"
    }
  }
}