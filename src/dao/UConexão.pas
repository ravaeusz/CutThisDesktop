unit UConexão;

interface

uses
 System.SysUtils,
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  FireDAC.Stan.Async,
  FireDAC.Stan.Param,
  FireDAC.Stan.Intf,
  FireDAC.UI.Intf,
  FireDAC.Phys,
  FireDAC.Phys.Intf,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.DApt,
  FireDAC.VCLUI.Wait;

type
TConexao = class
private
  class var FConexao : TFDConnection;
public
  class function getConexao : TFDConnection;

end;

implementation

{ TConexao }

class function TConexao.getConexao: TFDConnection;
begin
if not Assigned(FConexao) then
begin

FConexao := TFDConnection.Create(nil);
FConexao.DriverName := 'FB';

FConexao.Params.Values['Database'] := 'C:\Sistema\CutThis\src\dados\CUTHIS.FDB';
FConexao.Params.Values['User_Name'] := 'SYSDBA';
FConexao.Params.Values['Password'] := 'Office25';
FConexao.LoginPrompt := False;

FConexao.Connected := True;
end;
Result := FConexao;



end;

end.
