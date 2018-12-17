unit URelTalao_Rot2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadLote;

type
  TfRelTalao_Rot2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw12: TRLDraw;
    RLDBText2: TRLDBText;
    RLDraw13: TRLDraw;
    RLDBText3: TRLDBText;
    RLDraw14: TRLDraw;
    RLDBText4: TRLDBText;
    RLDraw15: TRLDraw;
    RLDBText5: TRLDBText;
    RLDraw16: TRLDraw;
    RLDBText6: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel17: TRLLabel;
    RLDraw24: TRLDraw;
    RLDBText10: TRLDBText;
    RLDraw25: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw26: TRLDraw;
    RLDBText11: TRLDBText;
    RLDraw27: TRLDraw;
    RLLabel19: TRLLabel;
    RLDraw28: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw29: TRLDraw;
    RLLabel21: TRLLabel;
    RLDraw30: TRLDraw;
    RLDBText12: TRLDBText;
    RLDraw31: TRLDraw;
    RLLabel22: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadLote: TDMCadLote;
    
  end;

var
  fRelTalao_Rot2: TfRelTalao_Rot2;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelTalao_Rot2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTalao_Rot2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
end;

procedure TfRelTalao_Rot2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTexto: String;
  vTexto_OS: String;
  vPedido: String;
  vNumOS: String;
  vAtelier: String;
begin
  fDMCadLote.cdsPedido_Talao.Close;
  fDMCadLote.sdsPedido_Talao.ParamByName('ID').AsInteger        := fDMCadLote.mLoteID_Lote.AsInteger;
  fDMCadLote.sdsPedido_Talao.ParamByName('NUM_TALAO').AsInteger := fDMCadLote.mLoteNum_Talao.AsInteger;
  fDMCadLote.cdsPedido_Talao.Open;
  fDMCadLote.cdsPedido_Talao.First;
  RLLabel11.Caption := fDMCadLote.cdsPedido_TalaoFANTASIA.AsString;

  vTexto    := '';
  vTexto_OS := '';
  vPedido   := '';
  vNumOS    := '';
  vAtelier  := '';
  fDMCadLote.cdsPedido_Talao.First;
  while not fDMCadLote.cdsPedido_Talao.Eof do
  begin
    if vPedido <> fDMCadLote.cdsPedido_TalaoPEDIDO_CLIENTE.AsString then
    begin
      if vTexto <> '' then
        vTexto := vTexto + '/' + fDMCadLote.cdsPedido_TalaoPEDIDO_CLIENTE.AsString
      else
        vTexto := fDMCadLote.cdsPedido_TalaoPEDIDO_CLIENTE.AsString;
    end;
    if vNumOS <> fDMCadLote.cdsPedido_TalaoNUMOS.AsString then
    begin
      if vTexto_OS <> '' then
        vTexto_OS := vTexto_OS + '/' + fDMCadLote.cdsPedido_TalaoNUMOS.AsString
      else
        vTexto_OS := fDMCadLote.cdsPedido_TalaoNUMOS.AsString;
    end;
    if trim(fDMCadLote.cdsPedido_TalaoNOME_TRIANGULAR.AsString) <> '' then
      vAtelier := fDMCadLote.cdsPedido_TalaoNOME_TRIANGULAR.AsString;
    vPedido := fDMCadLote.cdsPedido_TalaoPEDIDO_CLIENTE.AsString;
    vNumOS  := fDMCadLote.cdsPedido_TalaoNUMOS.AsString;
    fDMCadLote.cdsPedido_Talao.Next;
  end;
  RLLabel14.Caption := vTexto;
  RLLabel13.Caption := vTexto_OS;
  RLLabel15.Caption := vAtelier;
  fDMCadLote.qProduto_Consumo.Close;
  fDMCadLote.qProduto_Consumo.ParamByName('ID').AsInteger := fDMCadLote.mLoteID_Produto.AsInteger;
  fDMCadLote.qProduto_Consumo.Open;
  vTexto := '';
  while not fDMCadLote.qProduto_Consumo.Eof do
  begin
    if vTexto = '' then
      vTexto := fDMCadLote.qProduto_ConsumoNOME_MATERIAL.AsString
    else
      vTexto := vTexto + '/' + fDMCadLote.qProduto_ConsumoNOME_MATERIAL.AsString;
    fDMCadLote.qProduto_Consumo.Next;
  end;
  RLLabel20.Caption := vTexto;
end;

end.
