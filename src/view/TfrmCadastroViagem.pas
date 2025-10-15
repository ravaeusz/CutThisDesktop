unit TfrmCadastroViagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFormularioCadastroViagem = class(TForm)
    Panel1: TPanel;
    LblTitulo: TLabel;
    EditNomeViagem: TEdit;
    Label1: TLabel;
    EditDescViagem: TEdit;
    Label2: TLabel;
    a: TButton;
    Label3: TLabel;
    Label4: TLabel;
    MaskEditDataInicio: TMaskEdit;
    MaskEditDataFinal: TMaskEdit;
    procedure aClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormularioCadastroViagem: TFormularioCadastroViagem;

implementation

{$R *.dfm}

uses uUserController, UViagem, UViagemController, UGridDAO, TfrmPrincipal;

procedure TFormularioCadastroViagem.aClick(Sender: TObject);
var
Controller : TViagemControler;
Model : TViagem;
resultado : string;
begin
Controller := TViagemControler.Create;
Model := TViagem.Create;


Model.Nome := EditNomeViagem.Text;
Model.Descricao := EditDescViagem.Text;
Model.dataInicio := StrToDate(MaskEditDataInicio.Text);
Model.dataFinal := StrToDate(MaskEditDataFinal.Text);

resultado := Controller.postViagem(Model);

ShowMessage(resultado);
FormularioPrincipal.dsViagem.DataSet.Refresh;
close;

end;

end.
