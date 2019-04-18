object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Console from GUI APP'
  ClientHeight = 59
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 16
    Width = 241
    Height = 25
    Caption = 'Click here to open a Console'
    TabOrder = 0
    OnClick = Button1Click
  end
end
