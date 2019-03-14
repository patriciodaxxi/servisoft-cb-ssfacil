unit URelEstoque_Bal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsEstoque, RLReport, UDMRel;

type
  TfRelEstoque_Bal = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel8: TRLLabel;
    RLMemo1: TRLMemo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    rlICMS: TRLLabel;
    rlIPI: TRLLabel;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    rlTotIcms: TRLLabel;
    rlTotIPI: TRLLabel;
    rlTotQtd: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vTotICMS, vTotIPI, vTotQtd: Real;
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
    vDataRef: TDateTime;
    vNumPagIni: Integer;
  end;

var
  fRelEstoque_Bal: TfRelEstoque_Bal;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfRelEstoque_Bal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoque_Bal.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);
  if vNumPagIni <= 0 then
    RLReport1.FirstPageNumber := 1
  else
    RLReport1.FirstPageNumber := vNumPagIni;
end;

procedure TfRelEstoque_Bal.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório Balanço do Estoque - Data Ref: ' + DateToStr(vDataRef); 
  RLLabel7.Caption := fDMConsEstoque.cdsFilialNOME.AsString;
end;

procedure TfRelEstoque_Bal.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vNomeProduto : String;  
begin
  RLLabel8.Caption := fDMConsEstoque.cdsBalancoID_PRODUTO.AsString;
  RLMemo1.Lines.Clear;
  vNomeProduto := fDMConsEstoque.cdsBalancoNOME_PRODUTO.AsString;
  if trim(fDMConsEstoque.cdsBalancoNOME_COMBINACAO.AsString) <> '' then
    vNomeProduto := vNomeProduto + ' ' + fDMConsEstoque.cdsBalancoNOME_COMBINACAO.AsString;
  if fDMConsEstoque.cdsBalancoID_COR.AsInteger > 0 then
    RLLabel8.Caption := RLLabel8.Caption + '.' + fDMConsEstoque.cdsBalancoID_COR.AsString;
  if trim(fDMConsEstoque.cdsBalancoTAMANHO.AsString) <> '' then
  begin
    RLLabel8.Caption   := RLLabel8.Caption + '.' + fDMConsEstoque.cdsBalancoTAMANHO.AsString;
    vNomeProduto       := vNomeProduto + ' ' + fDMConsEstoque.cdsBalancoTAMANHO.AsString;
  end;                                                                                   
  RLMemo1.Lines.Text := vNomeProduto;
  rlICMS.Caption := FormatFloat('0.00',fDMConsEstoque.cdsBalancoPERC_ICMS.asFloat / 100 * fDMConsEstoque.cdsBalancoclPreco_Medio.AsFloat * fdmConsEstoque.cdsBalancoQTD_ESTOQUE.AsFloat);
  rlIPI.Caption  := FormatFloat('0.00',fDMConsEstoque.cdsBalancoPERC_IPI.asFloat / 100 * fDMConsEstoque.cdsBalancoclPreco_Medio.AsFloat * fdmConsEstoque.cdsBalancoQTD_ESTOQUE.AsFloat);
  vTotICMS := vTotICMS + StrToFloat(FormatFloat('0.00',fDMConsEstoque.cdsBalancoPERC_ICMS.asFloat / 100 * fDMConsEstoque.cdsBalancoclPreco_Medio.AsFloat * fdmConsEstoque.cdsBalancoQTD_ESTOQUE.AsFloat));
  vTotIPI  := vTotIPI + StrToFloat(FormatFloat('0.00',fDMConsEstoque.cdsBalancoPERC_IPI.asFloat / 100 * fDMConsEstoque.cdsBalancoclPreco_Medio.AsFloat * fdmConsEstoque.cdsBalancoQTD_ESTOQUE.AsFloat));
  vTotQtd := vTotQtd + StrToFloat(FormatFloat('0.00',fDMConsEstoque.cdsBalancoQTD_ESTOQUE.AsFloat));
end;

procedure TfRelEstoque_Bal.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  if vNumPagIni <= 0 then
    RLReport1.FirstPageNumber := 1
  else
    RLReport1.FirstPageNumber := vNumPagIni;
  vTotICMS := 0;
  vTotIPI  := 0;
end;

procedure TfRelEstoque_Bal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelEstoque_Bal.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlTotIcms.Caption := 'ICMS ' + FormatFloat('0.00',vTotICMS);
  rlTotIPI.Caption  := 'IPI ' + FormatFloat('0.00',vTotIPI);
  rlTotQtd.Caption  := FormatFloat('0.00',vTotQtd); 
end;

end.
