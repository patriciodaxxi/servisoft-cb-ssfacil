unit UEtiq_Individual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMConsPedido, ExtCtrls, StdCtrls, Mask,
  ToolEdit, CurrEdit, RxLookup, NxCollection, Grids, DBGrids, SMDBGrid, RzTabs, Menus, UDMCadCBarra_Int, DBCtrls, RxDBComb,
  UCBase, SqlExpr;

type
  TfrmEtiq_Individual = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Pedido: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    TS_Avulsa: TRzTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnEtiqueta: TNxButton;
    Panel2: TPanel;
    NxButton2: TNxButton;
    SMDBGrid2: TSMDBGrid;
    Label9: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label10: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    btnGerar: TNxButton;
    btnExcluir: TNxButton;
    NxButton1: TNxButton;
    Panel3: TPanel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label11: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label12: TLabel;
    PopupMenu1: TPopupMenu;
    Modelo11: TMenuItem;
    Modelo21: TMenuItem;
    Modelo31: TMenuItem;
    btnImpCodBarras: TNxButton;
    Label13: TLabel;
    Label14: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Adesiva1: TMenuItem;
    ag1: TMenuItem;
    Label15: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    TS_ConfImpressora: TRzTabSheet;
    gbxConfImpressora: TGroupBox;
    UCControls1: TUCControls;
    pnlEtiqueta: TPanel;
    Label266: TLabel;
    Label267: TLabel;
    Label268: TLabel;
    Label269: TLabel;
    Label270: TLabel;
    Label271: TLabel;
    Label272: TLabel;
    Label273: TLabel;
    Label274: TLabel;
    Label281: TLabel;
    Label282: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    RxDBComboBox160: TRxDBComboBox;
    RxDBComboBox161: TRxDBComboBox;
    Label275: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    Label19: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    chkRotulo: TCheckBox;
    Label20: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Panel4: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label21: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox296: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Modelo11Click(Sender: TObject);
    procedure Modelo21Click(Sender: TObject);
    procedure Modelo31Click(Sender: TObject);
    procedure btnImpCodBarrasClick(Sender: TObject);
    procedure Adesiva1Click(Sender: TObject);
    procedure ag1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBComboBox161Change(Sender: TObject);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadCBarra_Int: TDMCadCBarra_Int;
    vTipo_Rel: String; //E=Etiqueta  B=Cód. Barras
    procedure prc_Consultar;
    procedure prc_Le_Pedido;
    procedure prc_Preparar(vPosicao: Byte);
    procedure prc_Imp_Etiqueta(vPosicao: Byte);
    procedure prc_Chama_Form_Produto(Tipo: String);
    procedure prc_Gravar_mEtiq_Indidual;
    procedure prc_Configurar_Imp;
    procedure prc_Monta_Etiqueta_Calcado(Tipo: String);    
  public
    { Public declarations }
    fDMConsPedido: TDMConsPedido;                      
  end;

var
  frmEtiq_Individual: TfrmEtiq_Individual;

implementation

uses DB, rsDBUtils, USel_Produto, uUtilPadrao, UEtiqueta, UMenu,DmdDatabase;

{$R *.dfm}

procedure TfrmEtiq_Individual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDmConsPedido);
  Action := Cafree;
end;

procedure TfrmEtiq_Individual.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmEtiq_Individual.prc_Consultar;
var
  vComando: String;
  vDescDtEntrega: String;
begin
  vComando := ' WHERE PED.TIPO_REG = ' + QuotedStr('P');
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND PED.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger);

  if fDMConsPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vDescDtEntrega := 'PED.DTENTREGA'
  else
    vDescDtEntrega := 'ITE.DTENTREGA';

  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND ' + vDescDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND ' + vDescDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if trim(RxDBLookupCombo2.Text) <> '' then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if trim(RxDBLookupCombo3.Text) <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if trim(RxDBLookupCombo1.Text) <> '' then
    vComando := vComando + ' AND ITE.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND ITE.ITEM >= ' + IntToStr(CurrencyEdit2.AsInteger);
  if CurrencyEdit3.AsInteger > 0 then
    vComando := vComando + ' AND ITE.ITEM <= ' + IntToStr(CurrencyEdit3.AsInteger);
  fDMConsPedido.cdsPedido_Item2.Close;
  fDMConsPedido.sdsPedido_Item2.CommandText := fDMConsPedido.ctPedido_Item2 + vComando;
  fDMConsPedido.cdsPedido_Item2.Open;
end;

procedure TfrmEtiq_Individual.FormShow(Sender: TObject);
var
  i: Integer;
  vTexto: String;
begin
  if not Assigned(fDmConsPedido) then
    fDMConsPedido := TDMConsPedido.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);

  RxDBLookupCombo3.Visible := (fDMConsPedido.cdsFilial.RecordCount > 1);
  Label8.Visible           := (fDMConsPedido.cdsFilial.RecordCount > 1);
  if fDMConsPedido.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo3.KeyValue := fDMConsPedido.cdsFilialID.AsInteger
  else
    RxDBLookupCombo3.ClearValue;
  fDMConsPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
  fDMConsPedido.qParametros_Etiq.Close;
  fDMConsPedido.qParametros_Etiq.Open;
  CheckBox1.Visible := (fDMConsPedido.qParametros_EtiqIMPRIME_PRECO.AsString = 'S');
  CheckBox2.Visible := (fDMConsPedido.qParametros_EtiqIMPRIME_PRECO.AsString = 'S');

  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
  PopupMenu1.Items[1].Visible := (Tag <> 1);
  PopupMenu1.Items[2].Visible := (Tag <> 1);
  PopupMenu1.Items[3].Visible := (Tag <> 1);
  PopupMenu1.Items[4].Visible := (Tag <> 1);

  for i := 0 to SMDBGrid2.ColCount - 2 do
  begin
    vTexto := SMDBGrid2.Columns[i].FieldName;
    if copy(vTexto,1,7) = 'Tamanho' then
      SMDBGrid2.Columns[i].Visible := (fDMConsPedido.qParametrosUSA_GRADE.AsString = 'S')
    else
    if vTexto = 'Preco_Produto' then
      SMDBGrid2.Columns[i].Visible := (fDMConsPedido.qParametrosUSA_GRADE.AsString <> 'S')
    else
    if vTexto = 'ID_Produto' then
      SMDBGrid2.Columns[i].Visible := (fDMConsPedido.qParametrosUSA_GRADE.AsString <> 'S');
  end;
end;

procedure TfrmEtiq_Individual.prc_Le_Pedido; //E= Etiqueta   B=Cód. Barras
var
  i: Integer;
begin
  fDMCadCBarra_Int := TDMCadCBarra_Int.Create(Self);
  try
    fDMConsPedido.mEtiq_Individual.EmptyDataSet;
    if fDMConsPedido.cdsPedido_Item2.IsEmpty then
      exit;
    fDMConsPedido.cdsPedido_Item2.First;
    while not fDMConsPedido.cdsPedido_Item2.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        if Tag = 1 then
          prc_Gravar_mEtiq_Indidual
        else
        begin
          for i := 1 to fDMConsPedido.cdsPedido_Item2QTD.AsInteger do
            prc_Gravar_mEtiq_Indidual;
        end;
      end;
      fDMConsPedido.cdsPedido_Item2.Next;
    end;
  finally
    FreeAndNil(fDMCadCBarra_Int);
  end;
end;

procedure TfrmEtiq_Individual.btnGerarClick(Sender: TObject);
var
  i: Integer;
begin
  if (trim(RxDBLookupCombo4.Text) = '') and (trim(RxDBLookupCombo6.Text) = '') then
  begin
    MessageDlg('*** Referência e nome não informados!', mtError, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit4.AsInteger <= 0 then
  begin
    MessageDlg('*** Quantidade não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if not fDMConsPedido.cdsProduto.Locate('ID',RxDBLookupCombo4.KeyValue,([Locaseinsensitive])) then
    exit;
  if (fDMConsPedido.cdsProdutoID_GRADE.AsInteger > 0) and (trim(RxDBLookupCombo5.Text) = '') then
  begin
    MessageDlg('*** Tamanho não informado!', mtError, [mbOk], 0);
    exit;
  end;

  fDMConsPedido.qGradeMarcar.Close;
  fDMConsPedido.qGradeMarcar.ParamByName('ID').AsInteger     := fDMConsPedido.cdsProdutoID_GRADE.AsInteger;
  fDMConsPedido.qGradeMarcar.ParamByName('TAMANHO').AsString := RxDBLookupCombo5.Text;
  fDMConsPedido.qGradeMarcar.Open;

  for i := 1 to CurrencyEdit4.AsInteger do
  begin
    fDMConsPedido.mEtiq_Individual.Insert;
    fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger  := fDMConsPedido.cdsProdutoID.AsInteger;
    fDMConsPedido.mEtiq_IndividualReferencia.AsString   := RxDBLookupCombo4.Text;
    fDMConsPedido.mEtiq_IndividualNome_Produto.AsString := fDMConsPedido.cdsProdutoNOME.AsString;
    fDMConsPedido.mEtiq_IndividualMarca.AsString        := fDMConsPedido.cdsProdutoMARCA.AsString;
    fDMConsPedido.mEtiq_IndividualTamanho.AsString      := RxDBLookupCombo5.Text;
    fDMConsPedido.mEtiq_IndividualTamanho_USA.AsString  := fDMConsPedido.qGradeMarcarTAMANHO_USA.AsString;
    fDMConsPedido.mEtiq_IndividualTamanho_EUR.AsString  := fDMConsPedido.qGradeMarcarTAMANHO_EUR.AsString;
    fDMConsPedido.mEtiq_IndividualPreco_Produto.AsString := fDMConsPedido.cdsProdutoPRECO_VENDA.AsString;

    fDMConsPedido.mEtiq_IndividualItem_Pedido.AsInteger := 0;
    fDMConsPedido.mEtiq_IndividualID_Pedido.AsInteger   := 0;
    fDMConsPedido.mEtiq_IndividualNum_Pedido.AsInteger  := 0;

    fDMConsPedido.cdsCBarra.Close;
    fDMConsPedido.sdsCBarra.ParamByName('P1').AsInteger := fDMConsPedido.cdsProdutoID.AsInteger;
    fDMConsPedido.sdsCBarra.ParamByName('C1').AsInteger := fDMConsPedido.cdsProdutoID_COR.AsInteger;
    fDMConsPedido.sdsCBarra.ParamByName('T1').AsString  := RxDBLookupCombo5.Value;
    fDMConsPedido.cdsCBarra.Open;

    if not fDMConsPedido.cdsCBarra.IsEmpty then
      fDMConsPedido.mEtiq_IndividualCodBarra.AsString := fDMConsPedido.cdsCBarraCOD_BARRA.AsString
    else
    if fDMConsPedido.cdsProdutoCOD_BARRA.AsString <> '' then
      fDMConsPedido.mEtiq_IndividualCodBarra.AsString := fDMConsPedido.cdsProdutoCOD_BARRA.AsString
    else
      fDMConsPedido.mEtiq_IndividualCodBarra.AsString := fDMConsPedido.mEtiq_IndividualReferencia.AsString + '.' +
                                                         fDMConsPedido.mEtiq_IndividualTamanho.AsString;

    fDMConsPedido.mEtiq_IndividualCaminhoFoto.AsString := fDMConsPedido.cdsProdutoFOTO.AsString;
    fDMConsPedido.mEtiq_Individual.Post;
  end;
end;

procedure TfrmEtiq_Individual.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if trim(RxDBLookupCombo4.Text) <> '' then
    RxDBLookupCombo6.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmEtiq_Individual.btnExcluirClick(Sender: TObject);
begin
  if fDMConsPedido.mEtiq_Individual.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a etiqueta?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMConsPedido.mEtiq_Individual.Delete;

  {fDMConsPedido.mEtiq_Individual.First;
  while not fDMConsPedido.mEtiq_Individual.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMConsPedido.mEtiq_Individual.Delete
    else
      fDMConsPedido.mEtiq_Individual.Next;
  end;}
end;

procedure TfrmEtiq_Individual.prc_Imp_Etiqueta(vPosicao: Byte);
var
  vArq: String;
begin
  if fDMConsPedido.controla_Impressao = 'S' then
    if MessageDlg('Etiqueta já impressa, deseja reimprimir?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Exit;

  if not fdmConsPedido.cdsFilialRelatorios.Active then
    fDmConsPedido.cdsFilialRelatorios.Open;
  if Tag = 1 then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Etiq_ItemPedido.fr3'
  else
  begin
    if fDMConsPedido.cdsFilialRelatorios.Locate('TIPO;POSICAO',VarArrayOf([6,vPosicao]),([loCaseInsensitive])) then //tipo 6 = Etiqueta Individual
    begin
      vArq := fDMConsPedido.cdsFilialRelatoriosCAMINHO.AsString;
      if FileExists(vArq) then
        fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
      else
      begin
        //09/05/2017
        if vPosicao = 1 then //  Etiqueta Adesiva
        begin
          if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'PICOTEC' then
            uEtiqueta.prc_Etiq_Adesiva_Picotec(fDMConsPedido)
          else
          if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'RAMYS' then
            uEtiqueta.prc_Etiq_Adesiva_Argox_Ramys(fDMConsPedido)
          else
          if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'RCSTORE' then
            uEtiqueta.prc_Etiq_Adesiva_Argox_RCStore(fDMConsPedido);
        end
        else
        begin
          ShowMessage('Relatório não localizado! ' + vArq);
          Exit;
        end;
      end;
    end
    else
    begin
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\TopMaster_Etiq1.fr3';
    end
  end;
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMConsPedido.frxReport1.ShowReport;
end;

procedure TfrmEtiq_Individual.RxDBLookupCombo5Enter(Sender: TObject);
begin
  RxDBLookupCombo5.ReadOnly := (RxDBLookupCombo4.Text = ''); 
end;

procedure TfrmEtiq_Individual.NxButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir todas as etiquetas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  while not fDMConsPedido.mEtiq_Individual.IsEmpty do
    fDMConsPedido.mEtiq_Individual.Delete;
end;

procedure TfrmEtiq_Individual.RxDBLookupCombo6Exit(Sender: TObject);
begin
  if trim(RxDBLookupCombo6.Text) <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo6.KeyValue;
end;

procedure TfrmEtiq_Individual.Panel3Exit(Sender: TObject);
var
  vIDAux: Integer;
begin
  fDMConsPedido.cdsProduto_Tam.Close;
  if trim(RxDBLookupCombo4.Text) <> '' then
    vIDAux := RxDBLookupCombo4.KeyValue
  else
  if trim(RxDBLookupCombo6.Text) <> '' then
    vIDAux := RxDBLookupCombo6.KeyValue;
  if vIDAux > 0 then
  begin
    fDMConsPedido.sdsProduto_Tam.ParamByName('ID').AsInteger := vIDAux;
    fDMConsPedido.cdsProduto_Tam.Open;
  end;
  if (fDMConsPedido.cdsProduto_Tam.RecordCount = 1) and (trim(fDMConsPedido.cdsProduto_TamTAMANHO.AsString) <> '') then
    RxDBLookupCombo5.Value := fDMConsPedido.cdsProduto_TamTAMANHO.AsString;
end;

procedure TfrmEtiq_Individual.RxDBLookupCombo6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto('N');
end;

procedure TfrmEtiq_Individual.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto('R');
end;

procedure TfrmEtiq_Individual.prc_Chama_Form_Produto(Tipo: String);
begin
  if (Tipo = 'R') and (RxDBLookupCombo4.Text <> '') then
    vCodProduto_Pos := RxDBLookupCombo4.KeyValue
  else
  if (Tipo = 'N') and (RxDBLookupCombo6.Text <> '') then
    vCodProduto_Pos := RxDBLookupCombo6.KeyValue
  else
    vCodProduto_Pos := 0;
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vTipo_Prod := 'P';
  frmSel_Produto.ShowModal;
  if vCodProduto_Pos > 0 then
  begin
    RxDBLookupCombo4.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo6.KeyValue := vCodProduto_Pos;
  end;
end;

procedure TfrmEtiq_Individual.Modelo11Click(Sender: TObject);
var
  vArq: String;
begin
  if chkRotulo.Checked then
  begin
    prc_Monta_Etiqueta_Calcado('A');
    fDMConsPedido.qFilial_Relatorios.Close;
    fDMConsPedido.qFilial_Relatorios.ParamByName('TIPO').AsInteger    := -1;
    fDMConsPedido.qFilial_Relatorios.ParamByName('POSICAO').AsInteger := 1;
    fDMConsPedido.qFilial_Relatorios.Open;
    if trim(fDMConsPedido.qFilial_RelatoriosCAMINHO.AsString) = '' then
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Tekna_Etiq1.fr3';
    if FileExists(vArq) then
      fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vArq);
      Exit;
    end;
    fDMConsPedido.frxReport1.ShowReport;
    Exit;
  end;

  prc_Preparar(1);
end;

procedure TfrmEtiq_Individual.prc_Preparar(vPosicao: Byte);
var
  vPosicao_Rel: String;
begin
  vTipo_Rel := 'E';
  SMDBGrid2.DisableScroll;
  if RzPageControl1.ActivePage = TS_Pedido then
    prc_Le_Pedido;

  if fDMConsPedido.mEtiq_Individual.IsEmpty then
  begin
    SMDBGrid2.EnableScroll;
    Exit;
  end;

  prc_Imp_Etiqueta(vPosicao);

  SMDBGrid2.EnableScroll;
end;

procedure TfrmEtiq_Individual.Modelo21Click(Sender: TObject);
begin
  prc_Preparar(2);
end;

procedure TfrmEtiq_Individual.Modelo31Click(Sender: TObject);
begin
  prc_Preparar(3);
end;

procedure TfrmEtiq_Individual.prc_Gravar_mEtiq_Indidual;
var
  vCodBarraAux: String;
  vGravar: Boolean;
  sds: TSQLDataSet;
begin
  vCodBarraAux := '';
  fDMConsPedido.controla_Impressao := '';
  fDMConsPedido.cdsCBarra.Close;
  fDMConsPedido.sdsCBarra.ParamByName('P1').AsInteger := fDMConsPedido.cdsPedido_Item2ID_PRODUTO.AsInteger;
  fDMConsPedido.sdsCBarra.ParamByName('C1').AsInteger := fDMConsPedido.cdsPedido_Item2ID_COR.AsInteger;
  fDMConsPedido.sdsCBarra.ParamByName('T1').AsString  := fDMConsPedido.cdsPedido_Item2TAMANHO.AsString;
  fDMConsPedido.cdsCBarra.Open;
  if fDMConsPedido.cdsCBarra.IsEmpty then
  begin
    if fDMConsPedido.qParametros_ProdGERAR_COD_BARRA_INT.AsString = 'S' then
      vCodBarraAux := fDMCadCBarra_Int.fnc_Montar_CodBarra(fDMConsPedido.cdsPedido_Item2ID_PRODUTO.AsInteger,
                                                           fDMConsPedido.cdsPedido_Item2ID_COR.AsInteger,
                                                           fDMConsPedido.cdsPedido_Item2TAMANHO.AsString,vTipo_Rel)
    else
    if (fDMConsPedido.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMConsPedido.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S') then
      vCodBarraAux := fDMConsPedido.cdsPedido_Item2COD_BARRA.AsString;
  end
  else
    vCodBarraAux := fDMConsPedido.cdsCBarraCOD_BARRA.AsString;
  vGravar := True;
  if (vTipo_Rel = 'B') and (trim(vCodBarraAux) <> '') then
    if fDMConsPedido.mEtiq_Individual.Locate('CodBarra',vCodBarraAux,([Locaseinsensitive])) then
      vGravar := False;

  if not vGravar then
    exit;

  fDMConsPedido.mEtiq_Individual.Insert;
  fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger  := fDMConsPedido.cdsPedido_Item2ID_PRODUTO.AsInteger;
  fDMConsPedido.mEtiq_IndividualReferencia.AsString   := fDMConsPedido.cdsPedido_Item2REFERENCIA.AsString;
  fDMConsPedido.mEtiq_IndividualNome_Produto.AsString := fDMConsPedido.cdsPedido_Item2NOMEPRODUTO.AsString;
  fDMConsPedido.mEtiq_IndividualTamanho.AsString      := fDMConsPedido.cdsPedido_Item2TAMANHO.AsString;
  fDMConsPedido.mEtiq_IndividualTamanho_USA.AsString  := fDMConsPedido.cdsPedido_Item2TAMANHO_USA.AsString;
  fDMConsPedido.mEtiq_IndividualTamanho_EUR.AsString  := fDMConsPedido.cdsPedido_Item2TAMANHO_EUR.AsString;
  fDMConsPedido.mEtiq_IndividualItem_Pedido.AsInteger := fDMConsPedido.cdsPedido_Item2ITEM.AsInteger;
  fDMConsPedido.mEtiq_IndividualTotalItens.AsString   := fDMConsPedido.cdsPedido_Item2ITEM.AsString + '/' + fDMConsPedido.cdsPedido_Item2CONTADOR_ITENS.AsString;
  fDMConsPedido.mEtiq_IndividualID_Pedido.AsInteger   := fDMConsPedido.cdsPedido_Item2ID.AsInteger;
  fDMConsPedido.mEtiq_IndividualNum_Pedido.AsInteger  := fDMConsPedido.cdsPedido_Item2NUM_PEDIDO.AsInteger;
  fDMConsPedido.mEtiq_IndividualCodBarra.AsString     := vCodBarraAux;
  fDMConsPedido.mEtiq_IndividualCaminhoFoto.AsString  := fDMConsPedido.cdsPedido_Item2FOTO.AsString;
  fDMConsPedido.mEtiq_IndividualNomeCombinacao.AsString := fDMConsPedido.cdsPedido_Item2NOME_COMBINACAO.AsString;
  fDMConsPedido.mEtiq_IndividualUnidade.AsString      := fDMConsPedido.cdsPedido_Item2UNIDADE.AsString;
  fDMConsPedido.mEtiq_IndividualNumOS.AsString        := fDMConsPedido.cdsPedido_Item2NUMOS.AsString;
  fDMConsPedido.mEtiq_IndividualEncerado.AsString     := fDMConsPedido.cdsPedido_Item2ENCERADO.AsString;
  fDMConsPedido.mEtiq_IndividualObs_Etiqueta.AsString := fDMConsPedido.cdsPedido_Item2OBS_ETIQUETA.AsString;
  fDMConsPedido.mEtiq_IndividualDtEmissao.AsDateTime   := fDMConsPedido.cdsPedido_Item2DTEMISSAO.AsDateTime;

  if fDMConsPedido.cdsPedido_Item2ENCERADO.AsString = 'S' then
    fDMConsPedido.mEtiq_IndividualReferencia.AsString := fDMConsPedido.mEtiq_IndividualReferencia.AsString + '-E';
  if Tag = 1 then //Etiqueta por item  SulTextil vai usar   16/01/2017
  begin
    if fDMConsPedido.cdsClienteCODIGO.AsInteger <> fDMConsPedido.cdsPedido_Item2ID_CLIENTE.AsInteger then
      fDMConsPedido.cdsCliente.Locate('CODIGO',fDMConsPedido.cdsPedido_Item2ID_CLIENTE.AsInteger,([Locaseinsensitive]));
    fDMConsPedido.mEtiq_IndividualNome_Cliente.AsString := fDMConsPedido.cdsClienteNOME.AsString;
    if fDMConsPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
      fDMConsPedido.mEtiq_IndividualDtEntrega.AsDateTime := fDMConsPedido.cdsPedido_Item2DTENTREGA_PED.AsDateTime
    else
      fDMConsPedido.mEtiq_IndividualDtEntrega.AsDateTime := fDMConsPedido.cdsPedido_Item2DTENTREGA_ITEM.AsDateTime;
    if fDMConsPedido.mEtiq_IndividualDtEntrega.AsDateTime < 100 then
      fDMConsPedido.mEtiq_IndividualDtEntrega.Clear;
    fDMConsPedido.mEtiq_IndividualQtde.AsFloat := StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Item2QTD.AsFloat));
    fDMConsPedido.mEtiq_IndividualPedido_Cliente.AsString := fDMConsPedido.cdsPedido_Item2PEDIDO_CLIENTE.AsString;
  end;
  fDMConsPedido.mEtiq_IndividualCodBarra_Talao.AsString := '5' + FormatFloat('0000000',fDMConsPedido.mEtiq_IndividualNum_Pedido.AsInteger) +
                                                           FormatFloat('0000',fDMConsPedido.mEtiq_IndividualItem_Pedido.AsInteger);

  //10/04/2017   Para gravar os processos da SulTextil
  fDMConsPedido.mEtiq_IndividualProcessos.Clear;
  if fDMConsPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
  begin
    fDMConsPedido.qProcesso_Grupo.Close;
    fDMConsPedido.qProcesso_Grupo.ParamByName('ID').AsInteger := fDMConsPedido.cdsPedido_Item2ID_PROCESSO_GRUPO.AsInteger;
    fDMConsPedido.qProcesso_Grupo.Open;
    while not fDMConsPedido.qProcesso_Grupo.Eof do
    begin
      if fDMConsPedido.qProcesso_GrupoTIPO.AsString = 'P' then
      begin
        if fDMConsPedido.mEtiq_IndividualProcessos.IsNull then
          fDMConsPedido.mEtiq_IndividualProcessos.Value := fDMConsPedido.qProcesso_GrupoNOME.AsString
        else
          fDMConsPedido.mEtiq_IndividualProcessos.Value := fDMConsPedido.mEtiq_IndividualProcessos.Value + #13 + fDMConsPedido.qProcesso_GrupoNOME.AsString;
      end;
      fDMConsPedido.qProcesso_Grupo.Next;
    end;
  end;
  //*******************
  if fDMConsPedido.cdsPedido_Item2TALAO_IMPRESSO.AsString = 'S' then
    fDMConsPedido.controla_Impressao := fDMConsPedido.cdsPedido_Item2TALAO_IMPRESSO.AsString;
  try
      sds := TSQLDataSet.Create(nil);
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'UPDATE PEDIDO_ITEM SET TALAO_IMPRESSO = ' + QuotedStr('S') +
                           ' WHERE ID = ' + IntToStr(fDMConsPedido.cdsPedido_Item2ID.AsInteger);
      sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;

  fDMConsPedido.mEtiq_Individual.Post;
end;

procedure TfrmEtiq_Individual.btnImpCodBarrasClick(Sender: TObject);
var
  vArq: String;
begin
  vTipo_Rel := 'B';
  prc_Le_Pedido;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Cod_Barras_Por_Pedido.fr3';
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMConsPedido.frxReport1.ShowReport;
end;

procedure TfrmEtiq_Individual.Adesiva1Click(Sender: TObject);
var
  vArq: String;
  vTexto: String;
begin
  if RzPageControl1.ActivePage = TS_Pedido then
    vImpPreco_Etiqueta := CheckBox2.Checked
  else
    vImpPreco_Etiqueta := CheckBox1.Checked;

  SMDBGrid2.DisableScroll;
  if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'PICOTEC' then
    uEtiqueta.prc_Etiq_Adesiva_Picotec(fDMConsPedido)
  else
  if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'RAMYS' then
    uEtiqueta.prc_Etiq_Adesiva_Argox_Ramys(fDMConsPedido)
  else
  if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'RCSTORE' then
  begin
    vArq := ExtractFilePath(Application.ExeName) + 'Carregar_logo\copia.bat';
    winexec(Pchar(vArq),SW_HIDE);
    uEtiqueta.prc_Etiq_Adesiva_Argox_RCStore(fDMConsPedido);
  end
  else
  if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'ELLASTORE' then
  begin
    vTexto := InputBox('Informe a quantidade de etiquetas: ','Qtd. Etiquetas: ','');
    vTexto := Monta_Numero(vTexto,0);
    if trim(vTexto) = '' then
    begin
      if MessageDlg('Quantidade de etiquetas não informada! Confirma a impressão das etiquetas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
      vTexto := '0';
    end;
    uEtiqueta.prc_Etiq_Adesiva_EllaStore(fDMConsPedido,StrToInt(vTexto));
  end;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmEtiq_Individual.ag1Click(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  uEtiqueta.prc_Etiq_Tag_Argox_Ramys(fDMConsPedido);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmEtiq_Individual.btnCancelarClick(Sender: TObject);
begin
  if fDMConsPedido.cdsParametros_Etiq.State in [dsEdit, dsInsert] then
    fDMConsPedido.cdsParametros_Etiq.Cancel;
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  pnlEtiqueta.Enabled  := not(pnlEtiqueta.Enabled);
end;

procedure TfrmEtiq_Individual.btnAlterarClick(Sender: TObject);
begin
  fDMConsPedido.cdsParametros_Etiq.Close;
  fDMConsPedido.sdsParametros_Etiq.ParamByName('ID').AsInteger := 1;
  fDMConsPedido.cdsParametros_Etiq.Open;
  if not fDMConsPedido.cdsParametros_Etiq.IsEmpty then
    fDMConsPedido.cdsParametros_Etiq.Edit
  else
  begin
    fDMConsPedido.cdsParametros_Etiq.Insert;
    fDMConsPedido.cdsParametros_EtiqID.AsInteger := 1;
  end;
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  pnlEtiqueta.Enabled  := not(pnlEtiqueta.Enabled);
end;

procedure TfrmEtiq_Individual.btnConfirmarClick(Sender: TObject);
var
  vAux: String;
begin
  if not(fDMConsPedido.cdsParametros_Etiq.State in [dsEdit,dsInsert]) then
    exit;

  if (fDMConsPedido.cdsParametros_Etiq.Active) and (fDMConsPedido.cdsParametros_EtiqTIPO_IMPRESSORA.AsString = 'HONEYWEEL') then
  begin
    vAux := Monta_Texto(fDMConsPedido.cdsParametros_EtiqVELOCIDADE.AsString,0);
    if (trim(vAux) = '') or (StrToInt(vAux) <= 0) then
    begin
      MessageDlg('*** Impressora Honeyweel não foi informada a velocidade!', mtError, [mbOk], 0);
      exit;
    end;
  end;
  if (fDMConsPedido.cdsParametros_Etiq.Active) and (fDMConsPedido.cdsParametros_EtiqTIPO_IMPRESSORA.AsString = 'ARGOX') then
  begin
    if (fDMConsPedido.cdsParametros_EtiqVELOCIDADE.AsString <> 'A') and (fDMConsPedido.cdsParametros_EtiqVELOCIDADE.AsString <> 'B')
      and (fDMConsPedido.cdsParametros_EtiqVELOCIDADE.AsString <> 'C') and (fDMConsPedido.cdsParametros_EtiqVELOCIDADE.AsString <> 'D')
      and (fDMConsPedido.cdsParametros_EtiqVELOCIDADE.AsString <> 'E') then
    begin
      MessageDlg('*** Impressora Argox não foi informada a velocidade!', mtError, [mbOk], 0);
      exit;
    end;
  end;

  fDMConsPedido.cdsParametros_Etiq.Post;
  fDMConsPedido.cdsParametros_Etiq.ApplyUpdates(0);

  fDMConsPedido.qParametros_Etiq.Close;
  fDMConsPedido.qParametros_Etiq.Open;

  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  pnlEtiqueta.Enabled  := not(pnlEtiqueta.Enabled);
end;

procedure TfrmEtiq_Individual.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_ConfImpressora then
  begin
    fDMConsPedido.cdsParametros_Etiq.Close;
    fDMConsPedido.sdsParametros_Etiq.ParamByName('ID').AsInteger := 1;
    fDMConsPedido.cdsParametros_Etiq.Open;
    prc_Configurar_Imp;
  end
  else
  if RzPageControl1.ActivePage = TS_Pedido then
  begin

//    if fDMConsPedido.qParametros_EtiqTIPO_CLIENTE.AsString = 'ELLASTORE' then

  end;
end;

procedure TfrmEtiq_Individual.RxDBComboBox161Change(Sender: TObject);
begin
  prc_Configurar_Imp;
end;

procedure TfrmEtiq_Individual.prc_Configurar_Imp;
begin
  Label266.Visible := (RxDBComboBox161.ItemIndex = 0);
  DBEdit36.Visible := (RxDBComboBox161.ItemIndex = 0);
  Label267.Visible := (RxDBComboBox161.ItemIndex = 0);
  DBEdit37.Visible := (RxDBComboBox161.ItemIndex = 0);
  Label270.Visible := (RxDBComboBox161.ItemIndex = 0);
  Label271.Visible := (RxDBComboBox161.ItemIndex = 0);
  Label18.Visible  := (RxDBComboBox161.ItemIndex = 0);
  DBEdit2.Visible  := (RxDBComboBox161.ItemIndex = 0);
  Label19.Visible  := (RxDBComboBox161.ItemIndex = 0);
  Label16.Visible  := (RxDBComboBox161.ItemIndex = 1);
  DBEdit1.Visible  := (RxDBComboBox161.ItemIndex = 1);
  Label17.Visible  := (RxDBComboBox161.ItemIndex = 1);
  if RxDBComboBox161.ItemIndex = 0 then
  begin
    Label272.Caption := 'valores válidos: de 0 a 20     (Padrão 10)';
    Label273.Caption := 'valores válidos: de A a E    (Padrão C)';
  end
  else
  if RxDBComboBox161.ItemIndex = 1 then
  begin
    Label272.Caption := 'valores válidos: de 1 a 30     (Padrão 20)';
    Label273.Caption := 'valores válidos: de 1 a 6    (Padrão 3)';
  end;
end;

procedure TfrmEtiq_Individual.prc_Monta_Etiqueta_Calcado(Tipo: String);
var
  i: Integer;
  vQtdDiv: Integer;
  vTexto: String;
  vQtdAux: Integer;
  vQtdPac: Integer;
begin
  vTexto := '1';
  if Tipo = 'A' then
    vTexto := InputBox('','Informar a Quantidade por Pacote', '72');
  vTexto := Monta_Numero(vTexto,0);
  if trim(vTexto) <> '' then
    vQtdDiv := StrToInt(vTexto)
  else
    vQtdDiv := 1;
  vQtdPac := vQtdDiv;
  fDMConsPedido.mEtiqueta_Nav.EmptyDataSet;
  fDMConsPedido.mEtiq_Individual.First;
  while not fDMConsPedido.mEtiq_Individual.Eof do
  begin
    vQtdAux := CurrencyEdit4.AsInteger;
    if Tipo = 'A' then
    begin
      vQtdDiv := CurrencyEdit4.AsInteger div vQtdPac;
      if CurrencyEdit4.AsInteger mod vQtdPac > 0 then
        vQtdDiv := vQtdDiv + 1;
    end;

    if Tipo <> 'A' then
      vQtdDiv := vQtdAux;
    for i := 1 to vQtdDiv do
    begin
      fDMConsPedido.mEtiqueta_Nav.Insert;
      fDMConsPedido.mEtiqueta_NavReferencia.AsString   := fDMConsPedido.mEtiq_IndividualReferencia.AsString;
      fDMConsPedido.mEtiqueta_NavNome_Produto.AsString := fDMConsPedido.mEtiq_IndividualNome_Produto.AsString;
      fDMConsPedido.mEtiqueta_NavTamanho.AsString      := fDMConsPedido.mEtiq_IndividualTamanho.AsString;
      fDMConsPedido.mEtiqueta_NavNumOS.AsString        := fDMConsPedido.mEtiq_IndividualNumOS.AsString;
      fDMConsPedido.mEtiqueta_NavUnidade.AsString      := fDMConsPedido.mEtiq_IndividualUnidade.AsString;
      if fDMConsPedido.mEtiq_IndividualEncerado.AsString = 'S' then
      begin
        fDMConsPedido.mEtiqueta_NavEncerado.AsString   := 'encerado';
        fDMConsPedido.mEtiqueta_NavReferencia.AsString := fDMConsPedido.mEtiqueta_NavReferencia.AsString + '-E';
      end
      else
        fDMConsPedido.mEtiqueta_NavEncerado.AsString := '';
      if Tipo = 'A' then
      begin
        if RxDBLookupCombo8.Value <> '' then
          fDMConsPedido.cdsCliente.Locate('CODIGO',RxDBLookupCombo8.KeyValue,([loCaseInsensitive]));
        fDMConsPedido.mEtiqueta_NavNome_Cliente.AsString := fDMConsPedido.cdsClienteNOME.AsString;
        fDMConsPedido.mEtiqueta_NavFantasia_Cli.AsString := fDMConsPedido.cdsClienteFANTASIA.AsString;
        if vQtdAux > vQtdPac then
          fDMConsPedido.mEtiqueta_NavQtd.AsInteger := vQtdPac
        else
          fDMConsPedido.mEtiqueta_NavQtd.AsInteger := vQtdAux;
        vQtdAux := vQtdAux - vQtdPac;
        if vQtdAux <= 0 then
          vQtdDiv := i;
      end;
      if fDMConsPedido.mEtiqueta_Nav.State in [dsEdit,dsInsert] then
        fDMConsPedido.mEtiqueta_Nav.Post;
    end;
    fDMConsPedido.mEtiq_Individual.Next;
  end;
end;

procedure TfrmEtiq_Individual.CurrencyEdit5Exit(Sender: TObject);
begin
  if CurrencyEdit5.AsInteger > 0 then
  begin
    fDMConsPedido.cdsProduto.IndexFieldNames := 'ID';
    fDMConsPedido.cdsProduto.FindKey([CurrencyEdit5.AsInteger]);
    RxDBLookupCombo4.KeyValue := CurrencyEdit5.AsInteger;
  end;
end;

procedure TfrmEtiq_Individual.RxDBLookupCombo4Change(Sender: TObject);
begin
  CurrencyEdit5.Clear;
end;

end.
