resource "azurerm_virtual_network_peering" "hub_to_spoke" {
  name                      = "hub-to-spoke"
  resource_group_name       = module.hub.rg_name
  virtual_network_name      = module.hub.vnet_name
  remote_virtual_network_id = module.spoke.vnet_id
  allow_virtual_network_access = true
}


resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  name                      = "spoke-to-hub"
  resource_group_name       = module.spoke.rg_name
  virtual_network_name      = module.spoke.vnet_name
  remote_virtual_network_id = module.hub.vnet_id
  allow_virtual_network_access = true
}
