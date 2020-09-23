Attribute VB_Name = "modDS"
Option Explicit

'The Main Direct Sound Object
Public dsMain As DirectSound
Public dsMain1 As DirectSound
'This is the sounds buffer object
Public DBuffer As DirectSoundBuffer
Public DBuffer1 As DirectSoundBuffer
'This is the Description of the sounds buffer object
Public DBufferDesc As DSBUFFERDESC
Public DBufferDesc1 As DSBUFFERDESC
'This defines the format of waveform-audio data
Public WavFormat As WAVEFORMATEX




'This is the sub that plays the sound
Sub DS_PlaySound(Looping As Boolean)
    'If looping is set to true
    If Looping = True Then
        'rewind the sound to the beginning
        Call DBuffer.SetCurrentPosition(0)
        'play the sound and loop it
        Call DBuffer.Play(DSBPLAY_LOOPING)
    'If looping is set to false
    Else
        'rewind the sound to the beginning
        Call DBuffer.SetCurrentPosition(0)
        'play the sound and don't loop it
        Call DBuffer.Play(DSBPLAY_DEFAULT)
    End If
End Sub


'This creates a sound buffer from a file
Sub DS_CreateSoundBufFromFile(FileName As String, bufferDesc As DSBUFFERDESC, wFormat As WAVEFORMATEX)
    'this sets the buffer to the file you want in the program
    Set DBuffer = dsMain.CreateSoundBufferFromFile(FileName, bufferDesc, wFormat)
    'Set DBuffer1 = dsMain1.CreateSoundBufferFromFile(FileName, bufferDesc, wFormat)
End Sub

'This sub basically calls the above sub for easier transportation to the main initialization
'This would make it easier if you had multiple sound files you wanted in the application
Sub DS_CreateSoundsFromFile()
   If click = 0 Then Call DS_CreateSoundBufFromFile(App.Path & "\sounds\music4.wav", DBufferDesc, WavFormat)
   ' Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Ao-laser.wav", DBufferDesc1, WavFormat)
End Sub
