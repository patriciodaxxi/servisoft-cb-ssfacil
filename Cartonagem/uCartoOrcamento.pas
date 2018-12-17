unit uCartoOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, Mask, DBCtrls,
  db, Buttons, ExtCtrls, ToolEdit, Grids, DBGrids, SMDBGrid, ComCtrls, RxDBComb, uDmCartoOrcamento, RXDBCtrl, rsDbUtils,
  uDmConsulta, StrUtils;

type
  TfCartoOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label27: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label12: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    BitBtn3: TBitBtn;
    TabSheet3: TTabSheet;
    Shape1: TShape;
    Shape3: TShape;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    Shape2: TShape;
    Label31: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    BitBtn4: TBitBtn;
    DBEdit21: TDBEdit;
    BitBtn5: TBitBtn;
    Label29: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    TabSheet4: TTabSheet;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit9: TDBEdit;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    DBEdit17: TDBEdit;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    Label35: TLabel;
    DBEdit26: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    Label36: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit22: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit27: TDBEdit;
    Shape4: TShape;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label79: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    RxDBComboBox10: TRxDBComboBox;
    RxDBComboBox12: TRxDBComboBox;
    Label13: TLabel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label37: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label38: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo6Change(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn6Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    fDmConsulta: TDmConsulta;
    procedure posicionaMaterial(idMaterial: Integer);
    procedure posicionaFaca(idFaca: Integer);
    procedure incluirMaterial(vPosicao, vDescricao: String; vGrupo, vGrMin, vGrMax, vMaterial: Integer; vQtd: Real; vAcab: Boolean);
    procedure incluirProcesso(vPosicao, vObs: String; vProcID: Integer);
  public
    { Public declarations }
    fDmCartoOrcamento: TDmCartoOrcamento;
  end;

var
  fCartoOrcamento: TfCartoOrcamento;

implementation

uses uConsulta, uCartoOrcamentoItem;

{$R *.dfm}

procedure TfCartoOrcamento.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCartoOrcamento);
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,fDmCartoOrcamento.cdsCartoProcesso,Name);
  oDBUtils.ActiveDataSet(True,fDmCartoOrcamento.cdsFacaProcesso,Name);
  PageControl1.ActivePageIndex := 0;

  if RxDBLookupCombo2.KeyValue > 0 then
    DBEdit29.Text := RxDBLookupCombo2.Text;
  if RxDBLookupCombo3.KeyValue > 0 then
  begin
    DBEdit30.Text := RxDBLookupCombo3.Text;
    Label39.Caption := fDmCartoOrcamento.cdsProdutoNOME.AsString;
  end;
  if RxDBLookupCombo6.KeyValue > 0 then
    Label40.Caption := fDmCartoOrcamento.cdsCartoFTNOME.AsString;
end;

procedure TfCartoOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfCartoOrcamento.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmCartoOrcamento.cdsRepresentante.IndexFieldNames := 'NOME';
end;

procedure TfCartoOrcamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmCartoOrcamento.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfCartoOrcamento.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDmCartoOrcamento.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfCartoOrcamento.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDmCartoOrcamento.cdsFilial.IndexFieldNames := 'NOME';
end;

procedure TfCartoOrcamento.BitBtn2Click(Sender: TObject);
begin
  fDmCartoOrcamento.cdsCartoOrcamento.Cancel;
  Close;
end;

procedure TfCartoOrcamento.BitBtn1Click(Sender: TObject);
begin
  fDmCartoOrcamento.prc_Gravar;
  if fDmCartoOrcamento.cdsCartoOrcamento.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDmCartoOrcamento.vMsgErro, mtError, [mbno], 0);
    Exit;
  end;

  Close;
end;

procedure TfCartoOrcamento.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.KeyValue > 0 then
  begin
    fDmCartoOrcamento.cdsFaca.IndexFieldNames := 'ID';
    fDmCartoOrcamento.cdsFaca.FindKey([fDmCartoOrcamento.cdsProdutoFACA_ID.AsInteger]);
    fDmCartoOrcamento.cdsCartoOrcamentoFACA_ID.AsInteger := fDmCartoOrcamento.cdsFacaID.AsInteger;

    fDmCartoOrcamento.cdsCartoFT.IndexFieldNames := 'ID';
    fDmCartoOrcamento.cdsCartoFT.FindKey([fDmCartoOrcamento.cdsProdutoFICHA_TEC_ID.AsInteger]);
    fDmCartoOrcamento.cdsCartoOrcamentoFICHA_TECNICA_ID.AsInteger := fDmCartoOrcamento.cdsCartoFTID.AsInteger;
  end;

  if not fDmCartoOrcamento.cdsFacaTIPO.IsNull then
    case fDmCartoOrcamento.cdsFacaTIPO.AsInteger of
      0,1,3: begin
               RxDBComboBox9.Visible  := False;
               RxDBComboBox10.Visible := True;
             end;
          2: begin
               RxDBComboBox9.Visible  := True;
               RxDBComboBox10.Visible := False;
             end;
    end;

  DBEdit30.Text   := RxDBLookupCombo3.Text;
  Label39.Caption := '';
  if RxDBLookupCombo3.KeyValue > 0 then
    Label39.Caption := fDmCartoOrcamento.cdsProdutoNOME.AsString;
end;

procedure TfCartoOrcamento.BitBtn3Click(Sender: TObject);
var
  vQtdCor: Byte;
begin
  if MessageDlg('Esta ação irá excluir todos os materiais e '+ #13 +
                'processos já incluídos e não confirmados, '+ #13 +
                'deseja continuar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
    Exit;

  while not fDmCartoOrcamento.cdsCartoOrcamentoItem.Eof do
    if fDmCartoOrcamento.cdsCartoOrcamentoItemDEFINIDO.AsString = 'N' then
      fDmCartoOrcamento.cdsCartoOrcamentoItem.Delete
    else
      fDmCartoOrcamento.cdsCartoOrcamentoItem.Next;

  while not fDmCartoOrcamento.cdsCartoOrcamentoProc.Eof do
    if fDmCartoOrcamento.cdsCartoOrcamentoProcDEFINIDO.AsString = 'N' then
      fDmCartoOrcamento.cdsCartoOrcamentoProc.Delete
    else
      fDmCartoOrcamento.cdsCartoOrcamentoProc.Next;

  posicionaFaca(fDmCartoOrcamento.cdsCartoOrcamentoFACA_ID.AsInteger);

  PageControl1.ActivePageIndex := 1;
/////////////////////////////////////////////////Materiais principais
  if not fDmCartoOrcamento.cdsFichaTecnicaFDMATERIAL1.IsNull then
    incluirMaterial('FD','MATERIAL 1',fDmCartoOrcamento.cdsFichaTecnicaFDSUBGRUPO1.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDGRAM1_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDGRAM1_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDMATERIAL1.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);
  if not fDmCartoOrcamento.cdsFichaTecnicaFDMATERIAL2.IsNull then
    incluirMaterial('FD','MATERIAL 2',fDmCartoOrcamento.cdsFichaTecnicaFDSUBGRUPO2.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDGRAM2_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDGRAM2_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDMATERIAL2.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);
  if not fDmCartoOrcamento.cdsFichaTecnicaFDMATERIAL3.IsNull then
    incluirMaterial('FD','MATERIAL 3',fDmCartoOrcamento.cdsFichaTecnicaFDSUBGRUPO3.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDGRAM3_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDGRAM3_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaFDMATERIAL3.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);

  if not fDmCartoOrcamento.cdsFichaTecnicaTPMATERIAL1.IsNull then
    incluirMaterial('TP','MATERIAL 1',fDmCartoOrcamento.cdsFichaTecnicaTPSUBGRUPO1.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPGRAM1_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPGRAM1_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPMATERIAL1.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);
  if not fDmCartoOrcamento.cdsFichaTecnicaTPMATERIAL2.IsNull then
    incluirMaterial('TP','MATERIAL 2',fDmCartoOrcamento.cdsFichaTecnicaTPSUBGRUPO2.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPGRAM2_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPGRAM2_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPMATERIAL2.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);
  if not fDmCartoOrcamento.cdsFichaTecnicaTPMATERIAL3.IsNull then
    incluirMaterial('TP','MATERIAL 3',fDmCartoOrcamento.cdsFichaTecnicaTPSUBGRUPO3.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPGRAM3_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPGRAM3_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaTPMATERIAL3.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);
  if not fDmCartoOrcamento.cdsFichaTecnicaSPMATERIAL1.IsNull then
    incluirMaterial('SP','MATERIAL 1',fDmCartoOrcamento.cdsFichaTecnicaSPSUBGRUPO1.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPGRAM1_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPGRAM1_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPMATERIAL1.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);
  if not fDmCartoOrcamento.cdsFichaTecnicaSPMATERIAL2.IsNull then
    incluirMaterial('SP','MATERIAL 2',fDmCartoOrcamento.cdsFichaTecnicaSPSUBGRUPO2.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPGRAM2_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPGRAM2_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPMATERIAL2.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);
  if not fDmCartoOrcamento.cdsFichaTecnicaSPMATERIAL3.IsNull then
    incluirMaterial('SP','MATERIAL 3',fDmCartoOrcamento.cdsFichaTecnicaSPSUBGRUPO3.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPGRAM3_MIN.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPGRAM3_MAX.AsInteger,
                                   fDmCartoOrcamento.cdsFichaTecnicaSPMATERIAL3.AsInteger,
                                   fdmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat,False);

/////////////////////////////////////////////////Revestimentos
  if fDmCartoOrcamento.cdsFichaTecnicaFDREVEST_FT.AsInteger > 0 then
    incluirMaterial('FD','REVEST. FRENTE',0,0,0,
                         fDmCartoOrcamento.cdsFichaTecnicaFDREVEST_FT_MAT.AsInteger,
                         1,True);
  if fDmCartoOrcamento.cdsFichaTecnicaFDREVEST_VS.AsInteger > 0 then
    incluirMaterial('FD','REVEST. VERSO',0,0,0,
                         fDmCartoOrcamento.cdsFichaTecnicaFDREVEST_VS_MAT.AsInteger,
                         1,True);
  if not fDmCartoOrcamento.cdsFichaTecnicaTPREVEST_FT.IsNull then
    incluirMaterial('TP','REVEST. FRENTE',0,0,0,
                         fDmCartoOrcamento.cdsFichaTecnicaTPREVEST_FT_MAT.AsInteger,
                         1,True);
  if not fDmCartoOrcamento.cdsFichaTecnicaTPREVEST_FT.IsNull then
    incluirMaterial('TP','REVEST. VERSO',0,0,0,
                         fDmCartoOrcamento.cdsFichaTecnicaTPREVEST_VS_MAT.AsInteger,
                         1,True);
  if not fDmCartoOrcamento.cdsFichaTecnicaSPREVEST_FT.IsNull then
    incluirMaterial('SP','REVEST. FRENTE',0,0,0,
                         fDmCartoOrcamento.cdsFichaTecnicaSPREVEST_FT_MAT.AsInteger,
                         1,True);
  if not fDmCartoOrcamento.cdsFichaTecnicaSPREVEST_FT.IsNull then
    incluirMaterial('SP','REVEST. VERSO',0,0,0,
                         fDmCartoOrcamento.cdsFichaTecnicaSPREVEST_VS_MAT.AsInteger,
                         1,True);

/////////////////////////////////////////////////Acabamentos
  fDmCartoOrcamento.cdsCartoAcabamento.IndexFieldNames := 'ID';
  fDmCartoOrcamento.cdsCartoAcabamento.Open;
  fDmCartoOrcamento.cdsAcabamentoFD.Close;
  fDmCartoOrcamento.sdsAcabamentoFD.ParamByName('ID').AsInteger := fDmCartoOrcamento.cdsFichaTecnicaFDID.AsInteger;
  fDmCartoOrcamento.cdsAcabamentoFD.Open;
  while not fDmCartoOrcamento.cdsAcabamentoFD.EOF do
  begin
    fDmCartoOrcamento.cdsCartoAcabamento.FindKey([fDmCartoOrcamento.cdsAcabamentoFDACAB_ID.AsInteger]);
    incluirMaterial('FD',fDmCartoOrcamento.cdsCartoAcabamentoDESCRICAO.AsString,0,0,0,0,1,True);
    fDmCartoOrcamento.cdsAcabamentoFD.Next;
  end;

/////////////////////////////////////////////////Tintas


/////////////////////////////////////////////////Processos
  fDmCartoOrcamento.cdsMaquina.IndexFieldNames := 'PROCESSO_ID';
  fDmCartoOrcamento.cdsMaquina.Open;

  fDmCartoOrcamento.cdsFacaProcesso.First;
  while not fDmCartoOrcamento.cdsFacaProcesso.Eof do
  begin
    incluirProcesso(fDmCartoOrcamento.cdsFacaProcessoPOSICAO.AsString,
                    fDmCartoOrcamento.cdsFacaProcessoOBSERVACAO.AsString,
                    fDmCartoOrcamento.cdsFacaProcessoPROCESSO_ID.AsInteger);
    fDmCartoOrcamento.cdsFacaProcesso.Next;
  end;

  vQtdCor := 0;
  while not fDmCartoOrcamento.cdsCorFD.Eof do
  begin
    Inc(vQtdCor);
    incluirMaterial('FD','COR ' + IntToStr(vQtdCor),12,0,0,
                    fDmCartoOrcamento.cdsCorFDMATERIAL_ID.AsInteger,
                    fdmCartoOrcamento.cdsCorFDCONSUMO.AsFloat,False);
    fDmCartoOrcamento.cdsCorFD.Next;
  end;

  if vQtdCor > 0 then
  begin

  end;
end;

procedure TfCartoOrcamento.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsAcabado.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsAcabado;
    fConsulta.ShowModal;
    RxDBLookupCombo3.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfCartoOrcamento.BitBtn8Click(Sender: TObject);
begin
  if not fDmCartoOrcamento.cdsCartoOrcamentoItem.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDmCartoOrcamento.cdsCartoOrcamentoItem.Delete;
end;

procedure TfCartoOrcamento.posicionaMaterial(idMaterial: Integer);
begin
  fDmCartoOrcamento.cdsMaterial.Close;
  fDmCartoOrcamento.sdsMaterial.CommandText := fDmCartoOrcamento.ctMaterial + ' AND P.ID = ' + 
                                               QuotedStr(IntToStr(idMaterial));
  fDmCartoOrcamento.cdsMaterial.Open;
end;

procedure TfCartoOrcamento.incluirMaterial(vPosicao, vDescricao: String;
  vGrupo, vGrMin, vGrMax, vMaterial: Integer; vQtd: Real; vAcab: Boolean);
begin
  fDmCartoOrcamento.prc_Inserir_Item;
  fDmCartoOrcamento.cdsCartoOrcamentoItemPOSICAO.AsString   := vPosicao;
  fDmCartoOrcamento.cdsCartoOrcamentoItemDESCRICAO.AsString := vDescricao;
  fDmCartoOrcamento.cdsCartoOrcamentoItemQTD.AsFloat        := vQtd;
  fDmCartoOrcamento.cdsCartoOrcamentoItemMATERIAL_ID.AsInteger := vMaterial;
  fDmCartoOrcamento.cdscartoorcamentoItemDEFINIDO.AsString     := 'N';

  posicionaMaterial(fDmCartoOrcamento.cdsCartoOrcamentoItemMATERIAL_ID.AsInteger);
  fDmCartoOrcamento.cdsCartoOrcamentoItemMATERIAL.AsString  := fDmCartoOrcamento.cdsMaterialNOME.AsString;
  fDmCartoOrcamento.cdsCartoOrcamentoItemGR_MIN.AsInteger   := vGrMin;
  fDmCartoOrcamento.cdsCartoOrcamentoItemGR_MAX.AsInteger   := vGrMax;
  fDmCartoOrcamento.cdsCartoOrcamentoItemGRUPO_ID.AsInteger := vGrupo;
  if fDmCartoOrcamento.cdsMaterialPRECO_CALCULO.AsCurrency > 0 then
    fDmCartoOrcamento.cdsCartoOrcamentoItemVLR_UNIT.AsFloat := fDmCartoOrcamento.cdsMaterialPRECO_CALCULO.AsCurrency
  else
    fDmCartoOrcamento.cdsCartoOrcamentoItemVLR_UNIT.AsFloat := fDmCartoOrcamento.cdsMaterialPRECO_CUSTO.AsCurrency;
  fDmCartoOrcamento.cdsCartoOrcamentoItemVLR_TOTAL.AsFloat  := fDmCartoOrcamento.cdsCartoOrcamentoItemVLR_UNIT.AsFloat *
                                                               fDmCartoOrcamento.cdsCartoOrcamentoItemQTD.AsFloat;
/////////Materiais principais
  case AnsiIndexStr(fDmCartoOrcamento.cdsMaterialFORMATO.AsString,['F','B']) of
    0: ;
    1: fDmCartoOrcamento.cdsCartoOrcamentoItemBOBINA.AsString := fDmCartoOrcamento.cdsMaterialLARGURA.AsString;
  end;

// se materia1 é micro, não tem bobina, busca material micro "genérico", calcula pela áreal x preço de cálculo

  if not vAcab then
  begin
  case fDmCartoOrcamento.cdsFacaFD_TIPO_MAT.AsInteger of
    1: begin  //DUPLEX 0,5 + 1,2 altura + 1 largura
         fDmCartoOrcamento.cdsCartoOrcamentoItemCI1.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO1.AsFloat + 1.7;
         fDmCartoOrcamento.cdsCartoOrcamentoItemCI2.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO2.AsFloat + 1;
       end;
    2: begin//MICRO 1,5 p cada lado
         if vDescricao = 'MATERIAL 1' then
         begin
           fDmCartoOrcamento.cdsCartoOrcamentoItemCI1.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO1.AsFloat + 3;
           fDmCartoOrcamento.cdsCartoOrcamentoItemCI2.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO2.AsFloat + 3;
         end
         else
         begin
           fDmCartoOrcamento.cdsCartoOrcamentoItemCI1.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO1.AsFloat + 2;
           fDmCartoOrcamento.cdsCartoOrcamentoItemCI2.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO2.AsFloat + 2;
         end;
       end;
    3: begin//CARTÃO / CARTÃO 1,5 p cada lado
         fDmCartoOrcamento.cdsCartoOrcamentoItemCI1.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO1.AsFloat + 3;
         fDmCartoOrcamento.cdsCartoOrcamentoItemCI2.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO2.AsFloat + 3;
       end;
    4: begin//MICRO / ABAS INTERNAS
         fDmCartoOrcamento.cdsCartoOrcamentoItemCI1.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO1.AsFloat + 3;
         fDmCartoOrcamento.cdsCartoOrcamentoItemCI2.AsFloat := fDmCartoOrcamento.cdsFacaFD_DIMENSAO2.AsFloat + 3;
       end;
    end;
    fDmCartoOrcamento.cdsCartoOrcamentoItemCF1.AsFloat := fDmCartoOrcamento.cdsCartoOrcamentoItemCI1.AsFloat - 0.4;
    fDmCartoOrcamento.cdsCartoOrcamentoItemCF2.AsFloat := fDmCartoOrcamento.cdsCartoOrcamentoItemCI2.AsFloat - 0.4;

    if not fDmCartoOrcamento.cdsMaterialGRAMATURA.IsNull then
      fDmCartoOrcamento.cdsCartoOrcamentoItemGRAMATURA.AsInteger := fDmCartoOrcamento.cdsMaterialGRAMATURA.AsInteger;
  end;

//////////////
  fDmCartoOrcamento.cdsCartoOrcamentoItem.Post;
end;

procedure TfCartoOrcamento.RxDBLookupCombo2Change(Sender: TObject);
begin
  DBEdit29.Text := RxDBLookupCombo2.Text;
end;

procedure TfCartoOrcamento.ComboBox1Change(Sender: TObject);
begin
  fDmCartoOrcamento.cdsFaca.Close;
  case ComboBox1.ItemIndex of
    0: fDmCartoOrcamento.sdsFaca.CommandText := 'SELECT CF.* FROM CARTO_FACA CF WHERE SITUACAO = ''P''';
    1: fDmCartoOrcamento.sdsFaca.CommandText := 'SELECT CF.* FROM CARTO_FACA CF WHERE SITUACAO = ''O''';
  end;
  fDmCartoOrcamento.cdsFaca.Open;
end;

procedure TfCartoOrcamento.RxDBLookupCombo6Enter(Sender: TObject);
begin
  fDmCartoOrcamento.cdsCartoFT.IndexFieldNames := 'ID';
end;

procedure TfCartoOrcamento.RxDBLookupCombo6Change(Sender: TObject);
begin
  Label40.Caption := '';
  if RxDBLookupCombo6.KeyValue > 0 then
    Label40.Caption := fDmCartoOrcamento.cdsCartoFTNOME.AsString;
end;

procedure TfCartoOrcamento.incluirProcesso(vPosicao, vObs: String; vProcID: Integer);
var
  vItem: Integer;
begin
  fDmCartoOrcamento.cdsCartoOrcamentoProc.Last;
  vItem := fDmCartoOrcamento.cdsCartoOrcamentoProcID.AsInteger + 1;

  fDmCartoOrcamento.cdsCartoOrcamentoProc.Insert;
  fDmCartoOrcamento.cdsCartoOrcamentoProcORCAMENTO_ID.AsInteger := fDmCartoOrcamento.cdsCartoOrcamentoID.AsInteger;
  fDmCartoOrcamento.cdsCartoOrcamentoProcID.AsInteger           := vItem;
  fDmCartoOrcamento.cdsCartoOrcamentoProcDEFINIDO.AsString      := 'N';
  fDmCartoOrcamento.cdsCartoOrcamentoProcOBS.AsString           := vObs;
  fDmCartoOrcamento.cdsCartoOrcamentoProcPOSICAO.AsString       := vPosicao;

  fDmCartoOrcamento.cdsCartoProcesso.IndexFieldNames := 'ID';
  fDmCartoOrcamento.cdsCartoProcesso.FindKey([vProcID]);
  fDmCartoOrcamento.cdsCartoOrcamentoProcPROCESSO_ID.AsInteger := vProcID;
  fDmCartoOrcamento.cdsCartoOrcamentoProcPROCESSO.AsString     := fDmCartoOrcamento.cdsCartoProcessoDESCRICAO.AsString;

  fDmCartoOrcamento.cdsCartoOrcamentoProcQTD.AsInteger          := fDmCartoOrcamento.cdsCartoOrcamentoQTD1.AsInteger;
  fDmCartoOrcamento.cdsCartoOrcamentoProcVLR_UNIT.AsCurrency    := 0.1;
  fDmCartoOrcamento.cdsCartoOrcamentoProcVLR_TOTAL.AsCurrency   := fDmCartoOrcamento.cdsCartoOrcamentoProcQTD.AsInteger *
                                                                   fDmCartoOrcamento.cdsCartoOrcamentoProcVLR_UNIT.AsCurrency;

  if fDmCartoOrcamento.cdsMaquina.FindKey([vProcID]) then
  begin
    fDmCartoOrcamento.cdsCartoOrcamentoProcMAQUINA_ID.AsInteger := fDmCartoOrcamento.cdsMaquinaID.AsInteger;
    fDmCartoOrcamento.cdsCartoOrcamentoProcTEMPO_SETUP.AsFloat  := fDmCartoOrcamento.cdsMaquinaTEMPO_MINIMO.AsFloat;
    fDmCartoOrcamento.cdsCartoOrcamentoProcTEMPO_PROD.AsFloat   := fDmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat /
                                                                   fDmCartoOrcamento.cdsMaquinaPROD_MEDIA.AsFloat * 60;
    fDmCartoOrcamento.cdsCartoOrcamentoProcVLR_TOTAL.AsCurrency := fDmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat /
                                                                   fDmCartoOrcamento.cdsMaquinaPROD_MEDIA.AsFloat *
                                                                   fDmCartoOrcamento.cdsMaquinaVALORHORAEFETIVO.AsFloat +
                                                                   (fDmCartoOrcamento.cdsCartoOrcamentoProcTEMPO_SETUP.AsFloat /
                                                                   60 *
                                                                   fDmCartoOrcamento.cdsMaquinaVALORHORAEFETIVO.AsFloat);
    fDmCartoOrcamento.cdsCartoOrcamentoProcVLR_UNIT.AsCurrency  := fDmCartoOrcamento.cdsCartoOrcamentoProcVLR_TOTAL.AsCurrency /
                                                                   fDmCartoOrcamento.cdsCartoOrcamentoQTD1.AsFloat;
  end;

  fDmCartoOrcamento.cdsCartoOrcamentoProc.Post;
end;

procedure TfCartoOrcamento.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fdmCartoOrcamento.cdsFaca.IndexFieldNames := 'NOME';
end;

procedure TfCartoOrcamento.posicionaFaca(idFaca: Integer);
begin
  fDmCartoOrcamento.cdsFaca.IndexFieldNames := 'ID';
  fDmCartoOrcamento.cdsFaca.FindKey([idFaca]);
end;

procedure TfCartoOrcamento.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmCartoOrcamento.cdsCartoOrcamentoItemDEFINIDO.AsString = 'N' then
    AFont.Color := clRed;
end;

procedure TfCartoOrcamento.BitBtn6Click(Sender: TObject);
begin
  fCartoOrcamentoItem := TfCartoOrcamentoItem.Create(Self);
  fCartoOrcamentoItem.fDmCartoOrcamento     := fDmCartoOrcamento;
  fDmCartoOrcamento.sdsMaterial.CommandText := fDmCartoOrcamento.ctMaterial;
  fDmCartoOrcamento.cdsMaterial.Open;
  fDmCartoOrcamento.cdsCartoOrcamentoItem.Insert;
  fCartoOrcamentoItem.ShowModal;
end;

procedure TfCartoOrcamento.SMDBGrid1DblClick(Sender: TObject);
begin
  fCartoOrcamentoItem := TfCartoOrcamentoItem.Create(Self);
  fCartoOrcamentoItem.fDmCartoOrcamento     := fDmCartoOrcamento;
  fDmCartoOrcamento.cdsMaterial.Close;
  fDmCartoOrcamento.sdsMaterial.CommandText := fDmCartoOrcamento.ctMaterial + ' AND ID_GRUPO = ' +
                                               fDmCartoOrcamento.cdsCartoOrcamentoItemGRUPO_ID.AsString;
  fDmCartoOrcamento.cdsMaterial.Open;
  fCartoOrcamentoItem.ShowModal;
end;

end.
