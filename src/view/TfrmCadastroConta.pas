unit TfrmCadastroConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.CheckLst,
  Vcl.Mask;

type
  TFormularioCadastroConta = class(TForm)
    Panel1: TPanel;
    LblTitulo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    EditDescConta: TEdit;
    Label3: TLabel;
    EditParticipante: TEdit;
    BtnCadastro: TButton;
    EditPrecoConta: TEdit;
    procedure BtnCadastroClick(Sender: TObject);
  private
    FViagem: integer;
    { Private declarations }
  public
  property Viagem: integer read FViagem write FViagem;
  procedure getViagem(AId : integer);
  end;

var
  FormularioCadastroConta: TFormularioCadastroConta;

implementation

{$R *.dfm}

uses UContaController, UConta , TfrmViagem;

{ TFormularioCadastroConta }

procedure TFormularioCadastroConta.BtnCadastroClick(Sender: TObject);
var
Controller : TContaController;
model : TConta;
resultado : string;
begin
Controller := TContaController.Create;
model := TConta.Create;


model.Descricao := EditDescConta.Text;
model.Preco := StrToCurr(EditPrecoConta.Text);
model.CreateByUser := StrToInt(EditParticipante.text);
model.OfViagem := Viagem;

try
resultado := Controller.createConta(model);
ShowMessage(resultado);

if Assigned(Controller) then

close;
finally
  Controller.free;
  model.free;
end;
end;

procedure TFormularioCadastroConta.getViagem(AId : integer);
begin
Self.FViagem := AId;
end;

end.
