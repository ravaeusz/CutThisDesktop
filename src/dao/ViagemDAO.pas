unit ViagemDAO;

interface

uses UConexão, UViagem, FireDAC.Comp.Client, System.Generics.Collections, SysUtils;

type
TViagemDAO = class
public
  procedure postLogin(AViagem : TViagem);
  procedure deleteViagem(Id: integer);
  procedure updateViagem(AViagem : TViagem);
  function getViagem : TFDQuery;
  function getOnlyViagem(AId : integer) : TViagem;
end;

implementation

{ TViagemDAO }

procedure TViagemDAO.deleteViagem(Id: integer);
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
q.SQL.Text := 'DELETE FROM VIAGEM WHERE VI_ID = :ID';
q.ParamByName('ID').AsInteger := Id;
q.ExecSQL;

finally
  q.Free;
end;

end;

function TViagemDAO.getOnlyViagem(AId : integer): TViagem;
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
Q.SQL.Text := 'SELECT VI_NOME,VI_DESC,VI_DATAINICIO,VI_DATAFINAL FROM VIAGEM where vi_id = :id';
Q.ParamByName('id').AsInteger := AId;
Q.Open;


Result := TViagem.Create;
Result.Nome :=  Q.FieldByName('VI_NOME').AsString;
Result.Descricao :=  Q.FieldByName('VI_DESC').AsString;
Result.dataInicio :=  Q.FieldByName('VI_DATAINICIO').AsDateTime;
Result.dataFinal :=  Q.FieldByName('VI_DATAFINAL').AsDateTime;

finally
  q.Free;
end;
end;


function TViagemDAO.getViagem: TFDQuery;
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
Q.SQL.Text := 'SELECT * FROM VIAGEM';
Q.Open;

Result:=Q;


finally
Q.Free;

end;

end;


procedure TViagemDAO.postLogin(AViagem: TViagem);
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
Q.SQL.Text := 'INSERT INTO VIAGEM (VI_NOME, VI_DESC, VI_DATAINICIO, VI_DATAFINAL)'
+ 'VALUES (:NOME, :DESC, :DATAINICIO, :DATAFINAL)';
Q.ParamByName('NOME').AsString := AViagem.Nome;
Q.ParamByName('DESC').AsString := AViagem.Descricao;
Q.ParamByName('DATAINICIO').AsDate := AViagem.dataInicio;
Q.ParamByName('DATAFINAL').AsDate := AViagem.dataFinal;
Q.ExecSQL;

finally
Q.Free;
end;

end;

procedure TViagemDAO.updateViagem(AViagem: TViagem);
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
Q.sql.Text := 'UPDATE VIAGEM SET VI_NOME:=NOME, VI_DESC:=DESC, VI_DATAINICIO:=DATAINICIO, VI_DATAFINAL:=DATAFINAL'
+ 'WHERE VI_ID:=ID' ;
Q.ParamByName('NOME').AsString := AViagem.Nome;
Q.ParamByName('DESC').AsString := AViagem.Descricao;
Q.ParamByName('DATAINICIO').AsDate := AViagem.dataInicio;
Q.ParamByName('DATAFINAL').AsDate := AViagem.dataFinal;
Q.ExecSQL;

finally
Q.Free;
end;

end;

end.
