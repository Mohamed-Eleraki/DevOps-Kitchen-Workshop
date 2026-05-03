resource "azurerm_virtual_network" "hub"{
  name                = "hub-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
}