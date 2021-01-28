Write-Host "shutting down"
(shutdown -a) 2> $null
timeout 2 > $null
[Int]$minutes=Read-Host 'After how many minutes should computer close ?'
$seconds=$minutes*60
shutdown -s -f -t $seconds
exit