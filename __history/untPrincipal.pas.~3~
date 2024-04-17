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
    btnCliente: TSpeedButton;
    btnCapela: TSpeedButton;
    btnCemiterio: TSpeedButton;
    btnFuneraria: TSpeedButton;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    lblDescricao: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnCapelaClick(Sender: TObject);
    procedure btnCemiterioClick(Sender: TObject);
    procedure btnFunerariaClick(Sender: TObject);
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

uses UntCadCapela;

procedure TFrmPrincipal.btnCapelaClick(Sender: TObject);
begin
    GET_LineMenu(Sender);
end;

procedure TFrmPrincipal.btnCemiterioClick(Sender: TObject);
begin
    GET_LineMenu(Sender);
end;

procedure TFrmPrincipal.btnClienteClick(Sender: TObject);
begin
    GET_LineMenu(Sender);
    FrmCadBaseCapela := TFrmCadBaseCapela.Create(Self);
    try
      FrmCadBaseCapela.showmodal;

    finally
      FreeAndNil(FrmCadBaseCapela);
    end;
end;

procedure TFrmPrincipal.btnFunerariaClick(Sender: TObject);
begin
    GET_LineMenu(Sender);
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
    GET_LineMenu(btnCliente);
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
