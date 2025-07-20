@echo off
echo ========================================
echo         RunCat365 Release Builder
echo ========================================
echo.

:: Check if .NET is installed
dotnet --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: .NET SDK not found!
    echo Please install .NET 9.0 SDK from: https://dotnet.microsoft.com/download/dotnet/9.0
    pause
    exit /b 1
)

echo Cleaning previous builds...
if exist "Release" rmdir /s /q "Release"
mkdir "Release"

echo.
echo Building for Windows x64...
dotnet publish RunCat365\RunCat365.csproj -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -o "Release\win-x64"
if errorlevel 1 (
    echo ERROR: Failed to build for x64
    pause
    exit /b 1
)

echo.
echo Building for Windows ARM64...
dotnet publish RunCat365\RunCat365.csproj -c Release -r win-arm64 --self-contained true -p:PublishSingleFile=true -o "Release\win-arm64"
if errorlevel 1 (
    echo ERROR: Failed to build for ARM64
    pause
    exit /b 1
)

echo.
echo Creating ZIP packages...
powershell -Command "Compress-Archive -Path 'Release\win-x64\*' -DestinationPath 'Release\RunCat365-Windows-x64.zip' -Force"
powershell -Command "Compress-Archive -Path 'Release\win-arm64\*' -DestinationPath 'Release\RunCat365-Windows-ARM64.zip' -Force"

echo.
echo ========================================
echo Build completed successfully!
echo ========================================
echo.
echo Files created:
echo - Release\RunCat365-Windows-x64.zip
echo - Release\RunCat365-Windows-ARM64.zip
echo.
echo These ZIP files are ready for distribution!
echo.
pause
