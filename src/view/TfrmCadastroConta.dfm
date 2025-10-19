object FormularioCadastroConta: TFormularioCadastroConta
  Left = 694
  Top = 187
  BorderStyle = bsDialog
  Caption = 'FormularioCadastroConta'
  ClientHeight = 394
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
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
      Height = 21
      Align = alTop
      Alignment = taCenter
      Caption = 'CADASTRE A CONTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 160
    end
    object Label1: TLabel
      Left = 20
      Top = 61
      Width = 140
      Height = 21
      Alignment = taCenter
      Caption = '* Descri'#231#227'o : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 20
      Top = 125
      Width = 90
      Height = 21
      Alignment = taCenter
      Caption = '* Pre'#231'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 197
      Width = 210
      Height = 21
      Alignment = taCenter
      Caption = '* Quem fez a conta  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object EditDescConta: TEdit
      Left = 40
      Top = 88
      Width = 233
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object EditParticipante: TEdit
      Left = 40
      Top = 224
      Width = 233
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object BtnCadastro: TButton
      Left = 40
      Top = 333
      Width = 233
      Height = 41
      Caption = 'Cadastrar'
      TabOrder = 2
      OnClick = BtnCadastroClick
    end
    object EditPrecoConta: TEdit
      Left = 40
      Top = 157
      Width = 233
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
end
