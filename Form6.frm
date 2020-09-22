VERSION 5.00
Begin VB.Form Form6 
   BackColor       =   &H00000000&
   Caption         =   "App by:"
   ClientHeight    =   4080
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4365
   ControlBox      =   0   'False
   LinkTopic       =   "Form6"
   ScaleHeight     =   4080
   ScaleWidth      =   4365
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   3840
      Top             =   3600
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   $"Form6.frx":0000
      ForeColor       =   &H00FFFFFF&
      Height          =   975
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   4095
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "^RaPToR^ for use at http://www.planet-source-code.com/vb"
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3975
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Form5.ontop Me, True
Me.Enabled = False
Me.Height = 1
Me.Width = 1
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
If Me.Height > 4454 Then GoTo 1 Else GoTo 2
2 Me.Height = Me.Height + 10
 Me.Width = Me.Width + 10
 GoTo 3
1 Timer1.Enabled = False
3 End Sub
