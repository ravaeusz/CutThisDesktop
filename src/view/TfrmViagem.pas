unit TfrmViagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, DateUtils,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormularioViagem = class(TForm)
    Timer1: TTimer;
    Label7: TLabel;
    Panel1: TPanel;
    LblViagemNome: TLabel;
    LblDataInicio: TLabel;
    LblDataFinal: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel7: TPanel;
    Image1: TImage;
    Panel8: TPanel;
    Label2: TLabel;
    GridViagem: TDBGrid;
    Label8: TLabel;
    GridParticipantes: TDBGrid;
    Label3: TLabel;
    Button1: TButton;
    Panel9: TPanel;
    Button2: TButton;
    Button3: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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



procedure TFormularioViagem.Button1Click(Sender: TObject);
begin
close;
end;

procedure TFormularioViagem.FormCreate(Sender: TObject);
begin
Label1.Caption := FormularioPrincipal.Label1.Caption;
end;



procedure TFormularioViagem.Timer1Timer(Sender: TObject);
begin
Label2.Caption := (date.Now).ToString;
end;

end.
