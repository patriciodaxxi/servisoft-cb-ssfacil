unit URelTalao_Aux;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadLote, RLBarcode, jpeg, UDMRel;

type
  TfRelTalao_Aux = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLBarcode1: TRLBarcode;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw4: TRLDraw;
    RLDraw9: TRLDraw;
    RLImage2: TRLImage;
    RLLabel15: TRLLabel;
    RLDBText10: TRLDBText;
    Tam1: TRLLabel;
    Qtd1: TRLLabel;
    Tam2: TRLLabel;
    Qtd2: TRLLabel;
    Tam3: TRLLabel;
    Qtd3: TRLLabel;
    Tam4: TRLLabel;
    Qtd4: TRLLabel;
    Tam5: TRLLabel;
    Qtd5: TRLLabel;
    Tam6: TRLLabel;
    Qtd6: TRLLabel;
    Tam7: TRLLabel;
    Qtd7: TRLLabel;
    Tam8: TRLLabel;
    Qtd8: TRLLabel;
    Tam9: TRLLabel;
    Qtd9: TRLLabel;
    Tam10: TRLLabel;
    Qtd10: TRLLabel;
    Tam11: TRLLabel;
    Qtd11: TRLLabel;
    Tam12: TRLLabel;
    Qtd12: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw6: TRLDraw;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLMemo2: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadLote: TDMCadLote;
    vTipo_Rel: String; //L= Lote   T= Talão

  end;

var
  fRelTalao_Aux: TfRelTalao_Aux;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelTalao_Aux.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfRelTalao_Aux.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
end;

procedure TfRelTalao_Aux.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i: Integer;  
begin
  if not fDMCadLote.cdsConsulta_Talao_Aux.Locate('ID_TALAO;ITEM',VarArrayOf([fDMCadLote.mImpTalao_AuxID.AsInteger,fDMCadLote.mImpTalao_AuxItem.AsInteger]),[locaseinsensitive]) then
    PrintIt := False
  else
    PrintIt := True;

  if not PrintIt then
    exit;

  for i := 1 to 12 do
  begin
    TRLLabel(FindComponent('Tam'+IntToStr(i))).Visible := False;
    TRLLabel(FindComponent('Qtd'+IntToStr(i))).Visible := False;
  end;

  i := 0;
  fDMCadLote.cdsConsulta_Talao_Aux_Tam.First;
  while not fDMCadLote.cdsConsulta_Talao_Aux_Tam.Eof do
  begin
    i := i + 1;
    TRLLabel(FindComponent('Tam'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('Qtd'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('Tam'+IntToStr(i))).Caption := fDMCadLote.cdsConsulta_Talao_Aux_TamTAMANHO.AsString;
    TRLLabel(FindComponent('Qtd'+IntToStr(i))).Caption := fDMCadLote.cdsConsulta_Talao_Aux_TamQTD.AsString;
    fDMCadLote.cdsConsulta_Talao_Aux_Tam.Next;
  end;

  RLLabel3.Caption := fDMCadLote.cdsConsulta_Talao_AuxNUM_ORDEM.AsString + '/' + fDMCadLote.cdsConsulta_Talao_AuxNUM_LOTE.AsString;

  RLLabel5.Caption := '2' + FormatFloat('0000000',fDMCadLote.cdsConsulta_Talao_AuxID_TALAO.AsInteger) + FormatFloat('0000',fDMCadLote.cdsConsulta_Talao_AuxITEM.AsInteger); 
  RLBarcode1.Caption := RLLabel5.Caption;
  RLBarcode1.Refresh;

  if fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S' then
  begin
    fDMCadLote.cdsProduto_Consumo_Setor.Close;
    fDMCadLote.sdsProduto_Consumo_Setor.ParamByName('ID').AsInteger       := fDMCadLote.cdsConsulta_Talao_AuxID_PRODUTO.AsInteger;
    fDMCadLote.sdsProduto_Consumo_Setor.ParamByName('ID_SETOR').AsInteger := fDMCadLote.cdsConsulta_Talao_AuxID_SETOR.AsInteger;
    fDMCadLote.cdsProduto_Consumo_Setor.Open;
  end;
  
  RLImage1.Picture := nil;
  try
    if FileExists(fDMCadLote.cdsConsulta_Talao_AuxENDLOGO.AsString) then
      RLImage1.Picture.LoadFromFile(fDMCadLote.cdsConsulta_Talao_AuxENDLOGO.AsString);
  except
  end;

end;

procedure TfRelTalao_Aux.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelTalao_Aux.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelTalao_Aux.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux: Real;
  vID_Material, vID_Cor_Mat: Integer;
  vObsMaterial: String;  
begin
  vObsMaterial := '';
  fDMCadLote.cdsProduto_Consumo_Setor.First;
  while not fDMCadLote.cdsProduto_Consumo_Setor.Eof do
  begin
    if ((fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S') and (fDMCadLote.cdsProduto_Consumo_SetorIMP_TALAO.AsString = 'S')) then
    begin
      fDMCadLote.prc_Abrir_Produto_Comb;

      vID_Material := fDMCadLote.cdsProduto_Consumo_SetorID_MATERIAL.AsInteger;
      vID_Cor_Mat  := 0;
      if (fDMCadLote.qParametrosINFORMAR_COR_PROD.AsString = 'B') and (fDMCadLote.cdsConsulta_Talao_AuxID_COMBINACAO.AsInteger > 0) then
      begin
        if not(fDMCadLote.qProduto_Comb.IsEmpty) and (fDMCadLote.qProduto_CombID_MATERIAL.AsInteger > 0) then
        begin
          vID_Material := fDMCadLote.qProduto_CombID_MATERIAL.AsInteger;
          vID_Cor_Mat  := fDMCadLote.qProduto_CombID_COR.AsInteger;
        end;
      end;
      fDMCadLote.qMaterial.Close;
      fDMCadLote.qMaterial.ParamByName('ID').AsInteger := vID_Material;
      fDMCadLote.qMaterial.Open;

      if vObsMaterial <> '' then
        vObsMaterial := vObsMaterial + ' ';
      vObsMaterial := vObsMaterial + '(' + fDMCadLote.qMaterialNome.AsString + ' ' + fDMCadLote.qProduto_CombNOME_COR_MATERIAL.AsString;

      if fDMCadLote.cdsProduto_Consumo_SetorTIPO_CONSUMO.AsString = 'T' then
        vAux := fDMCadLote.fnc_Somar_Consumo_Aux
      else
        vAux := StrToFloat(FormatFloat('0.00000',fDMCadLote.cdsProduto_Consumo_SetorQTD_CONSUMO.AsFloat * fDMCadLote.cdsConsulta_Talao_AuxQTD_TALAO.AsFloat));
      vObsMaterial := vObsMaterial + '  Cons.: ' + FormatFloat('0.00000',vAux) + ') ';
    end;

    fDMCadLote.cdsProduto_Consumo_Setor.Next;
  end;
  RLMemo2.Lines.Clear;
  if trim(vObsMaterial) <> '' then
    RLMemo2.Lines.Text := 'Materiais..: ' + vObsMaterial;
end;

end.
