# Complete Script to Push Project to GitHub as a Branch
# Run this script in PowerShell

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Pushing Project to GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Create images folder and copy images
Write-Host "[1/8] Creating images folder and copying screenshots..." -ForegroundColor Yellow
New-Item -ItemType Directory -Path "e:\.DEVOPS\terraform-azure-network\images" -Force | Out-Null

Copy-Item -Path "C:\Users\user\.gemini\antigravity\brain\c0781ea5-5560-4d3d-9eeb-7f6392a2460f\uploaded_media_0_1769983773881.png" -Destination "e:\.DEVOPS\terraform-azure-network\images\webapp-networking.png"
Copy-Item -Path "C:\Users\user\.gemini\antigravity\brain\c0781ea5-5560-4d3d-9eeb-7f6392a2460f\uploaded_media_1_1769983773881.png" -Destination "e:\.DEVOPS\terraform-azure-network\images\private-endpoint.png"
Copy-Item -Path "C:\Users\user\.gemini\antigravity\brain\c0781ea5-5560-4d3d-9eeb-7f6392a2460f\uploaded_media_2_1769983773881.png" -Destination "e:\.DEVOPS\terraform-azure-network\images\dns-zone-visualizer.png"
Copy-Item -Path "C:\Users\user\.gemini\antigravity\brain\c0781ea5-5560-4d3d-9eeb-7f6392a2460f\uploaded_media_3_1769983773881.png" -Destination "e:\.DEVOPS\terraform-azure-network\images\resource-groups.png"
Copy-Item -Path "C:\Users\user\.gemini\antigravity\brain\c0781ea5-5560-4d3d-9eeb-7f6392a2460f\uploaded_media_4_1769983773881.png" -Destination "e:\.DEVOPS\terraform-azure-network\images\webapp-test.png"

Write-Host "[OK] Images copied successfully" -ForegroundColor Green
Write-Host ""

# Step 2: Clone the forked repository
Write-Host "[2/8] Cloning forked repository..." -ForegroundColor Yellow
cd e:\.DEVOPS
if (Test-Path "DevOps-Kitchen-Workshop") {
    Write-Host "[WARN] Repository already exists, pulling latest changes..." -ForegroundColor Yellow
    cd DevOps-Kitchen-Workshop
    git pull origin main
}
else {
    git clone https://github.com/ES-Mohamed609/DevOps-Kitchen-Workshop.git
    cd DevOps-Kitchen-Workshop
}
Write-Host "[OK] Repository ready" -ForegroundColor Green
Write-Host ""

# Step 3: Create new branch
Write-Host "[3/8] Creating new branch..." -ForegroundColor Yellow
git checkout -b feature/hub-spoke-private-webapp
Write-Host "[OK] Branch created: feature/hub-spoke-private-webapp" -ForegroundColor Green
Write-Host ""

# Step 4: Create target directory
Write-Host "[4/8] Creating target directory..." -ForegroundColor Yellow
$targetDir = "01-Terraform\15-Manage_Azure_basic_networking\hub-spoke-private-webapp"
New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
Write-Host "[OK] Directory created" -ForegroundColor Green
Write-Host ""

# Step 5: Copy project files
Write-Host "[5/8] Copying project files..." -ForegroundColor Yellow
Copy-Item -Path "e:\.DEVOPS\terraform-azure-network\*" -Destination $targetDir -Recurse -Force
Write-Host "[OK] Files copied" -ForegroundColor Green
Write-Host ""

# Step 6: Add files to git
Write-Host "[6/8] Adding files to git..." -ForegroundColor Yellow
git add .
Write-Host "[OK] Files added" -ForegroundColor Green
Write-Host ""

# Step 7: Commit changes
Write-Host "[7/8] Committing changes..." -ForegroundColor Yellow
git commit -m "Add Hub-Spoke Network Architecture with Private Web App

Features:
- Implemented Hub-Spoke topology with VNet peering
- Added Private Endpoint for Web App
- Configured Private DNS Zone for internal resolution
- Created Landing VM in Hub VNet for testing
- Added comprehensive documentation with screenshots
- Included helper scripts for deployment and testing

Components:
- Hub VNet (10.0.0.0/16) with Public Subnet
- Spoke VNet (10.1.0.0/16) with Private Subnet
- VNet Peering for Hub-Spoke connectivity
- Private Endpoint for Azure Web App
- Private DNS Zone linked to both VNets
- Network Security Groups for traffic control
- Landing VM (Ubuntu 22.04) for access testing

Documentation:
- Complete README with architecture diagrams
- Step-by-step deployment guide
- Testing procedures
- Troubleshooting guide
- Cost estimation
- Screenshots of deployed infrastructure"

Write-Host "[OK] Changes committed" -ForegroundColor Green
Write-Host ""

# Step 8: Push to GitHub
Write-Host "[8/8] Pushing to GitHub..." -ForegroundColor Yellow
git push origin feature/hub-spoke-private-webapp

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "SUCCESS!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Yellow
Write-Host "1. Go to: https://github.com/ES-Mohamed609/DevOps-Kitchen-Workshop" -ForegroundColor White
Write-Host "2. You should see a prompt to create a Pull Request" -ForegroundColor White
Write-Host "3. Click 'Compare & pull request'" -ForegroundColor White
Write-Host "4. Add description and create the PR" -ForegroundColor White
Write-Host ""
Write-Host "Branch: feature/hub-spoke-private-webapp" -ForegroundColor Cyan
Write-Host "Location: 01-Terraform/15-Manage_Azure_basic_networking/hub-spoke-private-webapp" -ForegroundColor Cyan
Write-Host ""
