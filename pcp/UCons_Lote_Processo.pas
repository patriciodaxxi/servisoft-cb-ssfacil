unit UCons_Lote_Processo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadLote, StdCtrls,DB, dbXPress,
  SqlExpr, RzTabs, CurrEdit, Mask, ToolEdit, RxLookup, Menus, UCBase, ExtCtrls, NxCollection, NxEdit, DBVGrids, RzPanel,
  Grids, DBGrids, SMDBGrid, ComCtrls;

type
  TfrmCons_Lote_Processo = class(TForm)
    RzPageControl2: TRzPageControl;
    TS_Gerar: TRzTabSheet;
    TS_Consulta: TRzTabSheet;
    PopupMenu1: TPopupMenu;
    Lote1: TMenuItem;
    Panel2: TPanel;
    btnExcluir: TNxButton;
    pnlPesquisa: TPanel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    cbxOpcao: TNxComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cbxOpcaoData: TNxComboBox;
    btnConsultar: TNxButton;
    Shape2: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    NxLabel2: TNxLabel;
    CurrencyEdit3: TCurrencyEdit;
    btnImprimir: TNxButton;
    pnlCadastro: TPanel;
    GroupBox1: TGroupBox;
    SMDBGrid1: TSMDBGrid;
    FolhaResumo1: TMenuItem;
    SMDBGrid2: TSMDBGrid;
    TS_Auxiliar: TRzTabSheet;
    Panel3: TPanel;
    NxLabel1: TNxLabel;
    NxLabel8: TNxLabel;
    NxLabel9: TNxLabel;
    NxLabel10: TNxLabel;
    NxLabel11: TNxLabel;
    Shape1: TShape;
    Label3: TLabel;
    NxLabel12: TNxLabel;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    cbOpcaoTalaoAux: TNxComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    NxComboBox2: TNxComboBox;
    btnConsultar_Talao_Aux: TNxButton;
    CurrencyEdit6: TCurrencyEdit;
    SMDBGrid3: TSMDBGrid;
    NxLabel13: TNxLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    NxLabel14: TNxLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    VDBGrid2: TVDBGrid;
    Shape3: TShape;
    Label4: TLabel;
    btnImpTalao_Aux: TNxButton;
    Panel4: TPanel;
    btnGerarTalao_Aux: TNxButton;
    Label9: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    Edit4: TEdit;
    StaticText1: TStaticText;
    RzGroupBox1: TRzGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DateEdit6: TDateEdit;
    DateEdit7: TDateEdit;
    btnConsultar_Pedidos: TNxButton;
    Label14: TLabel;
    Edit5: TEdit;
    Label15: TLabel;
    DateEdit8: TDateEdit;
    Label16: TLabel;
    DateEdit9: TDateEdit;
    ckFaturado: TNxCheckBox;
    RzGroupBox2: TRzGroupBox;
    gbxCarimbo: TRzGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    DateEdit3: TDateEdit;
    Shape4: TShape;
    Label13: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ckDtEntrega: TCheckBox;
    ckAgrupar: TCheckBox;
    ckAgrupar_Pedido: TCheckBox;
    NxPanel1: TNxPanel;
    ImprimirOrdemProduo1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultar_PedidosClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure FolhaResumo1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadLote: TDMCadLote;

    procedure prc_Consultar;


  public
    { Public declarations }
  end;

var
  frmCons_Lote_Processo: TfrmCons_Lote_Processo;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao, USel_Produto, UMenu, UDMLoteImp;

{$R *.dfm}

procedure TfrmCons_Lote_Processo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCons_Lote_Processo.FormShow(Sender: TObject);
begin
  fDMCadLote := TDMCadLote.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
end;

procedure TfrmCons_Lote_Processo.btnConsultar_PedidosClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCons_Lote_Processo.prc_Consultar;
begin
end;


procedure TfrmCons_Lote_Processo.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
  end;
end;

procedure TfrmCons_Lote_Processo.prc_Limpar_Var;
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
  cbxOpcao.ItemIndex := 0;
  RxDBLookupCombo1.ClearValue;
end;

procedure TfrmCons_Lote_Processo.btnExcluirClick(Sender: TObject);
var
  vNumOrdemAux: String;
  sds: TSQLDataSet;
begin
  if MessageDlg('Deseja excluir os Lotes/Talões selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vNumOrdemAux := InputBox('Exclusão dos Lotes/Talões','Informe o número do controle: ', '');
  vNumOrdemAux := Monta_Numero(vNumOrdemAux,0);
  if (trim(vNumOrdemAux) = '') or (vNumOrdemAux = '0') then
    exit;

  fDMCadLote.qVerificaExclusao.Close;
  fDMCadLote.qVerificaExclusao.ParamByName('NUM_ORDEM').AsInteger := StrToInt(vNumOrdemAux);
  fDMCadLote.qVerificaExclusao.Open;
  if fDMCadLote.qVerificaExclusaoCOUNT.AsInteger > 0 then
  begin
    MessageDlg('*** Existe Lote/Talão baixado, exclusão cancelada!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadLote.qVerificaExclusao2.Close;
  fDMCadLote.qVerificaExclusao2.ParamByName('NUM_ORDEM').AsInteger := StrToInt(vNumOrdemAux);
  fDMCadLote.qVerificaExclusao2.Open;
  if fDMCadLote.qVerificaExclusao2Contador.AsInteger > 0 then
  begin
    MessageDlg('*** Existe Ordem de compra gerada para esta Ordem de Produção!', mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    sds.CommandText   := ' DELETE FROM LOTE  '
                     + ' WHERE NUM_ORDEM = ' + vNumOrdemAux;
    sds.ExecSQL();

    sds.CommandText   := ' DELETE FROM LOTE_MAT  '
                     + ' WHERE NUM_ORDEM = ' + vNumOrdemAux;
    sds.ExecSQL();

    MessageDlg('*** Nº Controle ' + vNumOrdemAux + ' excluído!', mtInformation, [mbok], 0);

  finally
    FreeAndNil(sds);
    btnConsultarClick(Sender);
  end;
end;

procedure TfrmCons_Lote_Processo.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Gerar then
    btnConsultar_PedidosClick(Sender)
  else
  if RzPageControl2.ActivePage = TS_Consulta then
  begin
    if CurrencyEdit3.AsInteger <= 0 then
    begin
      fDMCadLote.qProxima_Ordem.Close;
      fDMCadLote.qProxima_Ordem.Open;
      CurrencyEdit3.AsInteger := fDMCadLote.qProxima_OrdemNUM_ORDEM.AsInteger;
    end;
  end
  else
  if RzPageControl2.ActivePage = TS_Auxiliar then
  begin
    fDMCadLote.cdsAtelier.Close;
    fDMCadLote.cdsAtelier.Open;
    if not fDMCadLote.cdsSetor.Active then
      fDMCadLote.cdsSetor.Open;
  end;
end;

procedure TfrmCons_Lote_Processo.FolhaResumo1Click(Sender: TObject);
begin
  //prc_Limpar_Auxiliar;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  fDMCadLote.mTamanho.First;
  while not fDMCadLote.mTamanho.Eof do
    fDMCadLote.mTamanho.Delete;
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  prc_Le_mLote;
  {fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('L');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;}
  fRelLote_Res            := TfRelLote_Res.Create(Self);       
  fRelLote_Res.Tag        := 1;
  fRelLote_Res.fDMCadLote := fDMCadLote;
  fRelLote_Res.RLReport1.PreviewModal;
  fRelLote_Res.RLReport1.Free;
  FreeAndNil(fRelLote_Res);
end;

procedure TfrmCons_Lote_Processo.prc_Le_mLote;
begin
  fDMCadLote.mLote.First;
  while not fDMCadLote.mLote.Eof do
  begin
    if SMDBGrid2.SelectedRows.CurrentRowSelected then
    begin
      fDMCadLote.mLote.Edit;
      fDMCadLote.mLoteSelecionado.AsString := 'S';
      fDMCadLote.mLote.Post;
    end
    else
    begin
      fDMCadLote.mLote.Edit;
      fDMCadLote.mLoteSelecionado.AsString := 'N';
      fDMCadLote.mLote.Post;
    end;
    fDMCadLote.mLote.Next;
  end;
  fDMCadLote.mLote.First;
end;

procedure TfrmCons_Lote_Processo.ComboBox1Change(Sender: TObject);
begin
  Edit1.Visible := (ComboBox1.ItemIndex = 1);
end;

procedure TfrmCons_Lote_Processo.prc_Controle_Talao_Auxiliar;
var
  vQtdTalaoAux: Integer;
  vAux: Integer;
  vMultiplo: Integer;
  i: Integer;
  vResto: Integer;
  vAux2: Real;
  vQtdPares: Integer;
  vContadorAux: Integer;
begin
  fDMCadLote.mLoteAux.First;
  while not fDMCadLote.mLoteAux.Eof do
  begin
    fDMCadLote.mTalaoAux.First;
    while not fDMCadLote.mTalaoAux.Eof do
      fDMCadLote.mTalaoAux.Delete;
    fDMCadLote.mLoteAux.Delete;
  end;
  fDMCadLote.qProduto_Atelier.Close;
  fDMCadLote.qProduto_Atelier.ParamByName('ID').AsInteger := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
  fDMCadLote.qProduto_Atelier.Open;
  while not fDMCadLote.qProduto_Atelier.Eof do
  begin
    if (fDMCadLote.qProduto_AtelierLIMITE_POR_TALAO.AsString = 'S') and (fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0) then
    begin
      vQtdTalaoAux := fDMCadLote.cdsLoteQTD.AsInteger div fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger;
      if vQtdTalaoAux <= 0 then
      begin
        prc_Gravar_mLoteAux(fDMCadLote.cdsLoteQTD.AsInteger);
        vQtdTalaoAux := 1;
      end
      else
      begin
        for i := 1 to vQtdTalaoAux do
          prc_Gravar_mLoteAux(fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger);
        if fDMCadLote.cdsLoteQTD.AsInteger mod fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0 then
        begin
          vAux := fDMCadLote.cdsLoteQTD.AsInteger - (vQtdTalaoAux * fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger);
          prc_Gravar_mLoteAux(vAux);
        end;
      end;
    end
    else
      prc_Gravar_mLoteAux(fDMCadLote.cdsLoteQTD.AsInteger);
      //prc_Gravar_Talao_Aux(fDMCadLote.cdsLoteQTD.AsFloat);

    fDMCadLote.mLoteAux.First;
    while not fDMCadLote.mLoteAux.Eof do
    begin
      vAux2 := StrToCurr(FormatCurr('0.0000',(fDMCadLote.mLoteAuxQtd.AsInteger / fDMCadLote.cdsLoteQTD.AsInteger) * 100));
      fDMCadLote.mLoteAux.Edit;
      fDMCadLote.mLoteAuxPercentual.AsFloat := StrToCurr(FormatCurr('0.0000',vAux2));
      fDMCadLote.mLoteAux.Post;
      fDMCadLote.mLoteAux.Next;
    end;

    //Incluido para acumular os talões   08/01/2016
    fDMCadLote.mGerarAux.EmptyDataSet;
    fDMCadLote.cdsTalao.First;
    while not fDMCadLote.cdsTalao.Eof do
    begin
      if fDMCadLote.mGerarAux.Locate('Tamanho',fDMCadLote.cdsTalaoTAMANHO.AsString,[loCaseInsensitive]) then
        fDMCadLote.mGerarAux.Edit
      else
      begin
        fDMCadLote.mGerarAux.Insert;
        fDMCadLote.mGerarAuxTamanho.AsString := fDMCadLote.cdsTalaoTAMANHO.AsString;
        fDMCadLote.mGerarAuxQtd.AsInteger    := 0;
      end;
      fDMCadLote.mGerarAuxQtd.AsFloat := fDMCadLote.mGerarAuxQtd.AsFloat + fDMCadLote.cdsTalaoQTD.AsFloat;
      fDMCadLote.mGerarAux.Post;
      fDMCadLote.cdsTalao.Next;
    end;
    //*****************

    //08/01/2016  desativa e passado para o mGerarAux (acumulando os tamanhos)
    fDMCadLote.mGerarAux.First;
    while not fDMCadLote.mGerarAux.Eof do
    begin
      if (fDMCadLote.qProduto_AtelierLIMITE_POR_TALAO.AsString = 'S') and (fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0) then
      begin
        vQtdPares    := fDMCadLote.mGerarAuxQtd.AsInteger;
        vContadorAux := fDMCadLote.mLoteAux.RecordCount;
        fDMCadLote.mLoteAux.First;
        while not fDMCadLote.mLoteAux.Eof do
        begin
        //aqui ver  04/06/2015
          vContadorAux := vContadorAux - 1;
          vAux2 := StrToCurr(FormatCurr('0',fDMCadLote.mGerarAuxQtd.AsFloat * fDMCadLote.mLoteAuxPercentual.AsFloat / 100));
          if StrToCurr(FormatCurr('0',vAux2)) > vQtdPares then
            vAux2 := vQtdPares
          else
          if vContadorAux <= 0 then
            vAux2 := vQtdPares;
          if (fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2) > fDMCadLote.mLoteAuxQtd.AsInteger then
            vAux2 := fDMCadLote.mLoteAuxQtd.AsInteger - fDMCadLote.mLoteAuxQtdAux.AsInteger;
          if vaux2 > 0 then
          begin
            fDMCadLote.mLoteAux.Edit;
            fDMCadLote.mLoteAuxQtdAux.AsInteger := StrToInt(FormatFloat('0',fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2));
            fDMCadLote.mLoteAux.Post;
            prc_Gravar_mTalaoAux(vAux2,fDMCadLote.mLoteAuxID.AsInteger);
            vQtdPares := StrToInt(FormatCurr('0',vQtdPares - vAux2));
            if vQtdPares <= 0 then
              fDMCadLote.mLoteAux.Last;
          end;
          fDMCadLote.mLoteAux.Next;
        end;
      end
      else
        prc_Gravar_mTalaoAux(fDMCadLote.mGerarAuxQtd.AsInteger,1);
      fDMCadLote.mGerarAux.Next;
    end;

    {fDMCadLote.cdsTalao.First;
    while not fDMCadLote.cdsTalao.Eof do
    begin
      if (fDMCadLote.qProduto_AtelierLIMITE_POR_TALAO.AsString = 'S') and (fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0) then
      begin
        vQtdPares    := fDMCadLote.cdsTalaoQTD.AsInteger;
        vContadorAux := fDMCadLote.mLoteAux.RecordCount;
        fDMCadLote.mLoteAux.First;
        while not fDMCadLote.mLoteAux.Eof do
        begin
        //aqui ver  04/06/2015
          vContadorAux := vContadorAux - 1;
          vAux2 := StrToCurr(FormatCurr('0',fDMCadLote.cdsTalaoQTD.AsFloat * fDMCadLote.mLoteAuxPercentual.AsFloat / 100));
          if StrToCurr(FormatCurr('0',vAux2)) > vQtdPares then
            vAux2 := vQtdPares
          else
          if vContadorAux <= 0 then
            vAux2 := vQtdPares;
          if (fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2) > fDMCadLote.mLoteAuxQtd.AsInteger then
            vAux2 := fDMCadLote.mLoteAuxQtd.AsInteger - fDMCadLote.mLoteAuxQtdAux.AsInteger;
          if vaux2 > 0 then
          begin
            fDMCadLote.mLoteAux.Edit;
            fDMCadLote.mLoteAuxQtdAux.AsInteger := StrToInt(FormatFloat('0',fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2));
            fDMCadLote.mLoteAux.Post;
            prc_Gravar_mTalaoAux(vAux2,fDMCadLote.mLoteAuxID.AsInteger);
            vQtdPares := StrToInt(FormatCurr('0',vQtdPares - vAux2));
            if vQtdPares <= 0 then
              fDMCadLote.mLoteAux.Last;
          end;
          fDMCadLote.mLoteAux.Next;
        end;
      end
      else
        prc_Gravar_mTalaoAux(fDMCadLote.cdsTalaoQTD.AsInteger,1);
      fDMCadLote.cdsTalao.Next;
    end;}


    fDMCadLote.mLoteAux.First;
    while not fDMCadLote.mLoteAux.Eof do
    begin
      prc_Gravar_Talao_Aux(fDMCadLote.mLoteAuxQtd.AsInteger);
      fDMCadLote.mTalaoAux.First;
      while not fDMCadLote.mTalaoAux.Eof do
      begin
        prc_Gravar_Talao_Aux_Tam(fDMCadLote.mTalaoAuxQtd.AsInteger);
        fDMCadLote.mTalaoAux.Delete;
      end;
      fDMCadLote.mLoteAux.Delete;
    end;

    fDMCadLote.qProduto_Atelier.Next;
  end;
  
end;

procedure TfrmCons_Lote_Processo.prc_Gravar_Talao_Aux(Qtd: Real);
var
  vItemAux: Integer;
begin
  fDMCadLote.cdsTalao_Aux.Last;
  vItemAux := fDMCadLote.cdsTalao_AuxITEM.AsInteger;
  fDMCadLote.cdsTalao_Aux.Insert;
  fDMCadLote.cdsTalao_AuxID.AsInteger            := fDMCadLote.cdsLoteID.AsInteger;
  fDMCadLote.cdsTalao_AuxITEM.AsInteger          := vItemAux + 1;
  fDMCadLote.cdsTalao_AuxID_ATELIER.AsInteger    := fDMCadLote.qProduto_AtelierID_ATELIER.AsInteger;
  fDMCadLote.cdsTalao_AuxID_SETOR.AsInteger      := fDMCadLote.qProduto_AtelierID_SETOR.AsInteger;
  fDMCadLote.cdsTalao_AuxID_PRODUTO.AsInteger    := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
  fDMCadLote.cdsTalao_AuxID_COMBINACAO.AsInteger := fDMCadLote.cdsLoteID_COMBINACAO.AsInteger;
  fDMCadLote.cdsTalao_AuxQTD.AsFloat             := StrToFloat(FormatFloat('0.000',Qtd));
  if fDMCadLote.cdsTalao_AuxID_ATELIER.AsInteger > 0 then
    fDMCadLote.cdsTalao_AuxID_ATELIER_ORIG.AsInteger := fDMCadLote.cdsTalao_AuxID_ATELIER.AsInteger;
  fDMCadLote.cdsTalao_AuxSELECIONADO.AsString := 'S';
  fDMCadLote.cdsTalao_AuxDTPAGAMENTO.Clear;
  fDMCadLote.cdsTalao_Aux.Post;

  if fDMCadLote.cdsLoteTALAO_AUX_GERADO.AsString <> 'S' then
  begin
    fDMCadLote.cdsLote.Edit;
    fDMCadLote.cdsLoteTALAO_AUX_GERADO.AsString := 'S';
    fDMCadLote.cdsLote.Post;
  end;
end;

end.
