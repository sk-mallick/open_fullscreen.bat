# 🚀 Auto Fullscreen Webpage Launcher (Startup Installer)

This project provides a Windows batch script (`sk-webpage.bat`) that downloads and installs another script (`open_fullscreen.bat`) into the user's **Startup folder**, enabling a specific webpage to automatically open in fullscreen mode every time the system starts.

---

## 📁 File: `sk-webpage.bat`

### 🔧 What it does:

- Downloads a `.bat` script (`open_fullscreen.bat`) from your GitHub repository.
- Moves the script into the Windows **Startup** folder.
- Hides the script so it runs silently.
- Automatically opens a **specified webpage in fullscreen mode** on system startup.
- Deletes itself after installation to ensure stealth and simplicity.

---

## 📂 Startup File Location:

The script is placed in:

```
%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
```

This ensures the webpage will open every time Windows boots.

---

## 🌐 Webpage to Open:

The webpage that opens on startup is defined inside `open_fullscreen.bat`. You can customize this by editing the following line inside that file:

```batch
start chrome --start-fullscreen https://example.com
```

Replace `https://example.com` with your desired URL.

---

## 🛠 Requirements:

- 🪟 Windows 10/11
- 🌐 Internet connection (for initial download)
- ✅ Google Chrome installed (or modify to use a different browser)

---

## 📥 Installation via PowerShell (One-Liner)

To download and run the batch installer directly, open **PowerShell** and paste the following command:

```powershell
iwr https://raw.githubusercontent.com/sk-mallick/open_fullscreen.bat/main/sk-webpage.bat -OutFile "$env:TEMP\a.bat"; Start-Process "$env:TEMP\a.bat"
```

This:
- Downloads `sk-webpage.bat` from GitHub
- Executes it immediately
- Installs `open_fullscreen.bat` into Startup
- Deletes the installer script

---

## 📌 Script Summary

| Feature               | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| 🚀 Auto Startup        | Adds a script to launch a webpage on every system boot.                     |
| 🎯 Fullscreen Launch   | Launches in fullscreen mode using Chrome's `--start-fullscreen` flag.       |
| 🧹 Self-Deleting       | The installer script deletes itself after running to stay clean.            |
| 🕵️ Hidden Script       | Sets the installed `.bat` file as hidden to avoid clutter.                 |

---

## 🛡️ Security Warning

This script modifies your **Startup folder**, which affects system boot behavior.  
Make sure you trust the script and understand what it’s doing before installing.

---

## 🧼 Uninstall Instructions

1. Press `Win + R`, type:  
   ```
   %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
   ```
2. Delete the file named `open_fullscreen.bat`.

---

## 📂 GitHub Repository

All files are hosted at:  
[https://github.com/sk-mallick/open_fullscreen.bat](https://github.com/sk-mallick/open_fullscreen.bat)

---

## 📃 License

This project is free to use and modify. No license restrictions apply.

---

## ⚠️ Disclaimer

This script is provided for **educational and automation purposes only**.  
By using this script, you acknowledge that:

- You understand it modifies the Windows **Startup folder**.
- You are responsible for any changes or impacts this script may have on your system.
- The author is **not liable** for any damages, data loss, or unexpected behavior caused by running or modifying this script.
- Always review scripts before executing them on your machine, especially those that affect startup behavior.

Use responsibly and only on systems you own or have permission to modify.
