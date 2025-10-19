unit UParticipanteController;

interface
uses ParticipanteDAO, UParticipante, SysUtils;

type
TParticipantesController = class
private
  FDAO : TPartDAO;
public
constructor Create;
destructor Destroy; override;
 function createConta(AParticipante: TParticipante): string;


end;


implementation



{ TParticipantesController }

constructor TParticipantesController.Create;
begin
inherited Create;
FDAO := TPartDAO.Create;
end;

function TParticipantesController.createConta(AParticipante: TParticipante): string;
begin
if AParticipante.Nome = '' then
begin
Result := 'Campo Nome precisa estar preenchido';
Exit;
end;

try
FDAO.cadastroParticipantes(AParticipante);
Result := 'Participante cadastrado com sucesso' ;
except
Result := 'Erro ao cadastrar';
end;

end;

destructor TParticipantesController.Destroy;
begin
FDAO.Free;
inherited;
end;

end.
