unit UGridControllerViagem;

interface

uses TfrmPrincipal, Vcl.Grids, Vcl.DBGrids, TfrmCadastroViagem, ViagemDAO,
  UGridDAO, UViagem,TfrmViagem, SysUtils, ContaDAO;
type
TGridControllerViagem = class
private
  FormViagem : TFormularioViagem;
public
constructor Create(Aform : TFormularioViagem);
destructor Destroy; override;
procedure madeGridConta;
procedure madeGridParticipantes;
end;
implementation

{ TGridControllerViagem }

constructor TGridControllerViagem.Create(Aform: TFormularioViagem);
begin
FormViagem := Aform;
end;

destructor TGridControllerViagem.Destroy;
begin
FormViagem.Free;
end;

procedure TGridControllerViagem.madeGridConta;
var
col : TColumn;
gridConn : TGridDAO;
begin
gridConn := TGridDAO.Create;


FormViagem.GridConta.Columns.Clear;

col := FormViagem.GridConta.Columns.Add;
col.FieldName := 'CT_ID';
col.Title.Caption := 'ID';
col.Width := 30;

col := FormViagem.GridConta.Columns.Add;
col.FieldName := 'CT_DESC';
col.Title.Caption := 'DESCRIÇÃO';
col.Width := 180;

col := FormViagem.GridConta.Columns.Add;
col.FieldName := 'CT_VALOR';
col.Title.Caption := 'VALOR';
col.Width := 70;


FormViagem.dsConta.DataSet := gridConn.connConta;

end;

procedure TGridControllerViagem.madeGridParticipantes;
var
col : TColumn;
gridConn : TGridDAO;
begin
gridConn := TGridDAO.Create;


FormViagem.GridParticipantes.Columns.Clear;

col := FormViagem.GridParticipantes.Columns.Add;
col.FieldName := 'PT_ID';
col.Title.Caption := 'ID';
col.Width := 30;

col := FormViagem.GridParticipantes.Columns.Add;
col.FieldName := 'PT_NOME';
col.Title.Caption := 'DESCRIÇÃO';
col.Width := 200
;


FormViagem.dsParticipantes.DataSet := gridConn.connParticipantes;

end;

end.
