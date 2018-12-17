unit UCadManifesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadManifesto, Mask,
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, Menus, ToolEdit, RXDBCtrl, CurrEdit,
  NxEdit, Variants, RzEdit, RzDBEdit;

type
  TfrmCadManifesto = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    lblVlrTotal: TLabel;
    dbedtVlrTotal: TDBEdit;
    RzPageControl2: TRzPageControl;
    TS_Notas: TRzTabSheet;
    Panel4: TPanel;
    SMDBGrid2: TSMDBGrid;
    btnImprimir: TNxButton;
    PopupMenu1: TPopupMenu;
    ManifestodeCarga1: TMenuItem;
    RomaneiodeEndereo1: TMenuItem;
    RomaneioFechamento1: TMenuItem;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    TS_Cob: TRzTabSheet;
    Panel3: TPanel;
    SMDBGrid3: TSMDBGrid;
    btnInserir_Cob: TNxButton;
    btnAlterar_Cob: TNxButton;
    btnExcluir_Cob: TNxButton;
    btnInserir_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Roteiro1: TMenuItem;
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
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure ManifestodeCarga1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RomaneiodeEndereo1Click(Sender: TObject);
    procedure RomaneioFechamento1Click(Sender: TObject);
    procedure btnInserir_CobClick(Sender: TObject);
    procedure btnAlterar_CobClick(Sender: TObject);
    procedure btnExcluir_CobClick(Sender: TObject);
    procedure Roteiro1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadManifesto: TDMCadManifesto;
    xNossoNum: Int64;
    vNossoNumero: String;
    vNossoNumero_Montado: String;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID : Integer = 0);
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Manifesto;

  public
    { Public declarations }               
  end;

var
  frmCadManifesto: TfrmCadManifesto;

implementation

uses DmdDatabase, rsDBUtils, UCadManifesto_Nota, UCadManifesto_Cob;

{$R *.dfm}

procedure TfrmCadManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadManifesto.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadManifesto.cdsConsulta.Active) or (fDMCadManifesto.cdsConsulta.IsEmpty) or (fDMCadManifesto.cdsConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Manifesto;  

  if fDMCadManifesto.cdsManifesto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadManifesto.prc_Excluir_Registro;
begin
  fDMCadManifesto.prc_Excluir;
end;

procedure TfrmCadManifesto.prc_Gravar_Registro;
var
 vNumAux : Integer;
 vIDAux : Integer;
begin
  if fDMCadManifesto.cdsManifestoNUM_MANIFESTO.AsInteger <= 0 then
  begin
    fDMCadManifesto.qProximoMan.Close;
    fDMCadManifesto.qProximoMan.Open;
    vNumAux := fDMCadManifesto.qProximoManNUM_MANIFESTO.AsInteger;
    vNumAux := vNumAux + 1;

    fDMCadManifesto.cdsManifestoNUM_MANIFESTO.AsInteger := vNumAux;
  end;
  vIDAux := fDMCadManifesto.cdsManifestoID.AsInteger;
  fDMCadManifesto.prc_Gravar;
  if fDMCadManifesto.cdsManifesto.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadManifesto.vMsgManifesto, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  Panel4.Enabled            := False;
  Panel3.Enabled            := False;
  prc_Consultar(vIDAux);
end;

procedure TfrmCadManifesto.prc_Inserir_Registro;
begin
  fDMCadManifesto.prc_Inserir;

  if fDMCadManifesto.cdsManifesto.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  Panel4.Enabled         := True;
  Panel3.Enabled         := True;
  DBDateEdit1.SetFocus;

  btnInserir_ItensClick(frmCadManifesto);
end;

procedure TfrmCadManifesto.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadManifesto := TDMCadManifesto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadManifesto);
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;

  for i := 0 to SMDBGrid2.ColCount - 2 do
  begin
    if SMDBGrid2.Columns[i].FieldName = 'VLR_NOTA' then
      SMDBGrid2.Columns[i].Visible := dbedtVlrTotal.Visible;
  end;

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'VLR_NOTA' then
      SMDBGrid1.Columns[i].Visible := dbedtVlrTotal.Visible;
  end;
end;

procedure TfrmCadManifesto.prc_Consultar(ID : Integer = 0);
begin
  fDMCadManifesto.cdsConsulta.Close;
  fDMCadManifesto.sdsConsulta.CommandText := fDMCadManifesto.ctConsulta + ' WHERE 0 = 0 ';
  if ID > 0 then
    fDMCadManifesto.sdsConsulta.CommandText := fDMCadManifesto.sdsConsulta.CommandText + ' AND ID = ' + IntToStr(ID)
  else
  begin
    if Trim(Edit4.Text) <> '' then
      fDMCadManifesto.sdsConsulta.CommandText := fDMCadManifesto.sdsConsulta.CommandText +
                                                 ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadManifesto.sdsConsulta.CommandText := fDMCadManifesto.sdsConsulta.CommandText +
                                               ' AND NUM_MANIFESTO = ' + IntToStr(CurrencyEdit1.AsInteger);
    if NxDatePicker1.Text <> '' then
       fDMCadManifesto.sdsConsulta.CommandText := fDMCadManifesto.sdsConsulta.CommandText +
                                                 ' AND DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadManifesto.sdsConsulta.CommandText := fDMCadManifesto.sdsConsulta.CommandText +
                                                 ' AND DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
  end;
  fDMCadManifesto.cdsConsulta.Open;
end;

procedure TfrmCadManifesto.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadManifesto.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadManifesto.cdsManifesto.State in [dsBrowse]) or not(fDMCadManifesto.cdsManifesto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    Exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  fDMCadManifesto.cdsManifesto.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  Panel4.Enabled            := False;
  Panel3.Enabled            := False;
end;

procedure TfrmCadManifesto.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadManifesto.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadManifesto.cdsManifesto.IsEmpty) or not(fDMCadManifesto.cdsManifesto.Active) or (fDMCadManifesto.cdsManifestoID.AsInteger < 1) then
    Exit;

  fDMCadManifesto.cdsManifesto.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  Panel4.Enabled         := True;
  Panel3.Enabled         := True;
end;

procedure TfrmCadManifesto.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadManifesto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadManifesto);
end;

procedure TfrmCadManifesto.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadManifesto.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadManifesto.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadManifesto.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadManifesto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadManifesto.cdsManifesto.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCadManifesto.cdsManifesto.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadManifesto.btnInserir_ItensClick(Sender: TObject);
var
  ffrmCadManifesto_Nota: TfrmCadManifesto_Nota;
begin
  if not(fDMCadManifesto.cdsManifesto_Nota.IsEmpty) then
    exit;
  ffrmCadManifesto_Nota := TfrmCadManifesto_Nota.Create(self);
  ffrmCadManifesto_Nota.fDMCadManifesto := fDMCadManifesto;
  ffrmCadManifesto_Nota.ShowModal;
  FreeAndNil(ffrmCadManifesto_Nota);
end;

procedure TfrmCadManifesto.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadManifesto.cdsManifesto_Nota.IsEmpty) or (fDMCadManifesto.cdsManifesto_NotaID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir a nota selecionada do manifesto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadManifesto.cdsManifestoVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsManifestoVLR_DUPLICATA.AsFloat - fDMCadManifesto.cdsManifesto_NotaVLR_DUPLICATA.AsFloat));
  fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat - fDMCadManifesto.cdsManifesto_NotaVLR_NOTA.AsFloat));
  fDMCadManifesto.cdsManifestoPESO_BRUTO.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadManifesto.cdsManifestoPESO_BRUTO.AsFloat - fDMCadManifesto.cdsManifesto_NotaPESO_BRUTO.AsFloat));
  fDMCadManifesto.cdsManifestoPESO_LIQUIDO.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMCadManifesto.cdsManifestoPESO_LIQUIDO.AsFloat - fDMCadManifesto.cdsManifesto_NotaPESO_LIQUIDO.AsFloat));

  fDMCadManifesto.cdsManifesto_Nota.Delete;
end;

procedure TfrmCadManifesto.ManifestodeCarga1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadManifesto.cdsConsulta.Active) or (fDMCadManifesto.cdsConsulta.IsEmpty) or (fDMCadManifesto.cdsConsultaID.AsInteger <= 0) then
    exit;

  fDMCadManifesto.cdsAgrupaQtd.Close;
  fDMCadManifesto.sdsAgrupaQtd.ParamByName('ID').AsInteger := fDMCadManifesto.cdsConsultaID.AsInteger;
  fDMCadManifesto.cdsAgrupaQtd.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Manifesto_Qtd.fr3';
  if FileExists(vArq) then
    fDMCadManifesto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadManifesto.frxReport1.variables['Num_Manifesto'] := QuotedStr(fDMCadManifesto.cdsConsultaNUM_MANIFESTO.AsString);
  fDMCadManifesto.frxReport1.variables['Descricao']     := QuotedStr(fDMCadManifesto.cdsConsultaDESCRICAO.AsString);
  fDMCadManifesto.frxReport1.ShowReport;
end;

procedure TfrmCadManifesto.prc_Posiciona_Manifesto;
begin
  fDMCadManifesto.prc_Localizar(fDMCadManifesto.cdsConsultaID.AsInteger);

  fDMCadManifesto.cdsManifesto_Nota.Close;
  fDMCadManifesto.cdsManifesto_Nota.Open;
  fDMCadManifesto.cdsManifesto_Cob.Close;
  fDMCadManifesto.cdsManifesto_Cob.Open;
end;

procedure TfrmCadManifesto.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadManifesto.cdsManifesto.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Manifesto;
  end
  else
    RzPageControl2.ActivePage := TS_Notas;
  if not(fDMCadManifesto.cdsManifesto.State in [dsEdit, dsInsert]) then
  begin
    prc_Posiciona_Manifesto;
  end;
end;

procedure TfrmCadManifesto.RomaneiodeEndereo1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadManifesto.cdsConsulta.Active) or (fDMCadManifesto.cdsConsulta.IsEmpty) or (fDMCadManifesto.cdsConsultaID.AsInteger <= 0) then
    exit;

  fDMCadManifesto.cdsEndereco.Close;
  fDMCadManifesto.sdsEndereco.ParamByName('ID').AsInteger := fDMCadManifesto.cdsConsultaID.AsInteger;
  fDMCadManifesto.cdsEndereco.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Manifesto_Endereco.fr3';
  if FileExists(vArq) then
    fDMCadManifesto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadManifesto.frxReport1.variables['Num_Manifesto'] := QuotedStr(fDMCadManifesto.cdsConsultaNUM_MANIFESTO.AsString);
  fDMCadManifesto.frxReport1.variables['Descricao']     := QuotedStr(fDMCadManifesto.cdsConsultaDESCRICAO.AsString);
  fDMCadManifesto.frxReport1.ShowReport;
end;

procedure TfrmCadManifesto.RomaneioFechamento1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadManifesto.cdsConsulta.Active) or (fDMCadManifesto.cdsConsulta.IsEmpty) or (fDMCadManifesto.cdsConsultaID.AsInteger <= 0) then
    exit;

  fDMCadManifesto.cdsFechamento.Close;
  fDMCadManifesto.sdsFechamento.ParamByName('ID').AsInteger := fDMCadManifesto.cdsConsultaID.AsInteger;
  fDMCadManifesto.cdsFechamento.Open;

  fDMCadManifesto.mTotalCobranca.EmptyDataSet;
  fDMCadManifesto.cdsFechamento.First;
  while not fDMCadManifesto.cdsFechamento.Eof do
  begin
    if fDMCadManifesto.mTotalCobranca.Locate('Nome_VP;Nome_Tipo_Cobranca',VarArrayOf([fDMCadManifesto.cdsFechamentoNOME_VP.AsString,fDMCadManifesto.cdsFechamentoNOME_TIPOCOBRANCA.AsString]),[locaseinsensitive]) then
      fDMCadManifesto.mTotalCobranca.Edit
    else
    begin
      fDMCadManifesto.mTotalCobranca.Insert;
      fDMCadManifesto.mTotalCobrancaNome_VP.AsString            := fDMCadManifesto.cdsFechamentoNOME_VP.AsString;
      fDMCadManifesto.mTotalCobrancaNome_Tipo_Cobranca.AsString := fDMCadManifesto.cdsFechamentoNOME_TIPOCOBRANCA.AsString;
      fDMCadManifesto.mTotalCobrancaVlr_Total.AsFloat           := StrToFloat(FormatFloat('0.00',0));
    end;
    fDMCadManifesto.mTotalCobrancaVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadManifesto.mTotalCobrancaVlr_Total.AsFloat + fDMCadManifesto.cdsFechamentoVLR_DUPLICATA.AsFloat));
    fDMCadManifesto.mTotalCobranca.Post;
    fDMCadManifesto.cdsFechamento.Next;
  end;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Manifesto_Fechamento.fr3';
  if FileExists(vArq) then
    fDMCadManifesto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadManifesto.frxReport1.variables['Num_Manifesto'] := QuotedStr(fDMCadManifesto.cdsConsultaNUM_MANIFESTO.AsString);
  fDMCadManifesto.frxReport1.variables['Descricao']     := QuotedStr(fDMCadManifesto.cdsConsultaDESCRICAO.AsString);
  fDMCadManifesto.frxReport1.ShowReport;
end;

procedure TfrmCadManifesto.btnInserir_CobClick(Sender: TObject);
var
  ffrmCadManifesto_Cob: TfrmCadManifesto_Cob;
begin
  fDMCadManifesto.prc_Inserir_Cob;

  ffrmCadManifesto_Cob := TfrmCadManifesto_Cob.Create(self);
  ffrmCadManifesto_Cob.vVlr_Ant := 0;
  ffrmCadManifesto_Cob.fDMCadManifesto := fDMCadManifesto;
  ffrmCadManifesto_Cob.ShowModal;

  FreeAndNil(ffrmCadManifesto_Cob);
end;

procedure TfrmCadManifesto.btnAlterar_CobClick(Sender: TObject);
var
  ffrmCadManifesto_Cob: TfrmCadManifesto_Cob;
begin
  if fDMCadManifesto.cdsManifesto_Cob.IsEmpty then
    exit;

  ffrmCadManifesto_Cob := TfrmCadManifesto_Cob.Create(self);
  ffrmCadManifesto_Cob.vVlr_Ant        := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsManifesto_CobVALOR.AsFloat));
  ffrmCadManifesto_Cob.fDMCadManifesto := fDMCadManifesto;
  ffrmCadManifesto_Cob.ShowModal;

  FreeAndNil(ffrmCadManifesto_Cob);
end;

procedure TfrmCadManifesto.btnExcluir_CobClick(Sender: TObject);
begin
  if fDMCadManifesto.cdsManifesto_Cob.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o Item Selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat - fDMCadManifesto.cdsManifesto_CobVALOR.AsFloat));
  fDMCadManifesto.cdsManifesto_Cob.Delete;
end;

procedure TfrmCadManifesto.Roteiro1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadManifesto.cdsConsulta.Active) or (fDMCadManifesto.cdsConsulta.IsEmpty) or (fDMCadManifesto.cdsConsultaID.AsInteger <= 0) then
    exit;

  fDMCadManifesto.cdsImp.Close;
  fDMCadManifesto.sdsImp.ParamByName('ID').AsInteger := fDMCadManifesto.cdsConsultaID.AsInteger;
  fDMCadManifesto.cdsImp.Open;

  fDMCadManifesto.cdsImp_Nota.Close;
  fDMCadManifesto.sdsImp_Nota.ParamByName('ID').AsInteger := fDMCadManifesto.cdsConsultaID.AsInteger;
  fDMCadManifesto.cdsImp_Nota.Open;

  fDMCadManifesto.cdsImp_Cob.Close;
  fDMCadManifesto.sdsImp_Cob.ParamByName('ID').AsInteger := fDMCadManifesto.cdsConsultaID.AsInteger;
  fDMCadManifesto.cdsImp_Cob.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Manifesto_Roteiro.fr3';
  if FileExists(vArq) then
    fDMCadManifesto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadManifesto.frxReport1.variables['Descricao'] := QuotedStr(fDMCadManifesto.cdsConsultaDESCRICAO.AsString);
  fDMCadManifesto.frxReport1.ShowReport;
end;

end.
