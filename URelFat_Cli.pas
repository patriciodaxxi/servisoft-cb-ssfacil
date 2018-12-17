unit URelFat_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsFaturamento, UDMRel;

type
  TfRelFat_Cli = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBResult4: TRLDBResult;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsFaturamento: TDMConsFaturamento;

  end;

var
  fRelFat_Cli: TfRelFat_Cli;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfRelFat_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFat_Cli.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
  begin
    RLLabel1.Caption := 'Relatório de Faturamento - Clientes';
    RLLabel6.Caption := 'Cliente';
    RLLabel7.Caption := 'Vlr.Faturamento';
  end
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
  begin
    RLLabel1.Caption := 'Relatório de Compras - Fornecedor';
    RLLabel6.Caption := 'Fornecedor';
    RLLabel7.Caption := 'Vlr.Compras';
  end;
  RLLabel9.Visible    := (fDMConsFaturamento.vTipo_Reg = 'NTS');
  RLLabel10.Visible   := (fDMConsFaturamento.vTipo_Reg = 'NTS');
  RLDBText4.Visible   := (fDMConsFaturamento.vTipo_Reg = 'NTS');
  RLDBText5.Visible   := (fDMConsFaturamento.vTipo_Reg = 'NTS');
  RLDBResult2.Visible := (fDMConsFaturamento.vTipo_Reg = 'NTS');
  RLDBResult3.Visible := (fDMConsFaturamento.vTipo_Reg = 'NTS');
end;

procedure TfRelFat_Cli.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFaturamento);
end;

procedure TfRelFat_Cli.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption := FormatFloat('###,###,###,##0.00',fDMConsFaturamento.vVlrFaturamento);
end;

procedure TfRelFat_Cli.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFat_Cli.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelFat_Cli.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vImpCliente_RF = 'R' then
    RLDBText2.DataField := 'NOME_CLIENTE'
  else
    RLDBText2.DataField := 'FANTASIA';
end;

end.
