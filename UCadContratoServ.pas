unit UCadContratoServ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOS, ComCtrls, 
  DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus,
  RXDBCtrl, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection, RzDTP, StrUtils, DateUtils, UCadContrato_Servico_Int,
  RzDBDTP, ComObj, ShellApi, ValorPor;

type
  TfrmCadContratoServ = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    Edit2: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label16: TLabel;
    pnlCliente: TPanel;
    Panel11: TPanel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzPageControl2: TRzPageControl;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    TabSheet3: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    UCControls1: TUCControls;
    RzGroupBox3: TRzGroupBox;
    Label8: TLabel;
    DBDateEdit4: TDBDateEdit;
    RzGroupBox2: TRzGroupBox;
    Label4: TLabel;
    DBDateEdit3: TDBDateEdit;
    RzGroupBox4: TRzGroupBox;
    Label9: TLabel;
    DBDateEdit5: TDBDateEdit;
    Label10: TLabel;
    DateEdit1: TDateEdit;
    Label11: TLabel;
    DateEdit2: TDateEdit;
    Label13: TLabel;
    DateEdit3: TDateEdit;
    Label15: TLabel;
    DateEdit4: TDateEdit;
    Label17: TLabel;
    DateEdit5: TDateEdit;
    Label19: TLabel;
    DateEdit6: TDateEdit;
    Label20: TLabel;
    DateEdit7: TDateEdit;
    Label21: TLabel;
    DateEdit8: TDateEdit;
    ComboBox1: TComboBox;
    Label23: TLabel;
    btnImprimir: TNxButton;
    PopupMenu1: TPopupMenu;
    Normal1: TMenuItem;
    Conferncia1: TMenuItem;
    Shape6: TShape;
    Label31: TLabel;
    ValorPorExtenso1: TValorPorExtenso;
    RzPageControl3: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid_Dupl2: TSMDBGrid;
    Label72: TLabel;
    rxdbCondicaoPgto: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    btnGerarParcelas: TNxButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure pnlClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Panel4Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure Conferncia1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vID_Cliente_Ant: Integer;

    fDMCadOS: TDMCadOS;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadContrato_Servico_Int: TfrmCadContrato_Servico_Int;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_OS;
    procedure prc_Posicionar_Cliente;

    procedure prc_Habilitar_Campos;

    function fnc_Verifica_Registro: Boolean;
    function fnc_Cancelar: Boolean;

    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }
    cTXTStream: TMemoryStream;
    cXMLStream: TMemoryStream;
    sXMLNFSe: TMemoryStream;
  end;

var
  frmCadContratoServ: TfrmCadContratoServ;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, USel_Pessoa, URelContrato_Det;

{$R *.dfm}

procedure TfrmCadContratoServ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadContratoServ.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    exit;

  prc_Posiciona_OS;

  if fDMCadOS.cdsOS.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadContratoServ.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadContratoServ.prc_Excluir_Registro;
begin
  fDMCadOS.prc_Excluir;
end;

procedure TfrmCadContratoServ.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
begin
  if (fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString = 'S') and (fDMCadOS.cdsOSANO_CONTRATO.AsInteger < 2000) then
  begin
    MessageDlg('*** Ano do contrato não informado', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMCadOS.cdsOSNUM_CONTRATO.AsInteger <= 0) and (fDMCadOS.qParametrosGERAR_NUM_AUT_CONTRATO.AsString <> 'N') then
    fDMCadOS.cdsOSNUM_CONTRATO.AsInteger := fDMCadOS.fnc_Busca_Num_Contrato(fDMCadOS.cdsOSANO_CONTRATO.AsInteger,'C');
  //vVlrTotal := 0;
  {fDMCadOS.cdsOS_Servico_Int.First;
  while not fDMCadOS.cdsOS_Servico_Int.Eof do
  begin
    if fDMCadOS.cdsOS_Servico_IntSOMAR_DIMINUIR.AsString = 'S' then
      vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat))
    else
      vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal - fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat));
    fDMCadOS.cdsOS_Servico_Int.Next;
  end;}
  fDMCadOS.cdsOSVLR_SERVICO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOSVLR_TOTAL.AsFloat));

  fDMCadOS.prc_Gravar;
  vIDAux := fDMCadOS.cdsOSID.AsInteger;
  if fDMCadOS.cdsOS.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOS.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled   := True;
  prc_Habilitar_Campos;

  prc_Consultar(vIDAux);

  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadContratoServ.prc_Inserir_Registro;
begin
  fDMCadOS.qParametros.Close;
  fDMCadOS.qParametros.Open;
  if fDMCadOS.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadOS.cdsFilial.Last;
    vFilial      := fDMCadOS.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadOS.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadOS.prc_Abrir_Natureza;
  fDMCadOS.prc_Abrir_Servico;

  fDMCadOS.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadOS.cdsOS.State in [dsBrowse] then
    exit;

  prc_Habilitar_Campos;

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;

  fDMCadOS.cdsOSFILIAL.AsInteger  := vFilial;
  fDMCadOS.cdsOSTIPO_REG.AsString := 'S';
  vTipoNotaAnt := 'S';
  RxDBLookupCombo3.SetFocus;
end;

procedure TfrmCadContratoServ.FormShow(Sender: TObject);
var
  i: Integer;
  vTexto: String;
begin
  fDMCadOS := TDMCadOS.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadOS);
  fDMCadOS.prc_Abrir_cdsCliente;

  if fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString <> 'S' then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
    begin
      vTexto := SMDBGrid1.Columns[i-1].FieldName;
      if vTexto = 'ANO_CONTRATO' then
        SMDBGrid1.Columns[i-1].Visible := False;
    end;
  end;

  DBEdit1.ReadOnly := (fDMCadOS.qParametrosGERAR_NUM_AUT_CONTRATO.AsString <> 'N');
  DBEdit1.TabStop  := not(DBEdit1.ReadOnly);
  if (fDMCadOS.qParametrosGERAR_NUM_AUT_CONTRATO.AsString <> 'N') then
    DBEdit1.Color := clBtnFace
  else
    DBEdit1.Color := clWindow;
  Label3.Visible  := (fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString = 'S');
  DBEdit3.Visible := (fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString = 'S');
end;

procedure TfrmCadContratoServ.prc_Consultar(ID: Integer);
begin
  fDMCadOS.cdsOS_Consulta.Close;
  fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.ctConsulta;
  if ID > 0 then
    fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                          ' WHERE OS.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                          ' WHERE TIPO_REG = ' + QuotedStr('S');
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                            ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                            ' AND OS.NUM_CONTRATO = ' + CurrencyEdit1.Text;
    if Trim(Edit2.Text) <> '' then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText
                                      + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                                      + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';

    if DateEdit1.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if DateEdit3.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTPRAZO_ENT >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTPRAZO_ENT <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
    if DateEdit6.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
    if DateEdit7.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTCONTRATO_INI >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit7.date));
    if DateEdit8.Date > 10 then
      fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                             ' AND OS.DTCONTRATO_INI <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit8.date));
    case ComboBox1.ItemIndex of
      0: fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText + ' AND OS.DTENTREGA IS NULL ';
      1: fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText + ' AND OS.DTENTREGA IS NOT NULL ';
    end;
  end;
  fDMCadOS.cdsOS_Consulta.Open;
end;

procedure TfrmCadContratoServ.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadContratoServ.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOS.cdsOS.State in [dsBrowse]) or not(fDMCadOS.cdsOS.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOS.cdsOS.CancelUpdates;

  prc_Habilitar_Campos;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadContratoServ.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
begin
  if (fDMCadOS.cdsOS.IsEmpty) or not(fDMCadOS.cdsOS.Active) or (fDMCadOS.cdsOSID.AsInteger < 1) then
    exit;

  fDMCadOS.qParametros.Close;
  fDMCadOS.qParametros.Open;

  fDMCadOS.cdsOS.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadContratoServ.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadContratoServ.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOS);
end;

procedure TfrmCadContratoServ.prc_Posiciona_OS;
begin
  fDMCadOS.prc_Localizar(fDMCadOS.cdsOS_ConsultaID.AsInteger);
  fDMCadOS.cdsOS_Servico_Int.Close;
  fDMCadOS.cdsOS_Servico_Int.Open;
  vFilial      := fDMCadOS.cdsOSFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadOS.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

function TfrmCadContratoServ.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadOS.cdsOS_Consulta.Active) or (fDMCadOS.cdsOS_Consulta.IsEmpty) or
        (fDMCadOS.cdsOS_ConsultaID.AsInteger < 1) then
    exit;
  Result := True;
end;

procedure TfrmCadContratoServ.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadOS.cdsOS.State in [dsEdit, dsInsert]) then
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadOS.cdsOS_Consulta.Active) or (fDMCadOS.cdsOS_Consulta.IsEmpty) or (fDMCadOS.cdsOS_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_OS;
      fDMCadOS.prc_Abrir_Natureza;
    end;
end;

procedure TfrmCadContratoServ.pnlClienteExit(Sender: TObject);
begin
  prc_Posicionar_Cliente;
end;

procedure TfrmCadContratoServ.prc_Posicionar_Cliente;
begin
  if fDMCadOS.cdsClienteCODIGO.AsInteger <> fDMCadOS.cdsOSID_CLIENTE.AsInteger then
    fDMCadOS.cdsCliente.Locate('CODIGO',fDMCadOS.cdsOSID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadOS.cdsFilialID.AsInteger <> fDMCadOS.cdsOSFILIAL.AsInteger) then
    fDMCadOS.cdsFilial.Locate('ID',fDMCadOS.cdsOSFILIAL.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadContratoServ.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  DBMemo1.ReadOnly         := not(DBMemo1.ReadOnly);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
end;

function TfrmCadContratoServ.fnc_Cancelar: Boolean;
begin
  Result := True;
  fDMCadOS.vMsgOS := '';

  if trim(fDMCadOS.vMsgOS) <> '' then
    Result := False;
end;

procedure TfrmCadContratoServ.SpeedButton1Click(Sender: TObject);
begin
  fDMCadOS.cdsCliente.Close;
  fDMCadOS.cdsCliente.Open;
end;

procedure TfrmCadContratoServ.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadOS.cdsOS);
end;

procedure TfrmCadContratoServ.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContratoServ.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContratoServ.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContratoServ.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if fDMCadOS.cdsClienteID_SERVICO.AsInteger > 0 then
    fDMCadOS.cdsOSID_SERVICO.AsInteger := fDMCadOS.cdsClienteID_SERVICO.AsInteger;
  if not(fDMCadOS.cdsClienteRETEM_ISS.IsNull) then
    fDMCadOS.cdsOSRETEM_ISS.AsString  := fDMCadOS.cdsClienteRETEM_ISS.AsString;
  if not(fDMCadOS.cdsClienteRETEM_CSLL.IsNull) then
    fDMCadOS.cdsOSRETEM_CSLL.AsString := fDMCadOS.cdsClienteRETEM_CSLL.AsString;
  if not(fDMCadOS.cdsClienteRETEM_INSS.IsNull) then
    fDMCadOS.cdsOSRETEM_INSS.AsString := fDMCadOS.cdsClienteRETEM_INSS.AsString;
  if not(fDMCadOS.cdsClienteRETEM_PISCOFINS.IsNull) then
    fDMCadOS.cdsOSRETEM_PISCOFINS.AsString := fDMCadOS.cdsClienteRETEM_PISCOFINS.AsString;
end;

procedure TfrmCadContratoServ.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadOS.cdsOSID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadContratoServ.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOS.cdsOS_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadContratoServ.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
end;

procedure TfrmCadContratoServ.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadOS.cdsOS_Consulta.Active) or (fDMCadOS.cdsOS_Consulta.IsEmpty) then
    exit;
  if fDMCadOS.cdsOS_ConsultaDTENTREGA.AsDateTime > 10 then
    Background := clMoneyGreen;
end;

procedure TfrmCadContratoServ.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadContratoServ.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    CurrencyEdit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadContratoServ.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
  Edit2.Clear;
end;

procedure TfrmCadContratoServ.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadContratoServ.Conferncia1Click(Sender: TObject);
begin
  vTipo_Config_Email := 3;
  fRelContrato_Det          := TfRelContrato_Det.Create(Self);
  fRelContrato_Det.fDMCadOS := fDMCadOS;
  fRelContrato_Det.RLReport1.PreviewModal;
  fRelContrato_Det.RLReport1.Free;
  FreeAndNil(fRelContrato_Det);
end;

procedure TfrmCadContratoServ.DBEdit5Enter(Sender: TObject);
begin
  fDMCadOS.cdsOSCPF_SINDICO.EditMask := '000.000.000-00';
end;

procedure TfrmCadContratoServ.DBEdit5Exit(Sender: TObject);
begin
  if not ValidaCPF(DBEdit5.Text) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadOS.cdsOSCPF_SINDICO.Clear;
    DBEdit5.SetFocus;
  end;
end;

procedure TfrmCadContratoServ.Normal1Click(Sender: TObject);
////// declarar ShellApi, ComObj
var
  arquivo, vPasta: String;
  WinWord, Docs, Doc: Variant;
  vNumContrato, vNumContrato_Arq: String;
begin
 // Pega o nome do arquivo...
  vTipo_Config_Email := 3;
  vPasta   := ExtractFilePath(Application.ExeName) + 'Contratos\';

  vNumContrato_Arq := fDMCadOS.cdsOS_ConsultaNUM_CONTRATO.AsString;
  if (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger > 0) and (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger < 9999) then
    vNumContrato_Arq := fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsString + '_' + vNumContrato_Arq;

  arquivo := vPasta + fDMCadOS.cdsOS_ConsultaNOME_CLIENTE.AsString + '_' +
             vNumContrato_Arq + '.doc';

  if not (fileExists(arquivo)) then
  begin
    arquivo := ExtractFilePath(Application.ExeName) + 'Contrato.doc';
    if not (fileExists(arquivo)) then
    begin
      ShowMessage('Arquivo de modelo ' + arquivo + ' não localizado!');
      Exit;
    end;
  end;

  if not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Contratos') then
  begin
    ShowMessage('Pasta ' + vPasta + ' deve ser criada!');
    Exit;
  end;

  // Cria objeto principal de controle
  WinWord := CreateOleObject('Word.Application');

  //Não Mostra o Word
  WinWord.Visible := False;

  // Pega uma interface para o objeto que manipula documentos
  Docs := WinWord.Documents;

  // Abre um Documento
  Doc := Docs.Open(arquivo);

  //Substitui texto via "name parameters"
  vNumContrato := fDMCadOS.cdsOS_ConsultaNUM_CONTRATO.AsString;
  if (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger > 0) and (fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsInteger < 9999) then
    vNumContrato := fDMCadOS.cdsOS_ConsultaANO_CONTRATO.AsString + '/' + vNumContrato;

  //Nome nossa empresa
  Doc.Content.Find.Execute(FindText := '<contrato_num>', ReplaceWith       := vNumContrato);
  Doc.Content.Find.Execute(FindText := '<contratante>',  ReplaceWith       := fDMCadOS.cdsOS_ConsultaNOME_CLIENTE.AsString);
  Doc.Content.Find.Execute(FindText := '<contratante_cnpj>', ReplaceWith   := fDMCadOS.cdsOS_ConsultaCNPJ_CPF.AsString);
  Doc.Content.Find.Execute(FindText := '<contratante_endereco>', ReplaceWith := fDMCadOS.cdsOS_ConsultaENDERECO.AsString + ', ' +
                                                                                fDMCadOS.cdsOS_ConsultaNUM_END.AsString + ', ' +
                                                                                fDMCadOS.cdsOS_ConsultaCOMPLEMENTO_END.AsString);
  Doc.Content.Find.Execute(FindText := '<contratante_bairro>', ReplaceWith := fDMCadOS.cdsOS_ConsultaBAIRRO.AsString);
  Doc.Content.Find.Execute(FindText := '<contratante_uf>', ReplaceWith     := fDMCadOS.cdsOS_ConsultaUF.AsString);
  //ver aqui com o Juca
  Doc.Content.Find.Execute(FindText := '<contratante_cep>', ReplaceWith    := fDMCadOS.cdsOS_ConsultaNUM_CONTRATO.AsString);
  Doc.Content.Find.Execute(FindText := '<preco>', ReplaceWith              := FormatFloat('#,##0.00',fDMCadOS.cdsOS_ConsultaVLR_TOTAL.AsFloat));
  ValorPorExtenso1.Valor := fDMCadOS.cdsOS_ConsultaVLR_TOTAL.AsFloat;
  Doc.Content.Find.Execute(FindText := '<preco_extenso>', ReplaceWith      := '('+ ValorPorExtenso1.Texto+')');
  Doc.Content.Find.Execute(FindText := '<sindico_nome>', ReplaceWith       := fDMCadOS.cdsOS_ConsultaNOME_SERVICO.AsString);
  Doc.Content.Find.Execute(FindText := '<sindico_cpf>', ReplaceWith        := fDMCadOS.cdsOS_ConsultaCPF_SINDICO.AsString);
  Doc.Content.Find.Execute(FindText := '<contrato_comarca>', ReplaceWith   := fDMCadOS.cdsOS_ConsultaCOMARCA.AsString);
  Doc.Content.Find.Execute(FindText := '<contrato_data>', ReplaceWith      := fDMCadOS.cdsOS_ConsultaDTCONTRATO_INI.AsString);

  //Salva doc
  arquivo := vPasta + fDMCadOS.cdsOS_ConsultaNOME_CLIENTE.AsString + '_' +
             vNumContrato_Arq + '.doc';
  Doc.SaveAs(arquivo);

  // Fecha o Word
  WinWord.Quit;

  Sleep(2500);

  if (fileExists(arquivo)) then
    ShellExecute(Handle, nil, Pchar(arquivo), nil, nil, SW_SHOWNORMAL);
end;

end.
