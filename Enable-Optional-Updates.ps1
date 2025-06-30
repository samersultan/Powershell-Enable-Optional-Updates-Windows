# Requires Administrator privileges


$registryPath = 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings'
$name = 'IsContinuousInnovationOptedIn'
$value = 1

# Check if the registry path exists, if not, create it
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set the registry value
New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null

Write-Output "Registry setting applied successfully."
