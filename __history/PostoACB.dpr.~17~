program PostoACB;


uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untDM in 'untDM.pas' {DM: TDataModule},
  untCadBase in 'untCadBase.pas' {FrmCadBase},
  untCadTanque in 'untCadTanque.pas' {FrmCadBaseTanque},
  untCadBomba in 'untCadBomba.pas' {FrmCadBaseBomba},
  untCadPerfilVenda in 'untCadPerfilVenda.pas' {FrmCadBasePerfilVenda},
  untCadMovimento in 'untCadMovimento.pas' {FrmCadBaseMovimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TFrmCadBase, FrmCadBase);
  Application.CreateForm(TFrmCadBaseTanque, FrmCadBaseTanque);
  Application.CreateForm(TFrmCadBaseBomba, FrmCadBaseBomba);
  Application.CreateForm(TFrmCadBasePerfilVenda, FrmCadBasePerfilVenda);
  Application.CreateForm(TFrmCadBaseMovimento, FrmCadBaseMovimento);
  Application.Run;
end.
