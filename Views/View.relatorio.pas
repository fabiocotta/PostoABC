unit View.relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TViewRelatorio = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    labPeriodo: TRLLabel;
    RLBand4: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel8: TRLLabel;
    dsRelatorio: TDataSource;
    Bevel1: TBevel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    editDataIni: TMaskEdit;
    editDataFim: TMaskEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RLDBResult1Compute(Sender: TObject; var Value: Variant;
      var AText: string; var ComputeIt: Boolean);

  private


    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewRelatorio: TViewRelatorio;

implementation

{$R *.dfm}

uses untDM;

procedure TViewRelatorio.BitBtn1Click(Sender: TObject);
begin
  try
     strtodate(editDataIni.Text);
   except
     Application.MessageBox('Digita a data inicial corretamente.', 'Erro', + mb_iconerror + mb_ok);
     editDataIni.SetFocus;
     ModalResult := mrnone;
   end;
   try
     strtodate(editDataFim.Text);
   except
     Application.MessageBox('Digita a data final corretamente.', 'Erro', + mb_iconerror + mb_ok);
     editDataFim.SetFocus;
     ModalResult := mrnone;
   end;
end;

procedure TViewRelatorio.FormShow(Sender: TObject);
begin
  editDataIni.Text := '01/' + FormatDateTime('MM', now())+'/' +FormatDateTime('YYYY', now());
  editDataFim.Text :=  datetostr(now());
end;


procedure TViewRelatorio.RLDBResult1Compute(Sender: TObject;
  var Value: Variant; var AText: string; var ComputeIt: Boolean);
begin
   Value := dsRelatorio.DataSet.FieldByName('valor').AsCurrency;
end;

end.








