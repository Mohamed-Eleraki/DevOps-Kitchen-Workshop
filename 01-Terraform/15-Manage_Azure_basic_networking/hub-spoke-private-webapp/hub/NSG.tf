resource "azurerm_network_security_group" "hub_nsg" {
  name                = "hub-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "Allow-SSH-From-MyIP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = var.my_ip
    destination_port_range     = "22"
    destination_address_prefix = "*"
    source_port_range          = "*"
  }
}
resource "azurerm_subnet_network_security_group_association" "hub_assoc" {
  subnet_id                 = azurerm_subnet.hub_public.id
  network_security_group_id = azurerm_network_security_group.hub_nsg.id
}