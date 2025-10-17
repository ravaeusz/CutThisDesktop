unit UGridController;

interface

uses TfrmPrincipal, Vcl.Grids, Vcl.DBGrids, TfrmCadastroViagem, ViagemDAO,
  UGridDAO, UViagem,TfrmViagem, SysUtils, ContaDAO;

type
TGridController = class
private
  FormPrincipal : TFormularioPrincipal;
  FormViagem : TFormularioViagem;
  FDAO : TViagemDAO;
  FDAOConta : TContaDAO;
public
  constructor Create(AFormPrincipal: TFormularioPrincipal);
  destructor Destroy; override;
   procedure madeGridViagem;
   procedure getViagem(AId : integer);
   procedure deleteItemGrid(AId : Integer);

end;
implementation


{ TGridController }

constructor TGridController.Create(AFormPrincipal: TFormularioPrincipal);
begin
  FormPrincipal := AFormPrincipal;
  FDAO := TViagemDAO.Create;
  FDAOConta := TContaDAO.Create;
end;


destructor TGridController.Destroy;
begin
  FDAO.Free;
  FDAOConta.Free;
  inherited;
end;

procedure TGridController.getViagem(AId : integer);
var
viagem : TViagem;
FormViagem : TFormularioViagem;
begin
FormViagem := TFormularioViagem.Create(nil);
try
viagem := FDAO.getOnlyViagem(AId);
FormViagem.LblViagemNome.Caption := viagem.Nome;
FormViagem.LblDataInicio.Caption := DateToStr(viagem.dataInicio);
FormViagem.LblDataFinal.Caption := DateToStr(viagem.dataFinal);
FormViagem.ShowModal;
finally
FormViagem.Free;
end;

end;

procedure TGridController.deleteItemGrid(AId: Integer);
begin
FDAO.deleteViagem(AID);
end;




procedure TGridController.madeGridViagem;
var
col : TColumn;
gridConn : TGridDAO;
begin
gridConn := TGridDAO.Create;


FormPrincipal.DBGridViagem.Columns.Clear;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_ID';
col.Title.Caption := 'ID';
col.Width := 50;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_NOME';
col.Title.Caption := 'NOME';
col.Width := 100;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_DESC';
col.Title.Caption := 'DESCRICAO';
col.Width := 340;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_DATAINICIO';
col.Title.Caption := 'INICIO';
col.Width := 80;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_DATAFINAL';
col.Title.Caption := 'FINAL';
col.Width := 80;

FormPrincipal.dsViagem.DataSet := gridConn.connViagem;

end;


end.
