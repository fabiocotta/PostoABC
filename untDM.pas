unit untDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider;

type
  TDM = class(TDataModule)
    conn: TFDConnection;
    qryBombas: TFDQuery;
    qryTanques: TFDQuery;
    qryPerfilVendas: TFDQuery;
    qryPerfilVendasID_PERFILVENDA: TIntegerField;
    qryPerfilVendasDESC_PERFIL: TStringField;
    qryPerfilVendasVL_ALCOOL: TFMTBCDField;
    qryPerfilVendasVL_LITROGASOLINA: TFMTBCDField;
    qryPerfilVendasVL_LITRODIESEL: TFMTBCDField;
    qryPerfilVendasVL_IMPOSTO: TFMTBCDField;
    qryBombasID_BOMBA: TIntegerField;
    qryBombasDESC_BOMBA: TStringField;
    qryBombasID_TANQUE: TIntegerField;
    qryBombasTIPO_TANQUE: TStringField;
    qryTanquesID_TANQUE: TIntegerField;
    qryTanquesDESC_TANQUE: TStringField;
    qryTanquesTIPO_TANQUE: TStringField;
    qryMovimentos: TFDQuery;
    qryMovimentosID_MOVIMENTO: TIntegerField;
    qryMovimentosDATA: TDateField;
    qryMovimentosID_BOMBA: TIntegerField;
    qryMovimentosLITROS: TFMTBCDField;
    qryMovimentosVALOR: TFMTBCDField;
    qryMovimentosIMPOSTO: TFMTBCDField;
    QueryRelatAbastecimento: TFDQuery;
    dspRelatAbastecimento: TDataSetProvider;
    cdsRelatAbastecimento: TClientDataSet;
    QueryRelatAbastecimentoTanque: TStringField;
    QueryRelatAbastecimentoDESC_BOMBA: TStringField;
    QueryRelatAbastecimentoData: TDateField;
    QueryRelatAbastecimentoValor: TFMTBCDField;
    QueryRelatAbastecimentoLitros: TFMTBCDField;
    cdsRelatAbastecimentoTanque: TStringField;
    cdsRelatAbastecimentoDESC_BOMBA: TStringField;
    cdsRelatAbastecimentoData: TDateField;
    cdsRelatAbastecimentoValor: TFMTBCDField;
    cdsRelatAbastecimentoLitros: TFMTBCDField;
    function relatorioAbastecimento(dataini, datafim: Tdatetime): integer;
  private


    { Private declarations }

  public
    { Public declarations }



  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.relatorioAbastecimento(dataini, datafim: Tdatetime): integer;
begin
  cdsRelatAbastecimento.Close;
  cdsRelatAbastecimento.Params.ParamByName('dataini').Value := dataini;
  cdsRelatAbastecimento.Params.ParamByName('datafim').Value := datafim;
  cdsRelatAbastecimento.open;
  result := cdsRelatAbastecimento.RecordCount;

end;



end.
