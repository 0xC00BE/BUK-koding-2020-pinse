
Add-Type -AssemblyName System.speech
$speakObject = New-Object System.Speech.Synthesis.SpeechSynthesizer

$text = "The current time is $((Get-Date).ToShortTimeString())"

$speakObject.SelectVoiceByHints("Female")        
$speakObject.Speak($text)