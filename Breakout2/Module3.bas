Attribute VB_Name = "Highscores"
'The Highscore module
' used for entering highscore data
'loading highscore data
' and saveing highscore data


Sub highscorein()
'This sub sorts where the user goes in the highscore table
'then enables it

' it also sorts highest to lowest scores


If score > scorelog(1) Then
scorepos = 1 'score position =  1
sort 'calls the sort sub
tempstring = ""
enteringname = True 'do the enter your name thingy
End If

'same as above except for what position user ranks

If score > scorelog(2) And score < scorelog(1) Then
scorepos = 2
sort
tempstring = ""
enteringname = True
End If

If score > scorelog(3) And score < scorelog(2) Then
scorepos = 3
sort
tempstring = ""
enteringname = True
End If

If score > scorelog(4) And score < scorelog(3) Then
scorepos = 4
sort
tempstring = ""
enteringname = True
End If


If score > scorelog(5) And score < scorelog(4) Then
scorepos = 5
sort
tempstring = ""
enteringname = True
End If


If score > scorelog(6) And score < scorelog(5) Then
scorepos = 6
sort
tempstring = ""
enteringname = True
End If


If score > scorelog(7) And score < scorelog(6) Then
scorepos = 7
sort
tempstring = ""
enteringname = True
End If

If score > scorelog(8) And score < scorelog(7) Then
scorepos = 8
sort
tempstring = ""
enteringname = True
End If

If score > scorelog(9) And score < scorelog(8) Then
scorepos = 9
sort
tempstring = ""
enteringname = True
End If

If score > scorelog(10) And score < scorelog(9) Then
scorepos = 10
sort
tempstring = ""
enteringname = True
End If


End Sub
Sub entername()
'This Sub set Font and size to form1 and uses it
'for user input
'see frmMain select case for more info

Form1.FontName = "Arial"
    Form1.FontSize = 20
    Form1.FontBold = True
    
    Call BackBuf.SetFont(Form1.Font)
    
   'Draw text on screen
   Call BackBuf.DrawText(200, 250, "Enter Your Name", False)
   Call DD_BltFast(40, 300, 600, 80, numSurf, rnumSurf, 165, 280, True)
   'Draw Tempstring on screen
   Call BackBuf.DrawText(170, 285, tempstring, False)
End Sub

Sub sort()
' The Sort sub
'eg if this nuber is bigger than that number
'then swap them or move them down the rank table(highscore)


If scorepos = 1 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = scorelog(7)
scorelog(7) = scorelog(6)
scorelog(6) = scorelog(5)
scorelog(5) = scorelog(4)
scorelog(4) = scorelog(3)
scorelog(3) = scorelog(2)
scorelog(2) = scorelog(1)
scorelog(1) = score

highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = highscoree(7)
highscoree(7) = highscoree(6)
highscoree(6) = highscoree(5)
highscoree(5) = highscoree(4)
highscoree(4) = highscoree(3)
highscoree(3) = highscoree(2)
highscoree(2) = highscoree(1)
highscoree(1) = tempstring

End If

If scorepos = 2 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = scorelog(7)
scorelog(7) = scorelog(6)
scorelog(6) = scorelog(5)
scorelog(5) = scorelog(4)
scorelog(4) = scorelog(3)
scorelog(3) = scorelog(2)
scorelog(2) = score

highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = highscoree(7)
highscoree(7) = highscoree(6)
highscoree(6) = highscoree(5)
highscoree(5) = highscoree(4)
highscoree(4) = highscoree(3)
highscoree(3) = highscoree(2)
highscoree(2) = tempstring
End If

If scorepos = 3 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = scorelog(7)
scorelog(7) = scorelog(6)
scorelog(6) = scorelog(5)
scorelog(5) = scorelog(4)
scorelog(4) = scorelog(3)
scorelog(3) = score

highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = highscoree(7)
highscoree(7) = highscoree(6)
highscoree(6) = highscoree(5)
highscoree(5) = highscoree(4)
highscoree(4) = highscoree(3)
highscoree(3) = tempstring
End If

If scorepos = 4 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = scorelog(7)
scorelog(7) = scorelog(6)
scorelog(6) = scorelog(5)
scorelog(5) = scorelog(4)
scorelog(4) = score

highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = highscoree(7)
highscoree(7) = highscoree(6)
highscoree(6) = highscoree(5)
highscoree(5) = highscoree(4)
highscoree(4) = tempstring
End If

If scorepos = 5 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = scorelog(7)
scorelog(7) = scorelog(6)
scorelog(6) = scorelog(5)
scorelog(5) = score
highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = highscoree(7)
highscoree(7) = highscoree(6)
highscoree(6) = highscoree(5)
highscoree(5) = tempstring
End If

If scorepos = 6 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = scorelog(7)
scorelog(7) = scorelog(6)
scorelog(6) = score
highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = highscoree(7)
highscoree(7) = highscoree(6)
highscoree(6) = tempstring
End If

If scorepos = 7 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = scorelog(7)
scorelog(7) = score
highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = highscoree(7)
highscoree(7) = tempstring
End If

If scorepos = 8 Then
scorelog(10) = scorelog(9)
scorelog(9) = scorelog(8)
scorelog(8) = score
highscoree(10) = highscoree(9)
highscoree(9) = highscoree(8)
highscoree(8) = tempstring
End If

If scorepos = 9 Then
scorelog(10) = scorelog(9)
scorelog(9) = score
highscoree(10) = highscoree(9)
highscoree(9) = tempstring
End If

If scorepos = 10 Then
scorelog(10) = score
highscoree(10) = tempstring
End If
highscoree(scorepos) = ""
End Sub
Sub writescores()
   
 'set up the highscores and write to high.dat
On Error GoTo t

Open "high.dat" For Output As #2
'10 scores so loop ten times and write
For temp = 1 To 10
Print #2, highscoree(temp) & "," & scorelog(temp)
Next temp

Close #2
Exit Sub

t:
'if error then message box apears app ends
Close #2
MsgBox "error writing scores"
End
   

End Sub
