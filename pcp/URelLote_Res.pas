unit URelLote_Res;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadLote, RLBarcode, jpeg, UDMRel;

type
  TfRelLote_Res = class(TForm)
    RLReport1: TRLReport;
    RLBand13: TRLBand;
    RLDraw5: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraw7: TRLDraw;
    RLGroup1: TRLGroup;
    RLSubDetail5: TRLSubDetail;
    RLBand6: TRLBand;
    RLDraw13: TRLDraw;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand7: TRLBand;
    RLDBText7: TRLDBText;
    RLDraw9: TRLDraw;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    rldmaTam1: TRLDraw;
    maTam1: TRLLabel;
    rldmaQtd1: TRLDraw;
    maQtd1: TRLLabel;
    rldmaTam2: TRLDraw;
    maTam2: TRLLabel;
    rldmaQtd2: TRLDraw;
    maQtd2: TRLLabel;
    rldmaTam3: TRLDraw;
    maTam3: TRLLabel;
    rldmaQtd3: TRLDraw;
    maQtd3: TRLLabel;
    rldmaTam4: TRLDraw;
    maTam4: TRLLabel;
    rldmaQtd4: TRLDraw;
    maQtd4: TRLLabel;
    rldmaTam5: TRLDraw;
    maTam5: TRLLabel;
    rldmaQtd5: TRLDraw;
    maQtd5: TRLLabel;
    rldmaTam6: TRLDraw;
    maTam6: TRLLabel;
    rldmaQtd6: TRLDraw;
    maQtd6: TRLLabel;
    rldmaTam7: TRLDraw;
    maTam7: TRLLabel;
    rldmaQtd7: TRLDraw;
    maQtd7: TRLLabel;
    rldmaTam8: TRLDraw;
    maTam8: TRLLabel;
    rldmaQtd8: TRLDraw;
    maQtd8: TRLLabel;
    rldmaTam9: TRLDraw;
    maTam9: TRLLabel;
    rldmaQtd9: TRLDraw;
    maQtd9: TRLLabel;
    rldmaTam10: TRLDraw;
    maTam10: TRLLabel;
    rldmaQtd10: TRLDraw;
    maQtd10: TRLLabel;
    rldmaTam11: TRLDraw;
    maTam11: TRLLabel;
    rldmaQtd11: TRLDraw;
    maQtd11: TRLLabel;
    rldmaTam12: TRLDraw;
    maTam12: TRLLabel;
    rldmaQtd12: TRLDraw;
    maQtd12: TRLLabel;
    RLBand9: TRLBand;
    RLDraw11: TRLDraw;
    RLSubDetail4: TRLSubDetail;
    RLDetailGrid2: TRLDetailGrid;
    RLDraw3: TRLDraw;
    RLDBText3: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLDraw12: TRLDraw;
    RLLabel6: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDBText12: TRLDBText;
    rldtam1: TRLDraw;
    Tamanho1: TRLLabel;
    rldQtd1: TRLDraw;
    Qtd1: TRLLabel;
    rldtam2: TRLDraw;
    Tamanho2: TRLLabel;
    rldQtd2: TRLDraw;
    Qtd2: TRLLabel;
    rldtam3: TRLDraw;
    Tamanho3: TRLLabel;
    rldQtd3: TRLDraw;
    Qtd3: TRLLabel;
    rldtam4: TRLDraw;
    Tamanho4: TRLLabel;
    rldQtd4: TRLDraw;
    Qtd4: TRLLabel;
    rldtam5: TRLDraw;
    Tamanho5: TRLLabel;
    rldQtd5: TRLDraw;
    Qtd5: TRLLabel;
    rldtam6: TRLDraw;
    Tamanho6: TRLLabel;
    rldQtd6: TRLDraw;
    Qtd6: TRLLabel;
    rldTam7: TRLDraw;
    Tamanho7: TRLLabel;
    rldQtd7: TRLDraw;
    Qtd7: TRLLabel;
    rldTam8: TRLDraw;
    Tamanho8: TRLLabel;
    rldQtd8: TRLDraw;
    Qtd8: TRLLabel;
    rldTam9: TRLDraw;
    Tamanho9: TRLLabel;
    rldQtd9: TRLDraw;
    Qtd9: TRLLabel;
    rldTam10: TRLDraw;
    Tamanho10: TRLLabel;
    rldQtd10: TRLDraw;
    Qtd10: TRLLabel;
    rldTam11: TRLDraw;
    Tamanho11: TRLLabel;
    rldQtd11: TRLDraw;
    Qtd11: TRLLabel;
    rldTam12: TRLDraw;
    Tamanho12: TRLLabel;
    rldQtd12: TRLDraw;
    Qtd12: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw10: TRLDraw;
    Pos1: TRLLabel;
    Mat1: TRLLabel;
    Cor1: TRLMemo;
    Consumo1: TRLLabel;
    Pos2: TRLLabel;
    Mat2: TRLLabel;
    Cor2: TRLMemo;
    Consumo2: TRLLabel;
    Pos3: TRLLabel;
    Mat3: TRLLabel;
    Cor3: TRLMemo;
    Consumo3: TRLLabel;
    Pos4: TRLLabel;
    Mat4: TRLLabel;
    Cor4: TRLMemo;
    Consumo4: TRLLabel;
    Pos5: TRLLabel;
    Mat5: TRLLabel;
    Cor5: TRLMemo;
    Consumo5: TRLLabel;
    Pos6: TRLLabel;
    Mat6: TRLLabel;
    Cor6: TRLMemo;
    Consumo6: TRLLabel;
    Pos7: TRLLabel;
    Mat7: TRLLabel;
    Cor7: TRLMemo;
    Consumo7: TRLLabel;
    Pos8: TRLLabel;
    Mat8: TRLLabel;
    Cor8: TRLMemo;
    Consumo8: TRLLabel;
    RLBand10: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel17: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel8: TRLLabel;
    rlCarimbo: TRLLabel;
    rlOrdemProducao: TRLLabel;
    rlDataEntrega: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vQtd_Total: Integer;
    procedure prc_Gravar_Material_Acumulado(Qtd_Consumo, Qtd_Consumo_Unit: Real);
  public
    { Public declarations }
    fDMCadLote: TDMCadLote;
    vTipo_Rel: String; //L= Lote   T= Talão

  end;

var
  fRelLote_Res: TfRelLote_Res;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelLote_Res.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfRelLote_Res.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
  rlCarimbo.Caption := fDMCadLote.mLoteCarimbo.AsString;
  rlOrdemProducao.Caption := fDMCadLote.mLoteNum_Ordem.AsString;
  rlDataEntrega.Caption := fDMCadLote.mLoteDtEntrega.AsString;
end;

procedure TfRelLote_Res.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i: Integer;
  vCont: Integer;
  vFlag: Boolean;
  vAlt: Integer;
  vAux: Real;
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  if fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S' then
  begin
    fDMCadLote.cdsProduto_Consumo.Close;
    fDMCadLote.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDMCadLote.mLoteID_Produto.AsInteger;
    fDMCadLote.cdsProduto_Consumo.Open;
  end;
  vQtd_Total := vQtd_Total + fDMCadLote.mLoteQtd.AsInteger;

  {if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False;
  if PrintIt then
    PrintIt := (fDMCadLote.mTalao.RecordCount > 0);
  if not PrintIt then
    exit;}
  vCont := (12 - fDMCadLote.mTalao.RecordCount) + 1;
  for i := 1 to 12 do
  begin
    if i < vCont then
      vFlag := False
    else
      vFlag := True;
    TRLLabel(FindComponent('Tamanho'+IntToStr(i))).Visible := vFlag;
    TRLLabel(FindComponent('Qtd'+IntToStr(i))).Visible     := vFlag;
    TRLDraw(FindComponent('rldTam'+IntToStr(i))).Visible   := vFlag;
    TRLDraw(FindComponent('rldQtd'+IntToStr(i))).Visible   := vFlag;
  end;

  fDMCadLote.mTalao.First;
  while not fDMCadLote.mTalao.Eof do
  begin
    TRLLabel(FindComponent('Tamanho'+IntToStr(vCont))).Caption := fDMCadLote.mTalaoTamanho.AsString;
    TRLLabel(FindComponent('Qtd'+IntToStr(vCont))).Caption     := fDMCadLote.mTalaoQtd.AsString;
    vCont := vCont + 1;
    fDMCadLote.mTalao.Next;
  end;

  vAlt := 91;
  if ((fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S') and not(fDMCadLote.cdsProduto_Consumo.IsEmpty)) then
  begin
    vAlt := 107;
    vAlt := vAlt + (fDMCadLote.cdsProduto_Consumo.RecordCount * 15);
  end;
  if vAlt = 91 then
    exit;
  RLBand1.Height := vAlt;

  for i := 1 to 8 do
  begin
    TRLLabel(FindComponent('Pos'+IntToStr(i))).Visible     := False;
    TRLLabel(FindComponent('Mat'+IntToStr(i))).Visible     := False;
    TRLMemo(FindComponent('Cor'+IntToStr(i))).Visible      := False;
    TRLLabel(FindComponent('Consumo'+IntToStr(i))).Visible := False;
  end;

  i := 0;
  fDMCadLote.cdsProduto_Consumo.First;
  while not fDMCadLote.cdsProduto_Consumo.Eof do
  begin
    i := i + 1;
    if i > 8 then
      fDMCadLote.cdsProduto_Consumo.Last
    else
    begin
      TRLLabel(FindComponent('Pos'+IntToStr(i))).Caption    := fDMCadLote.cdsProduto_ConsumoNOME_POSICAO.AsString;
      TRLLabel(FindComponent('Pos'+IntToStr(i))).Visible    := True;
      TRLLabel(FindComponent('Mat'+IntToStr(i))).Caption    := fDMCadLote.cdsProduto_ConsumoREF_MATERIAL.AsString;
      TRLLabel(FindComponent('Mat'+IntToStr(i))).Visible    := True;
      TRLMemo(FindComponent('Cor'+IntToStr(i))).Lines.Text  := fDMCadLote.cdsProduto_ConsumoNOME_COR.AsString;
      TRLMemo(FindComponent('Cor'+IntToStr(i))).Visible     := True;
      if fDMCadLote.cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'T' then
        vAux := fDMCadLote.fnc_Somar_Consumo
      else
        vAux := StrToFloat(FormatFloat('0.00000',fDMCadLote.cdsProduto_ConsumoQTD_CONSUMO.AsFloat * fDMCadLote.mLoteQtd.AsFloat));
      TRLLabel(FindComponent('Consumo'+IntToStr(i))).Caption := FormatFloat('0.00##',vAux);
      TRLLabel(FindComponent('Consumo'+IntToStr(i))).Visible := True;
    end;
    prc_Gravar_Material_Acumulado(vAux,fDMCadLote.cdsProduto_ConsumoQTD_CONSUMO.AsFloat);
    fDMCadLote.cdsProduto_Consumo.Next;
  end;
end;

procedure TfRelLote_Res.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 // RLLabel16.Visible := (fDMCadLote.qParametrosIMP_NOME_POSICAO.AsString = 'S');
  //RLDraw5.Visible   := (fDMCadLote.qParametrosIMP_NOME_POSICAO.AsString = 'S');
end;

procedure TfRelLote_Res.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  PrintIt := ((fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S') and not(fDMCadLote.cdsProduto_Consumo.IsEmpty));
end;

procedure TfRelLote_Res.FormCreate(Sender: TObject);
begin
  fDMRel     := TDMRel.Create(Self);
  vQtd_Total := 0;
end;

procedure TfRelLote_Res.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelLote_Res.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
end;

procedure TfRelLote_Res.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
end;

procedure TfRelLote_Res.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  {if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;}
  PrintIt := (Tag = 1);
end;

procedure TfRelLote_Res.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i: Integer;
  vCont: Integer;
  vFlag: Boolean;
begin
  PrintIt := (Tag = 1);
  if not PrintIt then
    exit;

  if (fDMCadLote.mMaterial_Tam.RecordCount > 0) then
    RLBand7.Height := 73
  else
    RLBand7.Height := 22;

  vCont := (12 - fDMCadLote.mMaterial_Tam.RecordCount) + 1;
  for i := 1 to 12 do
  begin
    if i < vCont then
      vFlag := False
    else
      vFlag := True;
    TRLLabel(FindComponent('maTam'+IntToStr(i))).Visible := vFlag;
    TRLLabel(FindComponent('maQtd'+IntToStr(i))).Visible     := vFlag;
    TRLDraw(FindComponent('rldmaTam'+IntToStr(i))).Visible   := vFlag;
    TRLDraw(FindComponent('rldmaQtd'+IntToStr(i))).Visible   := vFlag;
  end;

  fDMCadLote.mMaterial_Tam.First;
  while not fDMCadLote.mMaterial_Tam.Eof do
  begin
    TRLLabel(FindComponent('maTam'+IntToStr(vCont))).Caption := fDMCadLote.mMaterial_TamTamanho.AsString;
    TRLLabel(FindComponent('maQtd'+IntToStr(vCont))).Caption     := fDMCadLote.mMaterial_TamQtd.AsString;
    vCont := vCont + 1;
    fDMCadLote.mMaterial_Tam.Next;
  end;
end;

procedure TfRelLote_Res.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  {if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;}
  PrintIt := (Tag = 1);
end;

procedure TfRelLote_Res.RLDetailGrid2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
end;

procedure TfRelLote_Res.prc_Gravar_Material_Acumulado(Qtd_Consumo, Qtd_Consumo_Unit: Real);
var
 vAux: Real;
begin
  if (fDMCadLote.cdsProduto_ConsumoIMP_AGRUPADO_MATERIAL.AsString <> 'S') then
    exit;
  if fDMCadLote.mMaterial.Locate('ID_Material',fDMCadLote.cdsProduto_ConsumoID_MATERIAL.AsInteger,[loCaseInsensitive]) then
    fDMCadLote.mMaterial.Edit
  else
  begin
    fDMCadLote.mMaterial.Insert;
    fDMCadLote.mMaterialID_Material.AsInteger   := fDMCadLote.cdsProduto_ConsumoID_MATERIAL.AsInteger;
    fDMCadLote.mMaterialNome_Material.AsString  := fDMCadLote.cdsProduto_ConsumoNOME_MATERIAL.AsString;
    fDMCadLote.mMaterialReferencia_Mat.AsString := fDMCadLote.cdsProduto_ConsumoREF_MATERIAL.AsString;

    if fDMCadLote.cdsProduto_ConsumoID_COR.AsInteger > 0 then
    begin
      //fDMCadLote.qCor.Close;
      //fDMCadLote.qCor.ParamByName('ID').AsInteger := fDMCadLote.cdsProduto_ConsumoID_COR.AsInteger;
      //fDMCadLote.qCor.Open;
      //fDMCadLote.mMaterialNome_Material.AsString  := fDMCadLote.mMaterialNome_Material.AsString + ' ' + fDMCadLote.qCorNOME.AsString;
      fDMCadLote.mMaterialNome_Material.AsString  := fDMCadLote.mMaterialNome_Material.AsString + ' ' + fDMCadLote.cdsProduto_ConsumoNOME_COR.AsString;
    end;
    fDMCadLote.mMaterialQtd_Consumo.AsFloat     := StrToFloat(FormatFloat('0.00000',0));
  end;
  fDMCadLote.mMaterialQtd_Consumo.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadLote.mMaterialQtd_Consumo.AsFloat + Qtd_Consumo));
  fDMCadLote.mMaterial.Post;

  if fDMCadLote.cdsProduto_ConsumoID_GRADE.AsInteger > 0 then
  begin
    fDMCadLote.mTalao.First;
    while not fDMCadLote.mTalao.Eof do
    begin
      if fDMCadLote.mMaterial_Tam.Locate('ID_Material;Tamanho',VarArrayOf([fDMCadLote.cdsProduto_ConsumoID_MATERIAL.AsInteger,fDMCadLote.mTalaoTamanho.AsString]),[locaseinsensitive]) then
        fDMCadLote.mMaterial_Tam.Edit
      else
      begin
        fDMCadLote.mMaterial_Tam.Insert;
        fDMCadLote.mMaterial_TamID_Material.AsInteger := fDMCadLote.cdsProduto_ConsumoID_MATERIAL.AsInteger;
        fDMCadLote.mMaterial_TamTamanho.AsString      := fDMCadLote.mTalaoTamanho.AsString;
      end;
      vAux := fDMCadLote.mTalaoQtd.AsFloat * Qtd_Consumo_Unit;
      if StrToFloat(FormatFloat('0.0000',Qtd_Consumo_Unit)) <= 0 then
        fDMCadLote.mMaterial_TamQtd.AsFloat := fDMCadLote.mMaterial_TamQtd.AsFloat + fDMCadLote.mTalaoQtd.AsFloat
      else
        fDMCadLote.mMaterial_TamQtd.AsFloat := fDMCadLote.mMaterial_TamQtd.AsFloat + vAux;
      fDMCadLote.mTalao.Next;
    end;
  end;
end;

procedure TfRelLote_Res.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := False;
  //RLLabel17.Caption := FormatFloat('0',vQtd_Total);
  //vQtd_Total        := 0;
end;

procedure TfRelLote_Res.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel18.Caption := FormatFloat('0',vQtd_Total);
  vQtd_Total        := 0;
end;

end.
