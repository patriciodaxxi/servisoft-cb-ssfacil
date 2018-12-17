unit URelPedido_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMConsPedido, UDMRel;

type
  TfRelPedido_Det = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel15: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel20: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText11: TRLDBText;
    RLMemo1: TRLMemo;
    RLLabel23: TRLLabel;
    RLDBText12: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLDetailGrid2: TRLDetailGrid;
    RLLabel38: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText20: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    vOpcaoImp: String;
    vImp_Vlr: Boolean;
    fDMConsPedido: TDMConsPedido;
  end;

var
  fRelPedido_Det: TfRelPedido_Det;

implementation

uses rsDBUtils, DB, uUtilPadrao;

{$R *.dfm}

procedure TfRelPedido_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido_Det.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsPedido);
  RLLabel13.Visible  := vImp_Vlr;
  RLLabel14.Visible  := vImp_Vlr;
  RLLabel25.Visible  := vImp_Vlr;
  RLDBText5.Visible  := vImp_Vlr;
  RLDBText3.Visible  := vImp_Vlr;
  RLDBText11.Visible := vImp_Vlr;

  RLLabel16.Visible   := vImp_Vlr;
  RLLabel18.Visible   := vImp_Vlr;
  RLLabel20.Visible   := vImp_Vlr;
  RLDBResult2.Visible := vImp_Vlr;
  RLDBResult4.Visible := vImp_Vlr;
  RLDBResult6.Visible := vImp_Vlr;

  if vImpCliente_RF = 'R' then
    RLDBText7.DataField := 'NOME_CLIENTE'
  else
    RLDBText7.DataField := 'FANTASIA';
end;

procedure TfRelPedido_Det.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := vOpcaoImp;
end;

procedure TfRelPedido_Det.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPedido_Det.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelPedido_Det.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : String;
begin
  if fDMConsPedido.qParametros_PedCONCATENA_PROD_COR_TAM.AsString = 'S' then
  begin
    if fDMConsPedido.cdsPedido_ItemMONT_COMBINACAO.AsString <> '' then
      vaux := fDMConsPedido.cdsPedido_ItemNOME_PRODUTO.AsString +  ' '  + fDMConsPedido.cdsPedido_ItemMONT_COMBINACAO.AsString
    else
    begin
    if (fDMConsPedido.cdsPedido_ItemTIPO_REG.AsString = 'P') and
       ((fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'C') or
       (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'B')) and
       (trim(fDMConsPedido.cdsPedido_ItemNOME_COR_COMBINACAO.AsString) <> '') then
    begin
      vAux := fDMConsPedido.cdsPedido_ItemNOME_COR_COMBINACAO.AsString;
      if trim(fDMConsPedido.cdsPedido_ItemTAMANHO.AsString) <> '' then
        vAux := vAux + ' ' + fDMConsPedido.cdsPedido_ItemTAMANHO.AsString
      else
      if (fDMConsPedido.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemTAM_CALC.AsFloat)) > 0) then
        vAux := vAux + ' Tam: ' + fDMConsPedido.cdsPedido_ItemTAM_CALC.AsString;
    end
    else
      vAux := fDMConsPedido.cdsPedido_ItemNOME_PRODUTO_PED.AsString;
    end;
  end else
  begin
    if (fDMConsPedido.cdsPedido_ItemTIPO_REG.AsString = 'P') and
       ((fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'C') or
       (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'B')) and
       (trim(fDMConsPedido.cdsPedido_ItemNOME_COR_COMBINACAO.AsString) <> '') then
    begin
      vAux := fDMConsPedido.cdsPedido_ItemNOME_COR_COMBINACAO.AsString;
      if trim(fDMConsPedido.cdsPedido_ItemTAMANHO.AsString) <> '' then
        vAux := vAux + ' ' + fDMConsPedido.cdsPedido_ItemTAMANHO.AsString
      else
      if (fDMConsPedido.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemTAM_CALC.AsFloat)) > 0) then
        vAux := vAux + ' Tam: ' + fDMConsPedido.cdsPedido_ItemTAM_CALC.AsString;
    end
    else
      vAux := fDMConsPedido.cdsPedido_ItemNOME_PRODUTO_PED.AsString;
  end;

  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := vAux;
end;

procedure TfRelPedido_Det.RLSubDetail2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMConsPedido.mUnidade.IsEmpty);
end;

procedure TfRelPedido_Det.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMConsPedido.mUnidade.IsEmpty);
end;

procedure TfRelPedido_Det.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMConsPedido.mUnidade.IsEmpty);
end;

end.
