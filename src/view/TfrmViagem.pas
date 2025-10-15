unit TfrmViagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, DateUtils;

type
  TFormularioViagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel7: TPanel;
    Image1: TImage;
    Panel8: TPanel;
    Label2: TLabel;
    Timer1: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FUser : string;
  public
    { Public declarations }
  end;

var
  FormularioViagem: TFormularioViagem;

implementation

{$R *.dfm}

uses TfrmPrincipal;



procedure TFormularioViagem.FormCreate(Sender: TObject);
begin
Label1.Caption := FormularioPrincipal.Label1.Caption;
end;



procedure TFormularioViagem.Timer1Timer(Sender: TObject);
begin
Label2.Caption := (date.Now).ToString;
end;

end.
