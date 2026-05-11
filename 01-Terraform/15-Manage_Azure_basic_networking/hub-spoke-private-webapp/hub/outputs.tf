output "vnet_id" {
  value = azurerm_virtual_network.hub.id
}

output "vnet_name" {
  value = azurerm_virtual_network.hub.name
}

output "rg_name" {
  value = var.resource_group_name
}

output "subnet_id" {
  value = azurerm_subnet.hub_public.id
}
