unit uRelDocEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLRichText, DB, DBTables,
  RLBarcode, jpeg, UDMCadDocEstoque, UDMRel;

type
  TfRelDocEstoque = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel26: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText7: TRLDBText;
    rlEndereco: TRLLabel;
    RLBand5: TRLBand;
    RLLabel56: TRLLabel;
    RLMemo2: TRLMemo;
    RLDraw8: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel6: TRLLabel;
    rlEndFilial: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel59: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText37: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText49: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText23: TRLDBText;
    RLPanel1: TRLPanel;
    RLPanel3: TRLPanel;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel31: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel45: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel41: TRLLabel;
    rlVlr_Total: TRLLabel;
    RLMemo3: TRLMemo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadDocEstoque: TDMCadDocEstoque;
    vImpProjeto : Boolean;
  end;

var
  fRelDocEstoque: TfRelDocEstoque;

implementation

uses rsDBUtils, SendMailOptions;

{$R *.dfm}

procedure TfRelDocEstoque.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDocEstoque);
end;

procedure TfRelDocEstoque.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndFilial.Caption  := fDMCadDocEstoque.cdsDocEstoque_ImpENDERECO_FILIAL.AsString + ',' + fDMCadDocEstoque.cdsDocEstoque_ImpNUM_END_FILIAL.AsString;
  rlEndereco.Caption   := fDMCadDocEstoque.cdsDocEstoque_ImpENDERECO_CLI.AsString + ', ' + fDMCadDocEstoque.cdsDocEstoque_ImpNUM_END_CLI.AsString;
  try
    RLImage1.Picture.LoadFromFile(fDMCadDocEstoque.cdsFilialENDLOGO.AsString)
  except
     RLImage1.Picture := nil;
  end;
end;

procedure TfRelDocEstoque.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlVlr_Total.Caption := FormatFloat('###,###,##0.00',fDMCadDocEstoque.cdsDocEstoque_ImpVLR_TOTAL.AsFloat);

  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadDocEstoque.cdsDocEstoque_ImpOBS.Value;
end;

procedure TfRelDocEstoque.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := True;
  RLMemo2.Lines.Clear;
  if trim(fDMCadDocEstoque.cdsDocEstoque_Imp_ItensMOTIVO.AsString) = '' then
    PrintIt := False;
  if not PrintIt then
    exit;
  RLMemo2.Lines.Text := fDMCadDocEstoque.cdsDocEstoque_Imp_ItensMOTIVO.AsString;
end;

procedure TfRelDocEstoque.RLPreviewSetup1Send(Sender: TObject);
begin
//  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfRelDocEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDocEstoque.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo3.Lines.Clear;
  if trim(fDMCadDocEstoque.cdsDocEstoque_Imp_ItensTAMANHO.AsString) <> '' then
    RLMemo3.Lines.Text := fDMCadDocEstoque.cdsDocEstoque_Imp_ItensNOME_PRODUTO.AsString + ' TAM. ' + fDMCadDocEstoque.cdsDocEstoque_Imp_ItensTAMANHO.AsString
  else
    RLMemo3.Lines.Text := fDMCadDocEstoque.cdsDocEstoque_Imp_ItensNOME_PRODUTO.AsString;
  if (fDMCadDocEstoque.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMCadDocEstoque.cdsDocEstoque_Imp_ItensNUM_LOTE_CONTROLE.AsString) <> '') then
    RLMemo3.Lines.Text := RLMemo3.Lines.Text + ' - Nº Lote: ' + fDMCadDocEstoque.cdsDocEstoque_Imp_ItensNUM_LOTE_CONTROLE.AsString;
end;

procedure TfRelDocEstoque.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelDocEstoque.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
