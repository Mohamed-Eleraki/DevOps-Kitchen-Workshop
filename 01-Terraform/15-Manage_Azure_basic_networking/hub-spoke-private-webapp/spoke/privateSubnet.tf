resource "azurerm_subnet" "spoke_private" {
  name                 = "private-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.spoke.name
  address_prefixes     = ["10.1.1.0/24"]
}
