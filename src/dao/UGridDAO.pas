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
  function conn : TFDQuery;
  procedure refresh;
end;

implementation

{ TGridConn }

function TGridDAO.conn: TFDQuery;

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
