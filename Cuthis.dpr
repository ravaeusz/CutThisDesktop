program Cuthis;

uses
  Vcl.Forms,
  TfrmPrincipal in 'src\view\TfrmPrincipal.pas' {FormularioPrincipal},
  TfrmLogin in 'src\view\TfrmLogin.pas' {FormularioLogin},
  UUsuario in 'src\model\UUsuario.pas',
  UConex�o in 'src\dao\UConex�o.pas',
  UserDAO in 'src\dao\UserDAO.pas',
  uUserController in 'src\controller\uUserController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormularioPrincipal, FormularioPrincipal);
  Application.Run;
end.
