object FormularioCadastroViagem: TFormularioCadastroViagem
  Left = 698
  Top = 190
  Caption = 'FormularioCadastroViagem'
  ClientHeight = 394
  ClientWidth = 311
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
    Width = 311
    Height = 394
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Top = 20
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 16
    ExplicitHeight = 449
    object LblTitulo: TLabel
      Left = 0
      Top = 20
      Width = 311
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
      ExplicitTop = 44
    end
    object Label1: TLabel
      Left = 40
      Top = 77
      Width = 50
      Height = 21
      Alignment = taCenter
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 149
      Width = 110
      Height = 21
      Alignment = taCenter
      Caption = 'Descri'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'JetBrains Mono ExtraBold'
      Font.Style = []
      ParentFont = False
    end
    object EditNomeViagem: TEdit
      Left = 40
      Top = 104
      Width = 233
      Height = 25
      TabOrder = 0
    end
    object EditDescViagem: TEdit
      Left = 40
      Top = 176
      Width = 233
      Height = 97
      TabOrder = 1
    end
    object a: TButton
      Left = 40
      Top = 320
      Width = 233
      Height = 41
      Caption = 'Cadastrar'
      TabOrder = 2
    end
  end
end
