# RunCat 365

**A cute running cat animation on your Windows Taskbar.**

RunCat365 displays an adorable animated cat in your Windows system tray that runs faster or slower based on your CPU usage. The higher your CPU load, the faster the cat runs! 🐱

> [!NOTE]
> This is a fork of the original [RunCat365 by Kyome22](https://github.com/Kyome22/RunCat365) with enhanced documentation, build scripts, and setup instructions to make it easier for anyone to build and run.

> [!CAUTION]
>
> - This project is for Windows only, so we do not accept inquiries about macOS version.
> - We do not accept issues or pull requests in languages other than English.

[![Github issues](https://img.shields.io/github/issues/mohmeadtke/cpu-cat-365)](https://github.com/mohmeadtke/cpu-cat-365/issues)
[![Github forks](https://img.shields.io/github/forks/mohmeadtke/cpu-cat-365)](https://github.com/mohmeadtke/cpu-cat-365/network/members)
[![Github stars](https://img.shields.io/github/stars/mohmeadtke/cpu-cat-365)](https://github.com/mohmeadtke/cpu-cat-365/stargazers)
[![Top language](https://img.shields.io/github/languages/top/mohmeadtke/cpu-cat-365)](https://github.com/mohmeadtke/cpu-cat-365/)
[![Release](https://img.shields.io/github/v/release/mohmeadtke/cpu-cat-365)]()
[![Github license](https://img.shields.io/github/license/mohmeadtke/cpu-cat-365)](https://github.com/mohmeadtke/cpu-cat-365/)

`C#` `.NET 9.0` `Visual Studio` `RunCat`

## Demo

![Demo](docs/images/demo.gif)

## Features

- 🐱 **Multiple Themes**: Cat, Horse, and Parrot animations
- 🌙 **Dark/Light Mode**: Automatically adapts to your system theme
- ⚡ **CPU Usage Indicator**: Animation speed reflects your system's CPU load
- 🚀 **Lightweight**: Minimal resource usage
- 🎯 **System Tray Integration**: Lives quietly in your taskbar
- ⚙️ **Customizable**: Adjustable speed settings and theme options

## Prerequisites

Before you can run RunCat365, make sure you have the following installed:

### Required:
- **Windows 10/11** (x64 or ARM64)
- **.NET 9.0 SDK** - [Download here](https://dotnet.microsoft.com/download/dotnet/9.0)

### Optional (for development):
- **Visual Studio 2022** or **Visual Studio Code**
- **Git** (if cloning from repository)

## Quick Start

### Option 1: Download Pre-built Release (Easiest)
1. Go to the [Releases page](https://github.com/mohmeadtke/cpu-cat-365/releases)
2. Download the latest `RunCat365-Windows.zip`
3. Extract the ZIP file
4. Double-click `RunCat 365.exe`
5. Look for the cat in your system tray! 🐱

### Option 2: Build from Source

#### Step 1: Clone the Repository
```bash
git clone https://github.com/mohmeadtke/cpu-cat-365.git
cd cpu-cat-365
```

#### Step 2: Install .NET 9.0 SDK
If you don't have .NET 9.0 SDK installed:

**Using Windows Package Manager (winget):**
```powershell
winget install Microsoft.DotNet.SDK.9
```

**Or download manually:**
- Visit [.NET 9.0 Download Page](https://dotnet.microsoft.com/download/dotnet/9.0)
- Download and install the SDK (not just the runtime)

#### Step 3: Verify Installation
```bash
dotnet --version
```
You should see version 9.0.x

#### Step 4: Build and Run
```bash
# Build the project
dotnet build

# Run the application
dotnet run --project RunCat365\RunCat365.csproj
```

#### Step 5: Create Standalone Executable (Optional)
To create a standalone .exe that doesn't require .NET to be installed:

```bash
dotnet publish RunCat365\RunCat365.csproj -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -o ".\Published"
```

The executable will be created in the `Published` folder.

## How to Use

1. **Start the Application**: Run the executable or use `dotnet run`
2. **Find the Cat**: Look in your system tray (bottom-right corner near the clock)
3. **Right-click the Cat**: Access settings and options
4. **Double-click the Cat**: Open the main settings window

### Available Options:
- **Change Theme**: Switch between Cat, Horse, or Parrot
- **Toggle Light/Dark Mode**: Match your system theme
- **Adjust Speed**: Customize animation speed multipliers
- **Auto-start**: Set up the app to start with Windows

## Auto-start with Windows

To make RunCat365 start automatically when Windows boots:

### Method 1: Using the Built-in Script
1. Run the `Create-Startup-Shortcut.ps1` script included in the repository
2. This will create a shortcut in your Windows Startup folder

### Method 2: Manual Setup
1. Press `Win + R`, type `shell:startup`, press Enter
2. Copy the `RunCat 365.exe` shortcut to this folder
3. The app will now start with Windows

## Troubleshooting

### "dotnet command not found"
- Make sure you installed the .NET SDK (not just the runtime)
- Restart your terminal/command prompt after installation
- Add .NET to your PATH if it's not automatically added

### "Application won't start"
- Ensure you're running on Windows 10/11
- Check that .NET 9.0 runtime is installed
- Try running from command line to see error messages

### "Can't see the cat"
- Check your system tray (you might need to expand hidden icons)
- Right-click the taskbar → "Taskbar settings" → "Select which icons appear on the taskbar"

### Building Issues
- Make sure you're in the correct directory
- Verify .NET SDK version: `dotnet --version`
- Clean and rebuild: `dotnet clean && dotnet build`

## Development

### Project Structure
```
RunCat365/
├── RunCat365/              # Main application code
│   ├── Program.cs          # Entry point
│   ├── Runner.cs           # Animation logic
│   ├── Theme.cs            # Theme management
│   └── resources/          # Icons and assets
├── WapForStore/            # Windows Store packaging
└── docs/                   # Documentation and images
```

### Building for Different Architectures
```bash
# For x64 Windows
dotnet publish -c Release -r win-x64 --self-contained true

# For ARM64 Windows
dotnet publish -c Release -r win-arm64 --self-contained true
```

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## System Requirements

- **OS**: Windows 10 version 1809 or later, Windows 11
- **Architecture**: x64, ARM64
- **Memory**: 50MB RAM
- **Storage**: 15MB disk space
- **.NET**: 9.0 Runtime (included in self-contained builds)

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Contributors

<a href="https://github.com/Kyome22/RunCat365/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Kyome22/RunCat365" />
</a>

## Support

If you enjoy RunCat365, please consider:
- ⭐ Starring this repository
- 🐛 Reporting bugs via [Issues](https://github.com/mohmeadtke/cpu-cat-365/issues)
- 🚀 Suggesting new features
- 🤝 Contributing code

---

Made with ❤️ for Windows users who love cute animations!
