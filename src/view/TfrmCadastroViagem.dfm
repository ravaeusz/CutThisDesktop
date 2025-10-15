object FormularioCadastroViagem: TFormularioCadastroViagem
  Left = 698
  Top = 190
  Caption = 'FormularioCadastroViagem'
  ClientHeight = 394
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
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
      Caption = 'CADASTRE ROL'#202' OU VIAGEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 230
    end
    object Label1: TLabel
      Left = 20
      Top = 61
      Width = 70
      Height = 21
      Alignment = taCenter
      Caption = '* Nome:'
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
      Width = 130
      Height = 21
      Alignment = taCenter
      Caption = '* Descri'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 189
      Width = 120
      Height = 21
      Alignment = taCenter
      Caption = 'Data Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 253
      Width = 110
      Height = 21
      Alignment = taCenter
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object EditNomeViagem: TEdit
      Left = 40
      Top = 88
      Width = 233
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object EditDescViagem: TEdit
      Left = 40
      Top = 152
      Width = 233
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object a: TButton
      Left = 40
      Top = 333
      Width = 233
      Height = 41
      Caption = 'Cadastrar'
      TabOrder = 2
      OnClick = aClick
    end
    object MaskEditDataInicio: TMaskEdit
      Left = 40
      Top = 216
      Width = 233
      Height = 29
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object MaskEditDataFinal: TMaskEdit
      Left = 40
      Top = 280
      Width = 233
      Height = 29
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
    end
  end
end
