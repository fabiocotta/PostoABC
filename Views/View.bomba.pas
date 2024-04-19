unit View.bomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadBomba, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TViewBomba = class(TFrmCadBaseBomba)
  private

    { Private declarations }
  public
    { Public declarations }

  end;

var
  ViewBomba: TViewBomba;

implementation

{$R *.dfm}

uses untDM, BombaDAO, untCadBase;




end.
