resource "azurerm_network_security_rule" "DemoMaak" {
    name = "Allow HTTP"
    priority = 100
    direction = "Inbound"
    access = "allow"
    protocol = "tcp"
    source_port_range = "*"
    destination_port_range = "80"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = "${azurerm_virtual_network.DemoMaak.resource_group_name}"
    network_security_group_name = "${azurerm_network_security_group.DemoMaak.name}"
     
}


