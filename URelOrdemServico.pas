unit URelOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadOrdemServico, UDMRel, StdCtrls;

type
  TfRelOrdemServico = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw10: TRLDraw;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
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
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText8: TRLDBText;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLBand5: TRLBand;
    RLLabel12: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLDraw4: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand7: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand9: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBMemo4: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    RLSubDetail4: TRLSubDetail;
    RLBand10: TRLBand;
    RLBand11: TRLBand;
    RLBand12: TRLBand;
    RLLabel27: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel29: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText32: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText33: TRLDBText;
    RLBand14: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel38: TRLLabel;
    lbTipo: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel40: TRLLabel;
    lbEndCliente: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel94: TRLLabel;
    RLLabel95: TRLLabel;
    RLLabel96: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel102: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLLabel111: TRLLabel;
    RLLabel112: TRLLabel;
    RLLabel113: TRLLabel;
    RLLabel114: TRLLabel;
    RLLabel115: TRLLabel;
    RLLabel116: TRLLabel;
    RLLabel117: TRLLabel;
    RLLabel118: TRLLabel;
    RLLabel119: TRLLabel;
    RLLabel120: TRLLabel;
    RLLabel121: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLLabel125: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel129: TRLLabel;
    RLLabel130: TRLLabel;
    RLLabel131: TRLLabel;
    RLBand6: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel32: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel33: TRLLabel;
    RLDraw6: TRLDraw;
    lbNumOS: TRLLabel;
    RLBand8: TRLBand;
    RLLabel132: TRLLabel;
    RLDBMemo6: TRLDBMemo;
    Label2: TLabel;
    RLDBText26: TRLDBText;
    Label3: TLabel;
    RLDBText37: TRLDBText;
    Label4: TLabel;
    RLDBText38: TRLDBText;
    Label5: TLabel;
    RLDBText39: TRLDBText;
    RLLabel133: TRLLabel;
    RLDraw2: TRLDraw;
    Label1: TLabel;
    RLDBText40: TRLDBText;
    RLBand13: TRLBand;
    RLLabel134: TRLLabel;
    RLDBMemo7: TRLDBMemo;
    RLBand15: TRLBand;
    RLLabel135: TRLLabel;
    RLLabel136: TRLLabel;
    RLLabel137: TRLLabel;
    RLLabel138: TRLLabel;
    RLLabel139: TRLLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RLBand16: TRLBand;
    RLLabel140: TRLLabel;
    RLLabel141: TRLLabel;
    RLLabel142: TRLLabel;
    RLLabel143: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel144: TRLLabel;
    RLDBText42: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vNumOS: String;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  fRelOrdemServico: TfRelOrdemServico;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelOrdemServico.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  if fDMCadOrdemServico.qParametros_SerIMP_NA_OS_REF_PROD.AsString = 'R' then
    RLDBText13.DataField := 'lkReferencia'
  else
    RLDBText13.DataField := 'ID_PRODUTO';
end;

procedure TfRelOrdemServico.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vNumOs := fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsString;
  rlEndFilial.Caption  := fDMCadOrdemServico.cdsFilialENDERECO.AsString + ', ' + fDMCadOrdemServico.cdsFilialNUM_END.AsString;
  lbEndCliente.Caption := fDMCadOrdemServico.cdsOrdemServicoENDERECO.AsString + ', ' +
                          fDMCadOrdemServico.cdsOrdemServicoNUM_END.AsString + ' - ' +
                          fDMCadOrdemServico.cdsOrdemServicoCOMPLEMENTO_END.AsString;

  case fDMCadOrdemServico.cdsOrdemServicoTP_ORCAMENTO.AsInteger of
    1: lbTipo.Caption := 'ORDEM DE SERVIÇO:';
    2: lbTipo.Caption := 'ORÇAMENTO:';
    3: lbTipo.Caption := 'ORDEM DE SERVIÇO:';
  end;

  if fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_FONE.IsNull then
  begin
    fDMCadOrdemServico.cdsOrdemServico.Edit;
    fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_FONE.AsString := '(' + fDMCadOrdemServico.cdsClienteDDDFONE1.AsString +
                                                                   ')' + fDMCadOrdemServico.cdsClienteTELEFONE1.AsString;
    fDMCadOrdemServico.cdsOrdemServico.Post;
    fDMCadOrdemServico.cdsOrdemServico.ApplyUpdates(0);
  end;

  if fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime > 0 then
  begin
    RLLabel51.Caption  := FormatDateTime('dd/mm/yyyy',fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime) + ' (Entr.)';
    RLLabel55.Caption  := FormatDateTime('HH:NN',fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime);
    RLLabel135.Caption := 'Data: ' + #13 + FormatDateTime('dd/mm/yyyy',fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime);
  end;
  if fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime > 0 then
  begin
    RLLabel50.Caption  := FormatDateTime('dd/mm/yyyy',fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime) + ' (Concl.)';
    RLLabel53.Caption  := FormatDateTime('HH:NN',fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime);
  end;

  RLImage1.Picture := nil;
  try
  if FileExists(fDMCadOrdemServico.cdsFilialENDLOGO.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadOrdemServico.cdsFilialENDLOGO.AsString)
  else
  except
  end;
end;

procedure TfRelOrdemServico.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelOrdemServico.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelOrdemServico.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{  PrintIt := ((StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_MATERIAL.AsFloat)) > 0) or
              (StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_SERVICO.AsFloat)) > 0) or
              (StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsFloat)) > 0));
}
end;

procedure TfRelOrdemServico.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbNumOS.Caption := vNumOS;
end;

procedure TfRelOrdemServico.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Label2.Visible := False;
  Label3.Visible := False;
  Label4.Visible := False;
  Label5.Visible := False;
  Label6.Visible := False;
  Label7.Visible := False;
  Label8.Visible := False;

  RLDBText26.Visible := False;
  RLDBText37.Visible := False;
  RLDBText38.Visible := False;
  RLDBText39.Visible := False;

  if (fDMCadOrdemServico.cdsCsmOsMotor.IsEmpty) and
     (fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_ATENDIMENTO.IsNull) then
  begin
    RLBand3.Height := 16;
    Exit;
  end
  else
    RLBand3.Height := 34;

  if not fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_ATENDIMENTO.IsNull then
  begin
    case fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_ATENDIMENTO.AsInteger of
      1: Label7.Caption := 'Equipamento locado';
      2: Label7.Caption := 'Contrato de fornecimento';
      3: Label7.Caption := 'Equipamento cliente';
    end;
    Label6.Visible := True;
    Label7.Visible := True;
  end
  else
  begin
    Label2.Visible := True;
    Label3.Visible := True;
    Label4.Visible := True;
    Label5.Visible := True;
    RLDBText26.Visible := True;
    RLDBText37.Visible := True;
    RLDBText38.Visible := True;
    RLDBText39.Visible := True;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_ItensDT_GARANTIA.IsNull then
    Label8.Visible := True;
end;

end.
