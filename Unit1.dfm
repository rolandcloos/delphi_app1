object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 538
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblUser: TLabel
    Left = 105
    Top = 64
    Width = 43
    Height = 13
    Caption = 'Benutzer'
  end
  object lblPassword: TLabel
    Left = 104
    Top = 91
    Width = 3
    Height = 13
  end
  object lblError: TLabel
    Left = 104
    Top = 120
    Width = 3
    Height = 13
    Color = clRed
    ParentColor = False
  end
  object lblInfo: TLabel
    Left = 104
    Top = 16
    Width = 242
    Height = 13
    Caption = 'Bitte loggen Sie sich mit Ihrem Benutzernamen ein.'
  end
  object btnLogin: TButton
    Left = 352
    Top = 193
    Width = 75
    Height = 25
    Caption = 'btnLogin'
    TabOrder = 0
    OnClick = btnLoginClick
  end
  object txtUser: TEdit
    Left = 232
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'cloos'
  end
  object txtPassword: TEdit
    Left = 232
    Top = 88
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    Text = 'klejd264'
  end
  object stStatus: TStatusBar
    Left = 0
    Top = 519
    Width = 498
    Height = 19
    Color = clGrayText
    Panels = <
      item
        Width = 50
      end>
  end
  object StringGrid1: TStringGrid
    Tag = 2
    Left = 72
    Top = 296
    Width = 320
    Height = 120
    ColCount = 2
    FixedCols = 0
    RowCount = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    ColWidths = (
      64
      64)
  end
  object FDConnection1: TFDConnection
    ConnectionName = 'mySQL'
    Params.Strings = (
      'User_Name=n4RnM7h2Bt'
      'Database=n4RnM7h2Bt'
      'Password=D2yKtAJodX'
      'Server=remotemysql.com'
      'DriverID=MySQL')
    ConnectedStoredUsage = [auDesignTime]
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 126
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT name, password FROM user;')
    Left = 32
    Top = 174
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 240
    Top = 272
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    PromptDeleteUnused = False
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Schnelle Bindungen'
      DataSource = BindSourceDB1
      FieldName = 'name'
      Control = txtUser
      Track = True
    end
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Schnelle Bindungen'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'name'
        end
        item
          MemberName = 'password'
        end>
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Schnelle Bindungen'
      DataSource = BindSourceDB1
      FieldName = 'password'
      Control = txtPassword
      Track = True
    end
  end
end
