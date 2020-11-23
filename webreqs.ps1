$resp=Invoke-WebRequest http://httpbin.org/json

$resp.rawcontent

Get-Alias -Definition invoke-webrequest

$r = iwr http://httpbin.org/headers `
-Headers @{'Accept' = 'application/json'; 'X-My-Header' = 'Hello World'} -UserAgent "google chot"

$r.rawcontent


$r=iwr http://httpbin.org/post `
-Method 'POST' `
-Body @{ 'hello' = 'world'}
<#-ContentType 'application/json; charset=utf-8' `
-Body '{"hello": "world"}'#>


$r

$s = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$c = New-Object System.Net.Cookie('Hello','World','/','httpbin.org')
$s.Cookies.Add($c)
$s

$r = iwr 'http://httpbin.org/cookies' -WebSession $s

Get-ChildItem Cert:\CurrentUser\My

$r = iwr 'https://client.badssl.com' `
-CertificateThumbprint 0CF67CC7D352CF6EE5D086AF73B1BFD8860794F8


try {
    $r = iwr http://httpbin.org/doesnt-exist
} catch {
    $r = $_.Exception
    $r
}