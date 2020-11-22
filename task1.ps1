Write-host "Ingrese lo valores a continuacion:"
[int][validateRange(1000,200000)]$P=Read-Host -Prompt "Principal Amount" 
[float][validateRange(4,12)]$I=Read-Host -Prompt "Tasa de interes" 
[int][validateRange(5,30)]$Y=Read-Host -Prompt "Ingrese los años" 

$SI = $P * $I * $Y / 100

Write-Host "El interes será de: $SI" -BackgroundColor green