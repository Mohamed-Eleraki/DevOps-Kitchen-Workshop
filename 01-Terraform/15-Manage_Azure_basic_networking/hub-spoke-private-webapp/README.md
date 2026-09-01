# 🌐 Azure Hub-Spoke Network Architecture with Private Web App

A complete Terraform implementation of Azure Hub-Spoke network topology with a private web application accessible only through VNet peering.

![Architecture](https://img.shields.io/badge/Azure-Hub--Spoke-0078D4?style=for-the-badge&logo=microsoft-azure)
![Terraform](https://img.shields.io/badge/Terraform-1.0+-7B42BC?style=for-the-badge&logo=terraform)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

---

## 📋 Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Quick Start](#quick-start)
- [Project Structure](#project-structure)
- [Configuration](#configuration)
- [Deployment](#deployment)
- [Testing](#testing)
- [Screenshots](#screenshots)
- [Troubleshooting](#troubleshooting)
- [Cleanup](#cleanup)
- [Contributing](#contributing)

---

## 🎯 Overview

This project demonstrates a secure Azure network architecture using the **Hub-Spoke** topology pattern. It includes:

- **Hub VNet**: Contains a landing VM for secure access
- **Spoke VNet**: Hosts a private web application with Private Endpoint
- **VNet Peering**: Enables communication between Hub and Spoke
- **Private DNS**: Resolves private endpoints within the VNets
- **Network Security**: NSG rules to control traffic

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                          Hub-rg                             │
│  ┌───────────────────────────────────────────────────────┐  │
│  │                      Hub VNet                         │  │
│  │                   (10.0.0.0/16)                       │  │
│  │  ┌─────────────────────────────────────────────────┐  │  │
│  │  │            Public Subnet (10.0.1.0/24)          │  │  │
│  │  │                                                 │  │  │
│  │  │   ┌─────┐      ┌─────────┐      ┌──────────┐   │  │  │
│  │  │   │ NSG │      │   DNS   │      │Landing-VM│   │  │  │
│  │  │   └─────┘      │ Private │      │          │   │  │  │
│  │  │                └─────────┘      └──────────┘   │  │  │
│  │  └─────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
                            │
                            │ VNet Peering
                            ▼
┌─────────────────────────────────────────────────────────────┐
│                         Spoke-rg                            │
│  ┌───────────────────────────────────────────────────────┐  │
│  │                     Spoke VNet                        │  │
│  │                   (10.1.0.0/16)                       │  │
│  │  ┌─────────────────────────────────────────────────┐  │  │
│  │  │           Private Subnet (10.1.1.0/24)          │  │  │
│  │  │                                                 │  │  │
│  │  │   ┌─────┐      ┌─────────┐      ┌──────────┐   │  │  │
│  │  │   │ NSG │      │   DNS   │      │ Private  │   │  │  │
│  │  │   └─────┘      │ Private │◄─────┤ Endpoint │   │  │  │
│  │  │                └─────────┘      └──────────┘   │  │  │
│  │  │                                       │        │  │  │
│  │  │                                       ▼        │  │  │
│  │  │                                  ┌──────────┐ │  │  │
│  │  │                                  │ Web App  │ │  │  │
│  │  │                                  └──────────┘ │  │  │
│  │  └─────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
```

---

## ✨ Features

### Network Architecture
- ✅ **Hub-Spoke Topology**: Centralized network management
- ✅ **VNet Peering**: Bidirectional connectivity between Hub and Spoke
- ✅ **Network Segmentation**: Separate subnets for different purposes
- ✅ **Network Security Groups**: Traffic filtering and security rules

### Security
- ✅ **Private Endpoints**: Web app not accessible from public internet
- ✅ **Private DNS Zones**: Internal DNS resolution
- ✅ **SSH Key Authentication**: Secure VM access
- ✅ **IP Whitelisting**: NSG rules for specific IP addresses

### Infrastructure as Code
- ✅ **Terraform Modules**: Reusable and maintainable code
- ✅ **State Management**: Terraform state tracking
- ✅ **Automated Deployment**: One-command infrastructure provisioning

---

## 📦 Prerequisites

Before you begin, ensure you have:

- **Azure Subscription**: Active Azure account
- **Azure CLI**: Version 2.0+ ([Install](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli))
- **Terraform**: Version 1.0+ ([Install](https://www.terraform.io/downloads))
- **PowerShell**: Version 5.1+ (Windows) or PowerShell Core (Cross-platform)
- **SSH Client**: For VM access

### Azure CLI Login

```bash
az login
az account set --subscription "<your-subscription-id>"
```

---

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/ES-Mohamed609/DevOps-Kitchen-Workshop.git
cd DevOps-Kitchen-Workshop/01-Terraform/15-Manage_Azure_basic_networking/hub-spoke-private-webapp
```

### 2. Configure Variables

Edit `terraform.tfvars`:

```hcl
my_ip = "YOUR_PUBLIC_IP/32"
```

Get your public IP:
```powershell
(Invoke-WebRequest -Uri "https://api.ipify.org").Content
```

### 3. Setup SSH Key

```powershell
.\Setup-SSHKey.ps1
```

### 4. Initialize Terraform

```bash
terraform init
```

### 5. Deploy Infrastructure

```bash
terraform plan
terraform apply
```

Type `yes` to confirm.

### 6. Get Connection Info

After deployment:

```bash
terraform output
```

You'll see:
- `vm_public_ip`: Public IP of the Landing VM
- `vm_ssh_command`: SSH command to connect
- `webapp_name`: Name of the private web app

---

## 📁 Project Structure

```
hub-spoke-private-webapp/
├── main.tf                          # Main Terraform configuration
├── variables.tf                     # Variable definitions
├── terraform.tfvars                 # Variable values
├── outputs.tf                       # Output definitions
├── provider.tf                      # Azure provider configuration
├── peering.tf                       # VNet peering configuration
├── webapp.tf                        # Web App and Private Endpoint
├── hub-vm.tf                        # Landing VM configuration
│
├── hub/                             # Hub VNet module
│   ├── HubVnet.tf                   # Hub VNet definition
│   ├── Subnet.tf                    # Hub subnet
│   ├── NSG.tf                       # Network Security Group
│   ├── variables.tf                 # Module variables
│   └── outputs.tf                   # Module outputs
│
├── spoke/                           # Spoke VNet module
│   ├── SpokeVnet.tf                 # Spoke VNet definition
│   ├── privateSubnet.tf             # Private subnet
│   ├── variables.tf                 # Module variables
│   └── outputs.tf                   # Module outputs
│
├── images/                          # Screenshots and diagrams
│   ├── webapp-networking.png        # Web App networking config
│   ├── private-endpoint.png         # Private Endpoint connections
│   ├── dns-zone-visualizer.png      # DNS Zone visualization
│   ├── resource-groups.png          # Resource groups overview
│   └── webapp-test.png              # Web App test from VM
│
└── scripts/                         # Helper scripts
    ├── Setup-SSHKey.ps1             # SSH key setup
    ├── Verify-Infrastructure.ps1    # Infrastructure verification
    ├── Check-VMConnectivity.ps1     # VM connectivity check
    └── Get-PrivateWebAppInfo.ps1    # Web app information
```

---

## ⚙️ Configuration

### Variables

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `location` | Azure region | `austriaeast` | No |
| `my_ip` | Your public IP for SSH access | - | Yes |

### Customization

#### Change Azure Region

Edit `variables.tf`:

```hcl
variable "location" {
  description = "Azure region"
  default     = "westeurope"  # Change this
}
```

#### Change VM Size

Edit `hub-vm.tf`:

```hcl
resource "azurerm_linux_virtual_machine" "hub_vm" {
  size = "Standard_D2s_v3"  # Change this
  # ...
}
```

#### Change Network Address Spaces

Edit module calls in `main.tf` or module files directly.

---

## 🔧 Deployment

### Step-by-Step Deployment

#### 1. Verify Configuration

```bash
terraform validate
```

#### 2. Preview Changes

```bash
terraform plan
```

Expected resources:
- 2 Resource Groups
- 2 Virtual Networks
- 3 Subnets
- 2 Network Security Groups
- 1 Virtual Machine
- 1 App Service Plan
- 1 Linux Web App
- 1 Private Endpoint
- 1 Private DNS Zone
- 2 VNet Peerings
- 2 DNS Zone Links

#### 3. Apply Configuration

```bash
terraform apply -auto-approve
```

Deployment time: ~5-7 minutes

#### 4. Verify Deployment

```powershell
.\Verify-Infrastructure.ps1
```

Expected output:
```
Resources Status: 10/10
```

---

## 🧪 Testing

### Test Private Web App Access

#### From Landing VM

1. **Connect to VM**:
   ```bash
   ssh azureuser@<VM_PUBLIC_IP>
   ```

2. **Test DNS Resolution**:
   ```bash
   nslookup firstlab-private-webapp.azurewebsites.net
   ```
   
   Expected: Private IP (10.1.x.x)

3. **Test HTTP Access**:
   ```bash
   curl -I https://firstlab-private-webapp.azurewebsites.net
   ```
   
   Expected: HTTP 200 or 403

#### From Public Internet

```bash
curl https://firstlab-private-webapp.azurewebsites.net
```

Expected: **Connection timeout or error** (because it's private!)

---

## 📸 Screenshots

### Web App Networking Configuration

![Web App Networking](images/webapp-networking.png)

*The Web App is configured with Private Endpoint access only. Public network access is disabled, and the app has 1 private endpoint configured.*

---

### Private Endpoint Connections

![Private Endpoint](images/private-endpoint.png)

*Private Endpoint connection showing the approved state and connection to the Web App.*

---

### Private DNS Zone Visualization

![DNS Zone Visualizer](images/dns-zone-visualizer.png)

*Resource visualizer showing the Private DNS Zone linked to both Hub VNet and Spoke VNet, enabling DNS resolution across the peered networks.*

---

### Resource Groups Overview

![Resource Groups](images/resource-groups.png)

*Overview of deployed resources in both Hub-rg and Spoke-rg resource groups, including VM, networking components, and Private Endpoint.*

---

### Web App Test from Landing VM

![Web App Test](images/webapp-test.png)

*Successful curl request to the private web app from the Landing VM, demonstrating private connectivity through VNet peering.*

---

## 🔍 Troubleshooting

### Common Issues

#### 1. SSH Connection Timeout

**Problem**: Cannot connect to VM via SSH

**Solutions**:
- Check NSG allows your current IP:
  ```powershell
  .\Check-VMConnectivity.ps1
  ```
- Verify VM is running:
  ```bash
  az vm get-instance-view --name landing-vm --resource-group hub-rg
  ```

#### 2. DNS Not Resolving to Private IP

**Problem**: DNS resolves to public IP instead of private

**Solutions**:
- Wait 2-3 minutes for DNS propagation
- Verify DNS zone is linked to Hub VNet:
  ```bash
  az network private-dns link vnet list \
    --resource-group spoke-rg \
    --zone-name privatelink.azurewebsites.net
  ```

#### 3. VM Size Not Available

**Problem**: `SkuNotAvailable` error during deployment

**Solution**: Change VM size in `hub-vm.tf`:
```hcl
size = "Standard_D2s_v3"  # or another available size
```

#### 4. Terraform State Lock

**Problem**: State file is locked

**Solution**:
```bash
terraform force-unlock <LOCK_ID>
```

### Get Help

Run verification script:
```powershell
.\Verify-Infrastructure.ps1
```

Check specific resource:
```bash
az resource show --ids <resource-id>
```

---

## 🧹 Cleanup

### Destroy All Resources

```bash
terraform destroy
```

Type `yes` to confirm.

### Selective Cleanup

Remove specific resources:

```bash
# Remove only the VM
terraform destroy -target=azurerm_linux_virtual_machine.hub_vm

# Remove entire spoke
terraform destroy -target=module.spoke
```

### Verify Cleanup

```bash
az group list --query "[?starts_with(name, 'hub-') || starts_with(name, 'spoke-')]" -o table
```

---

## 📊 Cost Estimation

Approximate monthly costs (Austria East region):

| Resource | Type | Estimated Cost |
|----------|------|----------------|
| Virtual Machine | Standard_D2s_v3 | ~$70/month |
| App Service Plan | S1 | ~$70/month |
| VNet Peering | Data transfer | ~$10/month |
| Public IP | Static | ~$3/month |
| **Total** | | **~$153/month** |

> **Note**: Costs vary by region and usage. Use [Azure Pricing Calculator](https://azure.microsoft.com/en-us/pricing/calculator/) for accurate estimates.

---

## 🛡️ Security Best Practices

- ✅ Use SSH keys instead of passwords
- ✅ Restrict NSG rules to specific IPs
- ✅ Enable Azure Security Center
- ✅ Use Private Endpoints for PaaS services
- ✅ Implement network segmentation
- ✅ Enable diagnostic logging
- ✅ Regular security audits

---

## 📚 Additional Resources

- [Azure Hub-Spoke Network Topology](https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/hybrid-networking/hub-spoke)
- [Azure Private Endpoint](https://docs.microsoft.com/en-us/azure/private-link/private-endpoint-overview)
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Azure VNet Peering](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-peering-overview)

---

## 🤝 Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Mohamed Elsayed**
- GitHub: [@ES-Mohamed609](https://github.com/ES-Mohamed609)

---

## 🙏 Acknowledgments

- Azure Architecture Center
- Terraform Community
- HashiCorp Documentation
- DevOps Kitchen Workshop

---

## 📞 Support

For issues and questions:
- Open an [Issue](https://github.com/ES-Mohamed609/DevOps-Kitchen-Workshop/issues)
- Check [Troubleshooting](#troubleshooting) section
- Review [Azure Documentation](https://docs.microsoft.com/en-us/azure/)

---

**⭐ If you found this project helpful, please give it a star!**

---

<div align="center">
  Made with ❤️ using Terraform and Azure
</div>
