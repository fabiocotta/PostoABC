unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList;

type
  TFrmPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineMenu: TPanel;
    pnlUsuario: TPanel;
    pnlVersao: TPanel;
    pnlTitulo: TPanel;
    pnlDescricao: TPanel;
    pnlLineUsuario: TPanel;
    pnlImgUsuario: TPanel;
    imgUserBranco: TImage;
    pnlDadosUsuario: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLicensciado: TPanel;
    pnlLineLicenciado: TPanel;
    pnlConteudoLicenciado: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnBomba: TSpeedButton;
    btnTanque: TSpeedButton;
    btnMovimento: TSpeedButton;
    btnPerfilVenda: TSpeedButton;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    lblDescricao: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnBombaClick(Sender: TObject);
    procedure btnTanqueClick(Sender: TObject);
    procedure btnMovimentoClick(Sender: TObject);
    procedure btnPerfilVendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure GET_LineMenu(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UntCadBomba, untCadTanque, untCadPerfilVenda, untCadMovimento;

procedure TFrmPrincipal.btnTanqueClick(Sender: TObject);
begin
    GET_LineMenu(Sender);
    FrmCadBaseTanque := TFrmCadBaseTanque.Create(Self);
    try
      FrmCadBaseTanque.showmodal;

    finally
      FreeAndNil(FrmCadBaseTanque);
    end;
end;

procedure TFrmPrincipal.btnMovimentoClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
  FrmCadBaseMovimento := TFrmCadBaseMovimento.Create(Self);
    try
      FrmCadBaseMovimento.showmodal;

    finally
      FreeAndNil(FrmCadBaseMovimento);
    end;
end;

procedure TFrmPrincipal.btnBombaClick(Sender: TObject);
begin
    GET_LineMenu(Sender);
    FrmCadBaseBomba := TFrmCadBaseBomba.Create(Self);
    try
      FrmCadBaseBomba.showmodal;

    finally
      FreeAndNil(FrmCadBaseBomba);
    end;
end;

procedure TFrmPrincipal.btnPerfilVendaClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
  FrmCadBasePerfilVenda := TFrmCadBasePerfilVenda.Create(Self);
    try
      FrmCadBasePerfilVenda.showmodal;

    finally
      FreeAndNil(FrmCadBasePerfilVenda);
    end;
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
    GET_LineMenu(btnBomba);
end;

procedure TFrmPrincipal.GET_LineMenu(Sender: TObject);
begin
  ShapeMenu.Left   := 0;
  ShapeMenu.Top    := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height;
  ShapeMenu.Top    := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;

end;

end.
