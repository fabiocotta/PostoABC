unit View.bomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadBomba, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TViewBomba = class(TFrmCadBaseBomba)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
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

  Dm.QryBombas.Cancel;
  CardPanelLista.ActiveCard := cardPesquisa;
  btnNovo.Enabled := true;
  btnExcluir.Enabled := true;
  btnEditar.Enabled := true;
  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;

end;

procedure TViewBomba.btnEditarClick(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := cardCadastro;
  btnNovo.Enabled := false;
  btnExcluir.Enabled := false;
  btnEditar.Enabled := false;
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;

end;

procedure TViewBomba.btnNovoClick(Sender: TObject);
begin
  inherited;
   CardPanelLista.ActiveCard := cardCadastro;
   btnNovo.Enabled := false;
   btnExcluir.Enabled := false;
   btnEditar.Enabled := false;
   btnSalvar.Enabled := true;
   btnCancelar.Enabled := true;
end;

procedure TViewBomba.btnSalvarClick(Sender: TObject);
begin
  inherited;
   dm.QryBombas.edit;
   if dm.qryBombas.State in dsEditmodes then
    begin
      dm.QryBombas.post;
      CardPanelLista.ActiveCard := cardPesquisa;
    end;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
   btnNovo.Enabled := true;
end;

procedure TViewBomba.FormShow(Sender: TObject);
begin
  inherited;
  Get_Bombas();

end;

procedure TViewBomba.Get_Bombas();
begin
  dm.qryBombas.close;
  dm.qryBombas.sql.clear;
  dm.qryBombas.sql.add('SELECT * FROM ABC_BOMBA');
  dm.qryBombas.Open;
end;




end.
