unit PerfilVendaBO;

interface
uses
  Data.SqlExpr, SysUtils, Forms, Windows, PerfilVendaDAO, PerfilVenda;
type
  TPerfilVendaBO = class
  private
    { private declarations }
  public
    function ObterConfiguracao:TPerfilVenda;
    procedure Salvar(PerfilVenda: TPerfilVenda);
  end;
implementation
{ TPerfilVendaBO }

uses untUtil;
function TPerfilVendaBO.ObterConfiguracao: TPerfilVenda;
var
  PerfilVendaDAO: TPerfilVendaDAO;
begin
  try
    PerfilVendaDAO := TPerfilVendaDAO.Create;
    Result := PerfilVendaDAO.ObterConfiguracao();
    FreeAndNil(PerfilVendaDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;

procedure TPerfilVendaBO.Salvar(PerfilVenda: TPerfilVenda);
var
  PerfilVendaDAO: TPerfilVendaDAO;
begin
  try
    PerfilVendaDAO := TPerfilVendaDAO.Create;
    PerfilVendaDAO.Salvar(PerfilVenda);
    FreeAndNil(PerfilVendaDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;

end.
