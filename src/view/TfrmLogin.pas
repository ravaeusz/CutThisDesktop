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
    procedure EditNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLoginKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormularioLogin: TFormularioLogin;

implementation

{$R *.dfm}

uses TfrmPrincipal, uUserController, UserDAO, TfrmViagem;

procedure TFormularioLogin.BtnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;


procedure TFormularioLogin.BtnLoginClick(Sender: TObject);
var
login : TUserController;
user : TFormularioPrincipal;
userViagem : TFormularioViagem;
resultado : boolean;
begin
login := TUserController.Create;
try

login.NOME := EditNome.Text;
FormularioPrincipal.getUser(EditNome.Text);
if EditSenha.text = '' then EditSenha.text := '0';
login.SENHA := StrToInt(EditSenha.text);


resultado := login.Login(login.NOME, login.SENHA);

if resultado then
close
else
ShowMessage('User não encontrado, verifique!');
EditSenha.text := '';
EditNome.SetFocus;

finally
  login.Free;
end;

end;



procedure TFormularioLogin.BtnLoginKeyPress(Sender: TObject; var Key: Char);
begin
if key = char(#13) then
BtnLogin.Click;
end;

procedure TFormularioLogin.EditNomeKeyPress(Sender: TObject; var Key: Char);
begin
if key = char(#13) then
EditSenha.SetFocus;
end;

procedure TFormularioLogin.EditSenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = char(#13) then
BtnLogin.SetFocus;
end;

procedure TFormularioLogin.FormShow(Sender: TObject);
begin
EditNome.SetFocus;
end;

end.
