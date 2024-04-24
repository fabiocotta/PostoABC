unit View.perfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadBomba, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TViewPerfilVenda = class(TFrmCadBaseBomba)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    edtDescPerfil: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Get_PerfilVendas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPerfilVenda: TViewPerfilVenda;

implementation

{$R *.dfm}

uses untDM;

procedure TViewPerfilVenda.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if Dm.QryPerfilVendas.State in dsEditModes then
  begin
    Dm.QryPerfilVendas.Cancel;
    CardPanelLista.ActiveCard := cardPesquisa;
    btnNovo.Enabled := true;
    btnExcluir.Enabled := true;
    btnEditar.Enabled := true;
    btnSalvar.Enabled := false;
    btnCancelar.Enabled := false;
  end;
end;

procedure TViewPerfilVenda.btnEditarClick(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := cardCadastro;
  edtDescPerfil.SetFocus;
  dm.qryPerfilVendas.Edit;
  btnNovo.Enabled := false;
  btnExcluir.Enabled := false;
  btnEditar.Enabled := false;
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TViewPerfilVenda.btnExcluirClick(Sender: TObject);
begin
  inherited;
      if dm.qryPerfilVendas.RecordCount > 0then
    begin
      dm.qryPerfilVendas.delete;
      showmessage('Registro deletado com sucesso!');
      CardPanelLista.ActiveCard := cardPesquisa;
    end;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
   btnNovo.Enabled := true;
   btnExcluir.Enabled := true;
   btnEditar.Enabled := true;
end;

procedure TViewPerfilVenda.btnNovoClick(Sender: TObject);
begin
  inherited;
   CardPanelLista.ActiveCard := cardCadastro;
   edtDescPerfil.SetFocus;
   dm.qryPerfilVendas.Insert;
   btnNovo.Enabled := false;
   btnExcluir.Enabled := false;
   btnEditar.Enabled := false;
   btnSalvar.Enabled := true;
   btnCancelar.Enabled := true;
end;

procedure TViewPerfilVenda.btnSalvarClick(Sender: TObject);
begin
  inherited;
    if dm.qryPerfilVendas.State in dsEditmodes then
    begin
      dm.qryPerfilVendas.post;
      showmessage('Registro gravado com sucesso!');
      CardPanelLista.ActiveCard := cardPesquisa;
    end;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
   btnNovo.Enabled := true;
   btnEditar.Enabled := true;
   btnExcluir.Enabled := true;
end;

procedure TViewPerfilVenda.FormShow(Sender: TObject);
begin
  inherited;
   Get_PerfilVendas();
   btnNovo.Enabled := true;
   btnExcluir.Enabled := true;
   btnEditar.Enabled := true;
   btnSalvar.Enabled := false;
   btnCancelar.Enabled := false;
end;


procedure TViewPerfilVenda.Get_PerfilVendas();
begin
  dm.qryPerfilVendas.close;
  dm.qryPerfilVendas.sql.clear;
  dm.qryPerfilVendas.sql.add('SELECT * FROM ABC_PERFILVENDA');
  dm.qryPerfilVendas.sql.add('ORDER BY ID_PERFILVENDA DESC');
  dm.qryPerfilVendas.Open;
end;

end.
