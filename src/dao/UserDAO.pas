unit UserDAO;

interface

uses UUsuario, UConexão, FireDAC.Comp.Client;

type
TUserDAO = class
  public
  procedure doLogin(AUser: UUser);
end;

implementation

{ TUserDAO }





{ TUserDAO }

procedure TUserDAO.doLogin(AUser: UUser);
var
Q : TFDQuery;
begin
Q := TFDQuery.Create(nil);

try
Q.Connection := TConexao.getConexao;
Q.SQL.Text := 'Select * from USUARIO where US_NOME = :NOME and US_SENHA = :SENHA' ;
Q.ParamByName('NOME').AsString := AUser.Nome;
Q.ParamByName('NOME').AsInteger := AUser.Senha;
Q.Open;


finally
  Q.Free;
end;

end;

end.
