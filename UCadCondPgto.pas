unit UCadCondPgto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCondPgto,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection;

type
  TfrmCadCondPgto = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    UCControls1: TUCControls;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    SMDBGrid2: TSMDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label5: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    Label10: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label11: TLabel;
    RxDBComboBox4: TRxDBComboBox;
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
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RxDBComboBox3Change(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadCondPgto: TDMCadCondPgto;
    vItemCondPgto: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    
  public
    { Public declarations }

  end;

var
  frmCadCondPgto: TfrmCadCondPgto;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCondPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadCondPgto.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCondPgto.cdsCondPgto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCondPgto.prc_Excluir_Registro;
begin
  fDMCadCondPgto.prc_Excluir;
end;

procedure TfrmCadCondPgto.prc_Gravar_Registro;
begin
  fDMCadCondPgto.prc_Gravar;
  if fDMCadCondPgto.cdsCondPgto.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCondPgto.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCondPgto.prc_Inserir_Registro;
begin
  fDMCadCondPgto.prc_Inserir;

  if fDMCadCondPgto.cdsCondPgto.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadCondPgto.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadCondPgto := TDMCadCondPgto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCondPgto);
  Label9.Visible := (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S');
  CurrencyEdit2.Visible := (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S');

  for i := 0 to SMDBGrid2.ColCount - 2 do
  begin
    if SMDBGrid2.Columns[i].FieldName = 'PERC_PARCELA' then
      SMDBGrid2.Columns[i].Visible := (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S');
  end;
  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'PERC_ENTRADA' then
      SMDBGrid1.Columns[i].Visible := (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S');
  end;
  Label10.Visible       := fDMCadCondPgto.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S';
  RxDBComboBox2.Visible := fDMCadCondPgto.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S';
  Label11.Visible       := fDMCadCondPgto.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S';
  RxDBComboBox4.Visible := fDMCadCondPgto.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S';
end;

procedure TfrmCadCondPgto.prc_Consultar;
begin
  fDMCadCondPgto.cdsCondPgto.Close;
  fDMCadCondPgto.sdsCondPgto.CommandText := fDMCadCondPgto.ctCommand;
  if Trim(edtNome.Text) <> '' then
    fDMCadCondPgto.sdsCondPgto.CommandText := fDMCadCondPgto.sdsCondPgto.CommandText
                                    + ' WHERE NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadCondPgto.cdsCondPgto.Open;
end;

procedure TfrmCadCondPgto.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCondPgto.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCondPgto.cdsCondPgto.State in [dsBrowse]) or not(fDMCadCondPgto.cdsCondPgto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCondPgto.cdsCondPgto.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCondPgto.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCondPgto.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCondPgto.cdsCondPgto.IsEmpty) or not(fDMCadCondPgto.cdsCondPgto.Active) or (fDMCadCondPgto.cdsCondPgtoID.AsInteger < 1) then
    exit;

  fDMCadCondPgto.cdsCondPgto.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCondPgto.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCondPgto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCondPgto);
end;

procedure TfrmCadCondPgto.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCondPgto.btnInserir_ItensClick(Sender: TObject);
begin
  //if CurrencyEdit1.AsInteger <= 0 then
  //begin
  //  MessageDlg('Qtd. dia não informado!', mtError, [mbOk], 0);
  //  exit;
  //end;

  if vItemCondPgto > 0 then
    if fDMCadCondPgto.cdsCondPgto_Dia.Locate('ITEM',vItemCondPgto,[loCaseInsensitive]) then
      fDMCadCondPgto.cdsCondPgto_Dia.Edit;
  if not(fDMCadCondPgto.cdsCondPgto_Dia.State in [dsEdit]) then
  begin
    fDMCadCondPgto.cdsCondPgto_Dia.Last;
    vItemCondPgto := fDMCadCondPgto.cdsCondPgto_DiaITEM.AsInteger;
    fDMCadCondPgto.cdsCondPgto_Dia.Insert;
    fDMCadCondPgto.cdsCondPgto_DiaID.AsInteger   := fDMCadCondPgto.cdsCondPgtoID.AsInteger;
    fDMCadCondPgto.cdsCondPgto_DiaITEM.AsInteger := vItemCondPgto + 1;
  end;
  fDMCadCondPgto.cdsCondPgto_DiaQTDDIAS.AsInteger    := CurrencyEdit1.AsInteger;
  fDMCadCondPgto.cdsCondPgto_DiaPERC_PARCELA.AsFloat := StrToFloat(FormatFloat('0.00',CurrencyEdit2.Value));
  fDMCadCondPgto.cdsCondPgto_Dia.Post;

  CurrencyEdit1.Clear;
  CurrencyEdit1.SetFocus;
  vItemCondPgto := 0;
end;

procedure TfrmCadCondPgto.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadCondPgto.cdsCondPgto_Dia.IsEmpty) or (fDMCadCondPgto.cdsCondPgto_DiaID.AsInteger < 1) then
    exit;

  vItemCondPgto           := fDMCadCondPgto.cdsCondPgto_DiaITEM.AsInteger;
  CurrencyEdit1.AsInteger := fDMCadCondPgto.cdsCondPgto_DiaQTDDIAS.AsInteger;
  CurrencyEdit2.Value     := fDMCadCondPgto.cdsCondPgto_DiaPERC_PARCELA.AsFloat;
  CurrencyEdit1.SetFocus;
end;

procedure TfrmCadCondPgto.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadCondPgto.cdsCondPgto_Dia.IsEmpty) or (fDMCadCondPgto.cdsCondPgto_DiaID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCondPgto.cdsCondPgto_Dia.Delete;
end;

procedure TfrmCadCondPgto.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCondPgto.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadCondPgto.cdsCondPgto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadCondPgto.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCondPgto.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
end;

procedure TfrmCadCondPgto.RxDBComboBox3Change(Sender: TObject);
begin
  GroupBox1.Visible := (RxDBComboBox3.ItemIndex = 1);
  SMDBGrid2.Visible := (RxDBComboBox3.ItemIndex = 1);
  Label4.Visible    := (RxDBComboBox3.ItemIndex = 0);
  DBEdit1.Visible   := (RxDBComboBox3.ItemIndex = 0);
end;

procedure TfrmCadCondPgto.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    RxDBComboBox1Change(Sender);
    RxDBComboBox3Change(Sender);
    Label7.Visible  := ((fDMCadCondPgto.cdsCondPgtoENTRADA.AsString = 'S') and (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S'));
    DBEdit2.Visible := ((fDMCadCondPgto.cdsCondPgtoENTRADA.AsString = 'S') and (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S'));
  end;
end;

procedure TfrmCadCondPgto.RxDBComboBox1Change(Sender: TObject);
begin
  DBCheckBox1.Visible   := (RxDBComboBox1.ItemIndex = 0);
  RxDBComboBox3.Visible := (RxDBComboBox1.ItemIndex = 0);
  Label5.Visible        := (RxDBComboBox1.ItemIndex = 0);
  DBEdit1.Visible       := (RxDBComboBox1.ItemIndex = 0);
  Label4.Visible        := (RxDBComboBox1.ItemIndex = 0);
  GroupBox1.Visible     := (RxDBComboBox1.ItemIndex = 0);
  SMDBGrid2.Visible     := (RxDBComboBox1.ItemIndex = 0);
end;

procedure TfrmCadCondPgto.DBEdit2Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadCondPgto.cdsCondPgtoPERC_ENTRADA.AsFloat)) > StrToFloat(FormatFloat('0.00',100)) then
  begin
    MessageDlg('*** % não pode ser maior que 100!', mtInformation, [mbOk], 0);
    DBEdit2.SetFocus;
  end;
  
end;

procedure TfrmCadCondPgto.DBCheckBox1Click(Sender: TObject);
begin
  Label7.Visible  := ((DBCheckBox1.Checked) and (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S'));
  DBEdit2.Visible := ((DBCheckBox1.Checked) and (fDMCadCondPgto.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S'));
end;

end.
