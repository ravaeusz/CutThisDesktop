unit uUserController;

interface

uses UserDAO, UUsuario;

  type
  TUserController = class
  private
    FDAO : TUserDAO;
    FNOME: String;
    FSENHA: Integer;

  public
  property NOME: String read FNOME write FNOME;
  property SENHA: Integer read FSENHA write FSENHA;
    constructor Create;
    destructor Destroy; override;
    function Login(ANOME : String ; ASENHA : Integer ) : boolean;
  end;

{ TUserController }


implementation

uses TfrmLogin;

constructor TUserController.Create;
begin
  FDAO := TUserDAO.Create;
end;


destructor TUserController.Destroy;
begin
   FDAO.Free;
   inherited;
end;

function TUserController.Login(ANOME : String ; ASENHA : Integer): boolean;
var
user : TUser;
resultado : boolean;
begin
user := TUser.Create;
user.Nome := ANOME;
user.Senha := ASENHA;

resultado := FDAO.doLogin(user);

try
if resultado then
Result := true
else
Result := false
finally
 user.Free;
end;





end;

end.
