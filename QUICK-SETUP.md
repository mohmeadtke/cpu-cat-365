# Quick Setup Guide for CPU Cat 365

## For Users (Just want the cute cat):

### Option 1: Download Pre-built Release (Recommended)

1. Visit: https://github.com/mohmeadtke/cpu-cat-365/releases
2. Download the latest `RunCat365-Windows.zip`
3. Extract and run `RunCat 365.exe`
4. Enjoy your cat! 🐱

### Option 2: Build from Source

```powershell
# 1. Install .NET 9.0 SDK
winget install Microsoft.DotNet.SDK.9

# 2. Clone the repository
git clone https://github.com/mohmeadtke/cpu-cat-365.git
cd cpu-cat-365

# 3. Build and run
dotnet build
dotnet run --project RunCat365\RunCat365.csproj

# 4. (Optional) Create standalone executable
dotnet publish RunCat365\RunCat365.csproj -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -o ".\Published"
```

## For Developers:

### Prerequisites

- Windows 10/11
- .NET 9.0 SDK
- Git
- Visual Studio 2022 or VS Code (optional)

### Development Setup

```powershell
# Clone the repo
git clone https://github.com/mohmeadtke/cpu-cat-365.git
cd cpu-cat-365

# Install .NET SDK if needed
winget install Microsoft.DotNet.SDK.9

# Verify installation
dotnet --version

# Build the project
dotnet build

# Run in development mode
dotnet run --project RunCat365\RunCat365.csproj

# Create release builds for distribution
./build-release.bat
```

### Auto-start with Windows

```powershell
# Run the included script to add to Windows startup
PowerShell -ExecutionPolicy Bypass -File "Create-Startup-Shortcut.ps1"
```

### Project Structure

- `RunCat365/` - Main application code
- `WapForStore/` - Windows Store packaging
- `docs/` - Documentation and demo images
- `Published/` - Built executables (created after build)

## What You Get

- 🐱 Animated cat in system tray
- ⚡ Animation speed matches CPU usage
- 🎨 Multiple themes (Cat, Horse, Parrot)
- 🌙 Light/Dark mode support
- 🚀 Lightweight and efficient

## Troubleshooting

- **"dotnet not found"**: Install .NET 9.0 SDK
- **"Can't see cat"**: Check system tray hidden icons
- **Build errors**: Run `dotnet clean && dotnet build`

## Credits

Based on the original RunCat365 by Kyome22 with enhanced documentation and build scripts.
