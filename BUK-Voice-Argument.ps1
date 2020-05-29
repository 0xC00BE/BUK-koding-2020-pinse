Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer

$arguments = Get-Content -Path BUK-argument.txt


$max = 100

for ($i=1;$i -le $max; $i++){
    $random = Get-Random -Maximum ($arguments.count-1) -SetSeed $i
    if ($i%2 -eq 0) { 
        $speak.SelectVoiceByHints("Female")        
    } else {
        $speak.SelectVoiceByHints("Male")        
    }
    $speak.Speak($arguments[$random+1])

}




