unit TfrmViagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, DateUtils,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormularioViagem = class(TForm)
    Timer1: TTimer;
    Label7: TLabel;
    Panel1: TPanel;
    LblViagemNome: TLabel;
    LblDataInicio: TLabel;
    LblDataFinal: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel7: TPanel;
    Image1: TImage;
    Panel8: TPanel;
    Label2: TLabel;
    GridConta: TDBGrid;
    Label8: TLabel;
    GridParticipantes: TDBGrid;
    Label3: TLabel;
    BtnAcertoConta: TButton;
    BtnCadastroConta: TButton;
    BtnCadastroParticipante: TButton;
    dsConta: TDataSource;
    dsParticipantes: TDataSource;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCadastroContaClick(Sender: TObject);
    procedure BtnCadastroParticipanteClick(Sender: TObject);
    procedure GridContaDblClick(Sender: TObject);
    procedure GridParticipantesDblClick(Sender: TObject);
    procedure BtnAcertoContaClick(Sender: TObject);

  private

  public
    FIdViagem : integer;
  end;

var
  FormularioViagem: TFormularioViagem;

implementation

{$R *.dfm}

uses TfrmPrincipal, UGridController, UGridControllerViagem, TfrmCadastroConta ,
  TfrmCadastroParticipante, UParticipanteController, UContaController, TfrmAcertoConta;



procedure TFormularioViagem.BtnAcertoContaClick(Sender: TObject);
var
acerto : TFormularioAcerto;
grid : TGridControllerViagem;
begin
acerto := TFormularioAcerto.Create(nil);
grid := TGridControllerViagem.Create(nil);
try

acerto.getId(FIdViagem);
acerto.ShowModal;

finally
acerto.free;
grid.free;
end;

end;

procedure TFormularioViagem.BtnCadastroContaClick(Sender: TObject);
var
cadastro : TFormularioCadastroConta;
begin
cadastro := TFormularioCadastroConta.Create(nil);

try
cadastro.getViagem(FIdViagem);
cadastro.ShowModal;
dsConta.DataSet.Refresh;

finally
cadastro.free;
end;
end;

procedure TFormularioViagem.BtnCadastroParticipanteClick(Sender: TObject);
var
cadastro : TFormularioCadastroParticipante;
begin
cadastro := TFormularioCadastroParticipante.Create(nil);

try
cadastro.getViagem(FIdViagem);
cadastro.ShowModal;
dsParticipantes.DataSet.Refresh;
finally
  cadastro.Free;
end;

end;

procedure TFormularioViagem.Button1Click(Sender: TObject);
begin
close;
end;

procedure TFormularioViagem.FormCreate(Sender: TObject);
begin
Label1.Caption := FormularioPrincipal.Label1.Caption;
end;


procedure TFormularioViagem.FormShow(Sender: TObject);
var
grid : TGridControllerViagem;
begin
grid := TGridControllerViagem.Create(Self);

FIdViagem := grid.getViagemId(LblViagemNome.Caption);
grid.madeGridConta;
grid.madeGridParticipantes;

end;

procedure TFormularioViagem.GridContaDblClick(Sender: TObject);
var
resultado : integer;
controller : Tcontacontroller;
begin
controller := Tcontacontroller.Create;

resultado := MessageDlg('Deseja excluir o item?', TMsgDlgType.mtWarning, mbYesNo, 0);
if resultado = 6 then
controller.deleteConta(dsConta.DataSet.FieldByName('CT_ID').AsInteger);
dsConta.DataSet.Refresh;
end;

procedure TFormularioViagem.GridParticipantesDblClick(Sender: TObject);
var
resultado : integer;
controller : TParticipantesController;
begin
controller := TParticipantesController.Create;

resultado := MessageDlg('Deseja excluir o participante?', TMsgDlgType.mtWarning, mbYesNo, 0);
if resultado = 6 then
controller.deleteConta(dsParticipantes.DataSet.FieldByName('PT_ID').AsInteger);
dsParticipantes.DataSet.Refresh;

end;


procedure TFormularioViagem.Timer1Timer(Sender: TObject);
begin
Label2.Caption := (date.Now).ToString;
end;

end.
