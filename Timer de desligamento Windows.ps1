$Duration = Read-Host -Prompt 'Especifique o tempo em minutos até que o sistema seja desligado.'
$Duration = $Duration -as [int]
$Duration = $Duration * 60

sleep $Duration
shutdown -s -t 00