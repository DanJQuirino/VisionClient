Attribute VB_Name = "SysCollections"
Option Explicit

Public Sub SetYesNo(ByVal ComboBox As MSForms.ComboBox)
   With ComboBox
      .AddItem ("Sim")
      .AddItem ("N�o")
      .Text = .List(0)
   End With
End Sub

Public Sub SetSexes(ByVal ComboBox As MSForms.ComboBox)
   With ComboBox
      .AddItem ("Masculino")
      .AddItem ("Feminino")
      .Text = .List(0)
   End With
End Sub

Public Sub SetCivilStatus(ByVal ComboBox As MSForms.ComboBox)
   With ComboBox
      .AddItem ("Casado(a)")
      .AddItem ("Solteiro(a)")
      .AddItem ("Divorciado(a)")
      .Text = .List(0)
   End With
End Sub

Public Sub SetStatesLocation(ByVal ComboBox As MSForms.ComboBox)
   With ComboBox
      .AddItem ("Acre")
      .AddItem ("Alagoas")
      .AddItem ("Amap�")
      .AddItem ("Amazonas")
      .AddItem ("Bahia")
      .AddItem ("Cear�")
      .AddItem ("Distrito Federal")
      .AddItem ("Espirito Santo")
      .AddItem ("Goi�s")
      .AddItem ("Maranh�o")
      .AddItem ("Mato Grosso")
      .AddItem ("Mato Grosso Do Sul")
      .AddItem ("Minas Gerais")
      .AddItem ("Par�")
      .AddItem ("Para�ba")
      .AddItem ("Paran�")
      .AddItem ("Pernanbuco")
      .AddItem ("Piau�")
      .AddItem ("Rio Grande Do Norte")
      .AddItem ("Rio Grande Do Sul")
      .AddItem ("Rio De Janeiro")
      .AddItem ("Rond�nia")
      .AddItem ("Roraima")
      .AddItem ("Santa Catarina")
      .AddItem ("S�o Paulo")
      .AddItem ("Sergipe")
      .AddItem ("Tocantins")
      .Text = .List(0)
   End With
End Sub

Public Sub SetClientTypes(ByVal ComboBox As MSForms.ComboBox)
   With ComboBox
       .AddItem ("F�sica")
       .AddItem ("Jur�dica")
       .Text = .List(0)
   End With
End Sub

Public Sub SetCompanyTypes(ComboBox As MSForms.ComboBox)
   With ComboBox
       .AddItem ("Matriz")
       .AddItem ("Filial")
       .Text = .List(0)
   End With
End Sub

Public Sub SetCompanyTypeActions(ByVal ComboBox As MSForms.ComboBox)
   With ComboBox
      .AddItem ("Empres�rio Individual")
      .AddItem ("Microempreendedor - MEI")
      .AddItem ("Empresa Individual - EIRELI")
      .AddItem ("Sociedade Empres�ria")
      .AddItem ("Sociedade Simples")
      .Text = .List(0)
   End With
End Sub

