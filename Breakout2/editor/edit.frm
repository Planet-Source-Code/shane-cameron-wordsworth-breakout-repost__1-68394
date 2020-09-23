VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BREAKOUT LEVEL EDITOR"
   ClientHeight    =   6555
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   9930
   Icon            =   "edit.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6555
   ScaleWidth      =   9930
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "Previous"
      Height          =   735
      Left            =   8760
      TabIndex        =   6
      Top             =   5400
      Width           =   975
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Load"
      Height          =   495
      Left            =   4560
      TabIndex        =   5
      Top             =   5640
      Width           =   4215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Next"
      Height          =   735
      Left            =   8760
      TabIndex        =   4
      Top             =   4680
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save"
      Height          =   495
      Left            =   4560
      TabIndex        =   3
      Top             =   5160
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Generate"
      Height          =   495
      Left            =   4560
      TabIndex        =   0
      Top             =   4680
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   4200
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   6480
      Visible         =   0   'False
      Width           =   4215
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Level -"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   2640
      TabIndex        =   7
      Top             =   0
      Width           =   2175
   End
   Begin VB.Image Image12 
      Height          =   225
      Left            =   1080
      Picture         =   "edit.frx":030A
      Top             =   5640
      Width           =   450
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   4560
      TabIndex        =   2
      Top             =   0
      Width           =   1455
   End
   Begin VB.Image main 
      Appearance      =   0  'Flat
      BorderStyle     =   1  'Fixed Single
      Height          =   975
      Left            =   2760
      Picture         =   "edit.frx":08B0
      Stretch         =   -1  'True
      Top             =   4920
      Width           =   1440
   End
   Begin VB.Shape Shape4 
      FillColor       =   &H00C0FFFF&
      FillStyle       =   0  'Solid
      Height          =   1215
      Left            =   2640
      Top             =   4800
      Width           =   1695
   End
   Begin VB.Image Image11 
      Height          =   225
      Left            =   1680
      Picture         =   "edit.frx":0E56
      Top             =   5160
      Width           =   450
   End
   Begin VB.Image Image10 
      Height          =   225
      Left            =   1680
      Picture         =   "edit.frx":13FC
      Top             =   5400
      Width           =   450
   End
   Begin VB.Image Image9 
      Height          =   225
      Left            =   1080
      Picture         =   "edit.frx":19A2
      Top             =   5160
      Width           =   450
   End
   Begin VB.Image Image8 
      Height          =   225
      Left            =   480
      Picture         =   "edit.frx":1F48
      Top             =   5160
      Width           =   450
   End
   Begin VB.Image Image7 
      Height          =   225
      Left            =   480
      Picture         =   "edit.frx":24EE
      Top             =   5400
      Width           =   450
   End
   Begin VB.Image Image6 
      Height          =   225
      Left            =   1080
      Picture         =   "edit.frx":2A94
      Top             =   5400
      Width           =   450
   End
   Begin VB.Image Image5 
      Height          =   225
      Left            =   1680
      Picture         =   "edit.frx":303A
      Top             =   4920
      Width           =   450
   End
   Begin VB.Image Image4 
      Height          =   225
      Left            =   480
      Picture         =   "edit.frx":35E0
      Top             =   5640
      Width           =   450
   End
   Begin VB.Image Image3 
      Height          =   225
      Left            =   1080
      Picture         =   "edit.frx":3B86
      Top             =   4920
      Width           =   450
   End
   Begin VB.Image Image2 
      Height          =   225
      Left            =   480
      Picture         =   "edit.frx":412C
      Top             =   4920
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   300
      Left            =   9240
      Picture         =   "edit.frx":46D2
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   299
      Left            =   8760
      Picture         =   "edit.frx":4C78
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   298
      Left            =   8280
      Picture         =   "edit.frx":521E
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   297
      Left            =   7800
      Picture         =   "edit.frx":57C4
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   296
      Left            =   7320
      Picture         =   "edit.frx":5D6A
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   295
      Left            =   6840
      Picture         =   "edit.frx":6310
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   294
      Left            =   6360
      Picture         =   "edit.frx":68B6
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   293
      Left            =   5880
      Picture         =   "edit.frx":6E5C
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   292
      Left            =   5400
      Picture         =   "edit.frx":7402
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   291
      Left            =   4920
      Picture         =   "edit.frx":79A8
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   290
      Left            =   4440
      Picture         =   "edit.frx":7F4E
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   289
      Left            =   3960
      Picture         =   "edit.frx":84F4
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   288
      Left            =   3480
      Picture         =   "edit.frx":8A9A
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   287
      Left            =   3000
      Picture         =   "edit.frx":9040
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   286
      Left            =   2520
      Picture         =   "edit.frx":95E6
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   285
      Left            =   2040
      Picture         =   "edit.frx":9B8C
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   284
      Left            =   1560
      Picture         =   "edit.frx":A132
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   283
      Left            =   1080
      Picture         =   "edit.frx":A6D8
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   282
      Left            =   600
      Picture         =   "edit.frx":AC7E
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   281
      Left            =   120
      Picture         =   "edit.frx":B224
      Top             =   3960
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   280
      Left            =   9240
      Picture         =   "edit.frx":B7CA
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   279
      Left            =   8760
      Picture         =   "edit.frx":BD70
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   278
      Left            =   8280
      Picture         =   "edit.frx":C316
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   277
      Left            =   7800
      Picture         =   "edit.frx":C8BC
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   276
      Left            =   7320
      Picture         =   "edit.frx":CE62
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   275
      Left            =   6840
      Picture         =   "edit.frx":D408
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   274
      Left            =   6360
      Picture         =   "edit.frx":D9AE
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   273
      Left            =   5880
      Picture         =   "edit.frx":DF54
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   272
      Left            =   5400
      Picture         =   "edit.frx":E4FA
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   271
      Left            =   4920
      Picture         =   "edit.frx":EAA0
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   270
      Left            =   4440
      Picture         =   "edit.frx":F046
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   269
      Left            =   3960
      Picture         =   "edit.frx":F5EC
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   268
      Left            =   3480
      Picture         =   "edit.frx":FB92
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   267
      Left            =   3000
      Picture         =   "edit.frx":10138
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   266
      Left            =   2520
      Picture         =   "edit.frx":106DE
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   265
      Left            =   2040
      Picture         =   "edit.frx":10C84
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   264
      Left            =   1560
      Picture         =   "edit.frx":1122A
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   263
      Left            =   1080
      Picture         =   "edit.frx":117D0
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   262
      Left            =   600
      Picture         =   "edit.frx":11D76
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   261
      Left            =   120
      Picture         =   "edit.frx":1231C
      Top             =   3720
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   260
      Left            =   9240
      Picture         =   "edit.frx":128C2
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   259
      Left            =   8760
      Picture         =   "edit.frx":12E68
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   258
      Left            =   8280
      Picture         =   "edit.frx":1340E
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   257
      Left            =   7800
      Picture         =   "edit.frx":139B4
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   256
      Left            =   7320
      Picture         =   "edit.frx":13F5A
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   255
      Left            =   6840
      Picture         =   "edit.frx":14500
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   254
      Left            =   6360
      Picture         =   "edit.frx":14AA6
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   253
      Left            =   5880
      Picture         =   "edit.frx":1504C
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   252
      Left            =   5400
      Picture         =   "edit.frx":155F2
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   251
      Left            =   4920
      Picture         =   "edit.frx":15B98
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   250
      Left            =   4440
      Picture         =   "edit.frx":1613E
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   249
      Left            =   3960
      Picture         =   "edit.frx":166E4
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   248
      Left            =   3480
      Picture         =   "edit.frx":16C8A
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   247
      Left            =   3000
      Picture         =   "edit.frx":17230
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   246
      Left            =   2520
      Picture         =   "edit.frx":177D6
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   245
      Left            =   2040
      Picture         =   "edit.frx":17D7C
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   244
      Left            =   1560
      Picture         =   "edit.frx":18322
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   243
      Left            =   1080
      Picture         =   "edit.frx":188C8
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   242
      Left            =   600
      Picture         =   "edit.frx":18E6E
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   241
      Left            =   120
      Picture         =   "edit.frx":19414
      Top             =   3480
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   240
      Left            =   9240
      Picture         =   "edit.frx":199BA
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   239
      Left            =   8760
      Picture         =   "edit.frx":19F60
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   238
      Left            =   8280
      Picture         =   "edit.frx":1A506
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   237
      Left            =   7800
      Picture         =   "edit.frx":1AAAC
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   236
      Left            =   7320
      Picture         =   "edit.frx":1B052
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   235
      Left            =   6840
      Picture         =   "edit.frx":1B5F8
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   234
      Left            =   6360
      Picture         =   "edit.frx":1BB9E
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   233
      Left            =   5880
      Picture         =   "edit.frx":1C144
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   232
      Left            =   5400
      Picture         =   "edit.frx":1C6EA
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   231
      Left            =   4920
      Picture         =   "edit.frx":1CC90
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   230
      Left            =   4440
      Picture         =   "edit.frx":1D236
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   229
      Left            =   3960
      Picture         =   "edit.frx":1D7DC
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   228
      Left            =   3480
      Picture         =   "edit.frx":1DD82
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   227
      Left            =   3000
      Picture         =   "edit.frx":1E328
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   226
      Left            =   2520
      Picture         =   "edit.frx":1E8CE
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   225
      Left            =   2040
      Picture         =   "edit.frx":1EE74
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   224
      Left            =   1560
      Picture         =   "edit.frx":1F41A
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   223
      Left            =   1080
      Picture         =   "edit.frx":1F9C0
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   222
      Left            =   600
      Picture         =   "edit.frx":1FF66
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   221
      Left            =   120
      Picture         =   "edit.frx":2050C
      Top             =   3240
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   220
      Left            =   9240
      Picture         =   "edit.frx":20AB2
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   219
      Left            =   8760
      Picture         =   "edit.frx":21058
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   218
      Left            =   8280
      Picture         =   "edit.frx":215FE
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   217
      Left            =   7800
      Picture         =   "edit.frx":21BA4
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   216
      Left            =   7320
      Picture         =   "edit.frx":2214A
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   215
      Left            =   6840
      Picture         =   "edit.frx":226F0
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   214
      Left            =   6360
      Picture         =   "edit.frx":22C96
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   213
      Left            =   5880
      Picture         =   "edit.frx":2323C
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   212
      Left            =   5400
      Picture         =   "edit.frx":237E2
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   211
      Left            =   4920
      Picture         =   "edit.frx":23D88
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   210
      Left            =   4440
      Picture         =   "edit.frx":2432E
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   209
      Left            =   3960
      Picture         =   "edit.frx":248D4
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   208
      Left            =   3480
      Picture         =   "edit.frx":24E7A
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   207
      Left            =   3000
      Picture         =   "edit.frx":25420
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   206
      Left            =   2520
      Picture         =   "edit.frx":259C6
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   205
      Left            =   2040
      Picture         =   "edit.frx":25F6C
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   204
      Left            =   1560
      Picture         =   "edit.frx":26512
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   203
      Left            =   1080
      Picture         =   "edit.frx":26AB8
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   202
      Left            =   600
      Picture         =   "edit.frx":2705E
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   201
      Left            =   120
      Picture         =   "edit.frx":27604
      Top             =   3000
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   200
      Left            =   9240
      Picture         =   "edit.frx":27BAA
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   199
      Left            =   8760
      Picture         =   "edit.frx":28150
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   198
      Left            =   8280
      Picture         =   "edit.frx":286F6
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   197
      Left            =   7800
      Picture         =   "edit.frx":28C9C
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   196
      Left            =   7320
      Picture         =   "edit.frx":29242
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   195
      Left            =   6840
      Picture         =   "edit.frx":297E8
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   194
      Left            =   6360
      Picture         =   "edit.frx":29D8E
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   193
      Left            =   5880
      Picture         =   "edit.frx":2A334
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   192
      Left            =   5400
      Picture         =   "edit.frx":2A8DA
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   191
      Left            =   4920
      Picture         =   "edit.frx":2AE80
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   190
      Left            =   4440
      Picture         =   "edit.frx":2B426
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   189
      Left            =   3960
      Picture         =   "edit.frx":2B9CC
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   188
      Left            =   3480
      Picture         =   "edit.frx":2BF72
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   187
      Left            =   3000
      Picture         =   "edit.frx":2C518
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   186
      Left            =   2520
      Picture         =   "edit.frx":2CABE
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   185
      Left            =   2040
      Picture         =   "edit.frx":2D064
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   184
      Left            =   1560
      Picture         =   "edit.frx":2D60A
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   183
      Left            =   1080
      Picture         =   "edit.frx":2DBB0
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   182
      Left            =   600
      Picture         =   "edit.frx":2E156
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   181
      Left            =   120
      Picture         =   "edit.frx":2E6FC
      Top             =   2760
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   180
      Left            =   9240
      Picture         =   "edit.frx":2ECA2
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   179
      Left            =   8760
      Picture         =   "edit.frx":2F248
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   178
      Left            =   8280
      Picture         =   "edit.frx":2F7EE
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   177
      Left            =   7800
      Picture         =   "edit.frx":2FD94
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   176
      Left            =   7320
      Picture         =   "edit.frx":3033A
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   175
      Left            =   6840
      Picture         =   "edit.frx":308E0
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   174
      Left            =   6360
      Picture         =   "edit.frx":30E86
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   173
      Left            =   5880
      Picture         =   "edit.frx":3142C
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   172
      Left            =   5400
      Picture         =   "edit.frx":319D2
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   171
      Left            =   4920
      Picture         =   "edit.frx":31F78
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   170
      Left            =   4440
      Picture         =   "edit.frx":3251E
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   169
      Left            =   3960
      Picture         =   "edit.frx":32AC4
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   168
      Left            =   3480
      Picture         =   "edit.frx":3306A
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   167
      Left            =   3000
      Picture         =   "edit.frx":33610
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   166
      Left            =   2520
      Picture         =   "edit.frx":33BB6
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   165
      Left            =   2040
      Picture         =   "edit.frx":3415C
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   164
      Left            =   1560
      Picture         =   "edit.frx":34702
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   163
      Left            =   1080
      Picture         =   "edit.frx":34CA8
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   162
      Left            =   600
      Picture         =   "edit.frx":3524E
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   161
      Left            =   120
      Picture         =   "edit.frx":357F4
      Top             =   2520
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   160
      Left            =   9240
      Picture         =   "edit.frx":35D9A
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   159
      Left            =   8760
      Picture         =   "edit.frx":36340
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   158
      Left            =   8280
      Picture         =   "edit.frx":368E6
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   157
      Left            =   7800
      Picture         =   "edit.frx":36E8C
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   156
      Left            =   7320
      Picture         =   "edit.frx":37432
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   155
      Left            =   6840
      Picture         =   "edit.frx":379D8
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   154
      Left            =   6360
      Picture         =   "edit.frx":37F7E
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   153
      Left            =   5880
      Picture         =   "edit.frx":38524
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   152
      Left            =   5400
      Picture         =   "edit.frx":38ACA
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   151
      Left            =   4920
      Picture         =   "edit.frx":39070
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   150
      Left            =   4440
      Picture         =   "edit.frx":39616
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   149
      Left            =   3960
      Picture         =   "edit.frx":39BBC
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   148
      Left            =   3480
      Picture         =   "edit.frx":3A162
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   147
      Left            =   3000
      Picture         =   "edit.frx":3A708
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   146
      Left            =   2520
      Picture         =   "edit.frx":3ACAE
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   145
      Left            =   2040
      Picture         =   "edit.frx":3B254
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   144
      Left            =   1560
      Picture         =   "edit.frx":3B7FA
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   143
      Left            =   1080
      Picture         =   "edit.frx":3BDA0
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   142
      Left            =   600
      Picture         =   "edit.frx":3C346
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   141
      Left            =   120
      Picture         =   "edit.frx":3C8EC
      Top             =   2280
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   140
      Left            =   9240
      Picture         =   "edit.frx":3CE92
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   139
      Left            =   8760
      Picture         =   "edit.frx":3D438
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   138
      Left            =   8280
      Picture         =   "edit.frx":3D9DE
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   137
      Left            =   7800
      Picture         =   "edit.frx":3DF84
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   136
      Left            =   7320
      Picture         =   "edit.frx":3E52A
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   135
      Left            =   6840
      Picture         =   "edit.frx":3EAD0
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   134
      Left            =   6360
      Picture         =   "edit.frx":3F076
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   133
      Left            =   5880
      Picture         =   "edit.frx":3F61C
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   132
      Left            =   5400
      Picture         =   "edit.frx":3FBC2
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   131
      Left            =   4920
      Picture         =   "edit.frx":40168
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   130
      Left            =   4440
      Picture         =   "edit.frx":4070E
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   129
      Left            =   3960
      Picture         =   "edit.frx":40CB4
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   128
      Left            =   3480
      Picture         =   "edit.frx":4125A
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   127
      Left            =   3000
      Picture         =   "edit.frx":41800
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   126
      Left            =   2520
      Picture         =   "edit.frx":41DA6
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   125
      Left            =   2040
      Picture         =   "edit.frx":4234C
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   124
      Left            =   1560
      Picture         =   "edit.frx":428F2
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   123
      Left            =   1080
      Picture         =   "edit.frx":42E98
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   122
      Left            =   600
      Picture         =   "edit.frx":4343E
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   121
      Left            =   120
      Picture         =   "edit.frx":439E4
      Top             =   2040
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   120
      Left            =   9240
      Picture         =   "edit.frx":43F8A
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   119
      Left            =   8760
      Picture         =   "edit.frx":44530
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   118
      Left            =   8280
      Picture         =   "edit.frx":44AD6
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   117
      Left            =   7800
      Picture         =   "edit.frx":4507C
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   116
      Left            =   7320
      Picture         =   "edit.frx":45622
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   115
      Left            =   6840
      Picture         =   "edit.frx":45BC8
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   114
      Left            =   6360
      Picture         =   "edit.frx":4616E
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   113
      Left            =   5880
      Picture         =   "edit.frx":46714
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   112
      Left            =   5400
      Picture         =   "edit.frx":46CBA
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   111
      Left            =   4920
      Picture         =   "edit.frx":47260
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   110
      Left            =   4440
      Picture         =   "edit.frx":47806
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   109
      Left            =   3960
      Picture         =   "edit.frx":47DAC
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   108
      Left            =   3480
      Picture         =   "edit.frx":48352
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   107
      Left            =   3000
      Picture         =   "edit.frx":488F8
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   106
      Left            =   2520
      Picture         =   "edit.frx":48E9E
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   105
      Left            =   2040
      Picture         =   "edit.frx":49444
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   104
      Left            =   1560
      Picture         =   "edit.frx":499EA
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   103
      Left            =   1080
      Picture         =   "edit.frx":49F90
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   102
      Left            =   600
      Picture         =   "edit.frx":4A536
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   101
      Left            =   120
      Picture         =   "edit.frx":4AADC
      Top             =   1800
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   100
      Left            =   9240
      Picture         =   "edit.frx":4B082
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   99
      Left            =   8760
      Picture         =   "edit.frx":4B628
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   98
      Left            =   8280
      Picture         =   "edit.frx":4BBCE
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   97
      Left            =   7800
      Picture         =   "edit.frx":4C174
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   96
      Left            =   7320
      Picture         =   "edit.frx":4C71A
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   95
      Left            =   6840
      Picture         =   "edit.frx":4CCC0
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   94
      Left            =   6360
      Picture         =   "edit.frx":4D266
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   93
      Left            =   5880
      Picture         =   "edit.frx":4D80C
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   92
      Left            =   5400
      Picture         =   "edit.frx":4DDB2
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   91
      Left            =   4920
      Picture         =   "edit.frx":4E358
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   90
      Left            =   4440
      Picture         =   "edit.frx":4E8FE
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   89
      Left            =   3960
      Picture         =   "edit.frx":4EEA4
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   88
      Left            =   3480
      Picture         =   "edit.frx":4F44A
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   87
      Left            =   3000
      Picture         =   "edit.frx":4F9F0
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   86
      Left            =   2520
      Picture         =   "edit.frx":4FF96
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   85
      Left            =   2040
      Picture         =   "edit.frx":5053C
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   84
      Left            =   1560
      Picture         =   "edit.frx":50AE2
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   83
      Left            =   1080
      Picture         =   "edit.frx":51088
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   82
      Left            =   600
      Picture         =   "edit.frx":5162E
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   81
      Left            =   120
      Picture         =   "edit.frx":51BD4
      Top             =   1560
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   80
      Left            =   9240
      Picture         =   "edit.frx":5217A
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   79
      Left            =   8760
      Picture         =   "edit.frx":52720
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   78
      Left            =   8280
      Picture         =   "edit.frx":52CC6
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   77
      Left            =   7800
      Picture         =   "edit.frx":5326C
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   76
      Left            =   7320
      Picture         =   "edit.frx":53812
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   75
      Left            =   6840
      Picture         =   "edit.frx":53DB8
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   74
      Left            =   6360
      Picture         =   "edit.frx":5435E
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   73
      Left            =   5880
      Picture         =   "edit.frx":54904
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   72
      Left            =   5400
      Picture         =   "edit.frx":54EAA
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   71
      Left            =   4920
      Picture         =   "edit.frx":55450
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   70
      Left            =   4440
      Picture         =   "edit.frx":559F6
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   69
      Left            =   3960
      Picture         =   "edit.frx":55F9C
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   68
      Left            =   3480
      Picture         =   "edit.frx":56542
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   67
      Left            =   3000
      Picture         =   "edit.frx":56AE8
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   66
      Left            =   2520
      Picture         =   "edit.frx":5708E
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   65
      Left            =   2040
      Picture         =   "edit.frx":57634
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   64
      Left            =   1560
      Picture         =   "edit.frx":57BDA
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   63
      Left            =   1080
      Picture         =   "edit.frx":58180
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   62
      Left            =   600
      Picture         =   "edit.frx":58726
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   61
      Left            =   120
      Picture         =   "edit.frx":58CCC
      Top             =   1320
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   60
      Left            =   9240
      Picture         =   "edit.frx":59272
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   59
      Left            =   8760
      Picture         =   "edit.frx":59818
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   58
      Left            =   8280
      Picture         =   "edit.frx":59DBE
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   57
      Left            =   7800
      Picture         =   "edit.frx":5A364
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   56
      Left            =   7320
      Picture         =   "edit.frx":5A90A
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   55
      Left            =   6840
      Picture         =   "edit.frx":5AEB0
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   54
      Left            =   6360
      Picture         =   "edit.frx":5B456
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   53
      Left            =   5880
      Picture         =   "edit.frx":5B9FC
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   52
      Left            =   5400
      Picture         =   "edit.frx":5BFA2
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   51
      Left            =   4920
      Picture         =   "edit.frx":5C548
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   50
      Left            =   4440
      Picture         =   "edit.frx":5CAEE
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   49
      Left            =   3960
      Picture         =   "edit.frx":5D094
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   48
      Left            =   3480
      Picture         =   "edit.frx":5D63A
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   47
      Left            =   3000
      Picture         =   "edit.frx":5DBE0
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   46
      Left            =   2520
      Picture         =   "edit.frx":5E186
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   45
      Left            =   2040
      Picture         =   "edit.frx":5E72C
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   44
      Left            =   1560
      Picture         =   "edit.frx":5ECD2
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   43
      Left            =   1080
      Picture         =   "edit.frx":5F278
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   42
      Left            =   600
      Picture         =   "edit.frx":5F81E
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   41
      Left            =   120
      Picture         =   "edit.frx":5FDC4
      Top             =   1080
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   40
      Left            =   9240
      Picture         =   "edit.frx":6036A
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   39
      Left            =   8760
      Picture         =   "edit.frx":60910
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   38
      Left            =   8280
      Picture         =   "edit.frx":60EB6
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   37
      Left            =   7800
      Picture         =   "edit.frx":6145C
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   36
      Left            =   7320
      Picture         =   "edit.frx":61A02
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   35
      Left            =   6840
      Picture         =   "edit.frx":61FA8
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   34
      Left            =   6360
      Picture         =   "edit.frx":6254E
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   33
      Left            =   5880
      Picture         =   "edit.frx":62AF4
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   32
      Left            =   5400
      Picture         =   "edit.frx":6309A
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   31
      Left            =   4920
      Picture         =   "edit.frx":63640
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   30
      Left            =   4440
      Picture         =   "edit.frx":63BE6
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   29
      Left            =   3960
      Picture         =   "edit.frx":6418C
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   28
      Left            =   3480
      Picture         =   "edit.frx":64732
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   27
      Left            =   3000
      Picture         =   "edit.frx":64CD8
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   26
      Left            =   2520
      Picture         =   "edit.frx":6527E
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   25
      Left            =   2040
      Picture         =   "edit.frx":65824
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   24
      Left            =   1560
      Picture         =   "edit.frx":65DCA
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   23
      Left            =   1080
      Picture         =   "edit.frx":66370
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   22
      Left            =   600
      Picture         =   "edit.frx":66916
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   21
      Left            =   120
      Picture         =   "edit.frx":66EBC
      Top             =   840
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   20
      Left            =   9240
      Picture         =   "edit.frx":67462
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   19
      Left            =   8760
      Picture         =   "edit.frx":67A08
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   18
      Left            =   8280
      Picture         =   "edit.frx":67FAE
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   17
      Left            =   7800
      Picture         =   "edit.frx":68554
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   16
      Left            =   7320
      Picture         =   "edit.frx":68AFA
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   15
      Left            =   6840
      Picture         =   "edit.frx":690A0
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   14
      Left            =   6360
      Picture         =   "edit.frx":69646
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   13
      Left            =   5880
      Picture         =   "edit.frx":69BEC
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   12
      Left            =   5400
      Picture         =   "edit.frx":6A192
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   11
      Left            =   4920
      Picture         =   "edit.frx":6A738
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   10
      Left            =   4440
      Picture         =   "edit.frx":6ACDE
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   9
      Left            =   3960
      Picture         =   "edit.frx":6B284
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   8
      Left            =   3480
      Picture         =   "edit.frx":6B82A
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   7
      Left            =   3000
      Picture         =   "edit.frx":6BDD0
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   6
      Left            =   2520
      Picture         =   "edit.frx":6C376
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   5
      Left            =   2040
      Picture         =   "edit.frx":6C91C
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   4
      Left            =   1560
      Picture         =   "edit.frx":6CEC2
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   3
      Left            =   1080
      Picture         =   "edit.frx":6D468
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   2
      Left            =   600
      Picture         =   "edit.frx":6DA0E
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   1
      Left            =   120
      Picture         =   "edit.frx":6DFB4
      Top             =   600
      Width           =   450
   End
   Begin VB.Image Image1 
      Height          =   225
      Index           =   0
      Left            =   9840
      Picture         =   "edit.frx":6E55A
      Top             =   6600
      Width           =   450
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00E0E0E0&
      BackStyle       =   1  'Opaque
      Height          =   1455
      Left            =   2520
      Top             =   4680
      Width           =   1935
   End
   Begin VB.Shape Shape5 
      FillColor       =   &H00C0FFFF&
      FillStyle       =   0  'Solid
      Height          =   1215
      Left            =   360
      Top             =   4800
      Width           =   1935
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00E0E0E0&
      BackStyle       =   1  'Opaque
      Height          =   1455
      Left            =   240
      Top             =   4680
      Width           =   2175
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   1695
      Left            =   120
      Top             =   4560
      Width           =   9735
   End
   Begin VB.Shape Shape6 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   3855
      Left            =   0
      Top             =   480
      Width           =   9855
   End
   Begin VB.Image Image13 
      Appearance      =   0  'Flat
      Height          =   7200
      Left            =   0
      Picture         =   "edit.frx":6EB00
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9960
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim tempstring As String
Private Sub Command1_Click()
Text1.Text = ""
For temp = 1 To 300
If Image1(temp) = Image2 Then blockspritex(temp) = 0: blockspritexx(temp) = 30: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image3 Then blockspritex(temp) = 30: blockspritexx(temp) = 60: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image4 Then blockspritex(temp) = 60: blockspritexx(temp) = 90: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image5 Then blockspritex(temp) = 90: blockspritexx(temp) = 120: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image6 Then blockspritex(temp) = 120: blockspritexx(temp) = 150: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image7 Then blockspritex(temp) = 150: blockspritexx(temp) = 180: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image8 Then blockspritex(temp) = 180: blockspritexx(temp) = 210: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image9 Then blockspritex(temp) = 210: blockspritexx(temp) = 240: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image10 Then blockspritex(temp) = 240: blockspritexx(temp) = 270: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image12 Then blockspritex(temp) = 300: blockspritexx(temp) = 330: blockspritey(temp) = 0: blockspriteyy(temp) = 15
If Image1(temp) = Image11 Then block(temp) = 0

tempstring = block(temp) & "," & blockx(temp) & "," & blocky(temp) & "," & blockspritex(temp) & "," & blockspritexx(temp) & "," & blockspritey(temp) & "," & blockspriteyy(temp) & "," & (temp) & vbNewLine
Text1.Text = Text1.Text + tempstring

Next temp
'Command1.Enabled = False
End Sub

Private Sub Command2_Click()
Call save

End Sub

Private Sub Command3_Click()
For temp = 1 To 300
Image1(temp) = Image11
Next temp

level = level + 1
Label1.Caption = level
Call loadup

End Sub

Private Sub Command4_Click()
Call loadup
End Sub

Private Sub Command5_Click()
For temp = 1 To 300
Image1(temp) = Image11
Next temp

level = level - 1
If level <= 1 Then level = 1
Label1.Caption = level
Call loadup
End Sub

Private Sub Form_Load()
tempblock1 = 18 - 30
tempblock2 = 100
For temp = 1 To 300
Image1(temp) = Image11
tempblock1 = tempblock1 + 30

If tempblock1 > 588 Then tempblock1 = 18: tempblock2 = tempblock2 + 15

blockx(temp) = tempblock1
blocky(temp) = tempblock2
block(temp) = 0

Next temp
level = 1
Label1.Caption = level
Call loadup
End Sub

Private Sub Image1_Click(Index As Integer)
Image1(Index) = main
If Image1(Index) > 0 Then block(Index) = 1
If Index = 1 And block(Index) = 1 Then blockx(Index) = 18: blocky(Index) = 100

End Sub

Private Sub Image10_Click()
main = Image10
End Sub

Private Sub Image11_Click()
main = Image11
End Sub

Private Sub Image12_Click()
main = Image12
End Sub

Private Sub Image2_Click()
main = Image2
End Sub

Private Sub Image3_Click()
main = Image3
End Sub

Private Sub Image4_Click()
main = Image4
End Sub

Private Sub Image5_Click()
main = Image5
End Sub

Private Sub Image6_Click()
main = Image6
End Sub

Private Sub Image7_Click()
main = Image7
End Sub

Private Sub Image8_Click()
main = Image8
End Sub

Private Sub Image9_Click()
main = Image9
End Sub
Public Sub save()

'set up the boxes
On Error GoTo t

Open App.Path & "/Levels/" & level & ".sav" For Output As #2
For temp = 1 To 300
'Input #2, tempblock, tempblockx, tempblocky, tempblockspritex, tempblockspritexx, tempblockspritey, tempblockspriteyy
Print #2, block(temp) & "," & blockx(temp) & "," & blocky(temp) & "," & blockspritex(temp) & "," & blockspritexx(temp) & "," & blockspritey(temp) & "," & blockspriteyy(temp)
Next temp

Close #2
Exit Sub

t:
Close #2
MsgBox "All Levels Completed"
End
End Sub

Public Sub loadup()
temp = 1
'set up the boxes
On Error GoTo t

Open App.Path & "/Levels/" & level & ".sav" For Input As #2
Do Until EOF(2)
Input #2, tempblock, tempblockx, tempblocky, tempblockspritex, tempblockspritexx, tempblockspritey, tempblockspriteyy

'Load block(boxes)


block(temp) = tempblock
blockx(temp) = tempblockx
blocky(temp) = tempblocky
blockspritex(temp) = tempblockspritex
blockspritexx(temp) = tempblockspritexx
blockspritey(temp) = tempblockspritey
blockspriteyy(temp) = tempblockspriteyy


temp = temp + 1

Loop
Close #2
For temp = 1 To 300
If blockspritex(temp) = 0 And blockspritexx(temp) = 30 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image2
If blockspritex(temp) = 30 And blockspritexx(temp) = 60 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image3
If blockspritex(temp) = 60 And blockspritexx(temp) = 90 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image4
If blockspritex(temp) = 90 And blockspritexx(temp) = 120 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image5
If blockspritex(temp) = 120 And blockspritexx(temp) = 150 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image6
If blockspritex(temp) = 150 And blockspritexx(temp) = 180 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image7
If blockspritex(temp) = 180 And blockspritexx(temp) = 210 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image8
If blockspritex(temp) = 210 And blockspritexx(temp) = 240 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image9
If blockspritex(temp) = 300 And blockspritexx(temp) = 330 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image12

If blockspritex(temp) = 240 And blockspritexx(temp) = 270 And blockspritey(temp) = 0 And blockspriteyy(temp) = 15 Then Image1(temp) = Image10
If block(temp) = 0 Then Image1(temp) = Image11
Next temp

Exit Sub
t:
Close #2
MsgBox "LEVELDOES NOT EXIST"

End Sub

