if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

add-type -AssemblyName PresentationCore

$music = New-Object System.Windows.Media.MediaPlayer

$music.Open("C:\Users\danie\Downloads\Samm Henshaw - The World Is Mine (Official Video).mp3")
$music.Volume = 0.2

$music.Play()

Start-Sleep -Seconds 15

$music.Stop()
