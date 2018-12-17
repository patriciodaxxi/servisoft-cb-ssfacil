unit URelCCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, DB, RLBarcode, jpeg,
  UDMCadNotaFiscal, UDMNFe, UDMRel;

type
  TfRelCCe = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLImage1: TRLImage;
    RLLabel67: TRLLabel;
    RLDraw49: TRLDraw;
    rlbcChaveAcesso1: TRLBarcode;
    RLDraw50: TRLDraw;
    rllbEnd1: TRLLabel;
    rllbCidade1: TRLLabel;
    rllbFone1: TRLLabel;
    rllbCep1: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel79: TRLLabel;
    RLDraw55: TRLDraw;
    RLLabel23: TRLLabel;
    RLBand2: TRLBand;
    RLBand8: TRLBand;
    RLLabel81: TRLLabel;
    RLDraw56: TRLDraw;
    RLLabel82: TRLLabel;
    RLDraw58: TRLDraw;
    RLDBText56: TRLDBText;
    RLLabel83: TRLLabel;
    RLDraw59: TRLDraw;
    RLLabel84: TRLLabel;
    RLDraw60: TRLDraw;
    RLDBText57: TRLDBText;
    RLLabel85: TRLLabel;
    RLDraw61: TRLDraw;
    RLDBText58: TRLDBText;
    RLLabel86: TRLLabel;
    RLDraw62: TRLDraw;
    RLLabel87: TRLLabel;
    RLDraw63: TRLDraw;
    RLLabel88: TRLLabel;
    RLDraw64: TRLDraw;
    RLLabel89: TRLLabel;
    RLDBText59: TRLDBText;
    RLDraw65: TRLDraw;
    RLDBText60: TRLDBText;
    RLLabel90: TRLLabel;
    RLDraw84: TRLDraw;
    rllbTextoProt1: TRLLabel;
    rllbProtocolo1: TRLLabel;
    rllbInscrEstadual1: TRLLabel;
    rllbCNPJ1: TRLLabel;
    rllbChaveAcesso1: TRLLabel;
    RLBand12: TRLBand;
    RLDraw17: TRLDraw;
    RLImage2: TRLImage;
    RLLabel39: TRLLabel;
    RLDraw18: TRLDraw;
    rlbcChaveAcesso2: TRLBarcode;
    rllbEnd2: TRLLabel;
    rllbCidade2: TRLLabel;
    rllbFone2: TRLLabel;
    rllbCep2: TRLLabel;
    RLLabel118: TRLLabel;
    RLLabel120: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel121: TRLLabel;
    RLDraw71: TRLDraw;
    rllbTextoProt2: TRLLabel;
    rllbProtocolo2: TRLLabel;
    rllbInscrEstadual2: TRLLabel;
    rllbCNPJ2: TRLLabel;
    rllbChaveAcesso2: TRLLabel;
    RLBand9: TRLBand;
    RLLabel64: TRLLabel;
    RLDraw72: TRLDraw;
    RLLabel68: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel2: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLBand1: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLMemo2: TRLMemo;
    rllbEmpresa1: TRLLabel;
    rllbEmpresa2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
    procedure Monta_Cabecalho(Posicao: Integer);

    procedure Posiciona_CidadeUF(CodCidade, IDPais: Integer);
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMNFe: TDMNFe;
    procedure prc_Mudar_DataSet;
  end;

var
  fRelCCe: TfRelCCe;

implementation

uses uNFe, rsDBUtils;

{$R *.dfm}

procedure TfRelCCe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCCe.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMNFe.qParametrosTIPOLOGONFE.AsString <> 'R');
  if not PrintIt then
    exit;
  Monta_Cabecalho(1);
end;

procedure TfRelCCe.Monta_Cabecalho(Posicao: Integer);
var
  vTexto: String;
  i: Integer;
begin
  TRLBarcode(FindComponent('rlbcChaveAcesso'+IntToStr(posicao))).Caption := fDMNFe.cdsNotaFiscal_NFeNFECHAVEACESSO.AsString;

  TRLImage(FindComponent('RLImage'+IntToStr(Posicao))).Stretch := (fDMNFe.qParametrosAJUSTELOGONFEAUTOMATICO.AsString = 'S');

  if FileExists(fDMNFe.qFilialENDLOGO.AsString) then
    TRLImage(FindComponent('RLImage'+IntToStr(Posicao))).Picture.LoadFromFile(fDMNFe.qFilialENDLOGO.AsString)
  else
    TRLImage(FindComponent('RLImage'+IntToStr(Posicao))).Picture := nil;

  Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);

  TRLLabel(FindComponent('rllbEmpresa'+IntToStr(Posicao))).Caption       := fDMNFe.qFilialNOME.AsString;
  TRLLabel(FindComponent('rllbEnd'+IntToStr(Posicao))).Caption           := fDMNFe.qFilialENDERECO.AsString + ', ' + fDMNFe.qFilialNUM_END.AsString;
  TRLLabel(FindComponent('rllbCep'+IntToStr(Posicao))).Caption           := 'CEP: ' + fDMNFe.qFilialCEP.AsString + ' - ' + fDMNFe.qFilialBAIRRO.AsString;
  TRLLabel(FindComponent('rllbCidade'+IntToStr(Posicao))).Caption        := fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString;
  TRLLabel(FindComponent('rllbFone'+IntToStr(Posicao))).Caption          := fDMNFe.qFilialDDD1.AsString + ' ' + fDMNFe.qFilialFONE.AsString;
  TRLLabel(FindComponent('rllbInscrEstadual'+IntToStr(Posicao))).Caption := fDMNFe.qFilialINSCR_EST.AsString;
  TRLLabel(FindComponent('rllbCNPJ'+IntToStr(Posicao))).Caption          := fDMNFe.qFilialCNPJ_CPF.AsString;

  TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption := '';
  vTexto := fDMNFe.cdsNotaFiscal_NFeNFECHAVEACESSO.AsString;
  i := 1;
  while i < 44 do                        
  begin
    if i > 1 then
      TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption := TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption + ' ';
    TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption   := TRLLabel(FindComponent('rllbChaveAcesso'+IntToStr(Posicao))).Caption + copy(vTexto,i,4);
    i := i + 4;
  end;

  TRLLabel(FindComponent('rllbTextoProt'+IntToStr(Posicao))).Caption := 'PROTOCOLO DE AUTORIZAÇÃO DE USO';
  TRLLabel(FindComponent('rllbProtocolo'+IntToStr(Posicao))).Caption :=  fDMNFe.cdsNotaFiscal_NFeNFEPROTOCOLO.AsString;
end;

procedure TfRelCCe.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMNFe.qParametrosTIPOLOGONFE.AsString <> 'Q');
  if not PrintIt then
    exit;
  Monta_Cabecalho(2);
end;

procedure TfRelCCe.Posiciona_CidadeUF(CodCidade, IDPais: Integer);
begin
  fDMNFe.qCidade.Close;
  fDMNFe.qCidade.ParamByName('ID').AsInteger := CodCidade;
  fDMNFe.qCidade.Open;

  fDMNFe.qUF.Close;
  fDMNFe.qUF.ParamByName('UF').AsString := fDMNFe.qCidadeUF.AsString;
  fDMNFe.qUF.Open;

  fDMNFe.qPais.Close;
  fDMNFe.qPais.ParamByName('ID').AsInteger := IDPais;
  fDMNFe.qPais.Open;
end;

procedure TfRelCCe.prc_Mudar_DataSet;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMNFe);
end;

procedure TfRelCCe.FormCreate(Sender: TObject);
begin
  try
    fDMRel := TDMRel.Create(Self);
  except
  end;
end;

procedure TfRelCCe.FormDestroy(Sender: TObject);
begin
  try
    FreeAndNil(fDMRel);
  except
  end;
end;

end.
