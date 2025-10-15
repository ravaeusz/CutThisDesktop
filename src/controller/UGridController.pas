unit UGridController;

interface

uses TfrmPrincipal, Vcl.Grids, Vcl.DBGrids, TfrmCadastroViagem, ViagemDAO,
  UGridDAO;

type
TGridController = class
private
  FormPrincipal : TFormularioPrincipal;
  FDAO : TViagemDAO;
public
  constructor Create(AFormPrincipal: TFormularioPrincipal);
  destructor Destroy; override;
   procedure madeGrid;
   procedure deleteItemGrid(AId : Integer);

end;
implementation



{ TGridController }

constructor TGridController.Create(AFormPrincipal: TFormularioPrincipal);
begin
  FormPrincipal := AFormPrincipal;
  FDAO := TViagemDAO.Create;
end;


destructor TGridController.Destroy;
begin  FDAO.Free;
  inherited;
end;

procedure TGridController.deleteItemGrid(AId: Integer);
begin
FDAO.deleteViagem(AID);
end;

procedure TGridController.madeGrid;
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
col.Width := 200;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_DESC';
col.Title.Caption := 'DESCRICAO';
col.Width := 352;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_DATAINICIO';
col.Title.Caption := 'INICIO';
col.Width := 80;

col := FormPrincipal.DBGridViagem.Columns.Add;
col.FieldName := 'VI_DATAFINAL';
col.Title.Caption := 'FINAL';
col.Width := 80;

FormPrincipal.dsViagem.DataSet := gridConn.conn;

end;


end.
