output "vnet_id" {
  value = azurerm_virtual_network.spoke.id
}

output "vnet_name" {
  value = azurerm_virtual_network.spoke.name
}

output "rg_name" {
  value = var.resource_group_name
}

output "subnet_id" {
  value = azurerm_subnet.spoke_private.id
}
