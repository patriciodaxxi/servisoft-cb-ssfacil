unit uCadContaOrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid,
  UDMCadContaOrc, Mask, UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, RxLookup,
  RXSpin, NxCollection, RzPanel, ToolEdit, RXDBCtrl, Menus, ComCtrls,
  CurrEdit;

type
  TfrmCadContaOrc = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    UCControls1: TUCControls;
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    RxSpinButton1: TRxSpinButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    btnAlterar: TNxButton;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label13: TLabel;
    Label14: TLabel;
    NxButton1: TNxButton;
    Label15: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    btnImprimir: TNxButton;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    StatusBar1: TStatusBar;
    edtNomePlanoContabil: TEdit;
    lblPesquisaConta: TLabel;
    Label18: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    pc_Itens: TRzPageControl;
    ts_CentroCusto: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    Panel3: TPanel;
    btnInserir_CentroCusto: TNxButton;
    btnAlterar_CentroCusto: TNxButton;
    btnExcluir_CentroCusto: TNxButton;
    ts_Orc_ValoresAnuais: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel4: TPanel;
    Label7: TLabel;
    Label5: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox1: TRxDBComboBox;
    Panel5: TPanel;
    NxButton2: TNxButton;
    Label19: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label20: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label21: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label22: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label23: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Panel7: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1Enter(Sender: TObject);
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure RxSpinButton1TopClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure RxDBComboBox4Change(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnInserir_CentroCustoClick(Sender: TObject);
    procedure btnExcluir_CentroCustoClick(Sender: TObject);
    procedure btnAlterar_CentroCustoClick(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton2Click(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadContaOrc: TDMCadContaOrc;
    vID_Superior: Integer;
    vReceita_Despesa: string;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Calcular;
    procedure prc_Abrir_qPlano_Contabil(ID:Integer);
    procedure prc_habilita;
    procedure prc_Posiciona_Registro;
    procedure prc_Opcao;
    procedure prc_Calcular_Fixa;

  public
    { Public declarations }
  end;

var
  frmCadContaOrc: TfrmCadContaOrc;

implementation

uses
  DmdDatabase, rsDBUtils, StdConvs, URelContaOrc, USel_ContaOrc, uUtilPadrao,
  UCadContaOrc_CentroCusto, UCadContaOrc_Itens, USel_CentroCusto, USel_Plano_Contabil,
  DateUtils;

{$R *.dfm}

procedure TfrmCadContaOrc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadContaOrc.prc_Excluir_Registro;
begin
  fDMCadContaOrc.prc_Excluir;
end;

procedure TfrmCadContaOrc.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadContaOrc.cdsContaOrcID.AsInteger;
  fDMCadContaOrc.prc_Gravar;
  if fDMCadContaOrc.cdsContaOrc.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadContaOrc.vMsgConta, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled := not (TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled := not (pnlCadastro.Enabled);
  btnConfirmar.Enabled := not (btnConfirmar.Enabled);
  btnAlterar.Enabled := not (btnAlterar.Enabled);
  prc_habilita;

  btnConsultarClick(Nil);
  fDMCadContaOrc.cdsConsulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadContaOrc.prc_Inserir_Registro;
begin
  vID_Superior := 0;
  vReceita_Despesa := '';
  if (fDMCadContaOrc.cdsContaOrc.Active) or not (fDMCadContaOrc.cdsContaOrc.IsEmpty) then
  begin
    if fDMCadContaOrc.cdsContaOrcTIPO.AsString = 'S' then
      vID_Superior := StrToInt(fDMCadContaOrc.cdsContaOrcID.AsString)
    else if (trim(fDMCadContaOrc.cdsContaOrcSUPERIOR.AsString) <> '') and not (fDMCadContaOrc.cdsContaOrcSUPERIOR.IsNull) then
      vID_Superior := StrToInt(fDMCadContaOrc.cdsContaOrcSUPERIOR.AsString);
    vReceita_Despesa := fDMCadContaOrc.cdsContaOrcTIPO_RD.AsString;
  end;

  fDMCadContaOrc.prc_Inserir;
  prc_habilita;

  if fDMCadContaOrc.cdsContaOrc.State in [dsBrowse] then
    exit;

  if vID_Superior > 0 then
    fDMCadContaOrc.cdsContaOrcSUPERIOR.AsString := IntToStr(vID_Superior);
  fDMCadContaOrc.cdsContaOrcTIPO_RD.AsString := vReceita_Despesa;

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadContaOrc.cdsSuperior.Close;
  fDMCadContaOrc.cdsSuperior.Open;

  fDMCadContaOrc.cdsContaOrc_CCusto.Open;

  fDMCadContaOrc.qCentroCusto.Open;
  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  pnlCadastro.Enabled := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadContaOrc.FormShow(Sender: TObject);
begin
  fDMCadContaOrc := TDMCadContaOrc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContaOrc);
  fDMCadContaOrc.cdsSuperior.Open;
  fDMCadContaOrc.cdsSuperior.IndexFieldNames := 'DESCRICAO';
  btnConsultarClick(Sender);
  uUtilPadrao.fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;

  Label10.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  DBEdit5.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  Label11.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  DBDateEdit1.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  Label12.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  DBEdit7.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  //ts_Orc_ValoresAnuais.TabVisible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  ts_Orc_ValoresAnuais.TabVisible := (fDMCadContaOrc.qParametros_Cta_OrcUSA_VALOR_ORC.AsString = 'S');
  Label13.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  Label14.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  NxButton1.Visible := (fDMCadContaOrc.qParametrosUSA_PREVISAO.AsString = 'S');
  Label17.Visible := (fDMCadContaOrc.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');
  DBEdit6.Visible := (fDMCadContaOrc.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');
  edtNomePlanoContabil.Visible := (fDMCadContaOrc.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');
  lblPesquisaConta.Visible     := (fDMCadContaOrc.qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S');
  Label9.Visible               := (fDMCadContaOrc.qParametros_Cta_OrcMOSTRAR_PESSOA.AsString = 'S');
  RxDBLookupCombo2.Visible     := (fDMCadContaOrc.qParametros_Cta_OrcMOSTRAR_PESSOA.AsString = 'S');
  if ts_Orc_ValoresAnuais.TabVisible then
  begin
    pc_Itens.ActivePageDefault := ts_Orc_ValoresAnuais;
    pc_Itens.ActivePage        := ts_Orc_ValoresAnuais;
  end;
  CurrencyEdit4.AsInteger := YearOf(Date);
end;

procedure TfrmCadContaOrc.prc_Consultar;
begin
  prc_Calcular_Fixa;
  {fDMCadContaOrc.cdsContaOrc.Close;
  fDMCadContaOrc.sdsContaOrc.CommandText := fDMCadContaOrc.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadContaOrc.sdsContaOrc.CommandText := fDMCadContaOrc.sdsContaOrc.CommandText + ' AND DESCRICAO LIKE ' + QuotedStr('%' + Edit4.Text + '%');
  fDMCadContaOrc.cdsContaOrc.IndexFieldNames := 'CODIGO';
  fDMCadContaOrc.cdsContaOrc.Open;
  prc_Calcular;}

  fDMCadContaOrc.cdsConsulta.Close;
  fDMCadContaOrc.sdsConsulta.CommandText := fDMCadContaOrc.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadContaOrc.sdsConsulta.CommandText := fDMCadContaOrc.sdsConsulta.CommandText + ' AND C.DESCRICAO LIKE ' + QuotedStr('%' + Edit4.Text + '%');
  fDMCadContaOrc.cdsConsulta.IndexFieldNames := 'CODIGO';
  fDMCadContaOrc.cdsConsulta.Open;
  prc_Calcular;
end;

procedure TfrmCadContaOrc.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadContaOrc.btnCancelarClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadContaOrc.cdsContaOrcID.AsInteger;
  if (fDMCadContaOrc.cdsContaOrc.State in [dsBrowse]) or not (fDMCadContaOrc.cdsContaOrc.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadContaOrc.cdsContaOrc.CancelUpdates;
  TS_Consulta.TabEnabled := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled := not (pnlCadastro.Enabled);
  btnConfirmar.Enabled := not (btnConfirmar.Enabled);
  btnAlterar.Enabled := not (btnAlterar.Enabled);
  prc_habilita;
  fDMCadContaOrc.cdsConsulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadContaOrc.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadContaOrc.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadContaOrc.cdsContaOrc.IsEmpty) or not (fDMCadContaOrc.cdsContaOrc.Active) or (fDMCadContaOrc.cdsContaOrcID.AsInteger < 1) then
    exit;

  fDMCadContaOrc.cdsContaOrc.Edit;
  fDMCadContaOrc.cdsContaOrc_CCusto.Open;

  fDMCadContaOrc.qCentroCusto.Open;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  pnlCadastro.Enabled := True;
  prc_habilita;
end;

procedure TfrmCadContaOrc.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadContaOrc.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadContaOrc);
end;

procedure TfrmCadContaOrc.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContaOrc.DBEdit1Enter(Sender: TObject);
var
  vUlt: string;
  vProx: Integer;
begin
  fDMCadContaOrc.prc_Proximo_Codigo;
  {if (fDMCadContaOrc.cdsContaOrcCODIGO.IsNull) or (fDMCadContaOrc.cdsContaOrcCODIGO.AsString = '') then
  begin
    if fDMCadContaOrc.cdsContaOrcNIVEL.AsInteger > 1 then
    begin
      fDMCadContaOrc.sqProximo.SQL.Text := 'SELECT MAX(CODIGO) ' +
                                           'FROM CONTA_ORCAMENTO ' +
                                           'WHERE CODIGO LIKE ' + QuotedStr(fDMCadContaOrc.cdsSuperiorCODIGO.AsString + '.%') +
                                           ' AND NIVEL = ' + DBEdit2.Text;
      fDMCadContaOrc.sqProximo.Open;
      vUlt := Copy(fDMCadContaOrc.sqProximoMAX.AsString,Length(fDMCadContaOrc.sqProximoMAX.AsString)-1,2);
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      fDMCadContaOrc.cdsContaOrcCODIGO.AsString := fDMCadContaOrc.cdsSuperiorCODIGO.AsString + '.' +
                                                   FormatFloat('00',vProx);
    end
    else
    begin
      fDMCadContaOrc.sqProximo.SQL.Text := 'SELECT MAX(CODIGO) ' +
                                           'FROM CONTA_ORCAMENTO ' +
                                           'WHERE NIVEL = ' + DBEdit2.Text;
      fDMCadContaOrc.sqProximo.Open;
      vUlt := fDMCadContaOrc.sqProximoMAX.AsString;
      if trim(vUlt) = '' then
        vUlt := '000';
      vProx := StrToInt(FormatFloat('000',StrToInt(vUlt) + 1));
      fDMCadContaOrc.cdsContaOrcCODIGO.AsInteger := vProx;
    end;
    fDMCadContaOrc.sqProximo.Close;
  end;}
end;

procedure TfrmCadContaOrc.RxSpinButton1BottomClick(Sender: TObject);
begin
  fDMCadContaOrc.cdsContaOrcNIVEL.AsInteger := fDMCadContaOrc.cdsContaOrcNIVEL.AsInteger - 1;
end;

procedure TfrmCadContaOrc.RxSpinButton1TopClick(Sender: TObject);
begin
  fDMCadContaOrc.cdsContaOrcNIVEL.AsInteger := fDMCadContaOrc.cdsContaOrcNIVEL.AsInteger + 1;
end;

procedure TfrmCadContaOrc.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadContaOrc.btnExcluirClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  if not(fDMCadContaOrc.cdsConsulta.Active) or (fDMCadContaOrc.cdsConsulta.IsEmpty) then
    exit;

  prc_Posiciona_Registro;

  if fDMCadContaOrc.cdsContaOrc.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vIDAux := fDMCadContaOrc.cdsContaOrcID.AsInteger;
  prc_Excluir_Registro;
  prc_habilita;
  btnConsultarClick(Sender);
  fDMCadContaOrc.cdsConsulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadContaOrc.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
end;

procedure TfrmCadContaOrc.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadContaOrc.cdsContaOrcCODIGO.Clear;
end;

procedure TfrmCadContaOrc.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Value = '' then
  begin
    fDMCadContaOrc.cdsContaOrcNIVEL.AsInteger := 1;
    fDMCadContaOrc.cdsContaOrcTIPO.AsString := 'S';
  end
  else
  begin
    fDMCadContaOrc.cdsContaOrcNIVEL.AsInteger := fDMCadContaOrc.cdsSuperiorNIVEL.AsInteger + 1;
  end;
end;

procedure TfrmCadContaOrc.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadContaOrc.cdsConsultaTIPO.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;

    if (Field = fDMCadContaOrc.cdsConsultaVALOR_ORC) or (Field = fDMCadContaOrc.cdsConsultaclPerc_Adim)  then
    begin
      Background  := $00D7D7D7;
      //AFont.Style := [fsBold];
      //AFont.Color := clBlack;
    end;
  end;
end;

procedure TfrmCadContaOrc.RxDBComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  a: Integer;
begin
  if Key = 27 then
    fDMCadContaOrc.cdsContaOrcTIPO_DESPESA.AsString := '';
end;

procedure TfrmCadContaOrc.prc_Calcular;
begin
  fDMCadContaOrc.qCalculo.Close;
  fDMCadContaOrc.qCalculo.Open;
  Label14.Caption := FormatFloat('###,###,##0.00', fDMCadContaOrc.qCalculoVALOR.AsFloat);
end;

procedure TfrmCadContaOrc.NxButton1Click(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmCadContaOrc.RxDBComboBox4Change(Sender: TObject);
begin
  prc_Opcao;
end;

procedure TfrmCadContaOrc.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    Label5.Visible := (RxDBComboBox4.ItemIndex = 1);
    RxDBComboBox1.Visible := (RxDBComboBox4.ItemIndex = 1);

    if not (fDMCadContaOrc.cdsContaOrc.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Registro;

    prc_Opcao;

    fDMCadContaOrc.prc_Abrir_CentroCusto(fDMCadContaOrc.cdsContaOrcID.AsInteger);
    prc_Abrir_qPlano_Contabil(fDMCadContaOrc.cdsContaOrcCOD_CONTABIL.AsInteger);
  end;
end;

procedure TfrmCadContaOrc.btnImprimirClick(Sender: TObject);
begin
  if not (fDMCadContaOrc.cdsConsulta.Active) or (fDMCadContaOrc.cdsConsulta.IsEmpty) or (fDMCadContaOrc.cdsConsultaID.AsInteger <= 0) then
    exit;
  vTipo_Config_Email := 3;
  fRelContaOrc := TfRelContaOrc.Create(Self);
  fRelContaOrc.fDMCadContaOrc := fDMCadContaOrc;
  fRelContaOrc.RLReport1.PreviewModal;
  fRelContaOrc.RLReport1.Free;
  FreeAndNil(fRelContaOrc);
end;

procedure TfrmCadContaOrc.RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if (trim(fDMCadContaOrc.cdsContaOrcSUPERIOR.AsString) <> '') and not (fDMCadContaOrc.cdsContaOrcSUPERIOR.IsNull) then
      vID_ContaOrcamento_Sup_Pos := fDMCadContaOrc.cdsContaOrcSUPERIOR.AsInteger;
    vTipo_RD_Pos := fDMCadContaOrc.cdsContaOrcTIPO_RD.AsString;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Sup_Pos > 0 then
    begin
      fDMCadContaOrc.cdsContaOrcSUPERIOR.AsString := IntToStr(vID_ContaOrcamento_Sup_Pos);
      fDMCadContaOrc.cdsContaOrcTIPO_RD.AsString := vTipo_RD_Pos;
    end;
  end;
end;

procedure TfrmCadContaOrc.prc_habilita;
begin
  btnInserir_CentroCusto.Enabled := not(btnInserir_CentroCusto.Enabled);
  btnAlterar_CentroCusto.Enabled := not(btnAlterar_CentroCusto.Enabled);
  btnExcluir_CentroCusto.Enabled := not(btnExcluir_CentroCusto.Enabled);
  Panel4.Enabled                 := not(Panel4.Enabled);
  btnInserir_Itens.Enabled       := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled       := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled       := not(btnExcluir_Itens.Enabled);
end;

procedure TfrmCadContaOrc.btnInserir_CentroCustoClick(Sender: TObject);
begin
  fDMCadContaOrc.prc_Inserir_CentroCusto;
  frmCadContaOrc_CentroCusto := TfrmCadContaOrc_CentroCusto.Create(self);
  frmCadContaOrc_CentroCusto.fdmCadContaOrc := fDMCadContaOrc;
  frmCadContaOrc_CentroCusto.ShowModal;
  FreeAndNil(frmCadContaOrc_CentroCusto);
end;

procedure TfrmCadContaOrc.btnExcluir_CentroCustoClick(Sender: TObject);
begin
  if fDMCadContaOrc.cdsContaOrc_CCusto.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadContaOrc.cdsContaOrc_CCusto.Delete;

end;

procedure TfrmCadContaOrc.btnAlterar_CentroCustoClick(Sender: TObject);
begin
  if (fDMCadContaOrc.cdsContaOrc_CCustoID.AsInteger <= 0) then
    exit;
  fDMCadContaOrc.cdsContaOrc.Edit;
  frmCadContaOrc_CentroCusto := TfrmCadContaOrc_CentroCusto.Create(self);
  frmCadContaOrc_CentroCusto.fdmCadContaOrc := fDMCadContaOrc;
  frmCadContaOrc_CentroCusto.ShowModal;
  FreeAndNil(frmCadContaOrc_CentroCusto);

end;

procedure TfrmCadContaOrc.DBEdit6Enter(Sender: TObject);
begin
  lblPesquisaConta.Visible := True;
end;

procedure TfrmCadContaOrc.DBEdit6Exit(Sender: TObject);
begin
  lblPesquisaConta.Visible := False;
  if (trim(DBEdit6.Text) = '') or (trim(DBEdit6.Text) = '0') then
    prc_Abrir_qPlano_Contabil(0)
  else
  begin
    prc_Abrir_qPlano_Contabil(StrToInt(DBEdit6.Text));
    if fdmCadContaOrc.qPlanoContabil.IsEmpty then
    begin
      MessageDlg('*** ID Plano Contábil não cadastrado', mtError, [mbOk], 0);
      DBEdit6.SetFocus;
    end;
  end;
end;

procedure TfrmCadContaOrc.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_Plano_Contabil := fdmCadContaOrc.cdsContaOrcCOD_CONTABIL.AsInteger;
    frmSel_Plano_Contabil := TfrmSel_Plano_Contabil.Create(Self);
//    frmSel_CentroCusto.ComboBox2.ItemIndex := 2;
    frmSel_Plano_Contabil.ShowModal;
    if vID_Plano_Contabil > 0 then
      fdmCadContaOrc.cdsContaOrcCOD_CONTABIL.AsInteger := vID_Plano_Contabil
    else
      fdmCadContaOrc.cdsContaOrcCOD_CONTABIL.Clear;
   prc_Abrir_qPlano_Contabil(fdmCadContaOrc.cdsContaOrcCOD_CONTABIL.AsInteger);
  end;

end;

procedure TfrmCadContaOrc.prc_Abrir_qPlano_Contabil(ID: Integer);
begin
  edtNomePlanoContabil.Clear;
  if ID <= 0 then
    exit;
  fDMCadContaOrc.qPlanoContabil.Close;
  fdmCadContaOrc.qPlanoContabil.ParamByName('ID').AsInteger := ID;
  fdmCadContaOrc.qPlanoContabil.Open;
  edtNomePlanoContabil.Text := fdmCadContaOrc.qPlanoContabilNOME_AUX.AsString;
end;

procedure TfrmCadContaOrc.prc_Posiciona_Registro;
begin
  fDMCadContaOrc.prc_Localizar(fDMCadContaOrc.cdsConsultaID.AsInteger);
  fDMCadContaOrc.cdsContaOrc_Itens.Close;
  fDMCadContaOrc.cdsContaOrc_Itens.Open;
  fDMCadContaOrc.cdsContaOrc_CCusto.Close;
  fDMCadContaOrc.cdsContaOrc_CCusto.Open;
end;

procedure TfrmCadContaOrc.prc_Opcao;
begin
  Label5.Visible        := (RxDBComboBox4.ItemIndex = 1);
  RxDBComboBox1.Visible := (RxDBComboBox4.ItemIndex = 1);
end;

procedure TfrmCadContaOrc.NxButton2Click(Sender: TObject);
begin
  prc_Calcular_Fixa;
end;

procedure TfrmCadContaOrc.prc_Calcular_Fixa;
begin
  fDMCadContaOrc.qTotalFixa.Close;
  fDMCadContaOrc.qTotalFixa.Open;
  CurrencyEdit1.Value := fDMCadContaOrc.qTotalFixaVLR_ORC.AsFloat;

  fDMCadContaOrc.qTotalPares.Close;
  fDMCadContaOrc.qTotalPares.ParamByName('ANO').AsInteger := CurrencyEdit4.AsInteger;
  fDMCadContaOrc.qTotalPares.Open;
  CurrencyEdit3.Value := fDMCadContaOrc.qTotalParesPREVISAO.AsFloat;
  if (CurrencyEdit3.Value > 0) then
    CurrencyEdit5.Value := CurrencyEdit3.Value / 12
  else
    CurrencyEdit5.Value := 0;
  if (CurrencyEdit1.Value > 0) and (CurrencyEdit5.Value > 0) then
    CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value / CurrencyEdit5.Value))
  else
    CurrencyEdit2.Value := 0;
end;

procedure TfrmCadContaOrc.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadContaOrc.prc_Inserir_Itens;
  frmCadContaOrc_Itens := TfrmCadContaOrc_Itens.Create(self);
  frmCadContaOrc_Itens.fdmCadContaOrc := fDMCadContaOrc;
  frmCadContaOrc_Itens.ShowModal;
  FreeAndNil(frmCadContaOrc_Itens);
end;

procedure TfrmCadContaOrc.btnAlterar_ItensClick(Sender: TObject);
begin
  if fDMCadContaOrc.cdsContaOrc_ItensID.AsInteger <= 0 then
    exit;

  fDMCadContaOrc.cdsContaOrc_Itens.Edit;
  frmCadContaOrc_Itens := TfrmCadContaOrc_Itens.Create(self);
  frmCadContaOrc_Itens.fdmCadContaOrc := fDMCadContaOrc;
  frmCadContaOrc_Itens.ShowModal;
  FreeAndNil(frmCadContaOrc_Itens);
end;

procedure TfrmCadContaOrc.btnExcluir_ItensClick(Sender: TObject);
begin
  if fDMCadContaOrc.cdsContaOrc_ItensID.AsInteger <= 0 then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadContaOrc.cdsContaOrc_Itens.Delete;
end;

end.

