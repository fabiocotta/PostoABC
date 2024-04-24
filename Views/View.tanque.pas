unit View.tanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadBomba, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TViewTanque = class(TFrmCadBaseBomba)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    edtdescTanque: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Get_Tanques;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewTanque: TViewTanque;

implementation

{$R *.dfm}

uses untDM;

procedure TViewTanque.btnCancelarClick(Sender: TObject);
begin
  inherited;
    if Dm.QryTanques.State in dsEditModes then
  begin
    Dm.QryTanques.Cancel;
    CardPanelLista.ActiveCard := cardPesquisa;
    btnNovo.Enabled := true;
    btnExcluir.Enabled := true;
    btnEditar.Enabled := true;
    btnSalvar.Enabled := false;
    btnCancelar.Enabled := false;
  end;
end;

procedure TViewTanque.btnEditarClick(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := cardCadastro;
  edtDescTanque.SetFocus;
  dm.qryTanques.Edit;
  btnNovo.Enabled := false;
  btnExcluir.Enabled := false;
  btnEditar.Enabled := false;
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TViewTanque.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if dm.qryTanques.RecordCount > 0then
    begin
      dm.QryBombas.delete;
      showmessage('Registro deletado com sucesso!');
      CardPanelLista.ActiveCard := cardPesquisa;
    end;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
   btnNovo.Enabled := true;
end;

procedure TViewTanque.btnNovoClick(Sender: TObject);
begin
  inherited;
   CardPanelLista.ActiveCard := cardCadastro;
   edtDescTanque.SetFocus;
   dm.qryTanques.Insert;
   btnNovo.Enabled := false;
   btnExcluir.Enabled := false;
   btnEditar.Enabled := false;
   btnSalvar.Enabled := true;
   btnCancelar.Enabled := true;
end;

procedure TViewTanque.btnSalvarClick(Sender: TObject);
begin
  inherited;
    if dm.qryTanques.State in dsEditmodes then
    begin
      dm.qryTanques.post;
      showmessage('Registro gravado com sucesso!');
      CardPanelLista.ActiveCard := cardPesquisa;
    end;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
   btnEditar.Enabled := true;
   btnNovo.Enabled := true;
   btnExcluir.Enabled := true;
end;

procedure TViewTanque.FormShow(Sender: TObject);
begin
  inherited;
   Get_Tanques();
   btnNovo.Enabled := true;
   btnExcluir.Enabled := true;
   btnEditar.Enabled := true;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
end;

procedure TViewTanque.Get_Tanques();
begin
  dm.qryTanques.close;
  dm.qryTanques.sql.clear;
  dm.qryTanques.sql.add('SELECT * FROM ABC_TANQUE');
  dm.qryTanques.sql.add('ORDER BY ID_TANQUE DESC');
  dm.qryTanques.Open;
end;

end.
