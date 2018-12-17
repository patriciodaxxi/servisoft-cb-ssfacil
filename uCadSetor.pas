//O campo % Rateio das Despesas foi colocado como invísivel pois quem usa é somente a PHD.
//E os funcionários foi colocado em outra tela, pois os setores vão ser usados na produção
//e esta não pode ter acesso aos salários dos funcionários (ver como vai funcionar quando a PHD resolver usar)
//20/02/2015  Cleomar

unit UCadSetor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadSetor, Mask, 
  db, RxDBComb, UCBase, StdCtrls, DBCtrls, ExtCtrls, RzTabs, DBGrids, ToolEdit, CurrEdit, NxCollection, RzPanel;

type
  TfrmCadSetor = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    UCControls1: TUCControls;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnFuncionario: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Label5: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit4: TDBEdit;
    RzPageControl2: TRzPageControl;
    TS_Processo: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel4: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
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
    procedure DBCheckBox3Click(Sender: TObject);
    procedure btnFuncionarioClick(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadSetor: TDMCadSetor;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_Reg;
    procedure prc_Habilita;

  public
    { Public declarations }       
  end;

var
  frmCadSetor: TfrmCadSetor;

implementation

uses DmdDatabase, rsDBUtils, UCadSetor_Proc, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadSetor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                             
  Action := Cafree;
end;

procedure TfrmCadSetor.btnExcluirClick(Sender: TObject);
begin
  if (fDMCadSetor.cdsConsulta.IsEmpty) or not(fDMCadSetor.cdsConsulta.Active) or (fDMCadSetor.cdsConsultaID.AsInteger < 1) then
    exit;

  prc_Posiciona_Reg;

  if fDMCadSetor.cdsSetor.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadSetor.prc_Excluir_Registro;
begin
  fDMCadSetor.prc_Excluir;
end;

procedure TfrmCadSetor.prc_Gravar_Registro;
begin
  fDMCadSetor.prc_Gravar;
  if fDMCadSetor.cdsSetor.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadSetor.vMsgSetor, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar;
end;

procedure TfrmCadSetor.prc_Inserir_Registro;
begin
  fDMCadSetor.prc_Inserir;

  if fDMCadSetor.cdsSetor.State in [dsBrowse] then
    exit;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Cadastro;
  DBEdit1.SetFocus;
end;

procedure TfrmCadSetor.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadSetor := TDMCadSetor.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadSetor);
  Edit4.SetFocus;
  if fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S' then
    RzGroupBox1.Visible := False
  else
    RzGroupBox1.Visible := ((fDMCadSetor.qParametrosUSA_LOTE.AsString = 'S') or (fDMCadSetor.qParametros_LoteLOTE_TEXTIL.AsString = 'S'));
  RzPageControl2.Visible := (fDMCadSetor.qParametros_SerUSA_PROCESSO_SETOR.AsString = 'S');
  DBCheckBox1.Visible    := (fDMCadSetor.qParametros_SerUSA_PROCESSO_SETOR.AsString = 'S');
  if fDMCadSetor.qParametros_SerUSA_PROCESSO_SETOR.AsString = 'S' then
    fDMCadSetor.cdsProcesso.Open;

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'ENTRADA_AUT' then
      SMDBGrid1.Columns[i].Visible := (fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'ORDEM_ORC' then
    begin
      SMDBGrid1.Columns[i].Visible := ((fDMCadSetor.qParametros_SerUSA_PROCESSO_SETOR.AsString = 'S') or (fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S'));
      if fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString  = 'S' then
        SMDBGrid1.Columns[i].Title.Caption := 'Ordem de Imp. no Talão';
    end
  end;
  if fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S' then
    Label3.Caption := 'Ordem de Imp. no Talão:';
  DBCheckBox4.Visible := (fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S');
  DBCheckBox6.Visible := (fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S');
  DBCheckBox7.Visible := (fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S');
  DBCheckBox8.Visible := (fDMCadSetor.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S');
end;

procedure TfrmCadSetor.prc_Consultar;
begin
  fDMCadSetor.cdsConsulta.Close;
  fDMCadSetor.sdsConsulta.CommandText := fDMCadSetor.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadSetor.sdsConsulta.CommandText := fDMCadSetor.sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadSetor.cdsConsulta.Open;
end;

procedure TfrmCadSetor.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadSetor.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadSetor.cdsSetor.State in [dsBrowse]) or not(fDMCadSetor.cdsSetor.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadSetor.cdsSetor.CancelUpdates;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadSetor.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadSetor.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadSetor.cdsSetor.IsEmpty) or not(fDMCadSetor.cdsSetor.Active) or (fDMCadSetor.cdsSetorID.AsInteger < 1) then
    exit;

  fDMCadSetor.cdsSetor.Edit;

  prc_Habilita;
end;

procedure TfrmCadSetor.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadSetor.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadSetor);
end;

procedure TfrmCadSetor.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadSetor.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadSetor.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus;
end;

procedure TfrmCadSetor.DBCheckBox3Click(Sender: TObject);
begin
  Label5.Visible  := (DBCheckBox3.Checked);
  DBEdit4.Visible := (DBCheckBox3.Checked);
end;

procedure TfrmCadSetor.btnFuncionarioClick(Sender: TObject);
begin
  //Chamar o form frmCadSetor_Func, esta sendo usado para a PHD (Foi tirado no dia 20/02/2015)
end;

procedure TfrmCadSetor.prc_Posiciona_Reg;
begin
  fDMCadSetor.prc_Localizar(fDMCadSetor.cdsConsultaID.AsInteger);
  fDMCadSetor.cdsSetor_Proc.Close;
  fDMCadSetor.cdsSetor_Proc.Open;
  fDMCadSetor.cdsSetor_Proc.Last;

  RzPageControl2.Visible := (fDMCadSetor.cdsSetorMOSTRAR_ORC.AsString = 'S');
end;

procedure TfrmCadSetor.DBCheckBox1Click(Sender: TObject);
begin
  RzPageControl2.Visible := DBCheckBox1.Checked;
end;

procedure TfrmCadSetor.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadSetor.cdsSetor.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadSetor.cdsConsulta.Active) or (fDMCadSetor.cdsConsulta.IsEmpty) or
            (fDMCadSetor.cdsConsultaID.AsInteger = 0) then
        exit;
      prc_Posiciona_Reg;
    end;
  end;
end;

procedure TfrmCadSetor.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);

  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
end;

procedure TfrmCadSetor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadSetor.cdsSetor);
end;

procedure TfrmCadSetor.btnInserir_ItensClick(Sender: TObject);
var
  ffrmCadSetor_Proc: TfrmCadSetor_Proc;
begin
  fDMCadSetor.prc_Inserir_Setor_Proc;

  ffrmCadSetor_Proc := TfrmCadSetor_Proc.Create(self);
  ffrmCadSetor_Proc.fDMCadSetor := fDMCadSetor;
  ffrmCadSetor_Proc.ShowModal;
  FreeAndNil(ffrmCadSetor_Proc);
end;

procedure TfrmCadSetor.btnAlterar_ItensClick(Sender: TObject);
var
  ffrmCadSetor_Proc: TfrmCadSetor_Proc;
begin
  if fDMCadSetor.cdsSetor_ProcITEM.AsInteger <= 0 then
    exit;

  fDMCadSetor.cdsSetor_Proc.Edit;
  
  ffrmCadSetor_Proc := TfrmCadSetor_Proc.Create(self);
  ffrmCadSetor_Proc.fDMCadSetor := fDMCadSetor;
  ffrmCadSetor_Proc.ShowModal;
  FreeAndNil(ffrmCadSetor_Proc);
end;

procedure TfrmCadSetor.btnExcluir_ItensClick(Sender: TObject);
begin
  if fDMCadSetor.cdsSetor_ProcID.AsInteger <= 0 then
    exit;
  if MessageDlg('Deseja Excluir o Processo do Setor?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadSetor.cdsSetor_Proc.Delete;
end;

procedure TfrmCadSetor.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadSetor.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
