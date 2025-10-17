unit UConta;

interface
type
TConta = class
private
    FDescricao: string;
    FPreco: Currency;
    FCreateByUser: integer;
    FOfViagem: integer;
  { private declarations }

public
property Descricao: string read FDescricao write FDescricao;
property Preco: Currency read FPreco write FPreco;
property CreateByUser: integer read FCreateByUser write FCreateByUser;
property OfViagem: integer read FOfViagem write FOfViagem;

end;

implementation

end.
