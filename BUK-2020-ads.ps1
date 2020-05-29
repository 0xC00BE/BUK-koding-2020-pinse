# BUK 2020

# Alternate Data Stream - 

<#


# Configuring variables

$filePath = "D:\buk\Desktops.exe"
$restoreFilePath = "D:\buk\restored.exe"
$targetFile = "D:\buk\Picture.jpg"
$streamName = "ExeStream"

# Save executable to datastream

$b64encoded = [Convert]::ToBase64String([IO.File]::ReadAllBytes($filePath))
Set-Content -Path $targetFile -Stream $streamName -Value $b64encoded | out-null


# Restore datastream to executable file

$b64encoded = Get-Content -Path $targetFile -Stream $streamName
[IO.File]::WriteAllBytes($restoreFilePath,[Convert]::FromBase64String($b64encoded))


#>
