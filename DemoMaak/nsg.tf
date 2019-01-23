resource "azurerm_network_security_group" "DemoMaak" {
    name = "${azurerm_virtual_network.DemoMaak.name}-SB01-NSG01"
    location = "${azurerm_virtual_network.DemoMaak.location}"
    resource_group_name = "${azurerm_virtual_network.DemoMaak.resource_group_name}"
  
}
