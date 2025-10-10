unit TfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DateUtils,
  Vcl.Imaging.pngimage;

type
  TFormularioPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BtnCadastro: TButton;
    Button2: TButton;
    Panel5: TPanel;
    Label1: TLabel;
    EditSelecao: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Panel8: TPanel;
    Timer1: TTimer;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

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

procedure TFormularioPrincipal.Timer1Timer(Sender: TObject);
begin
Label2.Caption := (date.Now).ToString;
end;

end.
