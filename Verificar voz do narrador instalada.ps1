#Rodar cada linha separadamente para funcionar!
Add-Type -AssemblyName System.Speech
$ATAVoiceEngine
$ATAVoiceEngine = New-Object System.Speech.Synthesis.SpeechSynthesizer
$ATAVoiceEngine | Get-Member
$ATAVoiceEngine.Voice
$ATAVoiceEngine.GetInstalledVoices()
$ATAVoiceEngine.GetInstalledVoices().VoiceInfo
