unit uCadFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, Mask,
  RxLookup, db, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadFuncionario, RxDBComb, RzPanel,
  ToolEdit, RXDBCtrl, NxCollection, ComCtrls;

type
  TfrmCadFuncionario = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    RZPageControlDados: TRzPageControl;
    TS_Pessoa_Endereco: TRzTabSheet;
    TS_Pessoa_Financeiro: TRzTabSheet;
    CheckBox1: TCheckBox;
    UCControls1: TUCControls;
    TS_Pessoa_Dados: TRzTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    lblRG: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit17: TDBEdit;
    dbeRG: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    gbxVendedor: TRzGroupBox;
    pnlHabilitacao: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    Label17: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label34: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label35: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label22: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Panel2: TPanel;
    btnInserir: TNxButton;
    clear: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlDados_Profissionais: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    lblInscEstadual: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBEdit20: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit14: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit15: TDBEdit;
    pnlFinanceiro: TPanel;
    Label27: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label13: TLabel;
    DBEdit24: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    DBEdit19: TDBEdit;
    DBEdit23: TDBEdit;
    SMDBGrid2: TSMDBGrid;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    TS_Processos: TRzTabSheet;
    pnlProcessos: TPanel;
    SMDBGrid3: TSMDBGrid;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    edtNome_Processo: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    StatusBar1: TStatusBar;
    pnlBotao_Processo: TPanel;
    btnInserirProcesso: TBitBtn;
    btnConfirmaProcesso: TBitBtn;
    btnCancelarProcesso: TBitBtn;
    btnExcluiProcesso: TBitBtn;
    Label184: TLabel;
    RxDBLookupCombo41: TRxDBLookupCombo;
    Label38: TLabel;
    DBEdit29: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure clearClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure DBEdit28KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserirProcessoClick(Sender: TObject);
    procedure btnConfirmaProcessoClick(Sender: TObject);
    procedure DBEdit28Enter(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure btnExcluiProcessoClick(Sender: TObject);
    procedure SMDBGrid3CellClick(Column: TColumn);
    procedure btnCancelarProcessoClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadFuncionario: TDMCadFuncionario;

    procedure prc_Inserir_Registro(Tipo: String);
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_Funcionario;
    procedure prc_Abrir_qProcesso(ID : Integer);
    procedure prc_Habilita_Botoes_Processo;
  public
    { Public declarations }

  end;
var
  frmCadFuncionario: TfrmCadFuncionario;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, USel_Processo;

{$R *.dfm}

procedure TfrmCadFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFuncionario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFuncionario);
end;

procedure TfrmCadFuncionario.FormShow(Sender: TObject);
begin
  fDMCadFuncionario := TDMCadFuncionario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFuncionario);
  fDMCadFuncionario.cdsSetor.Open;
  fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;
  StatusBar1.Panels[2].Text := 'Duplo Click para consultar';
end;

procedure TfrmCadFuncionario.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro(fMenu.vTipoPessoa);
end;

procedure TfrmCadFuncionario.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadFuncionario.cdsFuncionario_Consulta.Active) or (fDMCadFuncionario.cdsFuncionario_Consulta.IsEmpty) or
        (fDMCadFuncionario.cdsFuncionario_ConsultaCODIGO.AsInteger <= 0) then
    exit;

   prc_Posiciona_Funcionario;

  if fDMCadFuncionario.cdsFuncionario.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadFuncionario.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadFuncionario.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadFuncionario.cdsFuncionario.IsEmpty) or not(fDMCadFuncionario.cdsFuncionario.Active) or (fDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger < 1) then
    exit;
  fDMCadFuncionario.cdsFuncionario.Edit;
  TS_Consulta.TabEnabled       := False;
  btnAlterar.Enabled           := False;
  btnConfirmar.Enabled         := True;
  TS_Pessoa_Dados.Enabled      := True;
  TS_Pessoa_Endereco.Enabled   := True;
  TS_Pessoa_Financeiro.Enabled := True;
  TS_Processos.Enabled         := True;
  pnlFinanceiro.Enabled          := True;
  pnlDados_Profissionais.Enabled := True;
  pnlBotao_Processo.Enabled := True;
  prc_Habilita_Botoes_Processo;
end;

procedure TfrmCadFuncionario.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadFuncionario.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadFuncionario.cdsFuncionario.State in [dsBrowse]) or not(fDMCadFuncionario.cdsFuncionario.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    StatusBar1.Panels[2].Text := 'Duplo Click para Consultar';
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadFuncionario.cdsFuncionario.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;

  TS_Pessoa_Dados.Enabled      := False;
  TS_Pessoa_Endereco.Enabled   := False;
  TS_Pessoa_Financeiro.Enabled := False;
  TS_Processos.Enabled         := False;
  pnlFinanceiro.Enabled          := False;
  pnlDados_Profissionais.Enabled := False;
  pnlBotao_Processo.Enabled := False;
  btnInserirProcesso.Enabled  := False;
  btnConfirmaProcesso.Enabled := True;
  btnCancelarProcesso.Enabled := True;
  btnExcluiProcesso.Enabled   := False;
  SMDBGrid3.Enabled           := False;
end;

procedure TfrmCadFuncionario.prc_Consultar;
begin
  fDMCadFuncionario.cdsFuncionario_Consulta.Close;
  fDMCadFuncionario.sdsFuncionario_Consulta.CommandText := fDMCadFuncionario.ctConsulta + ' WHERE 1 = 1';
  if Trim(Edit4.Text) <> '' then
    fDMCadFuncionario.sdsFuncionario_Consulta.CommandText := fDMCadFuncionario.sdsFuncionario_Consulta.CommandText +
                                          ' AND (F.NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%') + ')';
  if not(CheckBox1.Checked) then
    fDMCadFuncionario.sdsFuncionario_Consulta.CommandText := fDMCadFuncionario.sdsFuncionario_Consulta.CommandText
                                                  + ' AND F.INATIVO <> ' + QuotedStr('S');
  fDMCadFuncionario.cdsFuncionario_Consulta.Open;
end;

procedure TfrmCadFuncionario.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadFuncionario.cdsFuncionario_ConsultaCODIGO.AsInteger;
    fDMCadFuncionario.prc_Excluir;
    prc_Consultar;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadFuncionario.cdsFuncionario_Consulta.Locate('CODIGO',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadFuncionario.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger;
  fDMCadFuncionario.prc_Gravar;
  if fDMCadFuncionario.cdsFuncionario.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadFuncionario.vMsgPessoa, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;
  pnlBotao_Processo.Enabled := False;
  btnInserirProcesso.Enabled := False;
  btnConfirmaProcesso.Enabled := True;
  btnCancelarProcesso.Enabled := True;
  btnExcluiProcesso.Enabled := False;
  pnlBotao_Processo.Enabled := False;
  prc_Consultar;
  fDMCadFuncionario.cdsFuncionario_Consulta.Locate('CODIGO',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadFuncionario.prc_Inserir_Registro(Tipo: String);
begin
  fDMCadFuncionario.prc_Inserir(Tipo);

  if fDMCadFuncionario.cdsFuncionario.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;

  TS_Pessoa_Dados.Enabled      := True;
  TS_Pessoa_Endereco.Enabled   := True;
  TS_Pessoa_Financeiro.Enabled := True;
  TS_Processos.Enabled         := True;

  pnlFinanceiro.Enabled          := True;
  pnlDados_Profissionais.Enabled := True;
  pnlBotao_Processo.Enabled      := True;
  prc_Habilita_Botoes_Processo;

  StatusBar1.Panels[2].Text := '';
  RZPageControlDados.ActivePage := TS_Pessoa_Dados;

  DBEdit7.SetFocus;
end;

procedure TfrmCadFuncionario.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFuncionario.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    fDMCadFuncionario.cdsFuncionarioUF.AsString := fDMCadFuncionario.cdsCidadeUF.AsString;
end;

procedure TfrmCadFuncionario.SpeedButton4Click(Sender: TObject);
begin
  fDMCadFuncionario.cdsCidade.Close;
  fDMCadFuncionario.cdsCidade.Open;
end;

procedure TfrmCadFuncionario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadFuncionario.cdsFuncionario);
end;

procedure TfrmCadFuncionario.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFuncionario.DBEdit6Enter(Sender: TObject);
begin
  fDMCadFuncionario.cdsFuncionarioCPF.EditMask := '000.000.000-00';
end;

procedure TfrmCadFuncionario.DBEdit6Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if not ValidaCPF(DBEdit6.Text) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadFuncionario.cdsFuncionarioCPF.Clear;
    DBEdit6.SetFocus;
  end;
end;

procedure TfrmCadFuncionario.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadFuncionario.cdsFuncionario_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadFuncionario.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadFuncionario.cdsFuncionario_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadFuncionario.clearClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    Edit4.Clear;
end;

procedure TfrmCadFuncionario.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadFuncionario.cdsFuncionario.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Funcionario;
  end;
end;

procedure TfrmCadFuncionario.prc_Posiciona_Funcionario;
begin
  fDMCadFuncionario.prc_Localizar(fDMCadFuncionario.cdsFuncionario_ConsultaCODIGO.AsInteger);
  fDMCadFuncionario.cdsFuncionario_Reajuste.Close;
  fDMCadFuncionario.cdsFuncionario_Reajuste.Open;
end;

procedure TfrmCadFuncionario.DBEdit28KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProcesso_Pos := fDMCadFuncionario.cdsFuncionario_ProcID_PROCESSO.AsInteger;
    frmSel_Processo := TfrmSel_Processo.Create(Self);
    frmSel_Processo.ShowModal;
    if vCodProcesso_Pos > 0 then
      fDMCadFuncionario.cdsFuncionario_ProcID_PROCESSO.AsInteger := vCodProcesso_Pos
    else
      fDMCadFuncionario.cdsFuncionario_ProcID_PROCESSO.Clear;
    prc_Abrir_qProcesso(fDMCadFuncionario.cdsFuncionario_ProcID_PROCESSO.AsInteger);
  end;
end;

procedure TfrmCadFuncionario.btnInserirProcessoClick(Sender: TObject);
begin
 try
   fDMCadFuncionario.cdsFuncionario_Proc.Insert;
   prc_Habilita_Botoes_Processo;
   SMDBGrid3.Enabled := False;
   edtNome_Processo.Clear;
   DBEdit28.Enabled := True;
   DBEdit28.SetFocus;
 finally

 end;

end;

procedure TfrmCadFuncionario.btnConfirmaProcessoClick(Sender: TObject);
begin
 if  fDMCadFuncionario.cdsFuncionario_ProcID_PROCESSO.AsInteger <= 0 then
 begin
   MessageDlg('Informe o ID do processo!',mtInformation,[mbOK],0);
   DBEdit28.SetFocus;
   Exit;
 end;
 try
   fDMCadFuncionario.cdsFuncionario_Proc.Post;
 finally
   prc_Habilita_Botoes_Processo;
   DBEdit28.Enabled := False;
   SMDBGrid3.Enabled := True;
 end;
end;

procedure TfrmCadFuncionario.DBEdit28Enter(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'F2 - Consulta';
end;

procedure TfrmCadFuncionario.DBEdit28Exit(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := '';
  if (trim(DBEdit28.Text) = '') or (trim(DBEdit28.Text) = '0') then
    prc_Abrir_qProcesso(0)
  else
  begin
    prc_Abrir_qProcesso(StrToInt(DBEdit28.Text));
    if fDMCadFuncionario.qProcesso.IsEmpty then
    begin
      MessageDlg('*** ID processo não localizada!', mtError, [mbOk], 0);
      DBEdit28.SetFocus;
    end;
  end;
end;

procedure TfrmCadFuncionario.btnExcluiProcessoClick(Sender: TObject);
begin
  fDMCadFuncionario.cdsFuncionario_Proc.Delete;
end;

procedure TfrmCadFuncionario.prc_Abrir_qProcesso(ID : Integer);
begin
  edtNome_Processo.Clear;
  if ID <= 0 then
    exit;
  fDMCadFuncionario.qProcesso.Close;
  fDMCadFuncionario.qProcesso.ParamByName('ID').AsInteger := ID;
  fDMCadFuncionario.qProcesso.Open;
  edtNome_Processo.Text := fDMCadFuncionario.qProcessoNOME.AsString;
end;

procedure TfrmCadFuncionario.SMDBGrid3CellClick(Column: TColumn);
begin
  prc_Abrir_qProcesso(fDMCadFuncionario.cdsFuncionario_ProcID_PROCESSO.AsInteger);
end;

procedure TfrmCadFuncionario.btnCancelarProcessoClick(Sender: TObject);
begin
  prc_Habilita_Botoes_Processo;
  fDMCadFuncionario.cdsFuncionario_Proc.Cancel;
end;

procedure TfrmCadFuncionario.prc_Habilita_Botoes_Processo;
begin
  btnInserirProcesso.Enabled  := not btnInserirProcesso.Enabled;
  btnConfirmaProcesso.Enabled := not btnConfirmaProcesso.Enabled;
  btnCancelarProcesso.Enabled := not btnCancelarProcesso.Enabled;
  btnExcluiProcesso.Enabled   := not btnExcluiProcesso.Enabled;
  SMDBGrid3.Enabled           := not SMDBGrid3.Enabled;
end;

end.
