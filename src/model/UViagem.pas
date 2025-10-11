unit UViagem;

interface

type
TViagem = class
private
    FNome: string;
    FDescricao: string;
    FdataInicio: TDate;
    FdataFinal: TDate;

public
 property Nome: string read FNome write FNome;
 property Descricao: string read FDescricao write FDescricao;
 property dataInicio: TDate read FdataInicio write FdataInicio;
 property dataFinal: TDate read FdataFinal write FdataFinal;


end;

implementation

end.
