unit TfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DateUtils,
  Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids;

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
    dsViagem: TDataSource;
    DBGridViagem: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCadastroClick(Sender: TObject);

  private
    Ffuser: string;

  public
    property fuser: string read Ffuser write Ffuser;
    procedure getUser(AUser : string);
  end;

var
  FormularioPrincipal: TFormularioPrincipal;

implementation

{$R *.dfm}

uses TfrmLogin, TfrmCadastroViagem ;


procedure TFormularioPrincipal.BtnCadastroClick(Sender: TObject);
var
cadastro :  TFormularioCadastroViagem;
begin
cadastro := TFormularioCadastroViagem.Create(nil);

try
cadastro.ShowModal;

finally
cadastro.Free;
end;

end;

procedure TFormularioPrincipal.FormCreate(Sender: TObject);
var
col : TColumn;
begin
DBGridViagem.Columns.Clear;

col := DBGridViagem.Columns.Add;
col.FieldName := 'VI_ID';
col.Title.Caption := 'ID';
col.Width := 50;

col := DBGridViagem.Columns.Add;
col.FieldName := 'VI_NOME';
col.Title.Caption := 'NOME';
col.Width := 200;

col := DBGridViagem.Columns.Add;
col.FieldName := 'VI_DESC';
col.Title.Caption := 'DESCRICAO';
col.Width := 600;


end;

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

procedure TFormularioPrincipal.getUser(AUser: string);
begin
Label1.Caption := Auser;
end;

procedure TFormularioPrincipal.Timer1Timer(Sender: TObject);
begin
Label2.Caption := (date.Now).ToString;
end;

end.
