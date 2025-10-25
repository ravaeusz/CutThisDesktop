object FormularioCadastroParticipante: TFormularioCadastroParticipante
  Left = 817
  Top = 249
  Caption = 'FormularioCadastroParticipante'
  ClientHeight = 394
  ClientWidth = 312
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
    Width = 312
    Height = 394
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Top = 20
    ParentBackground = False
    TabOrder = 0
    object LblTitulo: TLabel
      Left = 0
      Top = 20
      Width = 312
      Height = 42
      Align = alTop
      Alignment = taCenter
      Caption = 'COM QUEM QUE VOC'#202' VAI'#13#10' DIVIDIR A CONTA?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 210
    end
    object Label1: TLabel
      Left = 20
      Top = 125
      Width = 80
      Height = 21
      Alignment = taCenter
      Caption = '* Nome: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object EditNome: TEdit
      Left = 40
      Top = 152
      Width = 233
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EditNomeKeyPress
    end
    object BtnCadastro: TButton
      Left = 40
      Top = 333
      Width = 233
      Height = 41
      Caption = 'Cadastrar'
      TabOrder = 1
      OnClick = BtnCadastroClick
      OnKeyPress = BtnCadastroKeyPress
    end
  end
end
