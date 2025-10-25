unit TfrmAcertoConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormularioAcerto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    dsAcerto: TDataSource;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure getId(AId : integer);
  private
    FIdViagem : integer;
  public
    { Public declarations }
  end;

var
  FormularioAcerto: TFormularioAcerto;

implementation

{$R *.dfm}

uses ViagemDAO;

procedure TFormularioAcerto.FormShow(Sender: TObject);
var
col : TColumn;
conn : TViagemDAO;
begin

DBGrid1.Columns.Clear;
conn := TViagemDAO.Create;

col := DBGrid1.Columns.Add;
col.FieldName := 'PT_NOME';
col.Title.Caption := 'NOME';
col.Width := 200;

col := DBGrid1.Columns.Add;
col.FieldName := 'TOTAL_PAGO';
col.Title.Caption := 'TOTAL PAGO';
col.Width := 200;

col := DBGrid1.Columns.Add;
col.FieldName := 'SITUACAO';
col.Title.Caption := 'SITUAÇÃO';
col.Width := 250;


dsAcerto.DataSet := conn.getAcertoContas(FIdViagem);



end;

procedure TFormularioAcerto.getId(AId: integer);
begin
FIdViagem := AId;
end;

end.
