#comment added to master
 Get-Item -Path c:\temp\

Copy-Item -Path c:\temp -Confirm -Destination c:\temp\test




Get-Command "*request*"
get-help Invoke-WebRequest -ShowWindow

$result=Invoke-WebRequest -uri "https://api.covid19api.com/country/argentina/status/confirmed"

$byCountry=ConvertFrom-Json $result

$100000=$false

foreach($day in $byCountry)
{
if(($day.Cases -gt 100000) -and ($100000 -eq $false))
    {
        write-host ('100000 el: ' + $day.Date)
        $100000=$true
    }
if($day.Cases -gt 1000000)
    {
        write-host ('1000000 el: ' + $day.Date)
        break
    }
}

$100000



$day='Saturday'
$do=if ($day -eq 'Sunday'){"divertirme"}else{"trabajar"}
Write-Host("tengo que $do") -BackgroundColor DarkCyan
