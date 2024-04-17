unit MovimentoBO;

interface
uses
  Data.SqlExpr, SysUtils, Forms, Windows,  MovimentoDAO, Movimento;
type
  TMovimentoBO = class
  private
    { private declarations }
  public
    procedure Salvar(Movimento: TMovimento);
  end;
implementation
{ TAbastecimentoBO }

uses untUtil;
procedure TMovimentoBO.Salvar(Movimento: TMovimento);
var
  MovimentoDAO: TMovimentoDAO;
begin
  try
    MovimentoDAO := TMovimentoDAO.Create;
    MovimentoDAO.Salvar(Movimento);
    FreeAndNil(MovimentoDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;
end.
