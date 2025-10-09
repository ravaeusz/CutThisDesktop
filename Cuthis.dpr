program Cuthis;

uses
  Vcl.Forms,
  TfrmPrincipal in 'src\view\TfrmPrincipal.pas' {FormularioPrincipal},
  TfrmLogin in 'src\view\TfrmLogin.pas' {FormularioLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormularioPrincipal, FormularioPrincipal);
  Application.CreateForm(TFormularioLogin, FormularioLogin);
  Application.Run;
end.
