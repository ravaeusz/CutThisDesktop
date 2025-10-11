unit TfrmCadastroViagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormularioCadastroViagem = class(TForm)
    Panel1: TPanel;
    LblTitulo: TLabel;
    EditNomeViagem: TEdit;
    Label1: TLabel;
    EditDescViagem: TEdit;
    Label2: TLabel;
    a: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormularioCadastroViagem: TFormularioCadastroViagem;

implementation

{$R *.dfm}

end.
