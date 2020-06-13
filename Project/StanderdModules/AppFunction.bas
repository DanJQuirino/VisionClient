Attribute VB_Name = "AppFunction"
Option Explicit

'***************************************************
'Nesse m�dulo fica todos as fun��es que est�o
'disponiveis publicamente para todo o sistema
'***************************************************

Public Sub SetStyle(Form As MSForms.UserForm)
   
   Dim Control As MSForms.Control

   Dim TextBorderColor, TextBackColor, TextForeColor, TextBorderStyle, TextFont As Variant
      TextFont = "Arial"
      TextBackColor = &H80000004
      TextBorderColor = 14540253
      TextForeColor = 1842204
      TextBorderStyle = 1
   
   Dim LabelForeColor, LabelFont As Variant
      LabelForeColor = &H996600
      LabelFont = "Calibri"
      
   Dim FrameBackColor, FrameForeColor, FrameBorderColor, FrameFont As Variant
      FrameBorderColor = 14540253
      FrameForeColor = &H996600
      FrameBackColor = &HFFFFFF
      FrameFont = "Calibri"
   
   Form.Font = "Calibri"
   Form.BackColor = 13408512
   
   For Each Control In Form.Controls
      
      Select Case TypeName(Control)
         Case Is = "TextBox"
            With Control
               .BorderColor = TextBorderColor
               .BackColor = TextBackColor
               .ForeColor = TextForeColor
               .BorderStyle = TextBorderStyle
               With .Font
                  .Name = TextFont
                  .Size = 10
               End With
            End With
         Case Is = "ComboBox"
            With Control
               .BorderColor = TextBorderColor
               .BackColor = TextBackColor
               .ForeColor = TextForeColor
               .BorderStyle = TextBorderStyle
               With .Font
                  .Name = TextFont
                  .Size = 10
               End With
            End With
            
         Case Is = "Label"
            With Control
               .ForeColor = LabelForeColor
               With .Font
                  .Name = LabelFont
                  .Size = 11
               End With
            End With
            
         Case Is = "Frame"
            With Control
               .BorderColor = FrameBorderColor
               .BackColor = FrameBackColor
               .ForeColor = FrameForeColor
               With .Font
                  .Name = FrameFont
                  .Size = 10
               End With
            End With
            
         Case Is = "OptionButton"
            With Control
               .ForeColor = &H996600
               With .Font
                  .Name = TextFont
                  .Size = 10
               End With
            End With
      End Select
   Next
   
End Sub

Public Sub IndentyDataTable(TableName As String, Optional Indent As Integer = 1, Optional SelectRange As String = "A1")
   Application.GoTo Reference:=TableName
      With Selection
         .HorizontalAlignment = xlGeneral
         .VerticalAlignment = xlCenter
         .InsertIndent Indent
      End With
      Range(SelectRange).Select
End Sub

Public Sub ClearTableContents(TableName As String, Optional SelectRange As String = "A1")
   Application.GoTo Reference:=TableName
   Selection.ClearContents
   Range(SelectRange).Select
End Sub

Public Sub ProtectSheet(Sheet As Worksheet, PassWord As String)
   Sheet.Protect PassWord:=PassWord
End Sub
Public Sub UnprotectSheet(Sheet As Worksheet, PassWord As String)
   Sheet.Unprotect PassWord:=PassWord
End Sub

Public Sub ActiveWorkbookRefreshAll()
   ActiveWorkbook.RefreshAll
End Sub

Public Sub ApplicationScreenUpdating(Updating As Boolean)
   Application.ScreenUpdating = Updating
End Sub

Public Function TestConnectionProvider(Provider As String) As Integer
   
   On Error GoTo Error
      
      Dim Database As ConnectionAccess
      
      Set Database = New ConnectionAccess
          
          Database.OpenConnection
          
          If Database.Connection.State = 1 Then
             TestConnectionProvider = 1
          End If
          
      Set Database = Nothing
      
   Exit Function

Error:
   TestConnectionProvider = 0
   Set Database = Nothing
End Function

