unit UntCadBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmCadBase = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBase: TFrmCadBase;

implementation

{$R *.dfm}

procedure TFrmCadBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // usando esc para fechar a tela
  if key = VK_ESCAPE then
    self.Close;

  //pulando para o proximo edit
  if key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);

end;

end.
