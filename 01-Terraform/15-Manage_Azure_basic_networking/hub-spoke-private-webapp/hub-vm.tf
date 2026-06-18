# Public IP for Hub VM
resource "azurerm_public_ip" "hub_vm_pip" {
  name                = "hub-vm-pip"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Network Interface for Hub VM
resource "azurerm_network_interface" "hub_vm_nic" {
  name                = "hub-vm-nic"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.hub.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.hub_vm_pip.id
  }
}

# Linux Virtual Machine in Hub VNet
resource "azurerm_linux_virtual_machine" "hub_vm" {
  name                            = "landing-vm"
  location                        = var.location
  resource_group_name             = azurerm_resource_group.hub.name
  size                            = "Standard_D2s_v3"
  admin_username                  = "azureuser"
  disable_password_authentication = true

  network_interface_ids = [
    azurerm_network_interface.hub_vm_nic.id,
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

  # Install required tools on first boot
  custom_data = base64encode(<<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y curl dnsutils net-tools iputils-ping
  EOF
  )
}
