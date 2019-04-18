object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Main form'
  ClientHeight = 137
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    852
    137)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 836
    Height = 121
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      
        'When running this Application from the debugger or from Explorer' +
        ' it acts like a norma GUI Application.'
      ''
      
        'When running it from a console Window it will prompt out text to' +
        ' the console'
      ''
      'This is all done in the DPR file')
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 395
  end
end
