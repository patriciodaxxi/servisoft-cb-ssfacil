unit UCadOS_Otica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UCBase, StdCtrls,
  UDMCadOrdemServico, Mask, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, RzEdit, RXDBCtrl, RzDBEdit,
  RxLookup, ToolEdit, CurrEdit, DBXpress, NxEdit, dateUtils, rlTypes, strUtils,
  RzPanel;

type
  TfrmCadOS_Otica = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlPesquisa: TPanel;
    lblCliente: TLabel;
    lblNumNota: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtCliente: TEdit;
    ceOS: TCurrencyEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    UCControls2: TUCControls;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    btnImprimir: TNxButton;
    Label21: TLabel;
    Label23: TLabel;
    NxDatePicker3: TNxDatePicker;
    NxDatePicker4: TNxDatePicker;
    pnlCliente: TPanel;
    Label2: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    DBText2: TDBText;
    RzGroupBox1: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    Label27: TLabel;
    DBEdit7: TDBEdit;
    Label28: TLabel;
    DBEdit8: TDBEdit;
    Label29: TLabel;
    DBEdit9: TDBEdit;
    Label30: TLabel;
    DBEdit10: TDBEdit;
    Label33: TLabel;
    DBEdit11: TDBEdit;
    Label34: TLabel;
    DBEdit12: TDBEdit;
    Label35: TLabel;
    DBEdit13: TDBEdit;
    Label36: TLabel;
    DBEdit14: TDBEdit;
    Label37: TLabel;
    DBEdit15: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label53: TLabel;
    DBEdit28: TDBEdit;
    RzGroupBox3: TRzGroupBox;
    Label54: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label55: TLabel;
    DBEdit29: TDBEdit;
    Label56: TLabel;
    DBEdit30: TDBEdit;
    Label57: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit31: TDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label20: TLabel;
    Label25: TLabel;
    DBDateEdit2: TDBDateEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    Label61: TLabel;
    Label9: TLabel;
    DBEdit32: TDBEdit;
    Label17: TLabel;
    DBEdit33: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_OS;
    procedure prc_Habilitar_Campos;
    procedure prc_Consultar(ID: Integer);
  public
    { Public declarations }
  end;

var
  frmCadOS_Otica: TfrmCadOS_Otica;

implementation

uses rsDBUtils, USel_Pessoa, USel_Produto, uUtilPadrao, UEscolhe_Filial;

{$R *.dfm}

procedure TfrmCadOS_Otica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOS_Otica.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDMCadOrdemServico := TDMCadOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMCadOrdemServico);

  fDMCadOrdemServico.prc_Abrir_cdsCliente;

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;

  NxDatePicker3.Clear;
  NxDatePicker4.Clear;
  btnConsultarClick(Sender);
end;

procedure TfrmCadOS_Otica.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOS_Otica.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOrdemServico);
end;

procedure TfrmCadOS_Otica.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtCliente.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadOS_Otica.prc_Limpar_Edit_Consulta;
begin
  ceOS.Clear;
  edtCliente.Clear;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
end;

procedure TfrmCadOS_Otica.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCadOrdemServico.cdsOrdemServico.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadOS_Otica.RxDBLookupCombo3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
  if (Key = Vk_F5) then
  begin
    fDMCadOrdemServico.cdsCliente.Close;
    fDMCadOrdemServico.cdsCliente.Open;
  end;
end;

procedure TfrmCadOS_Otica.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOS_Otica.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_OS;

  if fDMCadOrdemServico.cdsOrdemServico.IsEmpty then
    Exit;

  if (fDMCadOrdemServico.cdsOrdemServicoFATURADO.AsString = 'P') or (fDMCadOrdemServico.cdsOrdemServicoFATURADO.AsString = 'S') then
  begin
    MessageDlg('*** OS já faturada, não pode ser excluida!', mtInformation, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadOS_Otica.prc_Inserir_Registro;
begin
  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;
  if fDMCadOrdemServico.cdsFilial.RecordCount > 1 then
  begin
    frmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    frmEscolhe_Filial.ShowModal;
    FreeAndNil(frmEscolhe_Filial);
  end
  else
  begin
    fDMCadOrdemServico.cdsFilial.Last;
    vFilial      := fDMCadOrdemServico.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;
  fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadOrdemServico.prc_Inserir(True);

  lblNome_Filial.Caption := vFilial_Nome;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse] then
    exit;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger    := vFilial;
  fDMCadOrdemServico.cdsOrdemServicoTP_SIMPLES.AsString := 'S';
  fDMCadOrdemServico.cdsOrdemServicoOBS.AsString        := fDMCadOrdemServico.cdsOSParametrosINFO_ADICIONAIS.AsString;
  fDMCadOrdemServico.cdsOrdemServicoTP_ORCAMENTO.AsString := '1';
  fDMCadOrdemServico.qProximo_Num.Close;
  fDMCadOrdemServico.qProximo_Num.Open;
  fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger := fDMCadOrdemServico.qProximo_NumNUM_OS.AsInteger + 1;
  fDMCadOrdemServico.qProximo_Num.Close;
  DBEdit1.SetFocus;
end;

procedure TfrmCadOS_Otica.prc_Posiciona_OS;
begin
  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);

  fDMCadOrdemServico.cdsOrdemServico_Simples.Close;
  fDMCadOrdemServico.cdsOrdemServico_Simples.Open;
  vFilial      := fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;

  fDMCadOrdemServico.cdsOrdemServico_Otica.Close;
  fDMCadOrdemServico.sdsOrdemServico_Otica.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOrdemServico_Otica.Open;
end;

procedure TfrmCadOS_Otica.prc_Excluir_Registro;
begin
  fDMCadOrdemServico.prc_Excluir;
end;

procedure TfrmCadOS_Otica.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadOS_Otica.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  pnlCliente.Enabled       := not(pnlCliente.Enabled);
end;

procedure TfrmCadOS_Otica.prc_Consultar(ID: Integer);
begin
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Close;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := 'NUM_OS';
  fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText     := fDMCadOrdemServico.ctConsulta +
                                                                 ' WHERE OS.TP_SIMPLES = ''S''';
  if ID > 0 then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.ID = ' + IntToStr(ID);

  if not(RxDBLookupCombo2.Text = '') then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if ceOS.AsInteger > 0 then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.NUM_OS = ' + ceOS.Text;
  if Trim(edtCliente.Text) <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND (OS.SOLICITANTE_NOME LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + ')';
  if NxDatePicker1.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date));
  if NxDatePicker2.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.Date));
  if NxDatePicker3.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker3.Date));
  if NxDatePicker4.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker4.Date));
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Open;
end;

procedure TfrmCadOS_Otica.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse]) or not(fDMCadOrdemServico.cdsOrdemServico.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico.CancelUpdates;

  prc_Habilitar_Campos;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadOS_Otica.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
begin
  fDMCadOrdemServico.prc_Gravar(True);
  vIDAux := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled := True;
  prc_Habilitar_Campos;

  prc_Consultar(vIDAux);

  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadOS_Otica.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadOS_Otica.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico.IsEmpty) or
    not(fDMCadOrdemServico.cdsOrdemServico.Active) or
    (fDMCadOrdemServico.cdsOrdemServicoID.AsInteger < 1) then
    exit;

  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;

  if (fDMCadOrdemServico.cdsOrdemServicoFATURADO.AsString = 'S') then
  begin
    MessageDlg('*** OS já faturada, não pode ser alterada!', mtInformation, [mbOk], 0);
    Exit;
  end;

  fDMCadOrdemServico.cdsOrdemServico.Edit;

  fDMCadOrdemServico.cdsOrdemServico_Otica.Edit;

  if fDMCadOrdemServico.cdsClienteCODIGO.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger then
    fDMCadOrdemServico.cdsCliente.Locate('CODIGO',fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadOrdemServico.cdsFilialID.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger) then
    fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger,[loCaseInsensitive]);

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadOS_Otica.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or
    (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
    (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
    Exit;
  vTipo_Config_Email := 5;

  fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);

  fDMCadOrdemServico.cdsOSImp_Otica.Close;
  fDMCadOrdemServico.sdsOSImp_Otica.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSImp_Otica.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\OS_Ranieri.fr3';
  if FileExists(vArq) then
    fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadOrdemServico.frxReport1.ShowReport;
end;

procedure TfrmCadOS_Otica.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit, dsInsert]) then
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or
        (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_OS;
    end;
end;

procedure TfrmCadOS_Otica.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.KeyValue > 0 then
  begin
    fDMCadOrdemServico.cdsCliente.Locate('Codigo',RxDBLookupCombo3.KeyValue,[loCaseInsensitive]);
    fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_NOME.AsString := RxDBLookupCombo3.Text;
    fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_FONE.AsString := fDMCadOrdemServico.cdsClienteTELEFONE1.AsString;
  end;
end;

procedure TfrmCadOS_Otica.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDMCadOrdemServico.CdsCondPgto.Close;
    fDMCadOrdemServico.CdsCondPgto.Open;
  end;
end;

procedure TfrmCadOS_Otica.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadOrdemServico.CdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOS_Otica.Button1Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico.Open;
end;

procedure TfrmCadOS_Otica.Button2Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOS_Exec.Post;
  fDMCadOrdemServico.cdsOrdemServico.ApplyUpdates(0);

end;

procedure TfrmCadOS_Otica.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMCadOrdemServico.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOS_Otica.RxDBLookupCombo5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadOrdemServico.cdsOrdemServico_OticaID_LENTE.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'A';
    frmSel_Produto.ShowModal;
    fDMCadOrdemServico.cdsOrdemServico_OticaID_LENTE.AsInteger := vCodProduto_Pos;
    RxDBLookupCombo5.SetFocus;
  end;
end;

procedure TfrmCadOS_Otica.RxDBLookupCombo6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadOrdemServico.cdsOrdemServico_OticaID_ARMACAO.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'A';
    frmSel_Produto.ShowModal;
    fDMCadOrdemServico.cdsOrdemServico_OticaID_ARMACAO.AsInteger := vCodProduto_Pos;
    RxDBLookupCombo6.SetFocus;
  end;
end;

procedure TfrmCadOS_Otica.DBEdit6Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_OticaVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsFloat
                                                                - fDMCadOrdemServico.cdsOrdemServicoVLR_ENTRADA.AsFloat));
end;

procedure TfrmCadOS_Otica.DBEdit32Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_OticaVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsFloat
                                                                - fDMCadOrdemServico.cdsOrdemServicoVLR_ENTRADA.AsFloat));
end;

procedure TfrmCadOS_Otica.DBEdit1Exit(Sender: TObject);
begin
  if fDMCadOrdemServico.fnc_Existe_NumOS(fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger,fDMCadOrdemServico.cdsOrdemServicoID.AsInteger) then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtInformation, [mbOk], 0);
    Exit;
    DBEdit1.SetFocus;
  end;
end;

end.
