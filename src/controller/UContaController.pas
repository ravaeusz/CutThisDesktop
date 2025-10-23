unit UContaController;

interface

uses ContaDAO, UConta, SysUtils;
type
TContaController = class
private
  FDAO : TContaDAO;
public
constructor Create;
destructor Destroy; override;
 function createConta(Aconta : TConta): string;
 procedure deleteConta(Aid : integer);

end;


implementation

{ TContaController }

constructor TContaController.Create;
begin
inherited Create;
FDAO := TContaDAo.Create;
end;

function TContaController.createConta(Aconta: TConta): string;
begin
if Aconta.Descricao = '' then
begin
  Result := 'Descrição precisa ser preenchida';
  Exit;
end;


try
FDAO.cadastroConta(Aconta);
Result := 'Conta cadastrada com sucesso!';
except
Result := 'Erro ao cadastrar';
end;
end;


procedure TContaController.deleteConta(Aid: integer);
begin
FDAO.deleteConta(Aid);
end;

destructor TContaController.Destroy;
begin
FDAO.Free;
inherited Destroy;
end;

end.
