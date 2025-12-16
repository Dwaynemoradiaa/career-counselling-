# PowerShell script to fix Docker credentials on Windows

Write-Host "🔧 Fixing Docker credentials for Windows..." -ForegroundColor Green

# Check if Docker Desktop is running
Write-Host "`nStep 1: Checking Docker Desktop status..." -ForegroundColor Yellow
try {
    $dockerVersion = docker version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Docker is running" -ForegroundColor Green
    } else {
        Write-Host "❌ Docker is not running. Please start Docker Desktop." -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "❌ Docker is not installed or not accessible" -ForegroundColor Red
    exit 1
}

# Create Docker config directory if it doesn't exist
Write-Host "`nStep 2: Setting up Docker configuration..." -ForegroundColor Yellow
$dockerConfigDir = "$env:USERPROFILE\.docker"
if (!(Test-Path $dockerConfigDir)) {
    New-Item -ItemType Directory -Path $dockerConfigDir -Force
    Write-Host "✅ Created Docker config directory" -ForegroundColor Green
}

# Create or update Docker config file
$dockerConfigFile = "$dockerConfigDir\config.json"
$dockerConfig = @{
    "credsStore" = "desktop"
    "experimental" = "enabled"
} | ConvertTo-Json

Set-Content -Path $dockerConfigFile -Value $dockerConfig
Write-Host "✅ Updated Docker configuration" -ForegroundColor Green

# Test Docker connection
Write-Host "`nStep 3: Testing Docker connection..." -ForegroundColor Yellow
try {
    docker info | Out-Null
    Write-Host "✅ Docker connection successful" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker connection failed" -ForegroundColor Red
    Write-Host "Try restarting Docker Desktop" -ForegroundColor Yellow
}

Write-Host "`n✅ Docker credentials should now be working!" -ForegroundColor Green
Write-Host "🚀 You can now run: docker-compose up --build" -ForegroundColor Cyan 