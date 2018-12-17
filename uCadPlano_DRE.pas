unit uCadPlano_DRE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid,
  UDMCadPlano_DRE, Mask, UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, RxLookup,
  RXSpin, NxCollection, RzPanel, ToolEdit, RXDBCtrl, Menus, ComCtrls;

type
  TfrmCadPlano_DRE = class(TForm)
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
    btnImprimir: TNxButton;
    Label16: TLabel;
    StatusBar1: TStatusBar;
    Label5: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    gbxContas: TRzGroupBox;
    Panel3: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    SMDBGrid3: TSMDBGrid;
    btnCopiar: TNxButton;
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
    procedure RzPageControl1Change(Sender: TObject);
    procedure prc_habilita;
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDMCadPlano_DRE: TDMCadPlano_DRE;
    vID_Superior: Integer;
    vReceita_Despesa: string;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Opcao_Tela;

    procedure prc_Posiciona_Reg;

  public
    { Public declarations }
  end;

var
  frmCadPlano_DRE: TfrmCadPlano_DRE;

implementation

uses
  DmdDatabase, rsDBUtils, StdConvs, uUtilPadrao,
  UCadPlano_DRE_Itens, USel_ContaOrc, USel_PlanoDRE, USel_ContaOrc2;

{$R *.dfm}

procedure TfrmCadPlano_DRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPlano_DRE.prc_Excluir_Registro;
begin
  fDMCadPlano_DRE.prc_Excluir;
end;

procedure TfrmCadPlano_DRE.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadPlano_DRE.cdsPlano_DREID.AsInteger;
  fDMCadPlano_DRE.prc_Gravar;
  if fDMCadPlano_DRE.cdsPlano_DRE.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadPlano_DRE.vMsgConta, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled := not (TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled := not (pnlCadastro.Enabled);
  btnConfirmar.Enabled := not (btnConfirmar.Enabled);
  btnAlterar.Enabled := not (btnAlterar.Enabled);
  prc_habilita;
  prc_Consultar;
  fDMCadPlano_DRE.cdsConsulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadPlano_DRE.prc_Inserir_Registro;
begin
  vID_Superior := 0;
  vReceita_Despesa := '';
  if (fDMCadPlano_DRE.cdsConsulta.Active) or not (fDMCadPlano_DRE.cdsConsulta.IsEmpty) then
  begin
    if fDMCadPlano_DRE.cdsConsultaTIPO_REG.AsString = 'S' then
      vID_Superior := StrToInt(fDMCadPlano_DRE.cdsConsultaID.AsString)
    else if (trim(fDMCadPlano_DRE.cdsConsultaSUPERIOR.AsString) <> '') and not (fDMCadPlano_DRE.cdsConsultaSUPERIOR.IsNull) then
      vID_Superior := StrToInt(fDMCadPlano_DRE.cdsConsultaSUPERIOR.AsString);
    RxDBComboBox2Change(frmCadPlano_DRE);
  end;

  fDMCadPlano_DRE.prc_Inserir;
  prc_habilita;

  if fDMCadPlano_DRE.cdsPlano_DRE.State in [dsBrowse] then
    exit;

  if vID_Superior > 0 then
    fDMCadPlano_DRE.cdsPlano_DRESUPERIOR.AsString := IntToStr(vID_Superior);

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadPlano_DRE.cdsSuperior.Close;
  fDMCadPlano_DRE.cdsSuperior.Open;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  pnlCadastro.Enabled := True;
  RxDBLookupCombo1.SetFocus;
  fDMCadPlano_DRE.vItem_ContaOrc := 0;
end;

procedure TfrmCadPlano_DRE.FormShow(Sender: TObject);
begin
  fDMCadPlano_DRE := TDMCadPlano_DRE.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPlano_DRE);
  fDMCadPlano_DRE.cdsSuperior.Open;
  fDMCadPlano_DRE.cdsSuperior.IndexFieldNames := 'NOME';
  btnConsultarClick(Sender);
  uUtilPadrao.fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;
end;

procedure TfrmCadPlano_DRE.prc_Consultar;
begin
  fDMCadPlano_DRE.cdsConsulta.Close;
  fDMCadPlano_DRE.sdsConsulta.CommandText := fDMCadPlano_DRE.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadPlano_DRE.sdsConsulta.CommandText := fDMCadPlano_DRE.sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + Edit4.Text + '%');
  fDMCadPlano_DRE.cdsConsulta.IndexFieldNames := 'CODIGO';
  fDMCadPlano_DRE.cdsConsulta.Open;
end;

procedure TfrmCadPlano_DRE.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPlano_DRE.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPlano_DRE.cdsPlano_DRE.State in [dsBrowse]) or not (fDMCadPlano_DRE.cdsPlano_DRE.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadPlano_DRE.cdsPlano_DRE.CancelUpdates;
  TS_Consulta.TabEnabled := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled := not (pnlCadastro.Enabled);
  btnConfirmar.Enabled := not (btnConfirmar.Enabled);
  btnAlterar.Enabled := not (btnAlterar.Enabled);
  prc_habilita;
end;

procedure TfrmCadPlano_DRE.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPlano_DRE.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPlano_DRE.cdsPlano_DRE.IsEmpty) or not (fDMCadPlano_DRE.cdsPlano_DRE.Active) or (fDMCadPlano_DRE.cdsPlano_DREID.AsInteger < 1) then
    exit;

  fDMCadPlano_DRE.cdsPlano_DRE.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled := False;
  btnConfirmar.Enabled := True;
  pnlCadastro.Enabled := True;
  prc_habilita;

  fDMCadPlano_DRE.cdsPlano_DRE_Itens.Last;
  fDMCadPlano_DRE.vItem_ContaOrc := fDMCadPlano_DRE.cdsPlano_DRE_ItensITEM.AsInteger;
end;

procedure TfrmCadPlano_DRE.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPlano_DRE.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPlano_DRE);
end;

procedure TfrmCadPlano_DRE.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPlano_DRE.DBEdit1Enter(Sender: TObject);
begin
  fDMCadPlano_DRE.prc_Proximo_Codigo;
end;

procedure TfrmCadPlano_DRE.RxSpinButton1BottomClick(Sender: TObject);
begin
  fDMCadPlano_DRE.cdsPlano_DRENIVEL.AsInteger := fDMCadPlano_DRE.cdsPlano_DRENIVEL.AsInteger - 1;
end;

procedure TfrmCadPlano_DRE.RxSpinButton1TopClick(Sender: TObject);
begin
  fDMCadPlano_DRE.cdsPlano_DRENIVEL.AsInteger := fDMCadPlano_DRE.cdsPlano_DRENIVEL.AsInteger + 1;
end;

procedure TfrmCadPlano_DRE.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPlano_DRE.btnExcluirClick(Sender: TObject);
begin
  if not (fDMCadPlano_DRE.cdsConsulta.Active) or (fDMCadPlano_DRE.cdsConsulta.IsEmpty) or (fDMCadPlano_DRE.cdsConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Reg;

  if fDMCadPlano_DRE.cdsPlano_DRE.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPlano_DRE.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
end;

procedure TfrmCadPlano_DRE.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadPlano_DRE.cdsPlano_DRECODIGO.Clear;
end;

procedure TfrmCadPlano_DRE.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Value = '' then
  begin
    fDMCadPlano_DRE.cdsPlano_DRENIVEL.AsInteger     := 1;
    fDMCadPlano_DRE.cdsPlano_DRETIPO_REG.AsString   := 'S';
    RxDBComboBox2Change(Sender);
  end
  else
  begin
    fDMCadPlano_DRE.cdsPlano_DRENIVEL.AsInteger := fDMCadPlano_DRE.cdsSuperiorNIVEL.AsInteger + 1;
    fDMCadPlano_DRE.cdsPlano_DRESOMAR.AsString  := fDMCadPlano_DRE.cdsSuperiorSOMAR.AsString;
  end;
end;

procedure TfrmCadPlano_DRE.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPlano_DRE.cdsConsultaTIPO_REG.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmCadPlano_DRE.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCadPlano_DRE.cdsPlano_DRE.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Reg;
    prc_Opcao_Tela;
  end;
end;

procedure TfrmCadPlano_DRE.RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := 0;
    vTipo_RD_Pos           := '';
    if (trim(fDMCadPlano_DRE.cdsPlano_DRESUPERIOR.AsString) <> '') and not (fDMCadPlano_DRE.cdsPlano_DRESUPERIOR.IsNull) then
      vID_ContaOrcamento_Sup_Pos := fDMCadPlano_DRE.cdsPlano_DRESUPERIOR.AsInteger;
      
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Sup_Pos > 0 then
    begin
      fDMCadPlano_DRE.cdsPlano_DRESUPERIOR.AsString := IntToStr(vID_ContaOrcamento_Sup_Pos);
    end;
  end;
end;

procedure TfrmCadPlano_DRE.prc_habilita;
begin
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
  btnCopiar.Enabled        := not(btnCopiar.Enabled);
end;

procedure TfrmCadPlano_DRE.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadPlano_DRE.prc_Inserir_Itens;
  frmCadPlano_DRE_Itens := TfrmCadPlano_DRE_Itens.Create(self);
  frmCadPlano_DRE_Itens.fDMCadPlano_DRE := fDMCadPlano_DRE;
  frmCadPlano_DRE_Itens.ShowModal;
  FreeAndNil(frmCadPlano_DRE_Itens);
end;

procedure TfrmCadPlano_DRE.btnExcluir_ItensClick(Sender: TObject);
begin
  if fDMCadPlano_DRE.cdsPlano_DRE_Itens.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPlano_DRE.cdsPlano_DRE_Itens.Delete;
end;

procedure TfrmCadPlano_DRE.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadPlano_DRE.cdsPlano_DRE_ItensID.AsInteger = 0) then
    exit;
  fDMCadPlano_DRE.cdsPlano_DRE.Edit;
  frmCadPlano_DRE_Itens := TfrmCadPlano_DRE_Itens.Create(self);
  frmCadPlano_DRE_Itens.fDMCadPlano_DRE := fDMCadPlano_DRE;
  frmCadPlano_DRE_Itens.ShowModal;
  FreeAndNil(frmCadPlano_DRE_Itens);
end;

procedure TfrmCadPlano_DRE.prc_Posiciona_Reg;
begin
  fDMCadPlano_DRE.prc_Localizar(fDMCadPlano_DRE.cdsConsultaID.AsInteger);
  fDMCadPlano_DRE.cdsPlano_DRE_Itens.Close;
  fDMCadPlano_DRE.cdsPlano_DRE_Itens.Open;
end;

procedure TfrmCadPlano_DRE.RxDBComboBox2Change(Sender: TObject);
begin
  prc_Opcao_Tela;
end;

procedure TfrmCadPlano_DRE.btnCopiarClick(Sender: TObject);
var
  ffrmSel_ContaOrc2: TfrmSel_ContaOrc2;
begin
  ffrmSel_ContaOrc2 := TfrmSel_ContaOrc2.Create(self);
  ffrmSel_ContaOrc2.fDMCadPlano_DRE := fDMCadPlano_DRE;
  ffrmSel_ContaOrc2.ShowModal;
  FreeAndNil(ffrmSel_ContaOrc2);
end;

procedure TfrmCadPlano_DRE.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadPlano_DRE.cdsPlano_DRE.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadPlano_DRE.prc_Opcao_Tela;
begin
  Label5.Visible        := (RxDBComboBox2.ItemIndex = 1);
  RxDBComboBox1.Visible := (RxDBComboBox2.ItemIndex = 1);
  gbxContas.Visible     := (RxDBComboBox2.ItemIndex = 0);
end;

end.









