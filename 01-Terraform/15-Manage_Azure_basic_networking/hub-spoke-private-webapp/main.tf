resource "azurerm_resource_group" "hub" {
  name     = "hub-rg"
  location = var.location
}

resource "azurerm_resource_group" "spoke" {
  name     = "spoke-rg"
  location = var.location
}
module "hub" {
  source = "./hub"
  
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
  my_ip               = var.my_ip
}

module "spoke" {
  source = "./spoke"
  
  location            = var.location
  resource_group_name = azurerm_resource_group.spoke.name
}
