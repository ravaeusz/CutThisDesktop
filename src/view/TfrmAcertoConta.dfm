object FormularioAcerto: TFormularioAcerto
  Left = 490
  Top = 145
  Caption = 'FormularioAcerto'
  ClientHeight = 643
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 643
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 65
      Width = 666
      Height = 578
      Align = alClient
      DataSource = dsAcerto
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 666
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Padding.Top = 20
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 20
        Width = 666
        Height = 36
        Align = alTop
        Alignment = taCenter
        Caption = 'TOTAL DE PRESTA'#199#195'O E RECEBIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'JetBrains Mono ExtraLight'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 10
        ExplicitWidth = 544
      end
    end
  end
  object dsAcerto: TDataSource
    Left = 608
    Top = 600
  end
end
