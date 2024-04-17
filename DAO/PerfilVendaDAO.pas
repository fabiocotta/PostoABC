unit PerfilVendaDAO;
interface
uses
  Data.SqlExpr, SysUtils, Forms, Windows,  PerfilVenda,
   FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;
type
  TPerfilVendaDAO = class
  private
    { private declarations }
  public
    function ObterConfiguracao:TPerfilVenda;
    procedure Salvar(PerfilVenda: TPerfilVenda);
  end;
implementation
{ TConfiguracaoDAO }

uses untUtil;

function TPerfilVendaDAO.ObterConfiguracao: TPerfilVenda;
var
  Query: TFDQuery;
  PerfilVenda: TPerfilVenda;
begin
  try
    TUtil.CriarQuery(Query);
    Query.SQL.Add('SELECT c.Id_PerfilVenda');
    Query.SQL.Add('      ,c.Vl_LitroGasolina');
    Query.SQL.Add('      ,c.Vl_LitroDiesel');
    Query.SQL.Add('      ,c.Vl_Imposto');
    Query.SQL.Add('  FROM PerfilVenda c');
    Query.SQL.Add(' WHERE c.Id_PerfilVenda = 1');
    Query.Open();
    if not(Query.IsEmpty) then
    begin
      PerfilVenda := TPerfilVenda.Create;
      PerfilVenda.Id_PerfilVenda := Query.FieldByName('Id_PerfilVenda').AsInteger;
      PerfilVenda.Vl_LitroGasolina := Query.FieldByName('Vl_LitroGasolina').AsCurrency;
      PerfilVenda.Vl_LitroDiesel := Query.FieldByName('Vl_LitroDiesel').AsCurrency;
      PerfilVenda.Vl_Imposto := Query.FieldByName('Vl_Imposto').AsCurrency;
      Result := PerfilVenda;
    end
    else
    begin
      Result := nil;
    end;
    TUtil.DestruirQuery(Query);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;
procedure TPerfilVendaDAO.Salvar(PerfilVenda: TPerfilVenda);
var
  Query: TFDQuery;
begin
  try
    TUtil.CriarQuery(Query);
    Query.SQL.Add('UPDATE PerfilVenda');
    Query.SQL.Add('   SET Vl_LitroGasolina = :Vl_LitroGasolina');
    Query.SQL.Add('      ,Vl_LitroDiesel = :Vl_LitroDiesel');
    Query.SQL.Add('      ,Vl_Imposto = :Vl_Imposto');
    Query.SQL.Add(' WHERE Id_PerfilVenda = 1');
    Query.ParamByName('Vl_LitroGasolina').AsCurrency := PerfilVenda.Vl_LitroGasolina;
    Query.ParamByName('Vl_LitroDiesel').AsCurrency := PerfilVenda.Vl_LitroDiesel;
    Query.ParamByName('Vl_Imposto').AsCurrency := PerfilVenda.Vl_Imposto;
    Query.ExecSQL();
    TUtil.DestruirQuery(Query);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;
end.
