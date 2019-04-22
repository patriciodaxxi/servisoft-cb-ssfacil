unit UCadPosicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPosicao,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, NxCollection, RxDBComb, RzPanel;

type
  TfrmCadPosicao = class(TForm)
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
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    gbxVendedor: TRzGroupBox;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox1: TRxDBComboBox;
    Label2: TLabel;
    DBCheckBox2: TDBCheckBox;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBCheckBox3: TDBCheckBox;
    RzGroupBox1: TRzGroupBox;
    Panel3: TPanel;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    Panel4: TPanel;
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
    procedure DBCheckBox1Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadPosicao: TDMCadPosicao;
    vItem_Proc : Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Habilitar;

  public
    { Public declarations }            
  end;

var
  frmCadPosicao: TfrmCadPosicao;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadPosicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPosicao.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPosicao.cdsPosicao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPosicao.prc_Excluir_Registro;
begin
  fDMCadPosicao.prc_Excluir;
end;

procedure TfrmCadPosicao.prc_Gravar_Registro;
begin
  fDMCadPosicao.prc_Gravar;
  if fDMCadPosicao.cdsPosicao.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPosicao.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilitar;
end;

procedure TfrmCadPosicao.prc_Inserir_Registro;
begin
  fDMCadPosicao.prc_Inserir;

  if fDMCadPosicao.cdsPosicao.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilitar;

  DBEdit7.SetFocus;
end;

procedure TfrmCadPosicao.FormShow(Sender: TObject);
begin
  fDMCadPosicao := TDMCadPosicao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPosicao);
end;

procedure TfrmCadPosicao.prc_Consultar;
begin
  fDMCadPosicao.cdsPosicao.Close;
  fDMCadPosicao.sdsPosicao.CommandText := fDMCadPosicao.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadPosicao.sdsPosicao.CommandText := fDMCadPosicao.sdsPosicao.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadPosicao.cdsPosicao.Open;
end;

procedure TfrmCadPosicao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPosicao.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPosicao.cdsPosicao.State in [dsBrowse]) or not(fDMCadPosicao.cdsPosicao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPosicao.cdsPosicao.CancelUpdates;
  prc_Habilitar;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadPosicao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPosicao.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPosicao.cdsPosicao.IsEmpty) or not(fDMCadPosicao.cdsPosicao.Active) or (fDMCadPosicao.cdsPosicaoID.AsInteger < 1) then
    exit;

  fDMCadPosicao.cdsPosicao.Edit;

  prc_Habilitar;
end;

procedure TfrmCadPosicao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPosicao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPosicao);
end;

procedure TfrmCadPosicao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPosicao.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPosicao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadPosicao.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadPosicao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPosicao.cdsPosicao);
end;

procedure TfrmCadPosicao.DBCheckBox1Click(Sender: TObject);
begin
  Label2.Visible        := (DBCheckBox1.Checked);
  Label3.Visible        := (DBCheckBox1.Checked);
  RxDBComboBox1.Visible := (DBCheckBox1.Checked);
  RxDBComboBox2.Visible := (DBCheckBox1.Checked);
end;

procedure TfrmCadPosicao.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadPosicao.cdsPosicao.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadPosicao.DBCheckBox3Click(Sender: TObject);
begin
  RzGroupBox1.Visible := DBCheckBox3.Checked;
end;

procedure TfrmCadPosicao.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
    RzGroupBox1.Visible := (fDMCadPosicao.cdsPosicaoUSA_PROCESSO.AsString = 'S');
end;

procedure TfrmCadPosicao.btnInserir_ItensClick(Sender: TObject);
var
  vItemAux : Integer;
begin
  if trim(RxDBLookupCombo2.Text) = '' then
  begin
    MessageDlg('*** Processo não informado', mtError, [mbOk], 0);
    exit;
  end;

  if vItem_Proc > 0 then
  begin
    fDMCadPosicao.cdsPosicao_Proc.Locate('ITEM',vItem_Proc,([Locaseinsensitive]));
    fDMCadPosicao.cdsPosicao_Proc.Edit;
  end
  else
  begin
    fDMCadPosicao.cdsPosicao_Proc.Last;
    vItemAux := fDMCadPosicao.cdsPosicao_ProcITEM.AsInteger;
    fDMCadPosicao.cdsPosicao_Proc.Insert;
    fDMCadPosicao.cdsPosicao_ProcID.AsInteger           := fDMCadPosicao.cdsPosicaoID.AsInteger;
    fDMCadPosicao.cdsPosicao_ProcITEM.AsInteger         := vItemAux + 1;
  end;
  fDMCadPosicao.cdsPosicao_ProcID_PROCESSO.AsInteger  := RxDBLookupCombo2.KeyValue;
  fDMCadPosicao.cdsPosicao_ProcNOME_PROCESSO.AsString := RxDBLookupCombo2.Text;
  fDMCadPosicao.cdsPosicao_Proc.Post;

  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo2.SetFocus;
  vItem_Proc := 0;
end;

procedure TfrmCadPosicao.prc_Habilitar;
begin
  TS_Consulta.TabEnabled   := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
end;

procedure TfrmCadPosicao.btnAlterar_ItensClick(Sender: TObject);
begin
  if fDMCadPosicao.cdsPosicao_Proc.RecordCount <= 0 then
    exit;

  vItem_Proc := fDMCadPosicao.cdsPosicao_ProcITEM.AsInteger;  
  RxDBLookupCombo2.KeyValue := fDMCadPosicao.cdsPosicao_ProcID_PROCESSO.AsInteger;
  RxDBLookupCombo2.SetFocus;
end;

procedure TfrmCadPosicao.btnExcluir_ItensClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPosicao.cdsPosicao_Proc.Delete;
end;

end.
