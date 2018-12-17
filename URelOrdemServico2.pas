unit URelOrdemServico2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadOrdemServico,
  UDMRel, StdCtrls;

type
  TfRelOrdemServico2 = class(TForm)
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
    RLSubDetail2: TRLSubDetail;
    RLBand7: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand10: TRLBand;
    RLBand11: TRLBand;
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
    RLLabel38: TRLLabel;
    lbTipo: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel40: TRLLabel;
    lbEndCliente: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
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
    Label1: TLabel;
    RLLabel12: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLBand4: TRLBand;
    RLBand8: TRLBand;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLBand5: TRLBand;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel143: TRLLabel;
    RLDBText41: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
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
  fRelOrdemServico2: TfRelOrdemServico2;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelOrdemServico2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelOrdemServico2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
end;

procedure TfRelOrdemServico2.RLBand1BeforePrint(Sender: TObject;
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
    RLLabel51.Caption := FormatDateTime('dd/mm/yyyy',fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime) + ' (Entr.)';
  if fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime > 0 then
    RLLabel50.Caption := FormatDateTime('dd/mm/yyyy',fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime) + ' (Concl.)';

  RLImage1.Picture := nil;
  try
  if FileExists(fDMCadOrdemServico.cdsFilialENDLOGO.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadOrdemServico.cdsFilialENDLOGO.AsString)
  else
  except
  end;
end;

procedure TfRelOrdemServico2.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelOrdemServico2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelOrdemServico2.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{  PrintIt := ((StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_MATERIAL.AsFloat)) > 0) or
              (StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_SERVICO.AsFloat)) > 0) or
              (StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsFloat)) > 0));
}
end;

procedure TfRelOrdemServico2.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbNumOS.Caption := vNumOS;
end;

procedure TfRelOrdemServico2.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo2.Lines.Clear;
  RLMemo2.Lines.Text := 'Defeito Alegado: ' + fDMCadOrdemServico.cdsOrdemServico_ItensDEFEITO_ALEGADO.AsString;
end;

procedure TfRelOrdemServico2.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo3.Lines.Clear;
  RLMemo3.Lines.Text := 'Defeito Encontrado: ' + fDMCadOrdemServico.cdsOrdemServico_ItensDEFEITO_ENCONTRADO.AsString;
end;

procedure TfRelOrdemServico2.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadOrdemServico.cdsCsmOsMotor.IsEmpty then
    RLBand3.Height := 20
  else
    RLBand3.Height := 36;
end;

end.
