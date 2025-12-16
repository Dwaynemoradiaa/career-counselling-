@echo off
echo 🔧 Fixing Docker credentials for Windows...

echo.
echo Step 1: Checking Docker Desktop status...
docker version

echo.
echo Step 2: Configuring Docker credentials...
docker-credential-desktop version 2>nul
if %errorlevel% neq 0 (
    echo Installing Docker credential helper...
    echo { "credsStore": "desktop" } > "%USERPROFILE%\.docker\config.json"
)

echo.
echo Step 3: Testing Docker connection...
docker info

echo.
echo ✅ Docker should now be working properly!
echo.
echo 🚀 You can now run: docker-compose up --build
pause 