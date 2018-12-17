unit uRelRequisicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLRichText, DB, DBTables,
  RLBarcode, jpeg, UDMCadDocEstoque, UDMRel;

type
  TfRelRequisicao = class(TForm)
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
    RLLabel26: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText20: TRLDBText;
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
    RLLabel28: TRLLabel;
    RLDBText49: TRLDBText;
    RLPanel1: TRLPanel;
    RLPanel3: TRLPanel;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel31: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLMemo3: TRLMemo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadDocEstoque: TDMCadDocEstoque;
    vImpProjeto : Boolean;
  end;

var
  fRelRequisicao: TfRelRequisicao;

implementation

uses rsDBUtils, SendMailOptions;

{$R *.dfm}

procedure TfRelRequisicao.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDocEstoque);
end;

procedure TfRelRequisicao.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  RLImage1.Picture := nil;
  try
    RLImage1.Picture.LoadFromFile(fDMCadDocEstoque.cdsFilialENDLOGO.AsString)
  except
     RLImage1.Picture := nil;
  end;
end;

procedure TfRelRequisicao.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  //rlVlr_Total.Caption := FormatFloat('###,###,##0.00',fDMCadDocEstoque.cdsDocEstoque_ImpVLR_TOTAL.AsFloat);

  RLLabel9.Caption := fDMCadDocEstoque.cdsDocEstoque_ImpNOME_FUNCIONARIO.AsString;

  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadDocEstoque.cdsDocEstoque_ImpOBS.Value;
end;

procedure TfRelRequisicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRequisicao.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo3.Lines.Clear;
  if trim(fDMCadDocEstoque.cdsDocEstoque_Imp_ItensTAMANHO.AsString) <> '' then
    RLMemo3.Lines.Text := fDMCadDocEstoque.cdsDocEstoque_Imp_ItensNOME_PRODUTO.AsString + ' TAM. ' + fDMCadDocEstoque.cdsDocEstoque_Imp_ItensTAMANHO.AsString
  else
    RLMemo3.Lines.Text := fDMCadDocEstoque.cdsDocEstoque_Imp_ItensNOME_PRODUTO.AsString;
end;

end.
