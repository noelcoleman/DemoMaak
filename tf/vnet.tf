resource "azurerm_virtual_network" "DemoMaak" {
    name = "${var.VirtualNetworkName}"
    location = "${azurerm_resource_group.DemoMaak.location}"
    resource_group_name = "${azurerm_resource_group.DemoMaak.name}"
    address_space = "${var.VirtualNetworkAddressSpace}"
}

