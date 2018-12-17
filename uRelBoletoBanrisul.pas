unit uRelBoletoBanrisul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, db, Dialogs, RLReport, RLBarcode, jpeg, UDMCob_Eletronica;

type
  TfRelBoletoBanrisul = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw44: TRLDraw;
    RLBarcode2: TRLBarcode;
    RLDraw45: TRLDraw;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw47: TRLDraw;
    RLLabel50: TRLLabel;
    RLDraw48: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw49: TRLDraw;
    RLLabel52: TRLLabel;
    RLDraw50: TRLDraw;
    RLLabel53: TRLLabel;
    RLDraw51: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw52: TRLDraw;
    RLLabel55: TRLLabel;
    RLDraw53: TRLDraw;
    RLLabel56: TRLLabel;
    RLDraw54: TRLDraw;
    RLLabel57: TRLLabel;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLLabel59: TRLLabel;
    RLDraw58: TRLDraw;
    RLLabel61: TRLLabel;
    RLDraw59: TRLDraw;
    RLLabel62: TRLLabel;
    RLDraw60: TRLDraw;
    RLLabel63: TRLLabel;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLLabel66: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel75: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLLabel76: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw3: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel15: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    Inst1: TRLLabel;
    Inst2: TRLLabel;
    Inst3: TRLLabel;
    Inst4: TRLLabel;
    Inst5: TRLLabel;
    Inst1A: TRLLabel;
    Inst2A: TRLLabel;
    Inst3A: TRLLabel;
    Inst4A: TRLLabel;
    Inst5A: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw24: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw25: TRLDraw;
    RLLabel42: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw26: TRLDraw;
    RLLabel31: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw7: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw10: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw11: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw13: TRLDraw;
    RLDBText9: TRLDBText;
    RLLabel17: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel21: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel29: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel47: TRLLabel;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDBText12: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel67: TRLLabel;
    RLDBText17: TRLDBText;
    RLImage1: TRLImage;
    RLDraw30: TRLDraw;
    RLLabel35: TRLLabel;
    RLImage2: TRLImage;
    RLDBText18: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCob_Eletronica : TDMCob_Eletronica;


  end;

var
  fRelBoletoBanrisul: TfRelBoletoBanrisul;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelBoletoBanrisul.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i, i2: Integer;
  vNumAux: String;
  vDigAux: String;
begin
  if fDMCob_Eletronica.mBoletoPessoaFilial.AsString = 'F' then
    RLLabel58.Caption := 'CPF:'
  else
    RLLabel58.Caption := 'CNPJ:';
  RLLabel67.Caption := RLLabel58.Caption;
  vNumAux := copy(fDMCob_Eletronica.mBoletoNossoNumero.AsString,1,8);
  vDigAux := copy(fDMCob_Eletronica.mBoletoNossoNumero.AsString,9,1);

  RLLabel70.Caption  := fDMCob_Eletronica.MontaBoletoBanrisul('L',vNumAux,fDMCob_Eletronica.mBoletoCodCarteira.AsString,vDigAux,'2',fDMCob_Eletronica.mBoletoDtVencimento.AsDateTime,fDMCob_Eletronica.mBoletoVlrParcela.AsCurrency);

  RLBarcode2.Caption := fDMCob_Eletronica.MontaBoletoBanrisul('B',vNumAux,fDMCob_Eletronica.mBoletoCodCarteira.AsString,vDigAux,'2',fDMCob_Eletronica.mBoletoDtVencimento.AsDateTime,fDMCob_Eletronica.mBoletoVlrParcela.AsCurrency);

  RLLabel3.Caption   := fDMCob_Eletronica.mBoletoAgencia.AsString + '/' + fDMCob_Eletronica.mBoletoCodCedente.AsString;
  RLLabel28.Caption  := RLLabel3.Caption;

  RLLabel40.Caption := Copy(fDMCob_Eletronica.mBoletoNossoNumero.AsString,1,8) + '.' + Copy(fDMCob_Eletronica.mBoletoNossoNumero.AsString,9,2);
  RLLabel34.Caption := RLLabel40.Caption;

  if fDMCob_Eletronica.mBoletoPessoaCli.AsString = 'F' then
    RLLabel32.Caption := 'CPF:'
  else
    RLLabel32.Caption := 'CNPJ:';
  RLLabel33.Caption := RLLabel32.Caption;

  //Instruções
  for i := 1 to 5 do
  begin
    TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '';
    TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '';
    TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := False;
    TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := False;
  end;

  fDMCob_Eletronica.vMemo := TStringList.Create;
  fDMCob_Eletronica.vMemo.Clear;

  fDMCob_Eletronica.prc_Mensagem_Cobranca;
  i2 := 0;
  for i := 0 to fDMCob_Eletronica.vMemo.Count - 1  do
  begin
    if trim(fDMCob_Eletronica.vMemo[i]) <> '' then
    begin
      i2 := i2 + 1;
      TRLLabel(FindComponent('Inst'+IntToStr(i2))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i2)+'A')).Visible := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i2))).Caption     := fDMCob_Eletronica.vMemo[i];
      TRLLabel(FindComponent('Inst'+IntToStr(i2)+'A')).Caption := fDMCob_Eletronica.vMemo[i];
    end;
  end;

  //Dados do sacado
  RLLabel31.Caption := fDMCob_Eletronica.mBoletoEndereco.AsString + ', ' + fDMCob_Eletronica.mBoletoNumEnd.AsString;
  if trim(fDMCob_Eletronica.mBoletoComplemento_End.AsString) <> '' then
    RLLabel31.Caption := RLLabel31.Caption + ' - ' + fDMCob_Eletronica.mBoletoComplemento_End.AsString;
  RLLabel43.Caption := fDMCob_Eletronica.mBoletoCep.AsString + '   -   ' +
                       fDMCob_Eletronica.mBoletoCidade.AsString + '  -  ' +
                       fDMCob_Eletronica.mBoletoUF.AsString;
  RLLabel45.Caption := RLLabel31.Caption;
  RLLabel44.Caption := RLLabel43.Caption;

  FreeAndNil(fDMCob_Eletronica.vMemo);
end;

procedure TfRelBoletoBanrisul.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelBoletoBanrisul.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCob_Eletronica);
end;

end.
