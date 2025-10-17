program Cuthis;

uses
  Vcl.Forms,
  FireDAC.DApt,
  FireDAC.Stan.Def,
  TfrmPrincipal in 'src\view\TfrmPrincipal.pas' {FormularioPrincipal},
  TfrmLogin in 'src\view\TfrmLogin.pas' {FormularioLogin},
  UUsuario in 'src\model\UUsuario.pas',
  UConexão in 'src\dao\UConexão.pas',
  UserDAO in 'src\dao\UserDAO.pas',
  uUserController in 'src\controller\uUserController.pas',
  TfrmCadastroViagem in 'src\view\TfrmCadastroViagem.pas' {FormularioCadastroViagem},
  UViagem in 'src\model\UViagem.pas',
  ViagemDAO in 'src\dao\ViagemDAO.pas',
  UViagemController in 'src\controller\UViagemController.pas',
  UGridDAO in 'src\dao\UGridDAO.pas',
  UGridController in 'src\controller\UGridController.pas',
  TfrmViagem in 'src\view\TfrmViagem.pas' {FormularioViagem},
  UConta in 'src\model\UConta.pas',
  UParticipante in 'src\model\UParticipante.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(TFormularioPrincipal, FormularioPrincipal);
  Application.CreateForm(TFormularioLogin, FormularioLogin);
  Application.CreateForm(TFormularioViagem, FormularioViagem);
  Application.Run;
end.
