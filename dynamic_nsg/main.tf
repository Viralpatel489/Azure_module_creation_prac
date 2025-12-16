resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.name

# The "security_rule" block is the one that repeats inside the NSG.
  dynamic "security_rule" {
    # 1. for_each: Loop over the map defined in locals.tf
    for_each = local.nsg_inbound_rules

    # 2. content: This defines the contents of each generated "security_rule" block.
    content {
      # Use security_rule.key for the rule name (e.g., "allow_ssh")
      name                        = security_rule.key
      
      # Use security_rule.value to access the properties from the map
      priority                    = security_rule.value.priority
      protocol                    = security_rule.value.protocol
      destination_port_range      = security_rule.value.destination_port_range
      source_address_prefix       = security_rule.value.source_address_prefix
      
      # The rest of the properties are static for all inbound rules
      direction                   = "Inbound"
      access                      = "Allow"
      source_port_range           = "*"
      destination_address_prefix  = "*"
    }
  }


}

