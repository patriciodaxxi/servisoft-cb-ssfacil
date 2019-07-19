unit uCupomDevolucao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, uDmDevolucao, Mask, UCBase,
  StdCtrls, DB, NxCollection, DBCtrls, ExtCtrls, DBGrids, RzTabs, ToolEdit, RXDBCtrl, CurrEdit, RxLookup, StrUtils, uDmEstoque,
  uDmMovimento;

type
  TfCupomDevolucao = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    ComboBox1: TComboBox;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CurrencyEdit2: TCurrencyEdit;
    Label5: TLabel;
    Label7: TLabel;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure NxButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDmDevolucao: TDmDevolucao;
    fDmEstoque: TDmEstoque;
    fDmMovimento: TDmMovimento;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Gravar_Estoque;
  public
    { Public declarations }
    vTipo: String;             
  end;

var
  fCupomDevolucao: TfCupomDevolucao;

implementation

uses DmdDatabase, rsDBUtils, uCupomDevolucao_Itens, uUtilPadrao;

{$R *.dfm}

procedure TfCupomDevolucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomDevolucao.btnExcluirClick(Sender: TObject);
begin
  if fDmDevolucao.cdsDevolucao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfCupomDevolucao.prc_Excluir_Registro;
begin
  fDmDevolucao.prc_Excluir;
end;

procedure TfCupomDevolucao.prc_Gravar_Registro;
begin
  fDmDevolucao.prc_Gravar;
  if fDmDevolucao.cdsDevolucao.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDmDevolucao.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  prc_Gravar_Estoque;

  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfCupomDevolucao.prc_Inserir_Registro;
begin
  fDmDevolucao.prc_Inserir;

  if fDmDevolucao.cdsDevolucao.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

  vTipo := 'NFC';

  fDmDevolucao.mItensDevolucao.EmptyDataSet;
  CurrencyEdit1.Clear;
end;

procedure TfCupomDevolucao.FormShow(Sender: TObject);
begin
  fDmDevolucao := TDMDevolucao.Create(Self);
  fDmEstoque   := TDMEstoque.Create(Self);
  fDmMovimento := TDMMovimento.Create(Self);
  
  oDBUtils.SetDataSourceProperties(Self, fDmDevolucao);
  ComboBox1.ItemIndex := 0;
end;

procedure TfCupomDevolucao.prc_Consultar;
begin
  fDmDevolucao.cdsDevolucao.Close;
  fDmDevolucao.sdsDevolucao.CommandText := fDmDevolucao.ctDevolucao + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDmDevolucao.sdsDevolucao.CommandText := fDmDevolucao.sdsDevolucao.CommandText +
                                             ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDmDevolucao.cdsDevolucao.Open;
end;

procedure TfCupomDevolucao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfCupomDevolucao.btnCancelarClick(Sender: TObject);
begin
  if (fDmDevolucao.cdsDevolucao.State in [dsBrowse]) or not(fDmDevolucao.cdsDevolucao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDmDevolucao.cdsDevolucao.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfCupomDevolucao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
  if fDmDevolucao.cdsDevolucaoSERIE.AsString <> '' then
    CurrencyEdit2.Value := fDmDevolucao.cdsDevolucaoSERIE.AsInteger;
  CurrencyEdit1.Value := fDmDevolucao.cdsDevolucaoNUMCUPOM.AsInteger;

  ComboBox1.ItemIndex := AnsiIndexStr(fDmDevolucao.cdsDevolucaoTIPO.AsString,['NFC','CNF','PED','ORC']);
end;

procedure TfCupomDevolucao.btnAlterarClick(Sender: TObject);
begin
  if (fDmDevolucao.cdsDevolucao.IsEmpty) or not(fDmDevolucao.cdsDevolucao.Active) or
     (fDmDevolucao.cdsDevolucaoID.AsInteger < 1) then
    exit;

  fDmDevolucao.cdsDevolucao.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfCupomDevolucao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfCupomDevolucao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fCupomDevolucao);
end;

procedure TfCupomDevolucao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfCupomDevolucao.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfCupomDevolucao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfCupomDevolucao.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfCupomDevolucao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDmDevolucao.cdsDevolucao.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDmDevolucao.cdsDevolucao.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfCupomDevolucao.NxButton1Click(Sender: TObject);
begin
  fDmDevolucao.qCupomFiscal.Close;
  fDmDevolucao.qCupomFiscal.SQL.Text := fDmDevolucao.ctCupom;
  if vTipo = 'NFC' then
    fDmDevolucao.qCupomFiscal.SQL.Text := fDmDevolucao.qCupomFiscal.SQL.Text + ' AND SERIE = :S1';

  fDmDevolucao.qCupomFiscal.ParamByName('F1').AsInteger := RxDBLookupCombo1.KeyValue;
  fDmDevolucao.qCupomFiscal.ParamByName('T1').AsString  := vTipo;
  fDmDevolucao.qCupomFiscal.ParamByName('C1').AsInteger := CurrencyEdit1.AsInteger;
  if vTipo = 'NFC' then
    fDmDevolucao.qCupomFiscal.ParamByName('S1').AsInteger := CurrencyEdit2.AsInteger;
  fDmDevolucao.qCupomFiscal.Open;

  fDmDevolucao.cdsCupomItens.Close;
  fDmDevolucao.sdsCupomItens.ParamByName('ID').AsInteger := fDmDevolucao.qCupomFiscalID.AsInteger;
  fDmDevolucao.cdsCupomItens.Open;

  fDmDevolucao.cdsDevolucaoID_CUPOM.AsInteger := fDmDevolucao.qCupomFiscalID.AsInteger;
  fDmDevolucao.cdsDevolucaoFILIAL.AsInteger   := RxDBLookupCombo1.KeyValue;
  fDmDevolucao.cdsDevolucaoSERIE.AsInteger    := CurrencyEdit2.AsInteger;
  fDmDevolucao.cdsDevolucaoNUMCUPOM.AsInteger := CurrencyEdit1.AsInteger;
  fDmDevolucao.cdsDevolucaoTIPO.AsString      := vTipo;

  while not fDmDevolucao.cdsCupomItens.Eof do
  begin
    fDmDevolucao.mItensDevolucao.Insert;
    fDmDevolucao.mItensDevolucaoID_PRODUTO.AsInteger  := fDmDevolucao.cdsCupomItensID_PRODUTO.AsInteger;
    fDmDevolucao.mItensDevolucaoITEM.AsInteger        := fDmDevolucao.cdsCupomItensITEM.AsInteger;
    fDmDevolucao.cdsProdutos.Close;
    fDmDevolucao.sdsProdutos.ParamByName('ID').AsInteger := fDmDevolucao.cdsCupomItensID_PRODUTO.AsInteger;
    fDmDevolucao.cdsProdutos.Open;
    fDmDevolucao.mItensDevolucaoNOME_PRODUTO.AsString   := fDmDevolucao.cdsCupomItensNOME_PRODUTO.AsString;
    fDmDevolucao.cdsProdutos.Close;
    fDmDevolucao.mItensDevolucaoQTD_ORIGINAL.AsCurrency := fDmDevolucao.cdsCupomItensQTD.AsCurrency;
    fDmDevolucao.mItensDevolucaoVLR_UNITARIO.AsCurrency := fDmDevolucao.cdsCupomItensVLR_UNITARIO.AsCurrency;
    fDmDevolucao.mItensDevolucaoUNIDADE.AsString        := fDmDevolucao.cdsCupomItensUNIDADE.AsString;
    fDmDevolucao.mItensDevolucaoTAMANHO.AsString        := fDmDevolucao.cdsCupomItensTAMANHO.AsString;

    fDmDevolucao.mItensDevolucao.Post;
    fDmDevolucao.cdsCupomItens.Next;
  end;

  fCupomDevolucao_Itens := TfCupomDevolucao_Itens.Create(Self);
  fCupomDevolucao_Itens.fDmDevolucao := fDmDevolucao;
  fCupomDevolucao_Itens.ShowModal;
end;

procedure TfCupomDevolucao.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: vTipo := 'NFC';//NFCe
    1: vTipo := 'CNF';//Cupom
    2: vTipo := 'PED';//Pedido
    3: vTipo := 'ORC';//Orçamento
  end;
end;

procedure TfCupomDevolucao.RxDBLookupCombo1Change(Sender: TObject);
begin
  CurrencyEdit2.AsInteger := fDmDevolucao.cdsFilialSERIE_NFCE.AsInteger;
end;

procedure TfCupomDevolucao.prc_Gravar_Estoque;
begin
  fDmDevolucao.cdsDevolucaoItens.First;
  while not fDmDevolucao.cdsDevolucaoItens.Eof do
  begin
    fDmDevolucao.cdsDevolucaoItens.Edit;
    fDmDevolucao.cdsDevolucaoItensID_MOVESTOQUE.AsInteger := fDmEstoque.fnc_Gravar_Estoque(fDmDevolucao.cdsDevolucaoItensID_MOVESTOQUE.AsInteger,
                                                             fDmDevolucao.cdsDevolucaoFILIAL.AsInteger,
                                                             vLocalEstoque,fDmDevolucao.cdsDevolucaoItensID_PRODUTO.AsInteger,
                                                             fDmDevolucao.cdsDevolucaoNUMCUPOM.AsInteger,0,0,
                                                             fDmDevolucao.cdsDevolucaoID.AsInteger,0,
                                                             'E','CDV', //CUPOM DEVOLUCAO
                                                             fDmDevolucao.cdsDevolucaoItensUNIDADE.AsString,
                                                             fDmDevolucao.cdsDevolucaoItensUNIDADE.AsString,
                                                             fDmDevolucao.cdsDevolucaoSERIE.AsString,
                                                             fDmDevolucao.cdsDevolucaoItensTAMANHO.AsString,
                                                             fDmDevolucao.cdsDevolucaoDATA.AsDateTime,
                                                             fDmDevolucao.cdsDevolucaoItensVLR_CREDITO.AsFloat,
                                                             fDmDevolucao.cdsDevolucaoItensQTD.AsFloat,
                                                             0, 0, 0, 0, 0,
                                                             fDmDevolucao.cdsDevolucaoItensQTD.AsFloat,
                                                             fDmDevolucao.cdsDevolucaoItensVLR_CREDITO.AsFloat,
                                                             0,0,'',0,'','N',0,0,0,0,0);

    fDmDevolucao.cdsDevolucaoItensID_MOVIMENTO.AsInteger := fDMMovimento.fnc_Gravar_Movimento(fDmDevolucao.cdsDevolucaoItensID_MOVIMENTO.AsInteger,
                                                            fDmDevolucao.cdsDevolucaoFILIAL.AsInteger,
                                                            fDmDevolucao.cdsDevolucaoItensITEM.AsInteger,
                                                            fDmDevolucao.cdsDevolucaoItensID_PRODUTO.AsInteger,
                                                            0,
                                                            fDmDevolucao.cdsDevolucaoID.AsInteger,
                                                            0, //cfop
                                                            0, //cliente
                                                            0,
                                                            fDmDevolucao.cdsDevolucaoNUMCUPOM.AsInteger,0,
                                                            'CDV', fDmDevolucao.cdsDevolucaoSERIE.AsString,//Série
                                                            'E','CFI', fDmDevolucao.cdsDevolucaoItensVLR_CREDITO.AsFloat,
                                                            fDmDevolucao.cdsDevolucaoItensVLR_CREDITO.AsFloat,
                                                            0, 0,
                                                            0, //ICMS
                                                            0, 0, 0, 0, 0, 0, 0, 0,
                                                            fDmDevolucao.cdsDevolucaoItensVLR_CREDITO.AsFloat,
                                                            0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                            0, //BASE ICMS
                                                            0, 0,
                                                            fDmDevolucao.cdsDevolucaoItensQTD.AsFloat,
                                                            0,
                                                            0, //PERC. ICMS
                                                            0, 0, 0, 0, 0, 0,
                                                            'N',
                                                            '', fDmDevolucao.cdsDevolucaoItensUNIDADE.AsString,
                                                            '', fDmDevolucao.cdsDevolucaoItensNOME_PRODUTO.AsString,
                                                            '', //REFERENCIA
                                                            fDmDevolucao.cdsDevolucaoDATA.AsDateTime,
                                                            fDmDevolucao.cdsDevolucaoDATA.AsDateTime,
                                                            fDmDevolucao.cdsDevolucaoItensTAMANHO.AsString,
                                                            '', 0, //COND. PGTO
                                                            0,
                                                            0, //VENDEDOR
                                                            0,
                                                            0, //PERC. COMISSAO
                                                            0,0,vTerminal,0,'N',
                                                            0,0,0,0,0,0,0,0,0,0);

    fDmDevolucao.cdsDevolucaoItens.Post;

    fDmDevolucao.cdsCupomItens.Close;
    fDmDevolucao.sdsCupomItens.ParamByName('ID').AsInteger := fDmDevolucao.cdsDevolucaoItensID_CUPOM.AsInteger;
    fDmDevolucao.cdsCupomItens.Open;
    fDmDevolucao.cdsCupomItens.IndexFieldNames := 'ID;ITEM';
    fDmDevolucao.cdsCupomItens.FindKey([fDmDevolucao.cdsDevolucaoItensID_CUPOM.AsInteger,
                                        fDmDevolucao.cdsDevolucaoItensID_CUPOM_ITEM.AsInteger]);
    fDmDevolucao.cdsCupomItens.Edit;
    fDmDevolucao.cdsCupomItensQTD_DEVOLVIDA.AsFloat := fDmDevolucao.cdsCupomItensQTD_DEVOLVIDA.AsFloat +
                                                       fDmDevolucao.cdsDevolucaoItensQTD.AsFloat; 

    fDmDevolucao.cdsCupomItens.Post;
    fDmDevolucao.cdsCupomItens.ApplyUpdates(0);
    fDmDevolucao.cdsDevolucaoItens.Next;
  end;
  if fDmDevolucao.cdsDevolucao.State in [dsEdit,dsInsert] then
  begin
    fDmDevolucao.cdsDevolucao.Post;
    fDmDevolucao.cdsDevolucao.ApplyUpdates(0);
  end;
end;

procedure TfCupomDevolucao.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmDevolucao.cdsDevolucaoCREDITADO.AsString = 'S' then
    AFont.Color := clNavy;
end;

procedure TfCupomDevolucao.NxButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir esse item?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    
  end;
end;

procedure TfCupomDevolucao.btnImprimirClick(Sender: TObject);
begin
  fDmDevolucao.prc_Imprimir(fDmDevolucao.cdsDevolucaoID.AsInteger);
end;

end.
