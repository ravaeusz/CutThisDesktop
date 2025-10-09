unit TfrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage ;

type
  TFormularioLogin = class(TForm)
    Panel1: TPanel;
    EditNome: TEdit;
    EditSenha: TEdit;
    BtnLogin: TButton;
    LabelTitulo: TLabel;
    Panel2: TPanel;
    ImgLogo: TImage;
    BtnClose: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormularioLogin: TFormularioLogin;

implementation

{$R *.dfm}

uses TfrmPrincipal, uUserController;

procedure TFormularioLogin.BtnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;



procedure TFormularioLogin.BtnLoginClick(Sender: TObject);
var
login : TUserController;
begin
login := TUserController.Create;
try


finally
  login.Free;
end;
  login.Free;
end;

end.
