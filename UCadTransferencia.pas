unit UCadTransferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadTransferencia, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, RxLookup, ToolEdit, RXDBCtrl, NxEdit,
  ComCtrls;

type
  TfrmCadTransferencia = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    UCControls1: TUCControls;
    DBDateEdit1: TDBDateEdit;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    NxDatePicker1: TNxDatePicker;
    Label6: TLabel;
    NxDatePicker2: TNxDatePicker;
    Label7: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    edtNome_OrcOrigem: TEdit;
    edtNome_OrcDestino: TEdit;
    StatusBar1: TStatusBar;
    Label10: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label11: TLabel;
    DBEdit5: TDBEdit;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMCadTransferencia: TDMCadTransferencia;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0);
    procedure prc_Posicionar_Transferencia;
    procedure prc_Abrir_qConta_Orcamento(ID: Integer; Tipo_Label: Integer);

  public
    { Public declarations }

  end;

var
  frmCadTransferencia: TfrmCadTransferencia;

implementation

uses DmdDatabase, rsDBUtils, UMenu, DateUtils, uUtilPadrao, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTransferencia.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTransferencia.cdsTransferencia_Consulta.IsEmpty then
    exit;

  prc_Posicionar_Transferencia;

  if fDMCadTransferencia.cdsTransferencia.IsEmpty then
    Exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  prc_Consultar;
end;

procedure TfrmCadTransferencia.prc_Excluir_Registro;
begin
  fDMCadTransferencia.prc_Excluir;
end;

procedure TfrmCadTransferencia.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  if fDMCadTransferencia.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadTransferencia.vMSGErro, mtError, [mbOk], 0);
    exit;
  end;
  vIDAux := fDMCadTransferencia.cdsTransferenciaID.AsInteger;
  fDMCadTransferencia.prc_Gravar;
  if fDMCadTransferencia.cdsTransferencia.State in [dsEdit,dsInsert] then
    exit;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  prc_Consultar(vIDAux);
end;

procedure TfrmCadTransferencia.prc_Inserir_Registro;
begin
  fDMCadTransferencia.prc_Inserir;

  if fDMCadTransferencia.cdsTransferencia.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBDateEdit1.SetFocus;
end;

procedure TfrmCadTransferencia.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDMCadTransferencia := TDMCadTransferencia.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTransferencia);
  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;
  uUtilPadrao.fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;
end;

procedure TfrmCadTransferencia.prc_Consultar(ID: Integer = 0);
begin
  fDMCadTransferencia.cdsTransferencia_Consulta.Close;
  fDMCadTransferencia.sdsTransferencia_Consulta.CommandText := fDMCadTransferencia.ctConsulta + ' WHERE 0 = 0 ';
  if id > 0 then
    fDMCadTransferencia.sdsTransferencia_Consulta.CommandText := fDMCadTransferencia.sdsTransferencia_Consulta.CommandText + ' AND T.ID = ' + IntToStr(ID)
  else
  begin
    if NxDatePicker1.Text <> '' then
      fDMCadTransferencia.sdsTransferencia_Consulta.CommandText := fDMCadTransferencia.sdsTransferencia_Consulta.CommandText
                                                        + ' AND T.DTEMISSAO >= '
                                                        + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadTransferencia.sdsTransferencia_Consulta.CommandText := fDMCadTransferencia.sdsTransferencia_Consulta.CommandText
                                                        + ' AND T.DTEMISSAO <= '
                                                        + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
  end;
  fDMCadTransferencia.cdsTransferencia_Consulta.Open;
end;

procedure TfrmCadTransferencia.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTransferencia.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTransferencia.cdsTransferencia.State in [dsBrowse]) or not(fDMCadTransferencia.cdsTransferencia.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTransferencia.cdsTransferencia.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTransferencia.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTransferencia.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTransferencia.cdsTransferencia.IsEmpty) or not(fDMCadTransferencia.cdsTransferencia.Active) or (fDMCadTransferencia.cdsTransferenciaID.AsInteger < 1) then
    exit;

  fDMCadTransferencia.cdsTransferencia.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadTransferencia.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTransferencia.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTransferencia);
end;

procedure TfrmCadTransferencia.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTransferencia.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTransferencia.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    NxDatePicker1.SetFocus;
end;

procedure TfrmCadTransferencia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadTransferencia.cdsTransferencia.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCadTransferencia.cdsTransferencia.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadTransferencia.SpeedButton2Click(Sender: TObject);
begin
  fDMCadTransferencia.cdsContas.Close;
  fDMCadTransferencia.cdsContas.Open;
end;

procedure TfrmCadTransferencia.prc_Posicionar_Transferencia;
begin
  fDMCadTransferencia.prc_Localizar(fDMCadTransferencia.cdsTransferencia_ConsultaID.AsInteger);
end;

procedure TfrmCadTransferencia.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadTransferencia.cdsTransferencia.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
      prc_Posicionar_Transferencia;
  end;
end;

procedure TfrmCadTransferencia.DBEdit1Enter(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'F2 - Consulta Conta Orçamento';
end;

procedure TfrmCadTransferencia.DBEdit1Exit(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := '';
  if (trim(DBEdit1.Text) = '') or (trim(DBEdit1.Text) = '0') then
    prc_Abrir_qConta_Orcamento(0,1)
  else
  begin
    prc_Abrir_qConta_Orcamento(StrToInt(DBEdit1.Text),1);
    if fDMCadTransferencia.qConta_Orcamento.IsEmpty then
    begin
      MessageDlg('*** ID Conta de orçamento não cadastrada', mtError, [mbOk], 0);
      DBEdit1.SetFocus;
    end;
  end;

end;

procedure TfrmCadTransferencia.DBEdit3Exit(Sender: TObject);
begin
   StatusBar1.Panels[2].Text := '';
  if (trim(DBEdit3.Text) = '') or (trim(DBEdit3.Text) = '0') then
    prc_Abrir_qConta_Orcamento(0,2)
  else
  begin
    prc_Abrir_qConta_Orcamento(StrToInt(DBEdit3.Text),2);
    if fDMCadTransferencia.qConta_Orcamento.IsEmpty then
    begin
      MessageDlg('*** ID Conta de orçamento não cadastrada', mtError, [mbOk], 0);
      DBEdit3.SetFocus;
    end;
  end;

end;

procedure TfrmCadTransferencia.DBEdit3Enter(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'F2 - Consulta Conta Orçamento';
end;

procedure TfrmCadTransferencia.prc_Abrir_qConta_Orcamento(ID: Integer; Tipo_Label:integer);
begin
  if  Tipo_Label = 1 then
    edtNome_OrcOrigem.Clear;
  if  Tipo_Label = 2 then
    edtNome_OrcDestino.Clear;
  if ID <= 0 then
    exit;
  fDMCadTransferencia.qConta_Orcamento.Close;
  fDMCadTransferencia.qConta_Orcamento.ParamByName('ID').AsInteger := ID;
  fDMCadTransferencia.qConta_Orcamento.Open;
  if Tipo_Label = 1 then
    edtNome_OrcOrigem.Text := fDMCadTransferencia.qConta_OrcamentoDESCRICAO.AsString;
  if Tipo_Label = 2 then
    edtNome_OrcDestino.Text := fDMCadTransferencia.qConta_OrcamentoDESCRICAO.AsString;

end;

procedure TfrmCadTransferencia.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_ORIGEM.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 2;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_ORIGEM.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_ORIGEM.Clear;
    prc_Abrir_qConta_Orcamento(fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_ORIGEM.AsInteger,1);
  end;
end;

procedure TfrmCadTransferencia.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_DESTINO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 2;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_DESTINO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_DESTINO.Clear;
    prc_Abrir_qConta_Orcamento(fDMCadTransferencia.cdsTransferenciaID_CONTA_ORC_DESTINO.AsInteger,2);
  end;
end;

end.
