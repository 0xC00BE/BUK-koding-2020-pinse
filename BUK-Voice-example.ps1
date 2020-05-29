
Add-Type -AssemblyName System.speech
$speakObject = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speakObject.SelectVoice("Microsoft Paulina Desktop")
$speakObject.Speak("This is my text")
