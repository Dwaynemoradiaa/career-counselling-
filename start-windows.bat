@echo off
echo 🚀 Starting Career Counseling App on Windows...

echo.
echo Step 1: Checking Docker installation...
docker --version
if %errorlevel% neq 0 (
    echo ❌ Docker is not installed or not running!
    echo Please install Docker Desktop from https://www.docker.com/products/docker-desktop/
    pause
    exit /b 1
)

echo.
echo Step 2: Checking Docker Compose...
docker-compose --version
if %errorlevel% neq 0 (
    echo ❌ Docker Compose is not available!
    echo Please ensure Docker Desktop is running.
    pause
    exit /b 1
)

echo.
echo Step 3: Stopping any existing containers...
docker-compose down

echo.
echo Step 4: Building and starting the application...
docker-compose up --build -d

echo.
echo Step 5: Waiting for services to be ready...
timeout /t 30 /nobreak >nul

echo.
echo Step 6: Checking service status...
docker-compose ps

echo.
echo ✅ Career Counseling App is now running!
echo.
echo 🌐 Access the application:
echo    Frontend: http://localhost:3000
echo    Backend API: http://localhost:5000
echo.
echo 📊 View logs: docker-compose logs -f
echo 🛑 Stop the app: docker-compose down
echo.
pause 