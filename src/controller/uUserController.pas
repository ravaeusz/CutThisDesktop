unit uUserController;

interface

uses UserDAO, UUsuario;

  type
  TUserController = class
  private
    FDAO : TUserDAO;

  public
    constructor Create;
    destructor Destroy; override;
    procedure Login(AUser : UUser);
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

procedure TUserController.Login(AUser: UUser);
begin
FDAO.doLogin(AUSER)
end;

end.
