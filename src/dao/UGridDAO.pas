unit UGridDAO;

interface

uses UConexão,
  System.SysUtils,
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  FireDAC.Stan.Async,
  FireDAC.Stan.Param,
  FireDAC.Stan.Intf,
  FireDAC.UI.Intf,
  FireDAC.Phys,
  FireDAC.Phys.Intf,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.DApt,
  FireDAC.VCLUI.Wait;

type
TGridDAO = class
private
  FDAO: TConexao;
    FQuery: TFDQuery;

public
    constructor Create;
    destructor Destroy; override;
  function connViagem : TFDQuery;
  function connConta(AId : integer) : TFDQuery;
  function connParticipantes(AId : integer) : TFDQuery;
  procedure refresh;
end;

implementation

function TGridDAO.connConta(AId : integer): TFDQuery;
begin
FQuery.sql.clear;
FQuery.SQL.Text := 'SELECT * FROM CONTA where ct_viagem = :viagem' ;
FQUery.ParamByName('viagem').AsInteger := AId;
FQuery.Active := true;
FQuery.Open;


Result := FQuery;
end;

function TGridDAO.connParticipantes(AId : integer): TFDQuery;
begin
FQuery.sql.clear;
FQuery.SQL.Text := 'SELECT * FROM PARTICIPANTES where pt_viagem = :viagem' ;
FQUery.ParamByName('viagem').AsInteger := AId;
FQuery.Active := true;
FQuery.Open;

Result := FQuery;
end;

{ TGridConn }

function TGridDAO.connViagem: TFDQuery;
begin
FQuery.SQL.Text := 'SELECT * FROM VIAGEM' ;
FQuery.Active := true;
FQuery.Open;

Result := FQuery;

end;



constructor TGridDAO.Create;
begin
  FDAO := TConexao.Create;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := FDAO.getConexao;
end;

destructor TGridDAO.Destroy;
begin
  FQuery.Free;
  FDAO.Free;
  inherited;
end;

procedure TGridDAO.refresh;
begin
FQuery.Close;
FQuery.sql.Clear;
FQuery.SQL.Text := 'SELECT * FROM VIAGEM' ;
FQuery.Open;
end;

end.
