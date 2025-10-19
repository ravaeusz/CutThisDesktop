unit ContaDAO;

interface

uses UConexão, UConta, FireDAC.Comp.Client, System.Generics.Collections, SysUtils;
type
TContaDAO = class
private
  { private declarations }
public
  procedure cadastroConta(AConta : TConta);
  procedure deleteConta(AId : integer);
  procedure editConta(AConta: TConta; AId : integer);
  function getConta : TFDQuery;
  function getOneConta(AId: integer) : TFDQuery;

end;

implementation

{ TContaDAO }

procedure TContaDAO.cadastroConta(AConta: TConta);
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.SQL.Text := 'INSERT INTO CONTA (CT_DESC, CT_PRECO, CT_USER, CT_VIAGEM)' +
'VALUES (:desc, :preco, :Puser, :viagem)';
q.ParamByName('desc').AsString := AConta.Descricao;
q.ParamByName('preco').AsCurrency := AConta.Preco;
q.ParamByName('Puser').AsInteger := AConta.CreateByUser;
q.ParamByName('viagem').AsInteger :=AConta.OfViagem;
q.ExecSQL;

finally
  q.Free;
end;
end;

procedure TContaDAO.deleteConta(AId: integer);
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.sql.Text := 'delete from CONTA where ct_id = :id';
q.FieldByName('id').AsInteger := AId;
q.ExecSQL;

finally
  q.Free;
end;
end;

procedure TContaDAO.editConta(AConta: TConta; AId: integer);
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.SQL.Text := 'update CONTA set CT_DESC = :desc, CT_PRECO = :preco, CT_USER = :user,' +
'CT_VIAGEM = :viagem where ct_id = :id';
q.FieldByName('desc').AsString := AConta.Descricao;
q.FieldByName('preco').AsCurrency := AConta.Preco;
q.FieldByName('user').AsInteger := AConta.CreateByUser;
q.FieldByName('viagem').AsInteger :=AConta.OfViagem;
q.FieldByName('id').AsInteger := AId;
q.ExecSQL;
finally
  q.Free;
end;
end;

function TContaDAO.getConta: TFDQuery;
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.SQL.Text := 'Select * from CONTA';
q.Open;
Result := q

finally
  q.Free;
end;
end;

function TContaDAO.getOneConta(AId: integer): TFDQuery;
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.SQL.Text := 'Select * from CONTA where CT_ID = :id';
q.FieldByName('id').AsInteger := AId;
q.Open;
Result := q

finally
  q.Free;
end;
end;

end.
