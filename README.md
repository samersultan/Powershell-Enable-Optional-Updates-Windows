# Enable "Get the latest updates as soon as they're available" in Windows 11

This PowerShell script enables the **"Get the latest updates as soon as they're available"** feature on Windows 11 by setting a specific registry value.

## 🛠️ What It Does

The script modifies the following registry key:

```
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings
```

It sets the `IsContinuousInnovationOptedIn` DWORD value to `1`, which opts the system into receiving the latest updates as soon as they're available.


## 📋 Prerequisites

- Must be run as an Administrator
- Compatible with Windows 11 only

## 🚀 How to Use

1. Right-click on the PowerShell script and select **Run as administrator**
2. Alternatively, launch a PowerShell terminal as administrator and run:

```powershell
.\Enable-LatestUpdates.ps1
```

## 📝 Script Contents

```powershell
$registryPath = 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings'
$name = 'IsContinuousInnovationOptedIn'
$value = 1

if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null

Write-Output "Registry setting applied successfully."
```

