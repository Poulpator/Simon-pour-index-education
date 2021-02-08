object Form1: TForm1
  Left = 6
  Top = 0
  Caption = 'Jeu du simon'
  ClientHeight = 533
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 64
    Top = 242
    Width = 65
    Height = 65
  end
  object Shape2: TShape
    Left = 144
    Top = 242
    Width = 65
    Height = 65
  end
  object Shape3: TShape
    Left = 232
    Top = 242
    Width = 65
    Height = 65
  end
  object Shape4: TShape
    Left = 64
    Top = 322
    Width = 65
    Height = 65
  end
  object Shape5: TShape
    Left = 144
    Top = 322
    Width = 65
    Height = 65
  end
  object Shape6: TShape
    Left = 232
    Top = 322
    Width = 65
    Height = 65
  end
  object Shape7: TShape
    Left = 64
    Top = 411
    Width = 65
    Height = 65
  end
  object Shape8: TShape
    Left = 144
    Top = 411
    Width = 65
    Height = 65
  end
  object Shape9: TShape
    Left = 232
    Top = 411
    Width = 65
    Height = 65
  end
  object Button3: TButton
    Left = 392
    Top = 242
    Width = 65
    Height = 65
    Caption = '1'
    TabOrder = 0
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 473
    Top = 242
    Width = 65
    Height = 65
    Caption = '2'
    TabOrder = 1
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 558
    Top = 242
    Width = 65
    Height = 65
    Caption = '3'
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 392
    Top = 329
    Width = 65
    Height = 65
    Caption = '4'
    TabOrder = 3
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 473
    Top = 329
    Width = 65
    Height = 65
    Caption = '5'
    TabOrder = 4
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 558
    Top = 329
    Width = 65
    Height = 65
    Caption = '6'
    TabOrder = 5
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 392
    Top = 411
    Width = 65
    Height = 65
    Caption = '7'
    TabOrder = 6
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 473
    Top = 411
    Width = 65
    Height = 65
    Caption = '8'
    TabOrder = 7
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 558
    Top = 411
    Width = 65
    Height = 65
    Caption = '9'
    TabOrder = 8
    OnClick = Button11Click
  end
  object ProgressBar1: TProgressBar
    Left = 64
    Top = 200
    Width = 233
    Height = 17
    TabOrder = 9
  end
  object ProgressBar2: TProgressBar
    Left = 392
    Top = 200
    Width = 231
    Height = 17
    TabOrder = 10
  end
  object Button2: TButton
    Left = 255
    Top = 300
    Width = 164
    Height = 105
    Caption = 'Restart'
    TabOrder = 11
    Visible = False
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 8
    Width = 559
    Height = 169
    Caption = 'Bienvenue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    object Label2: TLabel
      Left = 3
      Top = 16
      Width = 266
      Height = 18
      Caption = 'Label2                              dzdzdzdzdz'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
