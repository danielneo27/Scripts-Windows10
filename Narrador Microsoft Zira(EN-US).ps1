if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
Add-Type -AssemblyName System.Speech
$ATAVoiceEngine = New-Object System.Speech.Synthesis.SpeechSynthesizer
$ATAVoiceEngine | Get-Member
$ATAVoiceEngine.SelectVoice("Microsoft Zira Desktop")
$ATAVoiceEngine.Speak("Olá, meu nome é Zira. Irmão mais velho do PowerShell 7?. Como estamos com o clima hoje Daniel?")
