unit UCadMov_Servico_Extra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadMov_Servico_Extra,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection, NxEdit,
  RXDBCtrl, USel_Pessoa, UEscolhe_Filial;

type
  TfrmCadMov_Servico_Extra = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    StaticText1: TStaticText;
    UCControls1: TUCControls;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBCheckBox1: TDBCheckBox;
    Label34: TLabel;
    ComboBox1: TComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label10: TLabel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBEdit8: TDBEdit;
    SpeedButton1: TSpeedButton;
    Panel12: TPanel;
    Shape1: TShape;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label14: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
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
    procedure edtCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure pnlCadastroEnter(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo7Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadMov_Servico_Extra: TDMCadMov_Servico_Extra;
    vID_Servico_Ant: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Mov;
    procedure prc_Habilitar;
    procedure prc_Calcular;
  public
    { Public declarations }

  end;

var
  frmCadMov_Servico_Extra: TfrmCadMov_Servico_Extra;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadMov_Servico_Extra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMov_Servico_Extra.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadMov_Servico_Extra.cdsMov_Consulta.Active) or (fDMCadMov_Servico_Extra.cdsMov_Consulta.IsEmpty) or
        (fDMCadMov_Servico_Extra.cdsMov_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Mov;

  if fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraENCERRADO.AsString = 'S' then
  begin
    MessageDlg('*** Serviço encerrado, não pode ser excluído!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;  

  prc_Consultar;
end;

procedure TfrmCadMov_Servico_Extra.prc_Excluir_Registro;
begin
  fDMCadMov_Servico_Extra.prc_Excluir;
end;

procedure TfrmCadMov_Servico_Extra.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID.AsInteger;
  fDMCadMov_Servico_Extra.prc_Gravar;
  if fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMov_Servico_Extra.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilitar;
  prc_Consultar;
  fDMCadMov_Servico_Extra.cdsMov_Consulta.Locate('ID',vIDAux,([Locaseinsensitive]));
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadMov_Servico_Extra.prc_Inserir_Registro;
var
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
begin
  if fDMCadMov_Servico_Extra.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadMov_Servico_Extra.cdsFilial.Last;
    vFilial      := fDMCadMov_Servico_Extra.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadMov_Servico_Extra.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadMov_Servico_Extra.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  lblNome_Filial.Caption := vFilial_Nome;

  fDMCadMov_Servico_Extra.prc_Abrir_Servico;

  fDMCadMov_Servico_Extra.prc_Inserir;
  if fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.State in [dsBrowse] then
    exit;
  RzPageControl1.ActivePage := TS_Cadastro;
  prc_Habilitar;

  if fDMCadMov_Servico_Extra.cdsFilialID_SERVICO_PAD.AsInteger > 0 then
    fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_SERVICO.AsInteger := fDMCadMov_Servico_Extra.cdsFilialID_SERVICO_PAD.AsInteger;

  RxDBLookupCombo6.SetFocus;
end;

procedure TfrmCadMov_Servico_Extra.FormShow(Sender: TObject);
begin
  fDMCadMov_Servico_Extra := TDMCadMov_Servico_Extra.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMov_Servico_Extra);
  if fDMCadMov_Servico_Extra.cdsFilial.RecordCount < 2 then
    RxDBLookupCombo1.KeyValue := fDMCadMov_Servico_Extra.cdsFilialID.AsInteger;
  if fDMCadMov_Servico_Extra.qParametrosUSA_ANO_CONTRATO.AsString = 'S' then
    RxDBLookupCombo7.LookupDisplay := 'NUM_CONTRATO2'
  else
    RxDBLookupCombo7.LookupDisplay := 'NUM_CONTRATO';
end;

procedure TfrmCadMov_Servico_Extra.prc_Consultar;
var
  vComando: String;
begin
  fDMCadMov_Servico_Extra.cdsMov_Consulta.Close;
  fDMCadMov_Servico_Extra.cdsMov_Consulta.IndexFieldNames := 'DTEMISSAO';
  fDMCadMov_Servico_Extra.sdsMov_Consulta.CommandText     := fDMCadMov_Servico_Extra.ctConsulta + ' WHERE 0 = 0';
  vComando := '';
  if trim(RxDBLookupCombo1.Text) <> '' then
    vComando := vComando + ' AND MOV.FILIAL = ' + RxDBLookupCombo1.KeyValue;
  if trim(RxDBLookupCombo2.Text) <> '' then
    vComando := vComando + ' AND MOV.ID_CLIENTE = ' + RxDBLookupCombo2.KeyValue;
  if trim(RxDBLookupCombo3.Text) <> '' then
    vComando := vComando + ' AND MOV.ID_SERVICO_INT = ' + RxDBLookupCombo3.KeyValue;
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND MOV.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND MOV.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case ComboBox1.ItemIndex of
    0: vComando := vComando + ' AND MOV.ENCERRADO = ' + QuotedStr('S');
    1: vComando := vComando + ' AND MOV.ENCERRADO = ' + QuotedStr('N');
  end;
  fDMCadMov_Servico_Extra.sdsMov_Consulta.CommandText := fDMCadMov_Servico_Extra.sdsMov_Consulta.CommandText + vComando;
  fDMCadMov_Servico_Extra.cdsMov_Consulta.Open;
end;

procedure TfrmCadMov_Servico_Extra.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMov_Servico_Extra.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.State in [dsBrowse]) or not(fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.CancelUpdates;
  prc_Habilitar;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadMov_Servico_Extra.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMov_Servico_Extra.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.IsEmpty) or not(fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.Active) or (fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID.AsInteger < 1) then
    exit;

  if fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraENCERRADO.AsString = 'S' then
    exit;

  fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.Edit;

  prc_Habilitar;
end;

procedure TfrmCadMov_Servico_Extra.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMov_Servico_Extra.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMov_Servico_Extra);
end;

procedure TfrmCadMov_Servico_Extra.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMov_Servico_Extra.edtCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMov_Servico_Extra.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMov_Servico_Extra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadMov_Servico_Extra.cdsMov_Servico_Extra);
end;

procedure TfrmCadMov_Servico_Extra.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadMov_Servico_Extra.cdsMov_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadMov_Servico_Extra.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Mov;
    fDMCadMov_Servico_Extra.prc_Abrir_Servico;
  end;
end;

procedure TfrmCadMov_Servico_Extra.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    RxDBLookupCombo1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadMov_Servico_Extra.prc_Limpar_Edit_Consulta;
begin
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo3.ClearValue;
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfrmCadMov_Servico_Extra.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadMov_Servico_Extra.cdsMov_ConsultaENCERRADO.AsString = 'N' then
    Background := clYellow;
end;

procedure TfrmCadMov_Servico_Extra.SpeedButton1Click(Sender: TObject);
begin
  fDMCadMov_Servico_Extra.cdsCliente.Close;
  fDMCadMov_Servico_Extra.cdsCliente.Open;
end;

procedure TfrmCadMov_Servico_Extra.RxDBLookupCombo6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_CLIENTE.AsInteger;
    frmSel_Pessoa  := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo6.SetFocus;
  end;
end;

procedure TfrmCadMov_Servico_Extra.prc_Habilitar;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
end;

procedure TfrmCadMov_Servico_Extra.prc_Posiciona_Mov;
begin
  fDMCadMov_Servico_Extra.prc_Localizar(fDMCadMov_Servico_Extra.cdsMov_ConsultaID.AsInteger);
  if fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_CONTRATO.AsInteger > 0 then
    fDMCadMov_Servico_Extra.prc_Abrir_Contrato(fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_CLIENTE.AsInteger);
  if (fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraFILIAL.AsInteger > 0) and
     (fDMCadMov_Servico_Extra.cdsFilialID.AsInteger <> fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraFILIAL.AsInteger) then
    fDMCadMov_Servico_Extra.cdsFilial.Locate('ID',fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraFILIAL.AsInteger,([Locaseinsensitive]));
end;

procedure TfrmCadMov_Servico_Extra.RxDBLookupCombo5Enter(Sender: TObject);
begin
  if RxDBLookupCombo5.Text <> '' then
    vID_Servico_Ant := RxDBLookupCombo5.KeyValue;
end;

procedure TfrmCadMov_Servico_Extra.pnlCadastroEnter(Sender: TObject);
begin
  vID_Servico_Ant := 0;
end;

procedure TfrmCadMov_Servico_Extra.RxDBLookupCombo5Exit(Sender: TObject);
begin
  if (fDMCadMov_Servico_Extra.cdsMov_Servico_Extra.State in [dsInsert]) or (vID_Servico_Ant <> fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_SERVICO_INT.AsInteger) then
  begin
    fDMCadMov_Servico_Extra.cdsServico_Int.Locate('ID',fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_SERVICO_INT.AsInteger,([Locaseinsensitive]));
    fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadMov_Servico_Extra.cdsServico_IntVLR_UNITARIO.AsFloat));
    if fDMCadMov_Servico_Extra.cdsServico_IntID_SERVICO_PADRAO.AsInteger > 0 then
      fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_SERVICO.AsInteger := fDMCadMov_Servico_Extra.cdsServico_IntID_SERVICO_PADRAO.AsInteger;
  end;
end;

procedure TfrmCadMov_Servico_Extra.SpeedButton2Click(Sender: TObject);
begin
  fDMCadMov_Servico_Extra.cdsServico_Int.Close;
  fDMCadMov_Servico_Extra.cdsServico_Int.Open;
end;

procedure TfrmCadMov_Servico_Extra.DBEdit1Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmCadMov_Servico_Extra.prc_Calcular;
begin
  fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraVLR_UNITARIO.AsFloat
                                                                 * fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraQTD.AsFloat));
end;

procedure TfrmCadMov_Servico_Extra.DBEdit3Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmCadMov_Servico_Extra.RxDBLookupCombo6Exit(Sender: TObject);
begin
  if RxDBLookupCombo6.Text <> '' then
    fDMCadMov_Servico_Extra.prc_Abrir_Contrato(RxDBLookupCombo6.KeyValue)
  else
    fDMCadMov_Servico_Extra.prc_Abrir_Contrato(0);
end;

procedure TfrmCadMov_Servico_Extra.RxDBLookupCombo7Exit(Sender: TObject);
begin
  if (trim(RxDBLookupCombo7.Text) <> '') and (fDMCadMov_Servico_Extra.cdsMov_Servico_ExtraID_CLIENTE.AsInteger <= 0) then
    RxDBLookupCombo6.KeyValue := fDMCadMov_Servico_Extra.cdsContratoID_CLIENTE.AsInteger;
end;

end.
