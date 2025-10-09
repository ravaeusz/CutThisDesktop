unit UUsuario;

interface

type
  TUser = class
private
    FNome: string;
    FSenha: Integer;

public
  property Nome: string read FNome write FNome;
  property Senha: Integer read FSenha write FSenha;

end;

implementation

end.
