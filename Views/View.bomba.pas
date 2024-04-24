unit View.bomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  untCadBomba, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TViewBomba = class(TFrmCadBaseBomba)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCodBomba: TDBEdit;
    Label3: TLabel;
    edtDescBomba: TDBEdit;
    Label4: TLabel;
    cboxTanqueBomba: TDBLookupComboBox;
    dsTanques: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure Get_Bombas;

  end;

var
  ViewBomba: TViewBomba;

implementation

{$R *.dfm}

uses untDM, BombaDAO, untCadBase;

procedure TViewBomba.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if Dm.QryBombas.State in dsEditModes then
  begin
    Dm.QryBombas.Cancel;
    CardPanelLista.ActiveCard := cardPesquisa;
    btnNovo.Enabled := true;
    btnExcluir.Enabled := true;
    btnEditar.Enabled := true;
    btnSalvar.Enabled := false;
    btnCancelar.Enabled := false;
  end;
end;

procedure TViewBomba.btnEditarClick(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := cardCadastro;
  edtDescBomba.SetFocus;
  dm.qryBombas.Edit;
  btnNovo.Enabled := false;
  btnExcluir.Enabled := false;
  btnEditar.Enabled := false;
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TViewBomba.btnExcluirClick(Sender: TObject);
begin
  inherited;
    if dm.qryBombas.RecordCount > 0then
    begin
      dm.QryBombas.delete;
      showmessage('Registro deletado com sucesso!');
      CardPanelLista.ActiveCard := cardPesquisa;
    end;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
   btnNovo.Enabled := true;
   btnExcluir.Enabled := true;
   btnEditar.Enabled := true;

end;

procedure TViewBomba.btnNovoClick(Sender: TObject);
begin
  inherited;
   CardPanelLista.ActiveCard := cardCadastro;
   edtDescBomba.SetFocus;
   dm.QryBombas.Insert;
   btnNovo.Enabled := false;
   btnExcluir.Enabled := false;
   btnEditar.Enabled := false;
   btnSalvar.Enabled := true;
   btnCancelar.Enabled := true;
end;

procedure TViewBomba.btnSalvarClick(Sender: TObject);
begin
  inherited;
   if dm.qryBombas.State in dsEditmodes then
    begin
      dm.QryBombas.post;
      showmessage('Registro gravado com sucesso!');
      CardPanelLista.ActiveCard := cardPesquisa;
    end;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
   btnNovo.Enabled := true;
   btnEditar.Enabled := true;
   btnExcluir.Enabled := true;
end;

procedure TViewBomba.FormShow(Sender: TObject);
begin
  inherited;
  Get_Bombas();
   btnNovo.Enabled := true;
   btnExcluir.Enabled := true;
   btnEditar.Enabled := true;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
end;

procedure TViewBomba.Get_Bombas();
begin
  dm.qryBombas.close;
  dm.qryBombas.sql.clear;
  dm.qryBombas.sql.add('SELECT B.ID_BOMBA, B.DESC_BOMBA, B.ID_TANQUE, T.TIPO_TANQUE FROM ABC_BOMBA B');
  dm.qryBombas.sql.add('INNER JOIN ABC_TANQUE T ON T.ID_TANQUE = B.ID_TANQUE');
  dm.qryBombas.sql.add('ORDER BY B.ID_BOMBA DESC');
  dm.qryBombas.Open;
end;

end.
