unit TfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormularioPrincipal = class(TForm)
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormularioPrincipal: TFormularioPrincipal;

implementation

{$R *.dfm}

uses TfrmLogin;


procedure TFormularioPrincipal.FormShow(Sender: TObject);
var
login : TFormularioLogin;
begin
login := TFormularioLogin.Create(nil);
try
login.ShowModal;
finally
login.Free;
end;
end;

end.
