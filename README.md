# 🖥️ Auto Startup Fullscreen Script Installer

This batch file automatically downloads and installs a script (`open_fullscreen.bat`) into the **Windows Startup folder**, allowing it to execute automatically every time the system starts.

---

## 📁 File: `install_fullscreen.bat`

### 🔧 What it does:
- Connects to a GitHub-hosted `.bat` script.
- Downloads the script to the user's **Startup** folder.
- Hides the script for stealth execution.
- Executes the script automatically every time the system boots.
- **Deletes itself** permanently after installation.

---

## 📌 Script Breakdown:

| Section         | Description                                                  |
|----------------|--------------------------------------------------------------|
| ASCII Header    | Displays a styled header using Unicode characters.          |
| GitHub Download | Pulls the `open_fullscreen.bat` from the provided repository.|
| Startup Logic   | Places the file in `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`. |
| File Security   | Hides the script using `attrib +h`.                          |
| Cleanup         | Uses PowerShell to **self-delete** the installer script.     |

---

## 🛠 Requirements:
- Windows OS
- Internet connection to download the script
- GitHub availability (script is hosted on GitHub)

---

## 📦 Remote Script:
The script downloaded and auto-started is hosted at:
```
https://raw.githubusercontent.com/sk-mallick/open_fullscreen.bat/main/open_fullscreen.bat
```

---

## 🛡️ Security Note:
- This installer **automatically deletes itself** after the setup.
- The downloaded script is **hidden** in the Startup folder.

---

## ⚠️ Disclaimer:
This script modifies the user's Startup behavior. Please ensure you trust the downloaded script (`open_fullscreen.bat`) before running this installer.
