VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form5 
   BackColor       =   &H00000000&
   Caption         =   "LoL!"
   ClientHeight    =   1155
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4485
   ControlBox      =   0   'False
   Enabled         =   0   'False
   LinkTopic       =   "Form5"
   ScaleHeight     =   1155
   ScaleWidth      =   4485
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   120
      Top             =   2160
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   195
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   3120
      _ExtentX        =   5503
      _ExtentY        =   344
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   1
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Examining harddrive..."
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   960
      TabIndex        =   1
      Top             =   0
      Width           =   2535
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
ontop Me, True
End Sub

Private Sub Timer1_Timer()
If ProgressBar1.Value > 99 Then GoTo 1 Else GoTo 2
2 ProgressBar1.Value = ProgressBar1.Value + 1
1 Call Me.Hide
 ExitWindowsEx EWX_REBOOT, 0
 
End Sub
Public Sub ontop(frmForm As Form, fOnTop As Boolean)


    
    Const HWND_TOPMOST = -1
    Const HWND_NOTOPMOST = -2
    
    Dim lState As Long
    Dim iLeft As Integer, iTop As Integer, iWidth As Integer, iHeight As Integer


    With frmForm
        iLeft = .Left / Screen.TwipsPerPixelX
        iTop = .Top / Screen.TwipsPerPixelY
        iWidth = .Width / Screen.TwipsPerPixelX
        iHeight = .Height / Screen.TwipsPerPixelY
    End With

    


    If fOnTop Then
        lState = HWND_TOPMOST
    Else
        lState = HWND_NOTOPMOST
    End If

    Call SetWindowPos(frmForm.hwnd, lState, iLeft, iTop, iWidth, iHeight, 0)
End Sub

