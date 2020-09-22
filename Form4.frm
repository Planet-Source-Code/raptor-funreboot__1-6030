VERSION 5.00
Begin VB.Form Form4 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Trapped!"
   ClientHeight    =   11115
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   15240
   ControlBox      =   0   'False
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form4.frx":0000
   ScaleHeight     =   11115
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   $"Form4.frx":6961
      ForeColor       =   &H00FFFFFF&
      Height          =   6015
      Left            =   4560
      TabIndex        =   0
      Top             =   360
      Width           =   5415
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Form5.ontop Me, True
End Sub

