unit UCadVale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDmCadVale, DB, USenha,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, UCadVale_Itens, USel_Pedido, DateUtils, UCBase,
  UEscolhe_Filial, NxCollection, uDmEstoque, RXDBCtrl, RxLookup, RxDBComb, DBXpress, Menus;

type
  TfrmCadVale = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    StaticText1: TStaticText;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    pnlCliente: TPanel;
    Panel11: TPanel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    btnCopiarPedido2: TNxButton;
    UCControls1: TUCControls;
    Panel4: TPanel;
    Shape5: TShape;
    Label30: TLabel;
    Shape6: TShape;
    Label31: TLabel;
    Label3: TLabel;
    cbFaturado: TRxDBComboBox;
    TabSheet1: TRzTabSheet;
    RzTabSheet2: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    DBEdit2: TDBEdit;
    NxButton4: TNxButton;
    RzTabSheet3: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    Panel3: TPanel;
    Label7: TLabel;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    DBEdit3: TDBEdit;
    NxButton8: TNxButton;
    RzTabSheet4: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
    Panel5: TPanel;
    Label8: TLabel;
    NxButton9: TNxButton;
    NxButton10: TNxButton;
    NxButton11: TNxButton;
    DBEdit4: TDBEdit;
    NxButton12: TNxButton;
    pnlServico: TPanel;
    NxButton13: TNxButton;
    NxButton14: TNxButton;
    NxButton15: TNxButton;
    SMDBGrid6: TSMDBGrid;
    pnlLocalEstoque: TPanel;
    Label94: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Panel6: TPanel;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label80: TLabel;
    DBEdit52: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    ComboBox1: TComboBox;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    Valenomostrarodesconto1: TMenuItem;
    Vale1: TMenuItem;
    ListadosVales1: TMenuItem;
    Label14: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label15: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnCopiarPedido2Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton13Click(Sender: TObject);
    procedure NxButton14Click(Sender: TObject);
    procedure NxButton15Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Vale1Click(Sender: TObject);
    procedure Valenomostrarodesconto1Click(Sender: TObject);
    procedure ListadosVales1Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vDescOpcao_Rel: String;
    fDmCadVale: TDmCadVale;
    fDmEstoque: TDmEstoque;
    ffrmCadVale_Itens: TfrmCadVale_Itens;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmSel_Pedido: TfrmSel_Pedido;
    ffrmSenha: TfrmSenha;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_Vale;
    procedure prc_Habilitar_CamposNota;
    procedure prc_Abrir_Pessoa(Tipo: String); //E=Fornecedor  S=Cliente
    procedure prc_Posiciona_imp;
    procedure prc_Imp_Vale(ComDesconto: String);
    procedure prc_Monta_Cab;

    function fnc_Vale_Faturado(Tipo: String): Boolean; //E=Ecluir  A=Alterar
    function fnc_senha: Boolean;
  public
    { Public declarations }
  end;

var
  frmCadVale: TfrmCadVale;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, URelVale, UCadVale_Servicos,
  UConsVale_Fat;

{$R *.dfm}

procedure TfrmCadVale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadVale.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_Vale;
  if fDmCadVale.cdsVale.IsEmpty then
    exit;
  if fnc_Vale_Faturado('E') then
    exit;

  if not fnc_senha then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadVale.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadVale.prc_Excluir_Registro;
begin
  fDmCadVale.prc_Excluir;
end;

procedure TfrmCadVale.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Estoque: Integer;
  ID: TTransactionDesc;
  vQtdAux, vVlrAux: Real;
  vUnidade: String;
begin
  fDmCadVale.prc_Calcular_Total;

  fDmCadVale.prc_Gravar;
  vIDAux := fDmCadVale.cdsValeID.AsInteger;
  if fDmCadVale.cdsVale.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDmCadVale.vMSGErro, mtError, [mbOk], 0);
    exit;
  end;

  fDmCadVale.mPedidoAux.EmptyDataSet;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDmCadVale.cdsValeItens.First;
    while not fDmCadVale.cdsValeItens.Eof do
    begin
      vID_Estoque := 0;
      if fDmCadVale.cdsValeItensGERAR_ESTOQUE.AsString = 'S' then
      begin
        vQtdAux  := StrToFloat(FormatFloat('0.0000',fDmCadVale.cdsValeItensQTD.AsFloat));
        vVlrAux  := StrToFloat(FormatFloat('0.00000',fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat));
        vUnidade := fDmCadVale.cdsValeItensUNIDADE.AsString;
        if (fDmCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDmCadVale.cdsValeItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0) then
        begin
          if fDmCadVale.cdsValeItensID_PRODUTO.AsInteger <> fDmCadVale.cdsProdutoID.AsInteger then
            fDmCadVale.cdsProduto.Locate('ID',fDmCadVale.cdsValeItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
          vUnidade := fDmCadVale.cdsProdutoUNIDADE.AsString;
          vQtdAux  := fDmCadVale.cdsValeItensQTD_LANCAR_ESTOQUE.AsFloat;
          vVlrAux  := StrToFloat(FormatFloat('0.0000',fDmCadVale.cdsProdutoPRECO_CUSTO.AsFloat));
        end;

        vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDmCadVale.cdsValeItensID_MOVESTOQUE.AsInteger,
                                                     fDmCadVale.cdsValeFILIAL.AsInteger,
                                                     fDmCadVale.cdsValeID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                                     fDmCadVale.cdsValeItensID_PRODUTO.AsInteger,
                                                     fDmCadVale.cdsValeNUM_VALE.AsInteger,fDmCadVale.cdsValeID_CLIENTE.AsInteger,0,
                                                     fDmCadVale.cdsValeID.AsInteger,0,
                                                     'S','VAL',
                                                     //fDmCadVale.cdsValeItensUNIDADE.AsString,  11/09/2015
                                                     //fDmCadVale.cdsValeItensUNIDADE.AsString,'',
                                                     vUnidade,
                                                     vUnidade,'',
                                                     fDmCadVale.cdsValeItensTAMANHO.AsString,
                                                     fDmCadVale.cdsValeDTEMISSAO.AsDateTime,
                                                     //fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat, 11/09/2015
                                                     vVlrAux,
                                                     //fDmCadVale.cdsValeItensQTD.AsFloat,0,0,0,0,0, 11/09/2015
                                                     vQtdAux,0,0,0,0,0,
                                                     //fDmCadVale.cdsValeItensQTD.AsFloat,  11/09/2015
                                                     vQtdAux,
                                                     //fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat,0); 11/09/2015
                                                     vVlrAux,0,0,'',0,'','N',vVlrAux); //ver aqui sobre Lote Controle  04/11/2015
                                                     //aqui a cor ainda é com ZERO 
      end
      else
      if fDmCadVale.cdsValeItensID_MOVESTOQUE.AsInteger > 0 then
        fDmEstoque.prc_Excluir_EstoqueMov(fDmCadVale.cdsValeItensID_MOVESTOQUE.AsInteger);

      fDmCadVale.cdsValeItens.Edit;
      fDmCadVale.cdsValeItensID_MOVESTOQUE.AsInteger := vID_Estoque;
      if fDmCadVale.cdsValeFATURADO.AsString = 'S' then
        fDmCadVale.cdsValeItensFATURADO.AsString := 'S';
      fDmCadVale.cdsValeItens.Post;

      //Atualiza Status do pedido
      if (fDmCadVale.cdsValeItensID_PEDIDO.AsInteger > 0) and
         not(fDmCadVale.mPedidoAux.FindKey([fDmCadVale.cdsValeItensID_PEDIDO.AsInteger])) then
      begin
        fDmCadVale.mPedidoAux.Insert;
        fDmCadVale.mPedidoAuxID_Pedido.AsInteger := fDmCadVale.cdsValeItensID_PEDIDO.AsInteger;
        fDmCadVale.mPedidoAux.Post;
      end;
      //****************

      fDmCadVale.cdsValeItens.Next;
    end;

    //Atualiza Status do pedido
    fDmCadVale.mPedidoAux.First;
    while not fDmCadVale.mPedidoAux.Eof do
    begin
      fDmCadVale.sdsPrc_Atualiza_Status_Ped.Close;
      fDmCadVale.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDmCadVale.mPedidoAuxID_Pedido.AsInteger;
      fDmCadVale.sdsPrc_Atualiza_Status_Ped.ExecSQL;
      fDmCadVale.mPedidoAux.Next;
    end;

    fDmCadVale.cdsVale.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o estoque: ' + #13 + e.Message);
    end;
  end;

  //TS_Consulta.TabEnabled := True;
  prc_Habilitar_CamposNota;

  prc_Consultar(vIDAux);
  prc_Posiciona_Vale;
end;

procedure TfrmCadVale.prc_Inserir_Registro;
var
  vNumValeAux: Integer;
  vID_LocalAux: Integer;
begin
  vID_LocalAux := fnc_Verificar_Local(fDmCadVale.qParametrosUSA_LOCAL_ESTOQUE.AsString);
  if vID_LocalAux <= 0 then
    exit;

  if fDmCadVale.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDmCadVale.cdsFilial.Last;
    vFilial      := fDmCadVale.cdsFilialID.AsInteger;
    vFilial_Nome := fDmCadVale.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDmCadVale.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  fDmCadVale.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;
  fDMCadVale.cdsValeID_Local_Estoque.AsInteger := vID_LocalAux;
  if fDmCadVale.cdsVale.State in [dsBrowse] then
    exit;
  fDmCadVale.cdsValeFILIAL.AsInteger  := vFilial;
  prc_Habilitar_CamposNota;
  RzPageControl1.ActivePage := TS_Cadastro;
  DBDateEdit1.SetFocus;
  vTipoNotaAnt := 'S';
  
  //Calcular o próximo número //passado para a gravação final
{  fDmCadVale.qProximoVale.Close;
  fDmCadVale.qProximoVale.ParamByName('FILIAL').AsInteger :=  fDmCadVale.cdsValeFILIAL.AsInteger;
  fDmCadVale.qProximoVale.Open;
  vNumValeAux := fDmCadVale.qProximoValeNUM_VALE.AsInteger + 1;
  fDmCadVale.cdsValeNUM_VALE.AsInteger := vNumValeAux;}
  prc_Abrir_Pessoa('S');

end;

procedure TfrmCadVale.FormShow(Sender: TObject);
var
  vData: TDateTime;
  i: Integer;
begin
  fDmCadVale := TDMCadVale.Create(Self);
  fDMEstoque := TDMEstoque.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDmCadVale);

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'QTD_LANCAR_ESTOQUE') then
      SMDBGrid2.Columns[i].Visible := (fDmCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  end;
  pnlLocalEstoque.Visible := (fDmCadVale.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  
  vData          := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date := vData;
  prc_Consultar(0);
end;

procedure TfrmCadVale.prc_Consultar(ID: Integer);
begin
  fDmCadVale.cdsValeCons.Close;
  fDmCadVale.sdsValeCons.CommandText := fDmCadVale.ctConsulta;
  if ID > 0 then
    fDmCadVale.sdsValeCons.CommandText := fDmCadVale.sdsValeCons.CommandText +
                                          ' AND V.ID = ' + IntToStr(ID);
  if not(RxDBLookupCombo1.Text = '') then
    fDmCadVale.sdsValeCons.CommandText := fDmCadVale.sdsValeCons.CommandText +
                                          ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if DateEdit1.Date > 10 then
    fDmCadVale.sdsValeCons.CommandText := fDmCadVale.sdsValeCons.CommandText +
                                          ' AND V.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDmCadVale.sdsValeCons.CommandText := fDmCadVale.sdsValeCons.CommandText +
                                          ' AND V.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case ComboBox1.ItemIndex of
    0: fDmCadVale.sdsValeCons.CommandText := fDmCadVale.sdsValeCons.CommandText + ' AND V.FATURADO <> ' + QuotedStr('S');
    1: fDmCadVale.sdsValeCons.CommandText := fDmCadVale.sdsValeCons.CommandText + ' AND V.FATURADO <> ' + QuotedStr('N');
  end;
  fDmCadVale.cdsValeCons.Open;
end;

procedure TfrmCadVale.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadVale.btnCancelarClick(Sender: TObject);
begin
  if (fDmCadVale.cdsVale.State in [dsBrowse]) or not(fDmCadVale.cdsVale.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDmCadVale.cdsVale.CancelUpdates;

  prc_Habilitar_CamposNota;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadVale.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadVale.btnAlterarClick(Sender: TObject);
begin
  if (fDmCadVale.cdsVale.IsEmpty) or not(fDmCadVale.cdsVale.Active) or (fDmCadVale.cdsValeID.AsInteger < 1) then
    exit;
  if fnc_Vale_Faturado('A') then
    exit;
  fDmCadVale.cdsVale.Edit;
  prc_Habilitar_CamposNota;
end;

procedure TfrmCadVale.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadVale.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCadVale);
end;

procedure TfrmCadVale.prc_Posiciona_Vale;
begin
  fDmCadVale.prc_Localizar(fDmCadVale.cdsValeConsID.AsInteger);
  fDmCadVale.cdsValeItens.Close;
  fDmCadVale.cdsValeItens.Open;
  vFilial      := fDmCadVale.cdsValeFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDmCadVale.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDmCadVale.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadVale.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDmCadVale.cdsValeItens.Active) and (fDmCadVale.cdsValeItens.IsEmpty) or (fDmCadVale.cdsValeItensITEM.AsInteger < 1) then
    exit;
  if fDmCadVale.cdsValeItensFATURADO.AsString <> 'N' then
  begin
    MessageDlg('*** Item já faturado ', mtError, [mbOk], 0);
    exit;
  end;

  if not fnc_senha then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDmCadVale.prc_Excluir_Item;
  fDmCadVale.prc_Calcular_Total;
end;

procedure TfrmCadVale.btnInserir_ItensClick(Sender: TObject);
begin
  fDmCadVale.prc_Inserir_Itens;

  ffrmCadVale_Itens := TfrmCadVale_Itens.Create(self);
  ffrmCadVale_Itens.fDmCadVale := fDmCadVale;
  ffrmCadVale_Itens.fDMEstoque := fDMEstoque;
  ffrmCadVale_Itens.ShowModal;
  FreeAndNil(ffrmCadVale_Itens);

  fDmCadVale.prc_Calcular_Total;
end;

procedure TfrmCadVale.RzPageControl1Change(Sender: TObject);
begin
  if not(fDmCadVale.cdsVale.State in [dsEdit, dsInsert]) then
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDmCadVale.cdsValeCons.Active) or (fDmCadVale.cdsValeCons.IsEmpty) or
        (fDmCadVale.cdsValeConsID.AsInteger <= 0) then
        Exit;
      prc_Abrir_Pessoa('S');
      prc_Posiciona_Vale;
    end;
end;

procedure TfrmCadVale.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDmCadVale.cdsValeItens.IsEmpty) or (fDmCadVale.cdsValeItensITEM.AsInteger <= 0) then
    Exit;
  if fDmCadVale.cdsValeItensFATURADO.AsString <> 'N' then
  begin
    MessageDlg('*** Item já faturado ', mtError, [mbOk], 0);
    exit;
  end;

  fDmCadVale.cdsValeItens.Edit;

  ffrmCadVale_Itens := TfrmCadVale_Itens.Create(self);
  ffrmCadVale_Itens.fDmCadVale := fDmCadVale;
  ffrmCadVale_Itens.fDMEstoque := fDMEstoque;
  ffrmCadVale_Itens.ShowModal;
  FreeAndNil(ffrmCadVale_Itens);
  fDmCadVale.prc_Calcular_Total;
end;

procedure TfrmCadVale.prc_Habilitar_CamposNota;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);

  pnlItem.Enabled      := not(pnlItem.Enabled);
  pnlServico.Enabled   := not(pnlServico.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  pnlCadastro.Enabled  := not(pnlCadastro.Enabled);
end;

procedure TfrmCadVale.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDmCadVale.cdsVale);
end;

procedure TfrmCadVale.prc_Abrir_Pessoa(Tipo: String);
begin
  fDmCadVale.cdsPessoa.Close;
  fDmCadVale.sdsPessoa.CommandText := fDmCadVale.ctPessoa;
  if Tipo = 'S' then
    fDmCadVale.sdsPessoa.CommandText := fDmCadVale.sdsPessoa.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S')
  else
    fDmCadVale.sdsPessoa.CommandText := fDmCadVale.sdsPessoa.CommandText + ' AND TP_FORNECEDOR = ' + QuotedStr('S');
  fDmCadVale.cdsPessoa.Open;
end;

procedure TfrmCadVale.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
     DateEdit1.SetFocus;
end;

procedure TfrmCadVale.btnCopiarPedido2Click(Sender: TObject);
begin
  if fDMCadVale.cdsValeID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  ffrmCadVale_Itens := TfrmCadVale_Itens.Create(self);
  ffrmCadVale_Itens.fDMCadVale := fDMCadVale;

  ffrmSel_Pedido := TfrmSel_Pedido.Create(self);
  ffrmSel_Pedido.vTipo        := 'VAL';
  ffrmSel_Pedido.vTipo_RegPed := 'P';
  if fDMCadVale.cdsValeID_CLIENTE.AsInteger > 0 then
    ffrmSel_Pedido.vCodCliente := fDMCadVale.cdsValeID_CLIENTE.AsInteger
  else
    ffrmSel_Pedido.vCodCliente := 0;
  ffrmSel_Pedido.fDMCadVale        := fDMCadVale;
  ffrmSel_Pedido.ffrmCadVale_Itens := ffrmCadVale_Itens;
  ffrmSel_Pedido.ShowModal;

  FreeAndNil(frmSel_Pedido);
  FreeAndNil(ffrmCadVale_Itens);
  fDmCadVale.prc_Calcular_Total;
end;

procedure TfrmCadVale.prc_Posiciona_imp;
begin
  fDMCadVale.cdsFilial.Locate('ID',fDMCadVale.cdsValeConsFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadVale.cdsValeImp.Close;
  fDMCadVale.sdsValeImp.ParamByName('ID').AsInteger := fDMCadVale.cdsValeConsID.AsInteger;
  fDMCadVale.cdsValeImp.Open;

  fDMCadVale.cdsValeImp_Itens.Close;
  fDMCadVale.sdsValeImp_Itens.ParamByName('ID').AsInteger := fDMCadVale.cdsValeConsID.AsInteger;
  fDMCadVale.cdsValeImp_Itens.Open;

  fDMCadVale.cdsValeImp_Servico.Close;
  fDMCadVale.sdsValeImp_Servico.ParamByName('ID').AsInteger := fDMCadVale.cdsValeConsID.AsInteger;
  fDMCadVale.cdsValeImp_Servico.Open;

  vEmail_Assunto_Fortes := 'Vale Nº ' + fDMCadVale.cdsValeImpNUM_Vale.AsString;
  vEmail_Fortes_Corpo   := 'Em anexo Vale Nº ' + fDMCadVale.cdsValeImpNUM_Vale.AsString + #13;
end;

procedure TfrmCadVale.DBEdit1Exit(Sender: TObject);
begin
  if fDmCadVale.fnc_Existe_Num_Vale then
  begin
    MessageDlg('*** Nº do vale já lançado!', mtError, [mbOk], 0);
    DBEdit1.SetFocus;
    exit;
  end;
end;

function TfrmCadVale.fnc_Vale_Faturado(Tipo: String): Boolean; //E=Ecluir  A=Alterar
var
  vMSGAux: String;
begin
  vMSGAux := '';
  if fDmCadVale.cdsValeFATURADO.AsString = 'S' then
    vMSGAux := '*** Vale já esta faturado!';
  if (Tipo = 'E') and (fDmCadVale.cdsValeFATURADO.AsString = 'P') then
    vMSGAux := '*** Vale faturado parcialmente!';
  if trim(vMSGAux) = '' then
    Result := False
  else
  begin
    Result := True;
    MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCadVale.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmCadVale.cdsValeConsFATURADO.AsString = 'P' then
    Background := clAqua
  else
  if fDmCadVale.cdsValeConsFATURADO.AsString = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadVale.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmCadVale.cdsValeItensFATURADO.AsString = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

function TfrmCadVale.fnc_senha: Boolean;
begin
  Result := True;
  if trim(fDmCadVale.qParametrosSENHA_EXCLUIR_VALE.AsString) <> '' then
  begin
    vSenha    := '';
    ffrmSenha := TfrmSenha.Create(self);
    ffrmSenha.Panel1.Visible := False;
    ffrmSenha.ShowModal;
    FreeAndNil(ffrmSenha);
    if vSenha <> fDmCadVale.qParametrosSENHA_EXCLUIR_VALE.AsString then
    begin
      Result := False;
      MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0);
      exit;
    end;
  end;
end;

procedure TfrmCadVale.NxButton13Click(Sender: TObject);
begin
  fDmCadVale.prc_Inserir_Servicos;

  frmCadVale_Servicos := TfrmCadVale_Servicos.Create(self);
  frmCadVale_Servicos.fDmCadVale := fDmCadVale;
  frmCadVale_Servicos.ShowModal;

  FreeAndNil(frmCadVale_Servicos);
end;

procedure TfrmCadVale.NxButton14Click(Sender: TObject);
begin
  if (fDmCadVale.cdsValeServico.IsEmpty) or (fDmCadVale.cdsValeServicoITEM.AsInteger <= 0) then
    Exit;
  if fDmCadVale.cdsValeServicoFATURADO.AsString <> 'N' then
  begin
    MessageDlg('*** Serviço já faturado ', mtError, [mbOk], 0);
    exit;
  end;

  fDmCadVale.cdsValeServico.Edit;

  frmCadVale_Servicos := TfrmCadVale_Servicos.Create(self);
  frmCadVale_Servicos.fDmCadVale := fDmCadVale;
  frmCadVale_Servicos.ShowModal;

  FreeAndNil(frmCadVale_Servicos);
end;

procedure TfrmCadVale.NxButton15Click(Sender: TObject);
begin
  if not(fDmCadVale.cdsValeServico.Active) and (fDmCadVale.cdsValeServico.IsEmpty) or (fDmCadVale.cdsValeServicoITEM.AsInteger < 1) then
    exit;
  if fDmCadVale.cdsValeServicoFATURADO.AsString <> 'N' then
  begin
    MessageDlg('*** Serviço já faturado ', mtError, [mbOk], 0);
    exit;
  end;

  if not fnc_senha then
    exit;

  if MessageDlg('Deseja excluir o serviço selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDmCadVale.cdsValeServico.Delete;
end;

procedure TfrmCadVale.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  if ColunaOrdenada = 'NOME_PESSOA' then
    ColunaOrdenada := Column.FieldName + ';NUM_VALE'
  else
    ColunaOrdenada := Column.FieldName;
  fDmCadVale.cdsValeCons.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadVale.Vale1Click(Sender: TObject);
begin
  prc_Imp_Vale('S');
end;

procedure TfrmCadVale.prc_Imp_Vale(ComDesconto: String);
begin
  if not(fDmCadVale.cdsValeCons.Active) or (fDmCadVale.cdsValeCons.IsEmpty) or (fDmCadVale.cdsValeConsID.AsInteger <= 0) then
    Exit;
  vTipo_Config_Email := 3;
  prc_Posiciona_Imp;
  fRelVale            := TfRelVale.Create(Self);
  fRelVale.fDMCadVale := fDMCadVale;
  if ComDesconto = 'S' then
    fRelVale.vImpDesconto := True
  else
    fRelVale.vImpDesconto := False;
  fRelVale.RLReport1.PreviewModal;
  fRelVale.RLReport1.Free;
  FreeAndNil(fRelVale);
end;

procedure TfrmCadVale.Valenomostrarodesconto1Click(Sender: TObject);
begin
  prc_Imp_Vale('N');
end;

procedure TfrmCadVale.ListadosVales1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDmCadVale.cdsValeCons.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Monta_Cab;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Vale_Lista.fr3';
  if FileExists(vArq) then
    fDmCadVale.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  case ComboBox1.ItemIndex of
    0: fDmCadVale.frxReport1.variables['ImpOpcao2'] := QuotedStr('Pendente');
    1: fDmCadVale.frxReport1.variables['ImpOpcao2'] := QuotedStr('Faturado');
    2: fDmCadVale.frxReport1.variables['ImpOpcao2'] := QuotedStr('Ambos');
  end;
  fDmCadVale.frxReport1.variables['ImpOpcao'] := QuotedStr(vDescOpcao_Rel);
  fDmCadVale.frxReport1.ShowReport;
end;

procedure TfrmCadVale.prc_Monta_Cab;
begin
  vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    vDescOpcao_Rel := vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    vDescOpcao_Rel := vDescOpcao_Rel + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    vDescOpcao_Rel := vDescOpcao_Rel + '(Dt.Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    vDescOpcao_Rel := vDescOpcao_Rel + '(Dt.Final: ' + DateEdit2.Text + ')';
end;

procedure TfrmCadVale.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmConsVale_Fat: TfrmConsVale_Fat;
begin
  if (Key = Vk_F3) and (fDmCadVale.cdsValeCons.Active) and (fDmCadVale.cdsValeConsID.AsInteger > 0) then
  begin
    ffrmConsVale_Fat := TfrmConsVale_Fat.Create(self);
    ffrmConsVale_Fat.fDmCadVale := fDmCadVale;
    fDmCadVale.cdsVale_Fat.Close;
    fDmCadVale.sdsVale_Fat.ParamByName('ID_VALE').AsInteger := fDmCadVale.cdsValeConsID.AsInteger;
    fDmCadVale.cdsVale_Fat.Open;
    ffrmConsVale_Fat.ShowModal;
    FreeAndNil(ffrmConsVale_Fat);
  end
end;

end.
