unit URelEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMConsEstoque, UDMRel;

type
  TfRelEstoque = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    rllbFilial: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw2: TRLDraw;
    RLReport2: TRLReport;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw3: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel23: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel26: TRLLabel;
    RLBand5: TRLBand;
    RLLabel27: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel28: TRLLabel;
    RLDBText11: TRLDBText;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
    vImpQtdGeral, vPrecoCusto, vPrecoVenda: Boolean;
  end;

var
  fRelEstoque: TfRelEstoque;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoque.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFilial.Caption := fDMConsEstoque.cdsFilialNOME.AsString;
  rllbOpcao.Caption  := fDMConsEstoque.vDescOpcao_Rel;
  RLLabel1.Caption   := 'RELATÓRIO DO ESTOQUE - ' + fDMConsEstoque.vOpcao_ProdMat;
  RLLabel4.Visible   := vImpQtdGeral;
  RLLabel5.Visible   := vImpQtdGeral;
end;

procedure TfRelEstoque.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vNomeAux: String;  
begin
  RLDBText4.Visible := vImpQtdGeral;
  vNomeAux          := fDMConsEstoque.cdsEstoqueNOMEPRODUTO.AsString;
  if trim(fDMConsEstoque.cdsEstoqueNOME_COR.AsString) <> '' then
    vNomeAux := vNomeAux + ' ' + fDMConsEstoque.cdsEstoqueNOME_COR.AsString;
  RLMemo1.Lines.Text := vNomeAux;
end;

procedure TfRelEstoque.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);
end;

procedure TfRelEstoque.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel16.Visible  := vImpQtdGeral;
  RLLabel17.Visible  := vImpQtdGeral;
  RLLabel9.Caption   := 'RELATÓRIO DO ESTOQUE - ' + fDMConsEstoque.vOpcao_ProdMat;
  RLLabel15.Caption  := fDMConsEstoque.vDescOpcao_Rel;
end;

procedure TfRelEstoque.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vNomeAux: String;
begin
  RLDBText7.Visible   := vPrecoCusto;
  RLDBText9.Visible   := vPrecoCusto;
  RLDBResult1.Visible := vPrecoCusto;
  RLDBText8.Visible   := vPrecoVenda;
  RLDBText10.Visible  := vPrecoVenda;
  RLDBResult2.Visible := vPrecoVenda;

  RLDBText6.Visible := vImpQtdGeral;
  vNomeAux          := fDMConsEstoque.cdsEstoqueNOMEPRODUTO.AsString;
  if trim(fDMConsEstoque.cdsEstoqueNOME_COR.AsString) <> '' then
    vNomeAux := vNomeAux + ' ' + fDMConsEstoque.cdsEstoqueNOME_COR.AsString;
  if trim(fDMConsEstoque.cdsEstoqueTAMPRODUTO.AsString) <> '' then
    vNomeAux := vNomeAux + ' ' + fDMConsEstoque.cdsEstoqueTAMPRODUTO.AsString;
  RLMemo2.Lines.Text := vNomeAux;
end;

procedure TfRelEstoque.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelEstoque.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
