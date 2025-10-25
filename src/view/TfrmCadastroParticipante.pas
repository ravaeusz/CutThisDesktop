unit TfrmCadastroParticipante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormularioCadastroParticipante = class(TForm)
    Panel1: TPanel;
    LblTitulo: TLabel;
    Label1: TLabel;
    EditNome: TEdit;
    BtnCadastro: TButton;
    procedure BtnCadastroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditNomeKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCadastroKeyPress(Sender: TObject; var Key: Char);
  private
   FViagem : integer;
  public
    procedure getViagem(AId : integer);
  end;

var
  FormularioCadastroParticipante: TFormularioCadastroParticipante;

implementation

{$R *.dfm}

uses UParticipante, UParticipanteController;

{ TFormularioCadastroParticipante }

procedure TFormularioCadastroParticipante.BtnCadastroClick(Sender: TObject);
var
model : TParticipante;
controller : TParticipantesController;
begin
model := TParticipante.Create;
controller := TParticipantesController.Create;

model.Nome := EditNome.text;
model.Viagem := FViagem;

try
controller.createConta(model);

if Assigned(Controller) then

close;

finally
model.Free;
controller.Free;
end;


end;

procedure TFormularioCadastroParticipante.BtnCadastroKeyPress(Sender: TObject;
  var Key: Char);
begin
BtnCadastro.Click;
end;

procedure TFormularioCadastroParticipante.EditNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = char(#13) then
BtnCadastro.SetFocus;
end;

procedure TFormularioCadastroParticipante.FormShow(Sender: TObject);
begin
EditNome.SetFocus;
end;

procedure TFormularioCadastroParticipante.getViagem(AId: integer);
begin
Self.FViagem := AId;
end;
end.
