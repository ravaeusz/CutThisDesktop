unit UViagemController;

interface

uses UViagem, ViagemDAO;

type
  TViagemControler = class

  public
  FDAO : TViagemDAO ;
  constructor Create;
  destructor Destroy; override;
function postViagem(AViagem : TViagem) : string ;

end;


implementation



{ TViagemControler }



constructor TViagemControler.Create;
begin
  inherited Create;
  FDAO := TViagemDAO.Create;
end;

destructor TViagemControler.Destroy;
begin
  FDAO.Free;
  inherited Destroy;
end;

function TViagemControler.postViagem(AViagem: TViagem): string;
begin
if AViagem.Nome = '' then
begin
Result := 'Precisa preencher nome';
Exit;
end;


if AViagem.Descricao = '' then
begin
Result := 'Precisa preencher descrição';
Exit;

end;

try
FDAO.postLogin(AViagem);
Result := 'Viagem cadastrada';
except
Result := 'Erro ao cadastrar';

end;





end;

end.
