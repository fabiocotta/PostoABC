program PostoABC;


uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untDM in 'untDM.pas' {DM: TDataModule},
  untCadBase in 'untCadBase.pas' {FrmCadBase},
  untCadBomba in 'untCadBomba.pas' {FrmCadBaseBomba},
  BombaDAO in 'DAO\BombaDAO.pas',
  TanqueDAO in 'DAO\TanqueDAO.pas',
  MovimentoDAO in 'DAO\MovimentoDAO.pas',
  PerfilVendaDAO in 'DAO\PerfilVendaDAO.pas',
  Movimento in 'DTO\Movimento.pas',
  Bomba in 'DTO\Bomba.pas',
  Tanque in 'DTO\Tanque.pas',
  PerfilVenda in 'DTO\PerfilVenda.pas',
  MovimentoBO in 'BO\MovimentoBO.pas',
  PerfilVendaBO in 'BO\PerfilVendaBO.pas',
  BombaBO in 'BO\BombaBO.pas',
  TanqueBO in 'BO\TanqueBO.pas',
  untUtil in 'untUtil.pas',
  View.bomba in 'Views\View.bomba.pas' {ViewBomba},
  View.tanque in 'Views\View.tanque.pas' {ViewTanque};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TViewTanque, ViewTanque);
  Application.Run;
end.
