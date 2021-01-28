if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
netsh.exe advfirewall set allprofiles state off
Write-Host "Firewall Desativado" -F Yellow

netsh.exe advfirewall show allprofiles state
timeout /t 5