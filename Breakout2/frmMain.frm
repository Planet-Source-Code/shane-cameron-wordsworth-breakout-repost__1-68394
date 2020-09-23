VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H000000FF&
   BorderStyle     =   0  'None
   Caption         =   "First Game Thing"
   ClientHeight    =   5520
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7245
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   368
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   483
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'The Main Form

Private Sub Form_Click()
' The click sub
' confused myself here a few times :)
' The click value is used for many things...
' If we see title screen(click=0) and click mouse
' then click =1 we start the game play
' if we see highscores (click = 2)
' and click mouse then click = 1 start game play
' but
' if in game play and click = 1 and we have a shooting paddle
' then click would become fireing and shoot ??
' confused yet :)

   
If enteringname = False Then
   If click = 0 Then click = 1: Call loadup: score = 0: Exit Sub
   If click = 2 Then click = 1: Exit Sub
   If DIE = 0 Then
        If ballx = 0 And bally = 0 Then ballx = 1: bally = 2
'when shooting bullets
'only two lots of bullets are able at one time
'when 1 lot of bullets are gone
'then we can shoot again

        If shoot = 1 Then
            fireing = fireing + 1
                If fireing >= 3 Then fireing = 1
                If fire(fireing) = 0 Then
                fire(fireing) = 1
                ' if we are shooting then do the shootin sounds
                Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Gunfire.wav", DBufferDesc, WavFormat)
                Call DS_PlaySound(False) 'do not loop sound
                'set bullet 1 and 2 x and y positions
                bullet1y(fireing) = bY - 15
                bullet2y(fireing) = bY - 15
                bullet1x(fireing) = bX + 5
                bullet2x(fireing) = (bX + paddlewidth) - 5
                End If
        End If
    End If
End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

   ' used in entering highscore data
   ' stops user from typeing more than 14 characters
   If Len(tempstring) >= 14 Then tempstring = Left$(tempstring, 14)
    
    
    Select Case KeyCode
   
     
    'if the user presses Escape it will end the current screen
    'until in start screen screen then end the app
    Case vbKeyEscape
    'if game is paused then exit this sub else continue
    If pause = True Then Exit Sub
    'if not entering highscore then continue
    If enteringname = False Then
    'if not in main start screen then set new values
    If click <> 0 Then
    ballx = 0: bally = 0
    DIE = 400
    timer = 1
    score = 0
    lives = 0
    shoot = 0
    through = 0
    'calls the death sub when esc is pressed during gamplay
    'and plays sound for main start screen
    'looping
    Call DEATH
    Call DS_CreateSoundBufFromFile(App.Path & "\sounds\music4.wav", DBufferDesc, WavFormat)
    Call DS_PlaySound(True) 'loop the sound
    'set timer to 1 (USED AS COUNTER)
    timer = 1
    
    Exit Sub
    End If
    End If
        ' If esc was pressed on mainstart screen then
        'restore original display settings
        'show cursor = 1 (cursor visable)
        'end application (game)
        If click = 0 Then
        running = False
         Call DX_RestoreDisplayCoopLevel(frmMain.hWnd)
         ShowCursor 1
         End
         End If
         
   
   
   'these case keys used for
   'user entering highscore data
   'tempstring holds a string value of what the user types
    Case vbKeyA
   If enteringname = True Then tempstring = tempstring + "A"
    Case vbKeyB
    If enteringname = True Then tempstring = tempstring & "B"
    Case vbKeyC
    If enteringname = True Then tempstring = tempstring & "C"
    Case vbKeyD
    If enteringname = True Then tempstring = tempstring & "D"
    Case vbKeyE
   If enteringname = True Then tempstring = tempstring & "E"
    Case vbKeyF
   If enteringname = True Then tempstring = tempstring & "F"
    Case vbKeyG
   If enteringname = True Then tempstring = tempstring & "G"
    Case vbKeyH
   If enteringname = True Then tempstring = tempstring & "H"
    Case vbKeyI
   If enteringname = True Then tempstring = tempstring & "I"
    Case vbKeyJ
   If enteringname = True Then tempstring = tempstring & "J"
    Case vbKeyK
   If enteringname = True Then tempstring = tempstring & "K"
    Case vbKeyL
   If enteringname = True Then tempstring = tempstring & "L"
    Case vbKeyM
  If enteringname = True Then tempstring = tempstring & "M"
    Case vbKeyN
  If enteringname = True Then tempstring = tempstring & "N"
    Case vbKeyO
   If enteringname = True Then tempstring = tempstring & "O"
    Case vbKeyP
   If enteringname = True Then tempstring = tempstring & "P"
    Case vbKeyQ
   If enteringname = True Then tempstring = tempstring & "Q"
    Case vbKeyR
  If enteringname = True Then tempstring = tempstring & "R"
    Case vbKeyS
   If enteringname = True Then tempstring = tempstring & "S"
    Case vbKeyT
  If enteringname = True Then tempstring = tempstring & "T"
    Case vbKeyU
  If enteringname = True Then tempstring = tempstring & "U"
    Case vbKeyV
  If enteringname = True Then tempstring = tempstring & "V"
    Case vbKeyW
   If enteringname = True Then tempstring = tempstring & "W"
    Case vbKeyX
   If enteringname = True Then tempstring = tempstring & "X"
    Case vbKeyY
   If enteringname = True Then tempstring = tempstring & "Y"
    Case vbKeyZ
    If enteringname = True Then tempstring = tempstring & "Z"
    Case vbKeySpace
   If enteringname = True Then tempstring = tempstring & " "
    Case vbKeyBack
   If enteringname = True Then
   'temp holds the amount of charactors in tempstring
   temp = Len(tempstring)
   'if temp >0 and user press back then temp=temp-1
   'erasing the last letter pressed by user
   If temp > 0 Then tempstring = Left$(tempstring, temp - 1)
   End If
    
    Case vbKeyReturn
    'adjust new highscores and names
    highscoree(scorepos) = tempstring: scorelog(scorepos) = tempscore2
    'write the new data to dat file (save data)
    writescores
    'ends input highscores
    enteringname = False
    'timer / counter = 500
    timer = 500
 'if we pause the game
 Case vbKeyPause
 'if in play
 If click = 3 Then
   'if we are paused then unpause
   If pause = True Then pause = False: Exit Sub
   'if we are not paused then pause
   If pause = False Then pause = True: Exit Sub
End If
    'end's select case
    End Select

End Sub

Private Sub Form_Load()
    'this goes to the main initialization sub
    'these values are passed to dx_init
    'timer is used as a counter
    timer = 400
    'entering name true or false
    'is used when prompted for user highscore
    enteringname = False
    'pause (1 is paused / 2 is not paused)
    pause = 2
    'lives is amount of lives that user starts with
    lives = 3
    'the click value is what screen is visiable at what times
    'click (0=main screen / 1= high scores / 2 = game play)
    click = 0
    'fireing is the value used for enableling the shoot paddle
    'used thi9s instead of bolean for the fireing value
    'is set for (0=don't fire/1=fire first round/2 fire second round)
    fireing = 1
    'shoot values chang from 0 , 1 ,2 as per fireing
    shoot = 0
    'randomize timer / as it says
    'randomizes in a random order
    Randomize timer
    'set's paddle width to 100
    paddlewidth = 100
    'set's paddle height to 10
    paddlehight = 10
    'set's ball x axis position
    ballx = 0
    'set's ball y speed to value = 3
    ballspeedy = 3
    'set's ball y speed to value = 3
    ballspeedx = 3
    'set's ball y axis position
    bally = 0
    'sets boxes value to 1
    boxes = 1
    'size sets the paddle size
    size = 1
    
    bY = 450
    'show cursor uses a windows api call to hide cursor
    '1=visiable / 0 = not visable
    ShowCursor 0
    'game not paused
    pause = False
    'set's level to level 1
    level = 1
    
    'This loop sets all blocks to 0 (meaning not visiable)
    'and bonuses x and y positions to 2(meaning not visiable)
    For temp = 1 To 300
    block(temp) = 0
    bonusyy(temp) = 2
    bonusxx(temp) = 2
    Next temp
    'loads up level
    Call loadup
    'calls dx_init (starts Main part of game)
    DX_Init
    
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
' The mouse move sub is the where the
' User controls the paddle during game play
' If we are not paused then move the paddle
If pause = False Then
'bx is the x position of the paddle
' in this case bx = x where x is the
' value of the mouses x axis
bX = X
' set boundries for x / (bx)
' so paddle doesn't go off the screen
If bX + paddlewidth >= 630 Then bX = 630 - paddlewidth
If bX <= 10 Then bX = 10
'if ball x value = 0 and ball y value =0 then ball is
'half way on top of paddle
If ballx = 0 And bally = 0 Then sX = bX + (paddlewidth \ 2): sY = bY - 10
End If

End Sub
