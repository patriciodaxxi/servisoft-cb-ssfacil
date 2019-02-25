unit UCadOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOrdemServico, DB,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus, RXDBCtrl,
  RzEdit, RzDBEdit, RzButton, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection, StrUtils, UBaixaOrdemServico, ComCtrls,
  DateUtils, UCadOrdemServico_Itens, RzDTP, RzDBDTP, UHistServico_Prod, RzLstBox, RzChkLst;

type
  TfrmCadOrdemServico = class(TForm)
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
    Panel11: TPanel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlItem: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    UCControls1: TUCControls;
    Label9: TLabel;
    DBText2: TDBText;
    Panel4: TPanel;
    Shape6: TShape;
    Label31: TLabel;
    Shape1: TShape;
    Label10: TLabel;
    SMDBGrid5: TSMDBGrid;
    RzPageControl3: TRzPageControl;
    TS_Defeito: TRzTabSheet;
    DBMemo3: TDBMemo;
    RzGroupBox4: TRzGroupBox;
    DBMemo4: TDBMemo;
    TS_Acessorios: TRzTabSheet;
    DBMemo1: TDBMemo;
    TS_Pecas_Usadas: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    TS_Servico_Prestado: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    TS_Defeito_Enc: TRzTabSheet;
    DBMemo2: TDBMemo;
    btnImprimir: TNxButton;
    StaticText2: TStaticText;
    Panel2: TPanel;
    Label13: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label15: TLabel;
    DBText5: TDBText;
    Label17: TLabel;
    PopupMenu1: TPopupMenu;
    Personalizado1: TMenuItem;
    Padro1: TMenuItem;
    pnlCliente: TPanel;
    Label2: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzGroupBox5: TRzGroupBox;
    Label11: TLabel;
    Label5: TLabel;
    DBDateEdit5: TDBDateEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzGroupBox3: TRzGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBDateEdit2: TDBDateEdit;
    RzDBDateTimeEdit3: TRzDBDateTimeEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBDateEdit3: TDBDateEdit;
    RzDBDateTimeEdit4: TRzDBDateTimeEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label23: TLabel;
    btnReabrir: TNxButton;
    Padro11: TMenuItem;
    N21: TMenuItem;
    Label24: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnMotor: TNxButton;
    btnTransformador: TNxButton;
    CSM1: TMenuItem;
    Motor1: TMenuItem;
    ransformador1: TMenuItem;
    Acionamento1: TMenuItem;
    btnAcionamentos: TNxButton;
    Label25: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Memo1: TMemo;
    Shape2: TShape;
    Label26: TLabel;
    ComboBox1: TComboBox;
    Label27: TLabel;
    OSEntregue1: TMenuItem;
    Shape3: TShape;
    Label28: TLabel;
    Panel5: TPanel;
    btnBaixar: TNxButton;
    btnEntregar: TNxButton;
    Shape4: TShape;
    Label29: TLabel;
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
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Panel4Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Personalizado1Click(Sender: TObject);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure btnReabrirClick(Sender: TObject);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Padro11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure btnMotorClick(Sender: TObject);
    procedure btnTransformadorClick(Sender: TObject);
    procedure Motor1Click(Sender: TObject);
    procedure ransformador1Click(Sender: TObject);
    procedure Acionamento1Click(Sender: TObject);
    procedure btnAcionamentosClick(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OSEntregue1Click(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure btnEntregarClick(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vID_Cliente_Ant: Integer;

    fDMCadOrdemServico: TDMCadOrdemServico;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadOrdemServico_Itens: TfrmCadOrdemServico_Itens;
    ffrmHistServico_Prod: TfrmHistServico_Prod;
    ffrmBaixaOrdemServico: TfrmBaixaOrdemServico;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_OS;
    procedure prc_Posicionar_Cliente;

    procedure prc_Habilitar_Campos;
    procedure prc_scroll(DataSet: TDataSet);

    function fnc_Verifica_Registro: Boolean;
    function fnc_Cancelar: Boolean;
    function fnc_Existe_Fat(Item: Integer): Boolean;

    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Imp_Motor;
    procedure prc_Imp_Trafo;
    procedure prc_Status;
  public
    { Public declarations }
    cTXTStream: TMemoryStream;
    cXMLStream: TMemoryStream;
    sXMLNFSe: TMemoryStream;

    procedure prc_Chamar_TelaHistorico(ID_Cliente: Integer; NumSerie, Nome_Produto: String);
  end;

var
  frmCadOrdemServico: TfrmCadOrdemServico;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa, URelOrdemServico, URelOrdemServico2, uCadOS_Motor, uCadOS_Transformador,
  uCadOS_Acionamento, uCadOrdemServico_Entrega;

{$R *.dfm}

procedure TfrmCadOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOrdemServico.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    exit;

  prc_Posiciona_OS;

  if fDMCadOrdemServico.cdsOrdemServico.IsEmpty then
    exit;

  if fnc_Existe_Fat(0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOrdemServico.prc_Excluir_Registro;
begin
  fDMCadOrdemServico.prc_Excluir;
end;

procedure TfrmCadOrdemServico.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
begin
  if fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger <= 0 then
  begin
    fDMCadOrdemServico.qProximo_Num.Close;
    fDMCadOrdemServico.qProximo_Num.Open;
    fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger := fDMCadOrdemServico.qProximo_NumNUM_OS.AsInteger + 1;
    fDMCadOrdemServico.qProximo_Num.Close;
  end;

  fDMCadOrdemServico.prc_Gravar;
  vIDAux := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled := True;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar(vIDAux);
end;

procedure TfrmCadOrdemServico.prc_Inserir_Registro;
begin
  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;
  if fDMCadOrdemServico.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
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
  fDMCadOrdemServico.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse] then
    exit;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger    := vFilial;
  fDMCadOrdemServico.cdsOrdemServicoTP_SIMPLES.AsString := 'N';
  fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString     := '1';
end;

procedure TfrmCadOrdemServico.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadOrdemServico := TDMCadOrdemServico.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  fDMCadOrdemServico.prc_Abrir_cdsCliente;

  CSM1.Visible             := (fDMCadOrdemServico.qParametrosUSA_SERVICO_MOTOR.AsString = 'S');
  btnMotor.Visible         := (fDMCadOrdemServico.qParametrosUSA_SERVICO_MOTOR.AsString = 'S');
  btnTransformador.Visible := (fDMCadOrdemServico.qParametrosUSA_SERVICO_MOTOR.AsString = 'S');
  btnAcionamentos.Visible  := (fDMCadOrdemServico.qParametrosUSA_SERVICO_MOTOR.AsString = 'S');
  Label24.Visible          := (fDMCadOrdemServico.qParametrosUSA_SERVICO_MOTOR.AsString = 'S');
  RxDBComboBox2.Visible    := (fDMCadOrdemServico.qParametrosUSA_SERVICO_MOTOR.AsString = 'S');

  Label20.Visible           := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  DBDateEdit3.Visible       := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  Label21.Visible           := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  RzDBDateTimeEdit4.Visible := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  Label3.Visible            := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  DBEdit2.Visible           := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  Label4.Visible            := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  DBEdit3.Visible           := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  Label6.Visible            := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  DBEdit4.Visible           := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  Label25.Visible           := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  RxDBLookupCombo4.Visible  := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');

  //Carlos pediu para a HP e demais clientes  16/11/2016
  TS_Defeito.TabVisible     := ((not(fDMCadOrdemServico.qParametros_Ser.IsEmpty)) and (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_DEFEITO_ALEG.AsString = 'S'));
  TS_Defeito_Enc.TabVisible := ((not(fDMCadOrdemServico.qParametros_Ser.IsEmpty)) and (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_DEFEITO_ENC.AsString = 'S'));
  TS_Acessorios.TabVisible  := ((not(fDMCadOrdemServico.qParametros_Ser.IsEmpty)) and (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_ACESSORIOS.AsString = 'S'));
  //******************
  if not TS_Defeito.TabVisible then
    RzPageControl3.ActivePage := TS_Pecas_Usadas;

  Memo1.Visible       := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  Label27.Visible     := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  ComboBox1.Visible   := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  StaticText2.Caption := 'F6= Histórico de Serviço';
  if fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S' then
    StaticText2.Caption := 'F3= Informar o Status   ' + StaticText2.Caption;
  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'DESC_STATUS' then
      SMDBGrid1.Columns[i].Visible := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  end;
  for i := 0 to SMDBGrid5.ColCount - 2 do
  begin
    if fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S' then
    begin
      if SMDBGrid5.Columns[i].FieldName = 'DT_INSTALACAO' then
        SMDBGrid5.Columns[i].Visible := False;
      if SMDBGrid5.Columns[i].FieldName = 'DT_GARANTIA' then
        SMDBGrid5.Columns[i].Visible := False;
    end;
    if SMDBGrid5.Columns[i].FieldName = 'NUM_SERIE_TROCA' then
      SMDBGrid5.Columns[i].Visible := (fDMCadOrdemServico.qParametros_SerMOSTRAR_SERIE_TROCA.AsString = 'S');
  end;
  RzGroupBox5.Enabled := not(fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');

  btnBaixar.Enabled   := False;
  btnEntregar.Enabled := True;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.AfterScroll := prc_scroll;
end;

procedure TfrmCadOrdemServico.prc_Consultar(ID: Integer);
begin
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Close;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := 'NUM_OS';
  fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText     := fDMCadOrdemServico.ctConsulta +
                                                                 'WHERE OS.TP_SIMPLES = ''N''';
  if ID > 0 then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.ID = ' + IntToStr(ID)
  else
  begin
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                                 ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                                 ' AND OS.NUM_OS = ' + CurrencyEdit1.Text;
    if Trim(Edit2.Text) <> '' then
      fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText
                                      + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                                      + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
    case ComboBox1.ItemIndex of
      1: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('1');
      2: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('2');
      3: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('3');
      4: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('4');
      5: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('5');
      6: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('6');
      7: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('8');
      8: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('9');
      9: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('N');
    end;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Open;
end;

procedure TfrmCadOrdemServico.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadOrdemServico.btnCancelarClick(Sender: TObject);
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

procedure TfrmCadOrdemServico.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
begin
  if (fDMCadOrdemServico.cdsOrdemServico.IsEmpty) or not(fDMCadOrdemServico.cdsOrdemServico.Active) or
     (fDMCadOrdemServico.cdsOrdemServicoID.AsInteger < 1) then
    exit;

  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;

  fDMCadOrdemServico.cdsOrdemServico.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadOrdemServico.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadOrdemServico.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOrdemServico);
end;

procedure TfrmCadOrdemServico.prc_Posiciona_OS;
begin
  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);
  fDMCadOrdemServico.cdsOrdemServico_Itens.Close;
  fDMCadOrdemServico.cdsOrdemServico_Itens.Open;
  fDMCadOrdemServico.cdsOrdemServico_Mat.Close;
  fDMCadOrdemServico.cdsOrdemServico_Mat.Open;
  vFilial      := fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

function TfrmCadOrdemServico.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger < 1) then
    exit;
  Result := True;
end;

procedure TfrmCadOrdemServico.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit, dsInsert]) then
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
            (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_OS;
      prc_Status;
    end;
end;

procedure TfrmCadOrdemServico.pnlClienteExit(Sender: TObject);
begin
  prc_Posicionar_Cliente;
end;

procedure TfrmCadOrdemServico.prc_Posicionar_Cliente;
begin
  if fDMCadOrdemServico.cdsClienteCODIGO.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger then
    fDMCadOrdemServico.cdsCliente.Locate('CODIGO',fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadOrdemServico.cdsFilialID.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger) then
    fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadOrdemServico.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
  btnReabrir.Enabled       := not(btnReabrir.Enabled);
  btnMotor.Enabled         := not(btnMotor.Enabled);
  btnTransformador.Enabled := not(btnTransformador.Enabled);
end;

function TfrmCadOrdemServico.fnc_Cancelar: Boolean;
begin
  Result := True;
  fDMCadOrdemServico.vMsgOS := '';

  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
    Result := False;
end;

procedure TfrmCadOrdemServico.SpeedButton1Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsCliente.Close;
  fDMCadOrdemServico.cdsCliente.Open;
end;

procedure TfrmCadOrdemServico.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadOrdemServico.cdsOrdemServico);
end;

procedure TfrmCadOrdemServico.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
end;

procedure TfrmCadOrdemServico.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadOrdemServico.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
end;

procedure TfrmCadOrdemServico.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaDTENTREGA.AsDateTime > 10 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaSTATUS.AsString = '6' then
  begin
    Background  := $00400080;
    AFont.Color := clWhite;
  end
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaDTCONCLUIDO.AsDateTime > 10 then
    Background := clAqua
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaSTATUS.AsString = '2' then
  begin
    Background  := $0048A4FF;
    AFont.Color := clBlack;
  end
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaSTATUS.AsString = 'N' then
  begin
    Background  := clWhite;
    AFont.Color := clRed;
  end;
end;

procedure TfrmCadOrdemServico.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOrdemServico.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    CurrencyEdit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadOrdemServico.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
  Edit2.Clear;
end;

procedure TfrmCadOrdemServico.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não foi informado!', mtInformation, [mbOk], 0);
    RxDBLookupCombo3.SetFocus;
    exit;
  end;
  fDMCadOrdemServico.prc_Inserir_Itens;
  ffrmCadOrdemServico_Itens := TfrmCadOrdemServico_Itens.Create(self);
  ffrmCadOrdemServico_Itens.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Itens.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Itens);
end;

procedure TfrmCadOrdemServico.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico_Itens.IsEmpty) or (fDMCadOrdemServico.cdsOrdemServico_ItensITEM.AsInteger <= 0) then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10 then
  begin
    MessageDlg('*** Item não pode ser alterado pois já foi concluído!', mtInformation, [mbok], 0);
    exit;
  end;

  if fnc_Existe_Fat(fDMCadOrdemServico.cdsOrdemServico_ItensITEM.AsInteger) then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;

  ffrmCadOrdemServico_Itens := TfrmCadOrdemServico_Itens.Create(self);
  ffrmCadOrdemServico_Itens.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Itens.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Itens);
end;

procedure TfrmCadOrdemServico.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Itens.Active) and (fDMCadOrdemServico.cdsOrdemServico_Itens.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ItensITEM.AsInteger < 1) then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10 then
  begin
    MessageDlg('*** Item não pode ser excluido pois já foi concluído!', mtInformation, [mbok], 0);
    exit;
  end;
  if fnc_Existe_Fat(fDMCadOrdemServico.cdsOrdemServico_ItensITEM.AsInteger) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.prc_Excluir_Itens;
end;

procedure TfrmCadOrdemServico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vID_ClienteAux: Integer;
  vNome_Produto: String;
  vNumSerie: String;
begin
  if (Key = Vk_F6) then
  begin
    vID_ClienteAux := 0;
    vNome_produto  := '';
    vNumSerie      := '';
    if (RzPageControl1.ActivePage = TS_Cadastro) then
    begin
      if (fDMCadOrdemServico.cdsOrdemServico.Active) then
      begin
        vID_ClienteAux := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
        if not fDMCadOrdemServico.cdsOrdemServico_Itens.IsEmpty then
        begin
          vNumSerie     := fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString;
          vNome_Produto := fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString;
        end;
      end;
    end
    else
    if (RzPageControl1.ActivePage = TS_Consulta) then
    begin
      if (fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) then
        vID_ClienteAux := fDMCadOrdemServico.cdsOrdemServico_ConsultaID_CLIENTE.AsInteger;
    end;
    prc_Chamar_TelaHistorico(vID_ClienteAux,vNumSerie,vNome_Produto);
  end;
end;

procedure TfrmCadOrdemServico.prc_Chamar_TelaHistorico(ID_Cliente: Integer ; NumSerie, Nome_Produto: String);
begin
  ffrmHistServico_Prod := TfrmHistServico_Prod.Create(self);
  if ID_Cliente > 0 then
    ffrmHistServico_Prod.RxDBLookupCombo1.KeyValue := ID_Cliente;
  if (trim(Nome_Produto) <> '') and (trim(NumSerie) = '') then
    ffrmHistServico_Prod.Edit2.Text := Nome_Produto;
  if trim(NumSerie) <> '' then
    ffrmHistServico_Prod.Edit1.Text := NumSerie;
  ffrmHistServico_Prod.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmHistServico_Prod.ShowModal;
  FreeAndNil(ffrmHistServico_Prod);
end;

procedure TfrmCadOrdemServico.Personalizado1Click(Sender: TObject);
var
  vArq: String;
begin
//  prc_Posiciona_Imp;
  fDMCadOrdemServico.cdsOSImp.Close;
  fDMCadOrdemServico.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSImp.Open;

  fDMCadOrdemServico.cdsOsItem_Imp.Close;
  fDMCadOrdemServico.sdsOSItem_Imp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSItem_Imp.Open;

  if fDMCadOrdemServico.cdsFilialRelatorios.Locate('TIPO',4,([loCaseInsensitive])) then //tipo 5 = Contrato
  begin
    vArq := fDMCadOrdemServico.cdsFilialRelatoriosCAMINHO.AsString;
    if FileExists(vArq) then
      fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    fDMCadOrdemServico.frxReport1.ShowReport;
  end
  else
  begin
    ShowMessage('Relatório não definido no cadastro da empresa (filial)!');
  end;
  fDMCadOrdemServico.ctOSItem_Imp := fDMCadOrdemServico.sdsOS_ItemImp.CommandText;
end;

function TfrmCadOrdemServico.fnc_Existe_Fat(Item: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR ' +
                         ' FROM ORDEMSERVICO_MAT ' +
                         ' WHERE QTD_FATURADO > 0 ' + 
                         ' AND ID = ' + IntToStr(fDMCadOrdemServico.cdsOrdemServicoID.AsInteger);
    if Item > 0 then
      sds.CommandText := sds.CommandText + ' AND ITEM = ' + IntToStr(Item);
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
  if Result then
    MessageDlg('*** Já existe Faturamento!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadOrdemServico.SMDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMCadOrdemServico.cdsOrdemServico_Mat.IsEmpty then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_FATURADO.AsFloat)) > 0 then
    begin
      Background  := clGreen;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TfrmCadOrdemServico.RxDBLookupCombo3Change(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_NOME.AsString := fDMCadOrdemServico.cdsClienteNOME.AsString;
  fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_FONE.AsString := '(' + fDMCadOrdemServico.cdsClienteDDDFONE1.AsString +
                                                                 ')' + fDMCadOrdemServico.cdsClienteTELEFONE1.AsString;
end;

procedure TfrmCadOrdemServico.btnReabrirClick(Sender: TObject);
var
  vIDAux: Integer;
  ID: TTransactionDesc;
begin
  if (fDMCadOrdemServico.cdsOrdemServico.IsEmpty) or not(fDMCadOrdemServico.cdsOrdemServico.Active) or
     (fDMCadOrdemServico.cdsOrdemServicoID.AsInteger < 1) then
    Exit;

  if fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime > 10 then
  begin
    MessageDlg('*** Ordem de Serviço já faturada!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Confirma reabertura dessa OS?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vIDAux := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
    fDMCadOrdemServico.cdsOrdemServico.Edit;
    fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.Clear;
    fDMCadOrdemServico.cdsOrdemServicoHRCONCLUIDO.Clear;
    fDMCadOrdemServico.cdsOrdemServicoCONCLUIDO.AsString := 'N';
    fDMCadOrdemServico.cdsOrdemServico.Post;

    fDMCadOrdemServico.cdsOrdemServico_Itens.First;
    while not fDMCadOrdemServico.cdsOrdemServico_Itens.Eof do
    begin
      fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;
      fDMCadOrdemServico.cdsOrdemServico_ItensCONCLUIDO.AsString := 'N';
      fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.Clear;
      fDMCadOrdemServico.cdsOrdemServico_ItensHRCONCLUIDO.Clear;
      fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
      fDMCadOrdemServico.cdsOrdemServico_Itens.Next;
    end;
    fDMCadOrdemServico.cdsOrdemServico.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao reabrir a Ordem de Serviço: ' + #13 + e.Message);
    end;
  end;

  prc_Consultar(vIDAux);
end;

procedure TfrmCadOrdemServico.SMDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10 then
    Background := clAqua;
end;

procedure TfrmCadOrdemServico.Padro11Click(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
    Exit;

  fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);
  vTipo_Config_Email := 5;

  if fDMCadOrdemServico.cdsOrdemServicoTIPO_SERVICO.AsString = 'M' then
  begin
    fDmCadOrdemServico.cdsCsmOsMotor.Close;
    fDmCadOrdemServico.sdsCsmOsMotor.ParamByName('ID').AsInteger := fDmCadOrdemServico.cdsOrdemServicoID.AsInteger;
    fDmCadOrdemServico.cdsCsmOsMotor.Open;
  end;

  fRelOrdemServico := TfRelOrdemServico.Create(Self);
  fRelOrdemServico.fDMCadOrdemServico := fDMCadOrdemServico;
  fRelOrdemServico.RLReport1.PreviewModal;
  fRelOrdemServico.RLReport1.Free;
  FreeAndNil(fRelOrdemServico);
end;

procedure TfrmCadOrdemServico.N21Click(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
    Exit;

  fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);
  vTipo_Config_Email := 5;

  if fDMCadOrdemServico.cdsOrdemServicoTIPO_SERVICO.AsString = 'M' then
  begin
    fDmCadOrdemServico.cdsCsmOsMotor.Close;
    fDmCadOrdemServico.sdsCsmOsMotor.ParamByName('ID').AsInteger := fDmCadOrdemServico.cdsOrdemServicoID.AsInteger;
    fDmCadOrdemServico.cdsCsmOsMotor.Open;
  end;

  fRelOrdemServico2 := TfRelOrdemServico2.Create(Self);
  fRelOrdemServico2.fDMCadOrdemServico := fDMCadOrdemServico;
  fRelOrdemServico2.RLReport1.PreviewModal;
  fRelOrdemServico2.RLReport1.Free;
  FreeAndNil(fRelOrdemServico2);
end;

procedure TfrmCadOrdemServico.btnMotorClick(Sender: TObject);
begin
  frmCadOs_Motor := TfrmCadOs_Motor.Create(Self);
  frmCadOs_Motor.fDmCadOrdemServico := fDMCadOrdemServico;
  frmcadOs_Motor.ShowModal;
end;

procedure TfrmCadOrdemServico.btnTransformadorClick(Sender: TObject);
begin
  fDMCadOrdemServico.cdsCsmOsTransformador.Close;
  fDMCadOrdemServico.sdsCsmOsTransformador.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsCsmOsTransformador.Open;
  frmCadOs_Transformador := TfrmCadOs_Transformador.Create(Self);
  frmCadOs_Transformador.fDmCadOrdemServico := fDMCadOrdemServico;
  frmCadOs_Transformador.ShowModal;
end;

procedure TfrmCadOrdemServico.prc_Imp_Motor;
begin
  fDMCadOrdemServico.cdsOSImp.Close;
  fDMCadOrdemServico.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSImp.Open;

  fDMCadOrdemServico.cdsOsItem_Imp.Close;
  fDMCadOrdemServico.sdsOSItem_Imp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSItem_Imp.Open;

  fDMCadOrdemServico.CdsCsmOsMotorServ.Close;
  fDMCadOrdemServico.sdsCsmOsMotorServ.CommandText := 'SELECT OMS.*, MS.POSICAO, MS.SERVICO, 2 AS FLAG ' +
                                                      'FROM CSM_OS_MOTOR_SERV OMS ' +
                                                      'INNER JOIN CSM_MOTOR_SERVICOS MS ON (OMS.ID_SERVICO = MS.ID) ' +
                                                      'WHERE OMS.ID = :ID';
  fDMCadOrdemServico.sdsCsmOsMotorServ.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.CdsCsmOsMotorServ.Open;

  fDMCadOrdemServico.cdsCsmOsMotor.Close;
  fDMCadOrdemServico.sdsCsmOsMotor.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsCsmOsMotor.Open;
end;

procedure TfrmCadOrdemServico.Motor1Click(Sender: TObject);
var
  vArq: String;
begin
  prc_Imp_Motor;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\CSM_OS_Motor.fr3';
  if FileExists(vArq) then
    fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadOrdemServico.frxReport1.ShowReport;
end;

procedure TfrmCadOrdemServico.ransformador1Click(Sender: TObject);
var
  vArq: String;
begin
  prc_Imp_Trafo;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\CSM_OS_Trafo.fr3';
  if FileExists(vArq) then
    fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadOrdemServico.frxReport1.ShowReport;
end;

procedure TfrmCadOrdemServico.Acionamento1Click(Sender: TObject);
var
  vArq: String;
begin
  prc_Imp_Motor;
end;

procedure TfrmCadOrdemServico.prc_Imp_Trafo;
begin
  fDMCadOrdemServico.cdsOSImp.Close;
  fDMCadOrdemServico.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSImp.Open;

  fDMCadOrdemServico.cdsOsItem_Imp.Close;
  fDMCadOrdemServico.sdsOSItem_Imp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSItem_Imp.Open;

  fDMCadOrdemServico.cdsCsmOsTransformador.Close;
  fDMCadOrdemServico.sdsCsmOsTransformador.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsCsmOsTransformador.Open;
end;

procedure TfrmCadOrdemServico.btnAcionamentosClick(Sender: TObject);
begin
  frmCadOs_Acionamento := TfrmCadOs_Acionamento.Create(Self);
  frmCadOs_Acionamento.fDmCadOrdemServico := fDMCadOrdemServico;
  frmcadOs_Acionamento.ShowModal;
end;

procedure TfrmCadOrdemServico.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadOrdemServico.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOrdemServico.prc_Status;
begin
  Memo1.Lines.Clear;
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '1' then
    Memo1.Lines.Text := 'Entrada'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '2' then
    Memo1.Lines.Text := 'Orçado'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '3' then
    Memo1.Lines.Text := 'Aguardando Aprovação'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '4' then
    Memo1.Lines.Text := 'Liberado para Serviço'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '5' then
    Memo1.Lines.Text := 'Aguardando Peças'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '6' then
    Memo1.Lines.Text := 'Sem conserto'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '8' then
    Memo1.Lines.Text := 'Pronto'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '9' then
    Memo1.Lines.Text := 'Entregue';
end;

procedure TfrmCadOrdemServico.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ffrmBaixaOrdemServico: TfrmBaixaOrdemServico;
begin
  if (Key = Vk_F3) then
  begin
  
    btnBaixarClick(Sender);
  end;
end;

procedure TfrmCadOrdemServico.OSEntregue1Click(Sender: TObject);
var
  vArq: String;
  vItemAux: Integer;
begin
  prc_Posiciona_OS;
  if fDMCadOrdemServico.cdsOrdemServico.IsEmpty then
  begin
    MessageDlg('*** OS não encontrada para a impressão!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadOrdemServico.cdsOSImp.Close;
  fDMCadOrdemServico.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDMCadOrdemServico.cdsOSImp.Open;

  fDMCadOrdemServico.mOS_Mat.EmptyDataSet;
  fDMCadOrdemServico.mOS_Serv.EmptyDataSet;

  vItemAux  := 0;
  fDMCadOrdemServico.cdsOrdemServico_Itens.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Itens.Eof do
  begin
    vItemAux := vItemAux + 1;
    fDMCadOrdemServico.cdsOrdemServico_Mat.First;
    while not fDMCadOrdemServico.cdsOrdemServico_Mat.Eof do
    begin
      fDMCadOrdemServico.mOS_Mat.Insert;
      if fDMCadOrdemServico.cdsOrdemServico_Itens.RecordCount > 1 then
        fDMCadOrdemServico.mOS_MatItem.AsString := FormatFloat('0',vItemAux) + '-' + fDMCadOrdemServico.cdsOrdemServico_MatITEM_MAT.AsString
      else
        fDMCadOrdemServico.mOS_MatItem.AsString := fDMCadOrdemServico.cdsOrdemServico_MatITEM_MAT.AsString;
      fDMCadOrdemServico.mOS_MatReferencia.AsString := fDMCadOrdemServico.cdsOrdemServico_MatlkReferencia.AsString;
      fDMCadOrdemServico.mOS_MatNome_Produto.AsString := fDMCadOrdemServico.cdsOrdemServico_MatlkNomeProduto.AsString;
      fDMCadOrdemServico.mOS_MatQtd.AsFloat           := fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat;
      fDMCadOrdemServico.mOS_MatVlrTotal.AsFloat      := fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat;
      fDMCadOrdemServico.mOS_MatVlr_Unitario.AsFloat  := fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat;
      fDMCadOrdemServico.mOS_Mat.Post;
      fDMCadOrdemServico.cdsOrdemServico_Mat.Next;
    end;

    fDMCadOrdemServico.cdsOrdemServico_Serv.First;
    while not fDMCadOrdemServico.cdsOrdemServico_Serv.Eof do
    begin
      fDMCadOrdemServico.mOS_Serv.Insert;
      if fDMCadOrdemServico.cdsOrdemServico_Itens.RecordCount > 1 then
        fDMCadOrdemServico.mOS_ServItem.AsString := FormatFloat('0',vItemAux) + '-' + fDMCadOrdemServico.cdsOrdemServico_ServITEM_SERV.AsString
      else
        fDMCadOrdemServico.mOS_ServItem.AsString := fDMCadOrdemServico.cdsOrdemServico_ServITEM_SERV.AsString;
      fDMCadOrdemServico.mOS_ServNome_Servico.AsString := fDMCadOrdemServico.cdsOrdemServico_ServlkServico_Int.AsString;
      fDMCadOrdemServico.mOS_ServVlrTotal.AsFloat      := fDMCadOrdemServico.cdsOrdemServico_ServVLR_TOTAL.AsFloat;
      fDMCadOrdemServico.mOS_ServNome_Tecnico.AsString := fDMCadOrdemServico.cdsOrdemServico_ServlkTecnico.AsString;
      fDMCadOrdemServico.mOS_Serv.Post;
      fDMCadOrdemServico.cdsOrdemServico_Serv.Next;
    end;

    fDMCadOrdemServico.cdsOrdemServico_Itens.Next;
  end;

  if fDMCadOrdemServico.mOS_Mat.IsEmpty then
  begin
    fDMCadOrdemServico.mOS_Mat.Insert;
    fDMCadOrdemServico.mOS_Mat.Post;
  end;
  if fDMCadOrdemServico.mOS_Serv.IsEmpty then
  begin
    fDMCadOrdemServico.mOS_Serv.Insert;
    fDMCadOrdemServico.mOS_Serv.Post;
  end;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\OS_Entregue.fr3';
  if FileExists(vArq) then
    fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  if (fDMCadOrdemServico.qParametros_Ser.IsEmpty) or (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_DEFEITO_ALEG.AsString = 'S') then
    fDMCadOrdemServico.frxReport1.variables['ImpDefeitoAleg'] := QuotedStr('S')
  else
    fDMCadOrdemServico.frxReport1.variables['ImpDefeitoAleg'] := QuotedStr('N');
  if (fDMCadOrdemServico.qParametros_Ser.IsEmpty) or (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_DEFEITO_ENC.AsString = 'S') then
    fDMCadOrdemServico.frxReport1.variables['ImpDefeitoEnc'] := QuotedStr('S')
  else
    fDMCadOrdemServico.frxReport1.variables['ImpDefeitoEnc'] := QuotedStr('N');
  fDMCadOrdemServico.frxReport1.ShowReport;
end;

procedure TfrmCadOrdemServico.btnBaixarClick(Sender: TObject);
var
  vId: Integer;
begin
  if (fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) then
  begin
    vId := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
    prc_Posiciona_OS;
    ffrmBaixaOrdemServico := TfrmBaixaOrdemServico.Create(self);
    ffrmBaixaOrdemServico.Tag := 1;
    ffrmBaixaOrdemServico.fDMCadOrdemServico      := fDMCadOrdemServico;
    ffrmBaixaOrdemServico.CurrencyEdit1.AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaNUM_OS.AsInteger;
    ffrmBaixaOrdemServico.ShowModal;
    FreeAndNil(ffrmBaixaOrdemServico);
    btnConsultarClick(Sender);
    fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := 'ID';
    fDMCadOrdemServico.cdsOrdemServico_Consulta.FindKey([vId]);
  end;
end;

procedure TfrmCadOrdemServico.btnEntregarClick(Sender: TObject);
var
  vId: Integer;
begin
  if (fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) then
  begin
    vId := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
    prc_Posiciona_OS;
    frmCadOrdemServico_Entrega := TfrmCadOrdemServico_Entrega.Create(Self);
    frmCadOrdemServico_Entrega.fDmCadOrdemServico := fDMCadOrdemServico;
    frmCadOrdemServico_Entrega.ShowModal;
    btnConsultarClick(Sender);
    fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := 'ID';
    fDMCadOrdemServico.cdsOrdemServico_Consulta.FindKey([vId]);
  end;
end;

procedure TfrmCadOrdemServico.prc_scroll(DataSet: TDataSet);
begin
  btnBaixar.Enabled   := False;
  btnEntregar.Enabled := True;

  if fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty then
    Exit;

  prc_Posiciona_OS;
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = 'N' then
    btnEntregar.Enabled := True
  else
  begin
    btnBaixar.Enabled   := (fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsInteger < 8);
    btnEntregar.Enabled := (fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsInteger = 8) or
                           (fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsInteger = 6);
  end;
end;

end.
