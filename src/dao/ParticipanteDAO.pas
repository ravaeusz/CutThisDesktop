unit ParticipanteDAO;

interface

uses UParticipante, UConexão, FireDAC.Comp.Client, System.Generics.Collections, SysUtils;


type
TPartDAO = class
private
  { private declarations }
public
  procedure cadastroParticipantes(AParticipantes : TParticipante);
  procedure deleteParticipantes(AId : integer);
  procedure editCParticipantes(AParticipantes: TParticipante; AId : integer);
  function getParticipantesByViagem(Aid : integer) : TFDQuery;

end;


implementation



{ TPartDAO }

procedure TPartDAO.cadastroParticipantes(AParticipantes: TParticipante);
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.SQL.Text := 'INSERT INTO PARTICIPANTES (PT_NOME, PT_VIAGEM) VALUES (:NOME, :VIAGEM)';
q.ParamByName('NOME').AsString := AParticipantes.Nome;
q.ParamByName('VIAGEM').AsInteger := AParticipantes.Viagem;
q.ExecSQL;

finally
Q.FREE;
end;
end;

procedure TPartDAO.deleteParticipantes(AId: integer);
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.sql.Text := 'delete from PARTICIPANTES where pt_id = :id';
q.ParamByName('id').AsInteger := AId;
q.ExecSQL;



finally
  q.Free;
end;
end;

procedure TPartDAO.editCParticipantes(AParticipantes: TParticipante;
  AId: integer);
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.SQL.Text := 'update PARTICIPANTES set PT_NOME = :NOME where pt_id = :id';
q.ParamByName('NOME').AsString := AParticipantes.Nome;
q.ParamByName('id').AsInteger := AId;
finally
  Q.Free;
end;
end;

function TPartDAO.getParticipantesByViagem(Aid : integer): TFDQuery;
var
q : TFDQuery ;
begin
q := TFDQuery.Create(nil);

try
q.Connection := TConexao.getConexao;
q.SQL.Text := 'Select * from PARTICIPANTES where pt_viagem = :viagem';
q.ParamByName('viagem').AsInteger := Aid;
q.Open;
Result := q

finally
  q.Free;
end;
end;
end.
