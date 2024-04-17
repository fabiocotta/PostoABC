unit untCadBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadBase, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmCadBaseBomba = class(TFrmCadBase)
    pnlTopo: TPanel;
    Panel1: TPanel;
    pnlFooter: TPanel;
    pnltopoIcone: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBaseBomba: TFrmCadBaseBomba;

implementation

{$R *.dfm}

procedure TFrmCadBaseBomba.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmCadBaseBomba.Panel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  const
   sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
