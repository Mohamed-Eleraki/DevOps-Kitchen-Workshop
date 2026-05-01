# App Service Plan
resource "azurerm_service_plan" "plan" {
  name                = "firstlab"
  location            = var.location
  resource_group_name = module.spoke.rg_name

  os_type  = "Linux"
  sku_name = "S1"
}



resource "azurerm_linux_web_app" "webapp" {
  name                = "firstlab-private-webapp"
  location            = var.location
  resource_group_name = module.spoke.rg_name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {}

  https_only                    = true
  public_network_access_enabled = false
}


resource "azurerm_private_endpoint" "webapp_pe" {
  name                = "webapp-pe"
  location            = var.location
  resource_group_name = module.spoke.rg_name
  subnet_id           = module.spoke.subnet_id

  private_service_connection {
    name                           = "webapp-conn"
    private_connection_resource_id = azurerm_linux_web_app.webapp.id
    subresource_names              = ["sites"]
    is_manual_connection           = false
  }

  private_dns_zone_group {
    name                 = "webapp-dns-zone-group"
    private_dns_zone_ids = [azurerm_private_dns_zone.webapp_dns.id]
  }
}

resource "azurerm_private_dns_zone" "webapp_dns" {
  name                = "privatelink.azurewebsites.net"
  resource_group_name = module.spoke.rg_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_link" {
  name                  = "spoke-dns-link"
  resource_group_name   = module.spoke.rg_name
  private_dns_zone_name = azurerm_private_dns_zone.webapp_dns.name
  virtual_network_id    = module.spoke.vnet_id
}

# Link Hub VNet to Private DNS Zone for DNS resolution from Hub VM
resource "azurerm_private_dns_zone_virtual_network_link" "hub_dns_link" {
  name                  = "hub-dns-link"
  resource_group_name   = module.spoke.rg_name
  private_dns_zone_name = azurerm_private_dns_zone.webapp_dns.name
  virtual_network_id    = module.hub.vnet_id
}

