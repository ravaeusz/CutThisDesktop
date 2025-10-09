unit UserDAO;

interface

uses UUsuario, UConexão, FireDAC.Comp.Client;

type
TUserDAO = class
  public
  function doLogin(AUser: TUser) : Boolean;
end;

implementation

{ TUserDAO }





{ TUserDAO }

function TUserDAO.doLogin(AUser: TUser) : Boolean;
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
Q.SQL.Text := 'Select * from USUARIO where US_NOME = :NOME and US_SENHA = :SENHA' ;
Q.ParamByName('NOME').AsString := AUser.Nome;
Q.ParamByName('SENHA').AsInteger := AUser.Senha;
Q.Open;

if not Q.IsEmpty then
Result:= true
else
Result := false;

finally
  Q.Free;
end;

end;

end.
