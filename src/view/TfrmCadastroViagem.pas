unit TfrmCadastroViagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFormularioCadastroViagem = class(TForm)
    Panel1: TPanel;
    LblTitulo: TLabel;
    EditNomeViagem: TEdit;
    Label1: TLabel;
    EditDescViagem: TEdit;
    Label2: TLabel;
    BtnCadastro: TButton;
    Label3: TLabel;
    Label4: TLabel;
    MaskEditDataInicio: TMaskEdit;
    MaskEditDataFinal: TMaskEdit;
    procedure BtnCadastroClick(Sender: TObject);

    procedure EditNomeViagemKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescViagemKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDataInicioKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDataFinalKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormularioCadastroViagem: TFormularioCadastroViagem;

implementation

{$R *.dfm}

uses uUserController, UViagem, UViagemController, UGridDAO, TfrmPrincipal;

procedure TFormularioCadastroViagem.BtnCadastroClick(Sender: TObject);
var
Controller : TViagemControler;
Model : TViagem;
resultado : string;
begin
Controller := TViagemControler.Create;
Model := TViagem.Create;


Model.Nome := EditNomeViagem.Text;
Model.Descricao := EditDescViagem.Text;
Model.dataInicio := StrToDate(MaskEditDataInicio.Text);
Model.dataFinal := StrToDate(MaskEditDataFinal.Text);

resultado := Controller.postViagem(Model);

ShowMessage(resultado);
FormularioPrincipal.dsViagem.DataSet.Refresh;
close;

end;

procedure TFormularioCadastroViagem.BtnCadastroKeyPress(Sender: TObject;
  var Key: Char);
begin
BtnCadastro.Click;
end;

procedure TFormularioCadastroViagem.EditDescViagemKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = char(#13) then
MaskEditDataInicio.SetFocus;
end;

procedure TFormularioCadastroViagem.EditNomeViagemKeyPress(Sender: TObject;
var Key: Char);
begin
if key = char(#13) then
EditDescViagem.SetFocus;
end;


procedure TFormularioCadastroViagem.FormShow(Sender: TObject);
begin
EditNomeViagem.SetFocus;
end;

procedure TFormularioCadastroViagem.MaskEditDataFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = char(#13) then
BtnCadastro.SetFocus;
end;

procedure TFormularioCadastroViagem.MaskEditDataInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = char(#13) then
MaskEditDataFinal.SetFocus;
end;

end.
