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
    procedure BtnCadastroClick(Sender: TObject);
    procedure DBGridViagemDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

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

uses TfrmLogin, TfrmCadastroViagem , UGridDAO , UGridController, ViagemDAO,
  TfrmViagem;


procedure TFormularioPrincipal.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFormularioPrincipal.DBGridViagemDblClick(Sender: TObject);
var
formViagem : TFormularioViagem;
grid : TGridController;
dlg : TForm;
btnEditar, btnExcluir, btnVoltar: TButton;
begin
dlg := CreateMessageDialog('Escolha uma ação: ', TMsgDlgType.mtWarning, []);
grid := TGridController.Create(Self);
formViagem := TFormularioViagem.Create(nil);
try

    btnEditar := TButton.Create(dlg);
    btnEditar.Parent := dlg;
    btnEditar.Caption := 'Entrar';
    btnEditar.ModalResult := mrYes;
    btnEditar.Left := 10;
    btnEditar.Top := dlg.ClientHeight - 40;


    btnExcluir := TButton.Create(dlg);
    btnExcluir.Parent := dlg;
    btnExcluir.Caption := 'Excluir';
    btnExcluir.ModalResult := mrNo;
    btnExcluir.Left := btnEditar.Left + btnEditar.Width + 10;
    btnExcluir.Top := btnEditar.Top;

    btnVoltar := TButton.Create(dlg);
    btnVoltar.Parent := dlg;
    btnVoltar.Caption := 'Voltar';
    btnVoltar.ModalResult := mrCancel;
    btnVoltar.Left := btnExcluir.Left + btnExcluir.Width + 10;
    btnVoltar.Top := btnEditar.Top;

    case dlg.ShowModal of
    mrYes:
    begin
    grid.getViagem(dsViagem.DataSet.FieldByName('VI_ID').AsInteger);
    end;

    mrNo:
    begin

    grid.deleteItemGrid(dsViagem.DataSet.FieldByName('VI_ID').AsInteger);
    ShowMessage('Você excluiu a viagem : ' +dsViagem.DataSet.FieldByName('VI_NOME').AsString);
    dsViagem.DataSet.Refresh;
    end;
    mrCancel: Exit;
    end;
finally
  dlg.Free;
  grid.Destroy;
  formViagem.Free;
end;

end;


procedure TFormularioPrincipal.FormShow(Sender: TObject);
var
login : TFormularioLogin;
grid : TGridController;
begin
login := TFormularioLogin.Create(nil);
grid := TGridController.Create(Self);

try
login.ShowModal;
finally
login.Free;
end;


grid.madeGrid;



end;

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

procedure TFormularioPrincipal.getUser(AUser: string);
begin
Label1.Caption := Auser;
end;

procedure TFormularioPrincipal.Timer1Timer(Sender: TObject);
begin
Label2.Caption := (date.Now).ToString;
end;

end.
