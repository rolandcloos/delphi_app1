object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 243
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 61
    Width = 43
    Height = 13
    Caption = 'Benutzer'
  end
  object Label2: TLabel
    Left = 104
    Top = 91
    Width = 44
    Height = 13
    Caption = 'Passwort'
  end
  object lblError: TLabel
    Left = 104
    Top = 120
    Width = 323
    Height = 50
    Color = clRed
    ParentColor = False
  end
  object Label3: TLabel
    Left = 104
    Top = 16
    Width = 242
    Height = 13
    Caption = 'Bitte loggen Sie sich mit Ihrem Benutzernamen ein.'
  end
  object btnLogin: TButton
    Left = 352
    Top = 192
    Width = 75
    Height = 25
    Caption = 'btnLogin'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 232
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 232
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
end
