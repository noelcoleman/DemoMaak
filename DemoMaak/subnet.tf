resource "azurerm_subnet" "DemoMaak" {
    name = "${var.SubnetName}"
    resource_group_name = "${azurerm_resource_group.DemoMaak.name}"
    virtual_network_name = "${azurerm_virtual_network.DemoMaak.name}"
    address_prefix = "${var.SubnetPrefix}"  
}
