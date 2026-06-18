output "webapp_name" {
  value = azurerm_linux_web_app.webapp.name
}

output "vm_public_ip" {
  value       = azurerm_public_ip.hub_vm_pip.ip_address
  description = "Public IP of the Landing VM"
}

output "vm_ssh_command" {
  value       = "ssh azureuser@${azurerm_public_ip.hub_vm_pip.ip_address}"
  description = "SSH command to connect to the Landing VM"
}

output "private_endpoint_ip" {
  value       = "Check Azure Portal for Private Endpoint IP"
  description = "Private IP of the Web App endpoint"
}


