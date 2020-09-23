Attribute VB_Name = "modDX"
Option Explicit
'Declaring all Values and variables as public
'for use through ou the hole program

'The Main DirectX Object
Public dxMain As New DirectX7

'The tempory Values and types
'Used to hold a tempory string value
Public tempstring As String
Public tempstring2 As String
'Used to hold a tempory score values
Public tempscore As Long
Public tempscore2 As Long
'Used to hold a tempory shoot value
Public tempshoot As Integer
Public tempblock As Integer
'Used to hold tempory blocks values
Public tempblockx As Integer
Public tempblocky As Integer
Public tempblockspritex As Integer
Public tempblockspritexx As Integer
Public tempblockspritey As Integer
Public tempblockspriteyy As Integer
'Used to hold a tempory integer value
Public temp2 As Integer
Public temp3 As Integer
Public temp4 As Integer
Public temp5 As Integer
Public temp As Integer


'The Ball
'The ball Current X and Y Values
Public sX As Integer
Public sY As Integer
'The ball Current upleft down left ect values
Public bally As Integer
Public ballx As Integer
'The Ball Speed Values
Public ballspeedx As Integer
Public ballspeedy As Integer
Public ballspeeding As Integer
Public speed As Integer
' the through value this value sets
' weather the ball hits a block or goes
' straight through it
Public through As Byte

'The Paddle
'The paddle Current X and Y Values
Public bX As Integer
Public bY As Integer
'The paddle hight and length Values
Public paddlewidth As Integer
Public paddlehight As Integer
'the paddle size
Public size As Integer



'The Blocks
'There are 300 blocks in total
'the block number value Array
Public block(1 To 300) As Integer
'Block number (?) x position
Public blockx(1 To 300) As Integer
'Block number (?) y position
Public blocky(1 To 300) As Integer
'blocksprite in block number if any
Public blockspritex(1 To 300) As Integer
'and if there is blockspritexx  (?) posx
Public blockspritexx(1 To 300) As Integer
'blocksprite in block number if any
Public blockspritey(1 To 300) As Integer
'and if there is blockspritexy  (?) posy
Public blockspriteyy(1 To 300) As Integer
'Colchange re - colour change (text on screen)
Public COLCHANGE As Byte

'scores loaded true or false
Public scoresloaded As Boolean
'entering game true or false
Public enteringname As Boolean

'the score position
Public scorepos As Byte
'pause true or false
Public pause As Boolean
'timer is just that a timer / counter
Public timer As Integer

'The fireing feature
'shoot value 1 2 or zero
'1 is the first lot of bullets
'2 is the second lot of bullets
'zero means no bullets
Public shoot As Integer
'the bullets fireing x an y positions
'there are two bullets one on the left and 1 on the right
' 1x 1y / 2x 2y
Public bullet1x(1 To 300) As Integer
Public bullet1y(1 To 300) As Integer
Public bullet2x(1 To 300) As Integer
Public bullet2y(1 To 300) As Integer
'shoottempcheck fire fireing and shoottemp check's if we are fireing
Public shoottempcheck As Integer
Public fire(1 To 300) As Integer
Public fireing As Integer
Public shoottemp As Integer
'lives is the amound of lives within the game
Public lives As Integer
'boxes is used as a counter
Public boxes As Integer
'blockchange is for the flashing blocks
'blockchange values are by 3
Public blockchange As Integer
'the blockchangecounter changes the blockchange
'value when it gets to a specific value
Public blockchangecounter As Integer
'bonus temp is a tempory value to hold a bonus value
Public bonustemp As Integer
'the level value holds what level your up to
Public level As Integer
'score value is to hold the score value
Public score As Long

'are we dead (die) value to se if we loose a life
Public DIE As Integer
'click , the click value changes for which screen is being displayed.
'eg . if click = 0 then display title screen
Public click As Integer
'hold the block temp value (tempory value)
Public blocktemp As Integer
'hold the block temp value (tempory value 2)
Public blocktemp2 As Integer

'The high scores
'scorelog holds the score from 1 to 10 of the highest to lowest
Public scorelog(1 To 10) As Long
'goes with scorelog/ highscoree holds the name (string) of that person
'with the highscore from 1 to 10
Public highscoree(1 To 10) As String

'The bonuses
'bonusy holds the bonus position y position
Public bonusy(1 To 300) As Integer
'bonusx holds the bonus position x position
Public bonusx(1 To 300) As Integer
'bonusyy holds the bonus position yy position
Public bonusyy(1 To 300) As Integer
'bonusxx holds the bonus position xx position
Public bonusxx(1 To 300) As Integer
'bonusfall is the value had changed and there is a bonus inside
'the block the bonus fall will be the bonufall value
Public bonusfall(1 To 300) As Integer
'bonusrndfall is the the bonus value (eg life shrinkpaddle ect.)
'that is assigned to a block value
Public bonusRNDfall(1 To 300) As Integer
'Checks to See if The Main Loop should stop or not
Public running As Boolean

'This sets the screens display and the cooperative levels
Sub DX_SetDisplayCoopLevel(Hdl As Long, sWidth As Long, sHeight As Long, sBPP As Long)
    'This one is for the Direct Sound
    Call dsMain.SetCooperativeLevel(Hdl, DSSCL_PRIORITY)
    'This one is for Direct Draw
    Call ddMain.SetCooperativeLevel(Hdl, DDSCL_FULLSCREEN Or DDSCL_EXCLUSIVE Or DDSCL_ALLOWMODEX)
    'This sets the display mode
    Call ddMain.SetDisplayMode(sWidth, sHeight, sBPP, 0, DDSDM_DEFAULT)
End Sub

'This restores everything to normal when the Program is exited
Sub DX_RestoreDisplayCoopLevel(Hdl As Long)
    'This sets the Direct Sound Cooperative Level to normal
    Call dsMain.SetCooperativeLevel(Hdl, DSSCL_NORMAL)
    'This sets the Direct Draw Cooperative Level to normal
    Call ddMain.SetCooperativeLevel(Hdl, DDSCL_NORMAL)
    'This restores the users default Display Mode
    Call ddMain.RestoreDisplayMode
End Sub

'This is where everything comes together
Sub DX_Init()

    'This tells the loop below that it is running
    running = True

    On Error Resume Next
    'This creates the Direct Draw object
    Set ddMain = dxMain.DirectDrawCreate("")
    'This creates the Direct Sound object
    Set dsMain = dxMain.DirectSoundCreate("")
    
    'This calls the sub from above that sets the Display and the Cooperative Levels
    Call DX_SetDisplayCoopLevel(frmMain.hWnd, 640, 480, 16)
    'This calls a sub from modDD that creates the Primary Surface and the Backbuffer
    DD_CreatePrimBackBuf

    'This calls a sub from modDD that Creates Graphics from their Files
    DD_CreateGraphicsFromFile
    'This calls a sub from modDS that Creates Sounds from their Files
    DS_CreateSoundsFromFile
    
    'This calls a sub from modDS that Starts the Sound file and tells whether
    'it should be looped or not
    If click = 0 Then
    Call DS_CreateSoundBufFromFile(App.Path & "\sounds\music4.wav", DBufferDesc, WavFormat)
    Call DS_PlaySound(True)
    End If
    'call high scores and load them if not already loaded
    highscore
    
    
    'This is the main render / game loop
    Do
If pause = True Then pausing 'we are pausing
If pause = False Then ' we are not paused
    COLCHANGE = COLCHANGE + 1 'change the text color by 1
    If COLCHANGE >= 250 Then COLCHANGE = 1 'if color = or bigger than 250 then color = 1
  Call BackBuf.SetForeColor(RGB(COLCHANGE, 2, 251 - COLCHANGE)) 'set fore color (red blue green (color witch is the red value,blue value,greenvalue-color)
'makes and interesting text affect
  

    If click = 1 Then
     Call DS_CreateSoundBufFromFile(App.Path & "\sounds\music2.wav", DBufferDesc, WavFormat): Call DS_PlaySound(False): click = 3 'This calls a sub from modDS that Starts the Sound file and tells whether
    'it should be looped or not
    End If
        'This blits a black color fill to the back buffer
        Call BackBuf.BltColorFill(rBGSurf, RGB(0, 0, 0))
        'This calls a sub from modDD that blits the Background to the back buffer
        Call DD_BltFast(0, 0, 640, 480, BGSurf, rBGSurf, 0, 0, False)
        'This calls a sub from modDD that blits the Sprite to the back buffer
       If DIE = 0 Then Call DD_BltFast(0, 0, 10, 10, SpriteSurf, rSpriteSurf, sX, sY, True)
       
        'calls the scoring sub
        scoreing
       
      ' the action
 
      If DIE = 0 Then Call DD_BltFast(0, 0, paddlewidth, 15, paddleSurf, rpaddleSurf, bX, bY, True)
        blockchangecounter = blockchangecounter + 1
        If blockchangecounter >= 15 Then blockchangecounter = 1
        For blocktemp = 1 To 300
         If block(blocktemp) = 1 Then Call DD_BltFast(blockspritey(blocktemp), blockspritex(blocktemp), blockspritexx(blocktemp), blockspriteyy(blocktemp), blockSurf, rblockSurf, blockx(blocktemp), blocky(blocktemp), True)
         If block(blocktemp) = 1 And blockchangecounter <= 5 And blockspritex(blocktemp) = 300 Then blockspritex(blocktemp) = 330: blockspritexx(blocktemp) = 360
         If block(blocktemp) = 1 And blockchangecounter >= 6 And blockchangecounter <= 10 And blockspritex(blocktemp) = 330 Then blockspritex(blocktemp) = 360: blockspritexx(blocktemp) = 390
         If block(blocktemp) = 1 And blockchangecounter >= 11 And blockspritex(blocktemp) = 360 Then blockspritex(blocktemp) = 300: blockspritexx(blocktemp) = 330
        Next blocktemp
         
         For bonustemp = 1 To 300
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 1 Then Call DD_BltFast(0, 0, 29, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 2 Then Call DD_BltFast(0, 29, 58, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 3 Then Call DD_BltFast(0, 58, 87, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 4 Then Call DD_BltFast(0, 87, 116, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 5 Then Call DD_BltFast(0, 116, 145, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 6 Then Call DD_BltFast(0, 145, 174, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 7 Then Call DD_BltFast(0, 174, 202, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 8 Then Call DD_BltFast(0, 202, 231, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
        If block(bonustemp) = 0 And bonusfall(bonustemp) = 9 Then Call DD_BltFast(0, 231, 260, 29, bonusSurf, rbonusSurf, bonusx(bonustemp), bonusy(bonustemp), True)
         Next bonustemp
        If lives <= 0 Then EndGame
        If shoot = 1 Then
        
            For tempshoot = 1 To 4
           If fire(tempshoot) = 1 Then Call DD_BltFast(62, 0, 3, 80, numSurf, rnumSurf, bullet1x(tempshoot), bullet1y(tempshoot), True): Call DD_BltFast(62, 0, 3, 80, numSurf, rnumSurf, bullet2x(tempshoot), bullet2y(tempshoot), True)
            Next tempshoot
            shooting
        End If
        bullethitsblock
        
        
       ' check paddle hits walls
       If bX + paddlewidth >= 630 Then bX = 630 - paddlewidth
       If bX <= 10 Then bX = 10
       If ballx = 0 And bally = 0 Then sX = bX + (paddlewidth \ 2): sY = bY - 10
         checkballhitsblock
               ballhitpaddle
       
       
        bonuseshit
        bonuses
       
        levelcomplete
        livesleft
        If DIE >= 1 Then DEATH
        
        
     If enteringname = True Then
     Call DD_BltFast(0, 0, 640, 480, BG3Surf, rBG3Surf, 0, 0, False)
      entername
     End If
If enteringname = False Then
     If click = 0 Then Call DD_BltFast(0, 0, 640, 480, BG2Surf, rBG2Surf, 0, 0, False)
     If click = 2 Then highscore
      If click = 0 Or click = 2 Then timer = timer + 1
      If click = 0 And timer >= 500 Then click = 2
      If click = 2 And timer >= 900 Then click = 0: timer = 1
      If click = 1 Then timer = 1
End If
       'This flips everything to the Primary Surface
        Call PrimBuf.Flip(Nothing, DDFLIP_WAIT)
        'This is so windows can process other events
    
      If bally = 1 Then sY = sY + ballspeedy
        If sY > 500 Then
            For temp = 1 To 300
            If block(temp) = 0 Then bonusy(temp) = 550: bonusfall(temp) = 0
            fire(temp) = 0
            Next temp
            ballspeedy = 3
            
            lives = lives - 1: ballx = 0: bally = 0: size = 1
            DIE = 1
            If lives > 0 Then byeball
            If lives <= 0 Then Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Lose.wav", DBufferDesc, WavFormat):     Call DS_PlaySound(False)
     
            
            
            shoot = 0
            through = 0
            
            changepaddlesize
        End If
      If bally = 2 Then sY = sY - ballspeedy: If sY < 10 Then bally = 1
      If ballx = 1 Then sX = sX + ballspeedx: If sX > 625 Then ballx = 2
      If ballx = 2 Then sX = sX - ballspeedx: If sX < 10 Then ballx = 1
             ballhitpaddle

End If
        DoEvents
    'This tells the program to loop until the user quits the program
    Loop Until running = False

End Sub

'This ends the app
Sub DX_EndIt()
    'This tells the render loop to stop working
    running = False
    'This calls a sub from above that sets everything to normal
        ShowCursor 0
           
    Call DX_RestoreDisplayCoopLevel(frmMain.hWnd)
    'frmMain.Hide
    
  
    
 'this goes to the main initialization sub
    Randomize timer
    paddlewidth = 100
    paddlehight = 10
    ballx = 0
    ballspeedy = 3
    ballspeedx = 3
    bally = 0
    boxes = 1
    size = 1
    bY = 450
    ShowCursor 0

For temp = 1 To 300
block(temp) = 0
bonusyy(temp) = 2
bonusxx(temp) = 2
Next temp
'This calls up next level and the above resets
'all values exept for the score

level = level + 1
Call loadup
DX_Init
End Sub
Sub ballhitpaddle()
' small paddle hit
'checks to see if the ball hits the small paddle
' in different positions so that then the ball will
'respond in a particular dirrection
If size = 0 Then
   If bally = 1 And ballx = 1 And sX + 10 >= bX And _
   sX <= bX + 26 And _
   sY >= bY - 10 And _
   sY - 15 <= bY Then
   bally = 2: ballx = 2
   speedup
   soundhitpaddle
   Exit Sub
   End If
   
   If bally = 1 And ballx = 2 And sX + 10 >= bX And _
   sX <= bX + 26 And _
   sY >= bY - 10 And _
   sY - 15 <= bY Then
   bally = 2: ballx = 2
   speedup
   soundhitpaddle
   Exit Sub
   End If
   
   If bally = 1 And ballx = 1 And sX + 10 >= bX + 24 And _
   sX <= bX + 50 And _
   sY >= bY - 10 And _
   sY - 15 <= bY Then
   bally = 2: ballx = 1
   speedup
   soundhitpaddle
   Exit Sub
   End If
   
   If bally = 1 And ballx = 2 And sX + 10 >= bX + 24 And _
   sX <= bX + 50 And _
   sY >= bY - 10 And _
   sY - 15 <= bY Then
   bally = 2: ballx = 1
   speedup
   soundhitpaddle
   Exit Sub
   End If

End If




' other size paddle hit
'checks to see if the ball hits the paddle of other sizes appart from small
' in different positions so that then the ball will
'respond in a particular dirrection
If ballx = 1 Then
    If sX + 10 >= bX And _
    sX <= bX + ((paddlewidth / 2) / 4) + 1 And _
    sY - 10 <= bY And _
    sY >= bY - paddlehight Then ballspeedx = 5: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub
    
    If sX + 10 >= bX + ((paddlewidth / 2) / 4) - 1 And _
    sX <= bX + (((paddlewidth / 2) / 4) * 2) + 1 And _
    sY - 10 <= bY And _
    sY >= bY - paddlehight Then ballspeedx = 4: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub
    
    If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 2) - 1 And _
    sX <= bX + (((paddlewidth / 2) / 4) * 3) + 1 And _
    sY - 10 <= bY And _
    sY >= bY - paddlehight Then ballspeedx = 3: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub
    
    If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 3) - 1 And _
    sX <= bX + (((paddlewidth / 2) / 4) * 4) + 1 And _
    sY - 10 <= bY And _
    sY >= bY - paddlehight Then ballspeedx = 2: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub
End If

If ballx = 1 Then
If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 4) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 5) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 2: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 5) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 6) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 3: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 6) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 7) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 4: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 7) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 8) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 5: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub
End If



If ballx = 2 Then
If sX + 10 >= bX And _
sX <= bX + ((paddlewidth / 2) / 4) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 5: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + ((paddlewidth / 2) / 4) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 2) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 4: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 2) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 3) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 3: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 3) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 4) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 2: bally = 2: ballx = 2: speedup: soundhitpaddle: Exit Sub
End If

If ballx = 2 Then
If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 4) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 5) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 2: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 5) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 6) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 3: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 6) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 7) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 4: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub

If sX + 10 >= bX + (((paddlewidth / 2) / 4) * 7) - 1 And _
sX <= bX + (((paddlewidth / 2) / 4) * 8) + 1 And _
sY - 10 <= bY And _
sY >= bY - paddlehight Then ballspeedx = 5: bally = 2: ballx = 1: speedup: soundhitpaddle: Exit Sub
End If

End Sub

Sub checkballhitsblock()
'what it say's
'checks to see if the ball hits a block


'if the through value if 1 means the ball can go
'right through the block it thens changes the block (tempory value)
'to 1 (no block) and adds 5 to the scorevalue.
'therefore caling the sound hit block and calling the
'new drawing for that block position
If through = 1 Then
For temp = 1 To 300
   If sX + 10 >= blockx(temp) And _
   sX <= blockx(temp) + 30 And _
   sY - 10 <= blocky(temp) And _
   sY >= blocky(temp) - 15 And _
   block(temp) = 1 Then
   score = score + 5
  soundhitblock
   Call DD_BltFast(0, 270, 300, 15, blockSurf, rblockSurf, blockx(temp), blocky(temp), True): block(temp) = 0
   End If
Next temp
Exit Sub
End If

'top side of block hit
'if the ball hits the top of the block it thens changes the block (tempory value)
'to 1 (no block) and adds 5 to the scorevalue.
'therefore caling the sound hit block and calling the
'new drawing for that block position
'and changing the ball position
For temp = 1 To 300
   If sX + 3 >= blockx(temp) And _
   sX <= blockx(temp) + 23 And _
   sY <= blocky(temp) And _
   sY >= blocky(temp) - 8 And _
   block(temp) = 1 Then
   score = score + 5
         soundhitblock
   Call DD_BltFast(0, 270, 300, 15, blockSurf, rblockSurf, blockx(temp), blocky(temp), True): block(temp) = 0
   If bally = 1 Then bally = 2
   End If



'bottom side of block hit
'if the ball hits the bottom of the block it thens changes the block (tempory value)
'to 1 (no block) and adds 5 to the scorevalue.
'therefore caling the sound hit block and calling the
'new drawing for that block position
'and changing the ball position
   If sX + 3 >= blockx(temp) And _
   sX <= blockx(temp) + 23 And _
   sY - 10 <= blocky(temp) - 8 And _
   sY >= blocky(temp) And _
   block(temp) = 1 Then
   score = score + 5
     soundhitblock
   Call DD_BltFast(0, 270, 300, 15, blockSurf, rblockSurf, blockx(temp), blocky(temp), True): block(temp) = 0
   If bally = 2 Then bally = 1
   End If




'left side of block hit
'if the ball hits the left of the block it thens changes the block (tempory value)
'to 1 (no block) and adds 5 to the scorevalue.
'therefore caling the sound hit block and calling the
'new drawing for that block position
'and changing the ball position
  If sX + 10 >= blockx(temp) And _
  sX <= blockx(temp) + 5 And _
  sY + 10 >= blocky(temp) And _
  sY <= blocky(temp) + 10 And _
  block(temp) = 1 Then
  score = score + 5
    soundhitblock
  Call DD_BltFast(0, 270, 300, 15, blockSurf, rblockSurf, blockx(temp), blocky(temp), True): block(temp) = 0
  If ballx = 1 Then ballx = 2
  End If


'right side of block hit
'if the ball hits the right of the block it thens changes the block (tempory value)
'to 1 (no block) and adds 5 to the scorevalue.
'therefore caling the sound hit block and calling the
'new drawing for that block position
'and changing the ball position
   If sX >= blockx(temp) + 25 And _
   sX <= blockx(temp) + 30 And _
   sY + 10 >= blocky(temp) And _
   sY <= blocky(temp) + 10 And _
   block(temp) = 1 Then
   score = score + 5
      soundhitblock
   Call DD_BltFast(0, 270, 300, 15, blockSurf, rblockSurf, blockx(temp), blocky(temp), True): block(temp) = 0
   If ballx = 2 Then ballx = 1
   End If
Next temp

 
End Sub
Sub levelcomplete()
'this sub checks to see if all blocks are gone
'and if they are resets values to start except for score
'then calls dx end it which refreshes values
'and calls next level
For temp = 1 To 300
If block(temp) = 1 Then Exit Sub
Next temp
For temp4 = 1 To 300
If block(temp4) = 0 Then bonusy(temp4) = 550: bonusfall(temp4) = 0
fire(temp4) = 0
Next temp4
ballspeedy = 3
Call DS_CreateSoundBufFromFile(App.Path & "\sounds\music2.wav", DBufferDesc, WavFormat): Call DS_PlaySound(False)
ballx = 0: bally = 0
size = 1
shoot = 0
through = 0
changepaddlesize

DX_EndIt

 
End Sub
Sub scoreing()
'this sub creates numbers for the score shown
'top left while playing
' it gets the scorevalue and sees what unit value is what number
'then displays it in picture format

' eg
' say the number 153
'the first unit would be 1
'it checks  to see if we have a match
'then displays the first unit
'the second unit would be 5
'it checks  to see if we have a match
'then displays the second unit and so on

'at this stage i only have 7 units
'which is a very high score
'eg 9999999 . if you get over this score it will not be displayed
'but i cant see that happening :) hehe
If Mid(score, 1, 1) = 0 Then Call DD_BltFast(0, 279, 310, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 1 Then Call DD_BltFast(0, 0, 31, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 2 Then Call DD_BltFast(0, 31, 62, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 3 Then Call DD_BltFast(0, 62, 93, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 4 Then Call DD_BltFast(0, 93, 124, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 5 Then Call DD_BltFast(0, 124, 155, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 6 Then Call DD_BltFast(0, 155, 186, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 7 Then Call DD_BltFast(0, 186, 217, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 8 Then Call DD_BltFast(0, 217, 248, 31, numSurf, rnumSurf, 10, 8, True)
If Mid(score, 1, 1) = 9 Then Call DD_BltFast(0, 248, 279, 31, numSurf, rnumSurf, 10, 8, True)

If Mid(score, 2, 1) = 0 Then Call DD_BltFast(0, 279, 310, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 1 Then Call DD_BltFast(0, 0, 31, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 2 Then Call DD_BltFast(0, 31, 62, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 3 Then Call DD_BltFast(0, 62, 93, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 4 Then Call DD_BltFast(0, 93, 124, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 5 Then Call DD_BltFast(0, 124, 155, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 6 Then Call DD_BltFast(0, 155, 186, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 7 Then Call DD_BltFast(0, 186, 217, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 8 Then Call DD_BltFast(0, 217, 248, 31, numSurf, rnumSurf, 30, 8, True)
If Mid(score, 2, 1) = 9 Then Call DD_BltFast(0, 248, 279, 31, numSurf, rnumSurf, 30, 8, True)


If Mid(score, 3, 1) = 0 Then Call DD_BltFast(0, 279, 310, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 1 Then Call DD_BltFast(0, 0, 31, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 2 Then Call DD_BltFast(0, 31, 62, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 3 Then Call DD_BltFast(0, 62, 93, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 4 Then Call DD_BltFast(0, 93, 124, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 5 Then Call DD_BltFast(0, 124, 155, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 6 Then Call DD_BltFast(0, 155, 186, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 7 Then Call DD_BltFast(0, 186, 217, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 8 Then Call DD_BltFast(0, 217, 248, 31, numSurf, rnumSurf, 50, 8, True)
If Mid(score, 3, 1) = 9 Then Call DD_BltFast(0, 248, 279, 31, numSurf, rnumSurf, 50, 8, True)

If Mid(score, 4, 1) = 0 Then Call DD_BltFast(0, 279, 310, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 1 Then Call DD_BltFast(0, 0, 31, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 2 Then Call DD_BltFast(0, 31, 62, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 3 Then Call DD_BltFast(0, 62, 93, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 4 Then Call DD_BltFast(0, 93, 124, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 5 Then Call DD_BltFast(0, 124, 155, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 6 Then Call DD_BltFast(0, 155, 186, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 7 Then Call DD_BltFast(0, 186, 217, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 8 Then Call DD_BltFast(0, 217, 248, 31, numSurf, rnumSurf, 70, 8, True)
If Mid(score, 4, 1) = 9 Then Call DD_BltFast(0, 248, 279, 31, numSurf, rnumSurf, 70, 8, True)

If Mid(score, 5, 1) = 0 Then Call DD_BltFast(0, 279, 310, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 1 Then Call DD_BltFast(0, 0, 31, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 2 Then Call DD_BltFast(0, 31, 62, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 3 Then Call DD_BltFast(0, 62, 93, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 4 Then Call DD_BltFast(0, 93, 124, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 5 Then Call DD_BltFast(0, 124, 155, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 6 Then Call DD_BltFast(0, 155, 186, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 7 Then Call DD_BltFast(0, 186, 217, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 8 Then Call DD_BltFast(0, 217, 248, 31, numSurf, rnumSurf, 90, 8, True)
If Mid(score, 5, 1) = 9 Then Call DD_BltFast(0, 248, 279, 31, numSurf, rnumSurf, 90, 8, True)

If Mid(score, 6, 1) = 0 Then Call DD_BltFast(0, 279, 310, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 1 Then Call DD_BltFast(0, 0, 31, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 2 Then Call DD_BltFast(0, 31, 62, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 3 Then Call DD_BltFast(0, 62, 93, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 4 Then Call DD_BltFast(0, 93, 124, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 5 Then Call DD_BltFast(0, 124, 155, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 6 Then Call DD_BltFast(0, 155, 186, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 7 Then Call DD_BltFast(0, 186, 217, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 8 Then Call DD_BltFast(0, 217, 248, 31, numSurf, rnumSurf, 110, 8, True)
If Mid(score, 6, 1) = 9 Then Call DD_BltFast(0, 248, 279, 31, numSurf, rnumSurf, 110, 8, True)

If Mid(score, 7, 1) = 0 Then Call DD_BltFast(0, 279, 310, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 1 Then Call DD_BltFast(0, 0, 31, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 2 Then Call DD_BltFast(0, 31, 62, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 3 Then Call DD_BltFast(0, 62, 93, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 4 Then Call DD_BltFast(0, 93, 124, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 5 Then Call DD_BltFast(0, 124, 155, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 6 Then Call DD_BltFast(0, 155, 186, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 7 Then Call DD_BltFast(0, 186, 217, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 8 Then Call DD_BltFast(0, 217, 248, 31, numSurf, rnumSurf, 130, 8, True)
If Mid(score, 7, 1) = 9 Then Call DD_BltFast(0, 248, 279, 31, numSurf, rnumSurf, 130, 8, True)


End Sub
Sub loadup()
' this sub resest all game values
'then opens the level and sorts uot what bonuses are where
'note all bonuses are random...

'set for random
Randomize timer
    'reset values
     ballx = 0: bally = 0
        For temp = 1 To 300
        bonusfall(temp) = 0
        block(temp) = 0
        block(temp) = 0
        blockx(temp) = 0
        blocky(temp) = 0
        blockspritex(temp) = 0
        blockspritexx(temp) = 0
        blockspritey(temp) = 0
        blockspriteyy(temp) = 0
        bonusx(temp) = 0
        bonusy(temp) = 0
        bullet1y(1) = 0
        bullet1y(2) = 0
        bullet2y(1) = 0
        bullet2y(2) = 0
        
        Next temp
    
    paddlewidth = 100
    paddlehight = 10
    ballx = 0
    ballspeedy = 3
    ballspeedx = 3
    bally = 0
    boxes = 1
    size = 1
    bY = 450
    





For temp = 1 To 300
 bonusfall(temp) = 0
Next temp

boxes = 1
'opens level
'set up the boxes
On Error GoTo t
'the path where levels are located
Open App.Path & "/editor/Levels/" & level & ".sav" For Input As #2
'loop till all data is loaded ( end of file ) eof
Do Until EOF(2)
Input #2, tempblock, tempblockx, tempblocky, tempblockspritex, tempblockspritexx, tempblockspritey, tempblockspriteyy

'Load block(boxes) values


block(boxes) = tempblock
blockx(boxes) = tempblockx
blocky(boxes) = tempblocky
blockspritex(boxes) = tempblockspritex
blockspritexx(boxes) = tempblockspritexx
blockspritey(boxes) = tempblockspritey
blockspriteyy(boxes) = tempblockspriteyy
' get bonuses for blocks
temp = Int(Rnd * 200)
temp3 = Int(Rnd * 100)
bonustemp = Int(Rnd * 10)
If bonustemp = 0 Then bonustemp = 3
If bonustemp = 6 And temp3 <= 90 Then bonustemp = 3
If block(boxes) = 1 And temp > 185 Then bonusfall(boxes) = bonustemp: bonusx(boxes) = tempblockx: bonusy(boxes) = tempblocky
If block(boxes) = 0 Then bonusfall(boxes) = 0


boxes = boxes + 1

Loop
Close #2

Exit Sub
t:
'if error while loading or cannot find level then
'display this error mesage
Close #2
MsgBox "All Levels Completed"
End
End Sub

Sub changepaddlesize()
' this sub tells the program the new paddle dimensions
' and where to look for the paddle picture
' in this case i have used 2 picturs
' 1 for shoot and 1 normal
'but have changed the width of the paddle
If shoot = 1 Then
    If size = 0 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle2.bmp", paddleSurf, BackBufDesc, 50, 15): paddlewidth = 50
    If size = 1 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle2.bmp", paddleSurf, BackBufDesc, 100, 15): paddlewidth = 100
    If size = 2 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle2.bmp", paddleSurf, BackBufDesc, 150, 15): paddlewidth = 150
    If size = 3 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle2.bmp", paddleSurf, BackBufDesc, 200, 15): paddlewidth = 200
    If size = 4 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle2.bmp", paddleSurf, BackBufDesc, 250, 15): paddlewidth = 250
    If size = 5 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle2.bmp", paddleSurf, BackBufDesc, 300, 15): paddlewidth = 300
End If
If shoot = 0 Then
    If size = 0 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle.bmp", paddleSurf, BackBufDesc, 50, 15): paddlewidth = 50
    If size = 1 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle.bmp", paddleSurf, BackBufDesc, 100, 15): paddlewidth = 100
    If size = 2 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle.bmp", paddleSurf, BackBufDesc, 150, 15): paddlewidth = 150
    If size = 3 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle.bmp", paddleSurf, BackBufDesc, 200, 15): paddlewidth = 200
    If size = 4 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle.bmp", paddleSurf, BackBufDesc, 250, 15): paddlewidth = 250
    If size = 5 Then Call DD_CreateSurfFromFile(App.Path & "\GFX\paddle.bmp", paddleSurf, BackBufDesc, 300, 15): paddlewidth = 300
End If
End Sub

Sub bonuses()
'this sub tells the falling speed of the bonues
'if a block has a bonus value of 1 to 9
' moves it up to the top of the screen before falling it
'while boncing it of the walls
'if the bonus reaches the bottom of screen
' the bonus value is changed to 0 / meaning it has no value
speed = 3
For temp2 = 1 To 300
If block(temp2) = 0 Then
    If bonusfall(temp2) = 1 Or bonusfall(temp2) = 2 Or bonusfall(temp2) = 3 Or bonusfall(temp2) = 4 Or bonusfall(temp2) = 5 Or bonusfall(temp2) = 6 Or bonusfall(temp2) = 7 Or bonusfall(temp2) = 8 Or bonusfall(temp2) = 9 Then
        If bonusyy(temp2) = 1 Then bonusy(temp2) = bonusy(temp2) + speed: If bonusy(temp2) > 490 Then bonusyy(temp2) = 500
        If bonusyy(temp2) = 2 Then bonusy(temp2) = bonusy(temp2) - speed: If bonusy(temp2) <= 10 Then bonusyy(temp2) = 1
        If bonusxx(temp2) = 1 Then bonusx(temp2) = bonusx(temp2) + speed: If bonusx(temp2) > 600 Then bonusxx(temp2) = 2
        If bonusxx(temp2) = 2 Then bonusx(temp2) = bonusx(temp2) - speed: If bonusx(temp2) < 10 Then bonusxx(temp2) = 1
        If bonusxx(temp2) = 2 And bonusyy(temp2) = 0 Then bonusyy(temp2) = 2
        If bonusxx(temp2) = 1 And bonusyy(temp2) = 0 Then bonusyy(temp2) = 2
    End If
End If


Next temp2
    
End Sub
Sub bonuseshit()
'this sub checks to see if we picked up the bonus
'ie. collision with bonus block
' then gets the bonus value
'eg if bonus value = 1
' and we got it
' then change paddle size up one

'change paddle size up
For temp = 1 To 300
If bonusx(temp) + 10 >= bX And _
   bonusx(temp) <= bX + paddlewidth And _
   bonusy(temp) >= bY - 30 And _
   bonusy(temp) - 10 <= bY Then
    If bonusfall(temp) = 1 Then
        size = size + 1
        If size >= 5 Then size = 5
        bonusy(temp) = 500: 'Call DD_BltFast(0, 0, 30, 29, bonusSurf, rbonusSurf, bonusx(temp), bonusy(temp), True)
        score = score + 100
          
        changepaddlesize
        Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Sweepup.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)

        Exit Sub
    End If
    'change paddle size down
    If bonusfall(temp) = 2 Then
        
        size = size - 1
        If size <= 0 Then size = 0
        bonusy(temp) = 500: 'Call DD_BltFast(0, 0, 30, 29, bonusSurf, rbonusSurf, bonusx(temp), bonusy(temp), True)
        score = score + 100
           Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Sweepdow.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)

        changepaddlesize
        Exit Sub
    End If
    'loose a life (death)
    If bonusfall(temp) = 3 Then
            For temp4 = 1 To 300
            If block(temp4) = 0 Then bonusy(temp4) = 550: bonusfall(temp4) = 0
            fire(temp4) = 0
            Next temp4
            ballspeedy = 3
            byeball
            lives = lives - 1: ballx = 0: bally = 0: size = 1
            shoot = 0
            through = 0
            changepaddlesize
            DIE = 1
            
             
            Exit Sub
    End If
    
    'speed up the ball
    If bonusfall(temp) = 4 Then
        ballspeedy = 10
        If ballspeedy >= 10 Then ballspeedy = 10
         bonusy(temp) = 500: 'Call DD_BltFast(0, 0, 30, 29, bonusSurf, rbonusSurf, bonusx(temp), bonusy(temp), True)
        score = score + 100
           Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Peow!.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)

        Exit Sub
    End If
    'slow the ball down (slow ball)
    If bonusfall(temp) = 5 Then
         ballspeedy = 2
        If ballspeedy <= 2 Then ballspeedy = 2
        bonusy(temp) = 500: 'Call DD_BltFast(0, 0, 30, 29, bonusSurf, rbonusSurf, bonusx(temp), bonusy(temp), True)
        score = score + 100
        Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Humm.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)
        Exit Sub
    End If
    'extra life
    If bonusfall(temp) = 6 Then
        
        lives = lives + 1: bonusy(temp) = 550
        score = score + 100
        Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Fanfare.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)
         Exit Sub
    End If
    'explode exploding blocks
    If bonusfall(temp) = 7 Then
            For temp3 = 1 To 300
            If block(temp3) = 1 And blockspritex(temp3) = 300 Or blockspritex(temp3) = 330 Or blockspritex(temp3) = 360 Then
            block(temp3) = 0: score = score + 10
            Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Tank.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)
            End If
            
            Next temp3
        bonusy(temp) = 500
        score = score + 100
       
         Exit Sub
    End If
    'shooting paddle
    If bonusfall(temp) = 8 Then
        shoot = 1: bonusy(temp) = 550
        changepaddlesize
        score = score + 100
        Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Saucer.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)
         Exit Sub
    End If
    'strike through (through blocks)
    If bonusfall(temp) = 9 Then
        through = 1: bonusy(temp) = 550:
        score = score + 100
       Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Saucer.wav", DBufferDesc, WavFormat)
        Call DS_PlaySound(False)
         Exit Sub
    End If
End If
Next temp
End Sub
Sub shooting()
' the shooting sub
'checks to see if we are shooting
'and if the bullets hit the blocks
' there are 2 lots of bullets at a time
'if the second lot of bullets are finished then we can
'shoot again

'the first lot of bullets and second
'are checked in a for loop
For shoottemp = 1 To 2
If fire(shoottemp) = 1 Then bullet1y(shoottemp) = bullet1y(shoottemp) - 5: bullet2y(shoottemp) = bullet2y(shoottemp) - 5
If bullet1y(shoottemp) <= 10 And bullet2y(shoottemp) <= 10 Then fire(shoottemp) = 0
For temp5 = 1 To 300
If block(temp5) = 1 And bullet2x(shoottemp) + 3 >= blockx(temp5) And _
   bullet2x(shoottemp) <= blockx(temp5) + 30 And _
  bullet2y(shoottemp) - 10 >= blocky(temp5) And _
   bullet2y(shoottemp) <= blocky(temp5) + 15 Then
  score = score + 5
 block(temp5) = 0
    If through = 0 Then bullet2y(shoottemp) = 0
   'bullet2y(shoottemp) = 0
 '  fire(shoottemp) = 0

End If
Next temp5

For temp5 = 1 To 300
If block(temp5) = 1 And bullet1x(shoottemp) + 3 >= blockx(temp5) And _
   bullet1x(shoottemp) <= blockx(temp5) + 30 And _
  bullet1y(shoottemp) - 10 >= blocky(temp5) And _
   bullet1y(shoottemp) <= blocky(temp5) + 15 Then
  score = score + 5
  block(temp5) = 0
   If through = 0 Then bullet1y(shoottemp) = 0
   'fire(shoottemp) = 0
End If
Next temp5
If bullet1y(shoottemp) = 0 And bullet2y(shoottemp) = 0 Then fire(shoottemp) = 0
Next shoottemp

End Sub

Sub bullethitsblock()
'Um mabey changing in future
End Sub
Sub speedup()
'the ball speed up sub
'speeds up the ball by 1
'speeding up the ball is redraw the ball
'at a different pixel speed
'eg .if ball speed was 1 the that is 1 pixel per loop
'if ball speed was 4 the that is 4 pixel per loop

'if ball speed is biggerthan or = 10 then ball speed = 10
ballspeeding = ballspeeding + 1
        If ballspeeding >= 8 Then ballspeedy = ballspeedy + 1: ballspeeding = 0
        If ballspeedy >= 10 Then ballspeedy = 10
           
End Sub
Sub soundhitpaddle()
'call the path and play sound and if we are looped or not.
Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Boing.wav", DBufferDesc, WavFormat)
Call DS_PlaySound(False)
End Sub
Sub soundhitblock()
'call the path and play sound and if we are looped or not.
Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Tank.wav", DBufferDesc, WavFormat)
Call DS_PlaySound(False)
End Sub
Sub byeball()
'call the path and play sound and if we are looped or not.
Call DS_CreateSoundBufFromFile(App.Path & "\sounds\Padexplo.wav", DBufferDesc, WavFormat)
Call DS_PlaySound(False)
End Sub
Sub livesleft()
'This sub shows our lives in picture form
'maximum lives are 8
' when lives = 0 then game over (endgame is called)
If lives >= 1 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 590, 8, True)
If lives >= 2 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 530, 8, True)
If lives >= 3 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 470, 8, True)
If lives >= 4 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 410, 8, True)
If lives >= 5 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 350, 8, True)
If lives >= 6 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 290, 8, True)
If lives >= 7 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 230, 8, True)
If lives >= 8 Then Call DD_BltFast(35, 0, 50, 45, numSurf, rnumSurf, 170, 8, True)
If lives >= 8 Then lives = 8
If lives <= 0 Then EndGame

End Sub

Sub EndGame()
'This sub shows the GAME OVER picture when lives = 0
Call DD_BltFast(100, 0, 600, 200, numSurf, rnumSurf, 20, 180, True)

End Sub
Sub DEATH()
'this sub checks our lives and if 0 ends game

'die is a counter value
DIE = DIE + 1
'removes bat and ball from screen
Call DD_BltFast(0, 0, 1, 1, paddleSurf, rpaddleSurf, bX, bY, True)
Call DD_BltFast(0, 0, 1, 1, SpriteSurf, rSpriteSurf, sX, sY, True)

If DIE >= 200 Then
DIE = 0
    ' if our lives = 0 then hold score values and check
    'to see if we made it into top ten
    If lives <= 0 Then
    click = 0
    tempscore2 = score
       
    highscorein
    
    'end game
    running = False
    
    'hide the cursor
    ShowCursor 0
           
    'restore window state
    Call DX_RestoreDisplayCoopLevel(frmMain.hWnd)
    'frmMain.Hide
    
  
    'Reset all values
    Randomize timer
    paddlewidth = 100
    paddlehight = 10
    ballx = 0
    ballspeedy = 3
    ballspeedx = 3
    bally = 0
    boxes = 1
    size = 1
    bY = 450
    ShowCursor 0

For temp = 1 To 300
block(temp) = 0
bonusyy(temp) = 2
bonusxx(temp) = 2
Next temp
      level = 1
      lives = 3
      score = 0

'Set up level 1 for next time
Call loadup
'initialize game
DX_Init
    End If

End If

End Sub
Sub highscore()
'**The High Score Sub Used to Load in High Scores ( High.Dat )
'**If High Scores are loaded then scoresloaded = True
'**else the scoresloaded = false so load highscores
'** and if an error occours goto position t:

'This Changes the Background to the Highscores Background
'Call's DD_BltFast (left position of bmp,top position of bmp,bottom position of bmp,right position of bmp,BG3Surf As DirectDrawSurface7,rBG3Surf As Rect,x position to display on screen,y position to display on screen,transparent true or false)
Call DD_BltFast(0, 0, 640, 480, BG3Surf, rBG3Surf, 0, 0, False)

'Set up Font And Size for Direct X Text
' Changes Form1 FontName and size and type
Form1.FontName = "Arial"
Form1.FontSize = 20
Form1.FontBold = True
temp = 1
    
'If Highscores are loaded then set font and display highscores
If scoresloaded = True Then
    'Set's DX Font
    Call BackBuf.SetFont(Form1.Font)
    
    ' Holds a Tempory Value / In this Case Holds the y position
    ' to display the first high score and thens adds 30 for the
    ' for the next , and so on till the y position = 420
    For temp2 = 145 To 420 Step 30
    
    'Displays the high score where
    'highscoree(temp) = the highscoree( from 1 to 10)
    'scorelog(temp) = the scorelog(from 1 to 10)
    ' Eg-
    ' Call BackBuf.Drawtext(x position to display,y position to display, the text value to display goes here,false)
    Call BackBuf.DrawText(55, temp2, highscoree(temp), False)
    Call BackBuf.DrawText(500, temp2, scorelog(temp), False)
    ' temp is a tempory value that changes by one to
    ' to call up up the next record
    temp = temp + 1
    
    'next temp2 -loop until temp2 = 420
    Next temp2
    
    'Exits this sub
    Exit Sub
'Ends the if Block
End If
    
'If a error occurs goto t
On Error GoTo t

'Open highscores for input and assign to the array
Open "high.dat" For Input As #2
    
    ' loop until all entries are loaded
    ' in this case only ten entries
    Do Until EOF(2)
        'input#2, tempstring holds a tempory string value,tempscore holds the tempory integer value
        Input #2, tempstring2, tempscore
        'highscoree(value from 1 to 10) = tempstring2 the tempory value
        highscoree(temp) = tempstring2
        'scorelog(value from 1 to 10) = tempscore the tempory value
        scorelog(temp) = tempscore
        'temp changes the array value
        temp = temp + 1
        'loops until eof is met eof - end of file
    Loop
    'Call BackBuf.SetFont( the Same font as form1.frm)
    Call BackBuf.SetFont(Form1.Font)
    
    ' displays high scores as above
    temp = 1
    For temp2 = 150 To 420 Step 30
        Call BackBuf.DrawText(55, temp2, highscoree(temp), False): Call BackBuf.DrawText(500, temp2, scorelog(temp), False)
        temp = temp + 1
    Next temp2
    
    'scores loaded are now true
    scoresloaded = True

'close the input file highscores
Close #2

'exits the sub
Exit Sub

'if error occured goto t: . This is t: position where we go to if we had
' a loading of highscores error
t:

'close the input file highscores
Close #2

'display message box with text error
'MsgBox "(display value here)"
MsgBox "High scores not found"

'end program
End

'end's Sub
End Sub
Sub pausing()
'This sub draws the Paused  on screen during gameplay
Call DD_BltFast(35, 50, 220, 85, numSurf, rnumSurf, 240, 180, True)
Call PrimBuf.Flip(Nothing, DDFLIP_WAIT)
End Sub
 
