unit MovimentoDAO;
interface
uses
  Data.SqlExpr, SysUtils, Forms, Windows, Movimento,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;
type
  TMovimentoDAO = class
  private
    { private declarations }
  public
    procedure Salvar(Movimento: TMovimento);
  end;
implementation
    { TMovimentoDAO }

uses untUtil;

procedure TMovimentoDAO.Salvar(Movimento: TMovimento);
var
  Query: TFDQuery;
begin
  try
    TUtil.CriarQuery(Query);
    Query.SQL.Add('INSERT INTO Movimento');
    Query.SQL.Add('           (Data');
    Query.SQL.Add('           ,Id_Bomba');
    Query.SQL.Add('           ,Litros');
    Query.SQL.Add('           ,Valor');
    Query.SQL.Add('           ,Imposto)');
    Query.SQL.Add('     VALUES(:Data');
    Query.SQL.Add('           ,:Id_Bomba');
    Query.SQL.Add('           ,:Litros');
    Query.SQL.Add('           ,:Valor');
    Query.SQL.Add('           ,:Imposto)');
    Query.ParamByName('Data').AsDateTime := Movimento.Data;
    Query.ParamByName('Id_Bomba').AsInteger := Movimento.Bomba.Id;
    Query.ParamByName('Litros').AsCurrency := Movimento.Litros;
    Query.ParamByName('Valor').AsCurrency := Movimento.Valor;
    Query.ParamByName('Imposto').AsCurrency := Movimento.Imposto;
    Query.ExecSQL();
    TUtil.DestruirQuery(Query);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;
end.
