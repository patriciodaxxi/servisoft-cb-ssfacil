unit uCadFuncionario_Res;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, Mask,
  RxLookup, db, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadFuncionario, RxDBComb, RzPanel,
  ToolEdit, RXDBCtrl, NxCollection, ComCtrls;

type
  TfrmCadFuncionario_Res = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    btnInserir: TNxButton;
    clear: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    StatusBar1: TStatusBar;
    pnlDados: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label30: TLabel;
    Label24: TLabel;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit26: TDBEdit;
    DBEdit22: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    RzPageControl2: TRzPageControl;
    TS_Processo: TRzTabSheet;
    pnlProcesso: TPanel;
    Label37: TLabel;
    SMDBGrid3: TSMDBGrid;
    DBEdit28: TDBEdit;
    edtNome_Processo: TEdit;
    pnlBotao_Processo: TPanel;
    btnInserirProcesso: TBitBtn;
    btnConfirmaProcesso: TBitBtn;
    btnCancelarProcesso: TBitBtn;
    btnExcluiProcesso: TBitBtn;
    TS_Setor: TRzTabSheet;
    Panel3: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnInserir_Setor: TNxButton;
    btnAlterar_Setor: TNxButton;
    btnExcluir_Setor: TNxButton;
    SMDBGrid2: TSMDBGrid;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
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
    procedure btnInserir_SetorClick(Sender: TObject);
    procedure btnAlterar_SetorClick(Sender: TObject);
    procedure btnExcluir_SetorClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadFuncionario: TDMCadFuncionario;
    vItem_Setor : Integer;

    procedure prc_Inserir_Registro(Tipo: String);
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_Funcionario;
    procedure prc_Abrir_qProcesso(ID : Integer);
    procedure prc_Habilita_Botoes_Processo;
    procedure prc_Habilita;
  public
    { Public declarations }

  end;
var
  frmCadFuncionario_Res: TfrmCadFuncionario_Res;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, USel_Processo;

{$R *.dfm}

procedure TfrmCadFuncionario_Res.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFuncionario_Res.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFuncionario);
end;

procedure TfrmCadFuncionario_Res.FormShow(Sender: TObject);
begin
  fDMCadFuncionario := TDMCadFuncionario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFuncionario);
  fDMCadFuncionario.cdsSetor.Open;
  fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;
  StatusBar1.Panels[2].Text := 'Duplo Click para consultar';
  TS_Processo.TabVisible    := (fDMCadFuncionario.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  TS_Setor.TabVisible       := (fDMCadFuncionario.qParametros_LoteLOTE_TEXTIL.AsString <> 'S');
  if fDMCadFuncionario.qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
    RzPageControl2.ActivePage := TS_Processo
  else
    RzPageControl2.ActivePage := TS_Setor;
  DBCheckBox4.Visible := (fDMCadFuncionario.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  DBCheckBox2.Visible := (fDMCadFuncionario.qParametros_LoteLOTE_CALCADO_NOVO.AsString = 'S');
end;

procedure TfrmCadFuncionario_Res.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro(fMenu.vTipoPessoa);
end;

procedure TfrmCadFuncionario_Res.btnExcluirClick(Sender: TObject);
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

procedure TfrmCadFuncionario_Res.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadFuncionario_Res.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadFuncionario.cdsFuncionario.IsEmpty) or not(fDMCadFuncionario.cdsFuncionario.Active) or (fDMCadFuncionario.cdsFuncionarioCODIGO.AsInteger < 1) then
    exit;
  fDMCadFuncionario.cdsFuncionario.Edit;
  TS_Consulta.TabEnabled := False;
  prc_Habilita;
end;

procedure TfrmCadFuncionario_Res.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadFuncionario_Res.btnCancelarClick(Sender: TObject);
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

  prc_Habilita;
end;

procedure TfrmCadFuncionario_Res.prc_Consultar;
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

procedure TfrmCadFuncionario_Res.prc_Excluir_Registro;
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

procedure TfrmCadFuncionario_Res.prc_Gravar_Registro;
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
  prc_Habilita;

  prc_Consultar;
  fDMCadFuncionario.cdsFuncionario_Consulta.Locate('CODIGO',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadFuncionario_Res.prc_Inserir_Registro(Tipo: String);
begin
  fDMCadFuncionario.prc_Inserir(Tipo);

  if fDMCadFuncionario.cdsFuncionario.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  prc_Habilita;
  StatusBar1.Panels[2].Text := '';
  DBEdit7.SetFocus;
end;

procedure TfrmCadFuncionario_Res.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFuncionario_Res.SpeedButton4Click(Sender: TObject);
begin
  fDMCadFuncionario.cdsCidade.Close;
  fDMCadFuncionario.cdsCidade.Open;
end;

procedure TfrmCadFuncionario_Res.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadFuncionario.cdsFuncionario);
end;

procedure TfrmCadFuncionario_Res.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFuncionario_Res.DBEdit6Enter(Sender: TObject);
begin
  fDMCadFuncionario.cdsFuncionarioCPF.EditMask := '000.000.000-00';
end;

procedure TfrmCadFuncionario_Res.DBEdit6Exit(Sender: TObject);
var
  vAux: String;
begin
end;

procedure TfrmCadFuncionario_Res.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadFuncionario.cdsFuncionario_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadFuncionario_Res.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmCadFuncionario_Res.clearClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    Edit4.Clear;
end;

procedure TfrmCadFuncionario_Res.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadFuncionario.cdsFuncionario.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Funcionario;
  end;
end;

procedure TfrmCadFuncionario_Res.prc_Posiciona_Funcionario;
begin
  fDMCadFuncionario.prc_Localizar(fDMCadFuncionario.cdsFuncionario_ConsultaCODIGO.AsInteger);
  fDMCadFuncionario.cdsFuncionario_Reajuste.Close;
  fDMCadFuncionario.cdsFuncionario_Reajuste.Open;
end;

procedure TfrmCadFuncionario_Res.DBEdit28KeyDown(Sender: TObject;
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

procedure TfrmCadFuncionario_Res.btnInserirProcessoClick(Sender: TObject);
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

procedure TfrmCadFuncionario_Res.btnConfirmaProcessoClick(Sender: TObject);
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

procedure TfrmCadFuncionario_Res.DBEdit28Enter(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'F2 - Consulta';
end;

procedure TfrmCadFuncionario_Res.DBEdit28Exit(Sender: TObject);
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

procedure TfrmCadFuncionario_Res.btnExcluiProcessoClick(Sender: TObject);
begin
  fDMCadFuncionario.cdsFuncionario_Proc.Delete;
end;

procedure TfrmCadFuncionario_Res.prc_Abrir_qProcesso(ID : Integer);
begin
  edtNome_Processo.Clear;
  if ID <= 0 then
    exit;
  fDMCadFuncionario.qProcesso.Close;
  fDMCadFuncionario.qProcesso.ParamByName('ID').AsInteger := ID;
  fDMCadFuncionario.qProcesso.Open;
  edtNome_Processo.Text := fDMCadFuncionario.qProcessoNOME.AsString;
end;

procedure TfrmCadFuncionario_Res.SMDBGrid3CellClick(Column: TColumn);
begin
  prc_Abrir_qProcesso(fDMCadFuncionario.cdsFuncionario_ProcID_PROCESSO.AsInteger);
end;

procedure TfrmCadFuncionario_Res.btnCancelarProcessoClick(Sender: TObject);
begin
  prc_Habilita_Botoes_Processo;
  fDMCadFuncionario.cdsFuncionario_Proc.Cancel;
end;

procedure TfrmCadFuncionario_Res.prc_Habilita_Botoes_Processo;
begin
  btnInserirProcesso.Enabled  := not btnInserirProcesso.Enabled;
  btnConfirmaProcesso.Enabled := not btnConfirmaProcesso.Enabled;
  btnCancelarProcesso.Enabled := not btnCancelarProcesso.Enabled;
  btnExcluiProcesso.Enabled   := not btnExcluiProcesso.Enabled;
  SMDBGrid3.Enabled           := not SMDBGrid3.Enabled;
end;

procedure TfrmCadFuncionario_Res.btnInserir_SetorClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Setor não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadFuncionario.prc_Inserir_Setor;
  fDMCadFuncionario.cdsFuncionario_SetorID_SETOR.AsInteger  := RxDBLookupCombo1.KeyValue;
  fDMCadFuncionario.cdsFuncionario_SetorNOME_SETOR.AsString := RxDBLookupCombo1.Text;
  fDMCadFuncionario.cdsFuncionario_Setor.Post;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
  vItem_Setor := 0;
end;

procedure TfrmCadFuncionario_Res.btnAlterar_SetorClick(Sender: TObject);
begin
  if fDMCadFuncionario.cdsFuncionario_SetorITEM.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe setor para ser alterado!', mtError, [mbOk], 0);
    exit;
  end;

  vItem_Setor := fDMCadFuncionario.cdsFuncionario_SetorITEM.AsInteger;
  RxDBLookupCombo1.KeyValue := fDMCadFuncionario.cdsFuncionario_SetorID_SETOR.AsInteger;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadFuncionario_Res.btnExcluir_SetorClick(Sender: TObject);
begin
  if fDMCadFuncionario.cdsFuncionario_SetorITEM.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe setor para ser excluido!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja excluir o setor selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadFuncionario.cdsFuncionario_Setor.Delete;
end;

procedure TfrmCadFuncionario_Res.prc_Habilita;
begin
  btnAlterar.Enabled           := not(btnAlterar.Enabled);
  btnConfirmar.Enabled         := not(btnConfirmar.Enabled);
  pnlDados.Enabled             := not(pnlDados.Enabled);
  pnlBotao_Processo.Enabled    := not(pnlBotao_Processo.Enabled);
  prc_Habilita_Botoes_Processo;
  btnInserir_Setor.Enabled     := not(btnInserir_Setor.Enabled);
  btnAlterar_Setor.Enabled     := not(btnAlterar_Setor.Enabled);
  btnExcluir_Setor.Enabled     := not(btnExcluir_Setor.Enabled); 
end;

end.
