unit ViagemDAO;

interface

uses UConexão, FireDAC.Comp.Client, System.Generics.Collections;

implementation

uses  UViagem;


type
TViagemDAO = class
public
  procedure postLogin(AViagem : TViagem);
  procedure deleteViagem(Id: integer);
  procedure updateViagem(AViagem : TViagem);
  function getViagem : TFDQuery;


end;



{ TViagemDAO }

procedure TViagemDAO.deleteViagem(Id: integer);
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
q.SQL.Text := 'DELETE FROM VIAGEM WHERE :ID';
q.ParamByName('ID').AsInteger := Id;
q.ExecSQL;

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
