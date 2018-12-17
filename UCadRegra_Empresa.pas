unit UCadRegra_Empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadRegra_Empresa,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection,
  UCadRegra_Empresa_Itens;

type
  TfrmCadRegra_Empresa = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    SMDBGrid2: TSMDBGrid;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlItem: TNxPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btCopiar: TNxButton;
    DBRadioGroup4: TDBRadioGroup;
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
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btCopiarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadRegra_Empresa: TDMCadRegra_Empresa;
    vItemRegra : Integer;
    ffrmCadRegra_Empresa_Itens: TfrmCadRegra_Empresa_Itens;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure Habilita;
    procedure prc_Posiciona_Regra;

  public
    { Public declarations }
  end;

var
  frmCadRegra_Empresa: TfrmCadRegra_Empresa;

implementation

uses rsDBUtils, uUtilPadrao, UCadRegra_Empresa_Copiar;

{$R *.dfm}

procedure TfrmCadRegra_Empresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadRegra_Empresa.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadRegra_Empresa.cdsConsulta.Active) or (fDMCadRegra_Empresa.cdsConsulta.IsEmpty) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Posiciona_Regra;

  if (fDMCadRegra_Empresa.cdsRegra_Empresa.IsEmpty) or (fDMCadRegra_Empresa.cdsRegra_EmpresaID.AsInteger <= 0) then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadRegra_Empresa.prc_Excluir_Registro;
begin
  fDMCadRegra_Empresa.prc_Excluir;
end;

procedure TfrmCadRegra_Empresa.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadRegra_Empresa.cdsRegra_EmpresaID.AsInteger;
  fDMCadRegra_Empresa.prc_Gravar;
  if fDMCadRegra_Empresa.cdsRegra_Empresa.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadRegra_Empresa.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  btnConsultarClick(nil);
  fDMCadRegra_Empresa.cdsConsulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadRegra_Empresa.prc_Inserir_Registro;
begin
  fDMCadRegra_Empresa.prc_Inserir;

  if fDMCadRegra_Empresa.cdsRegra_Empresa.State in [dsBrowse] then
    exit;

  Habilita;
  RzPageControl1.ActivePage := TS_Cadastro;
  RxDBLookupCombo4.SetFocus;
end;

procedure TfrmCadRegra_Empresa.FormShow(Sender: TObject);
begin
  fDMCadRegra_Empresa := TDMCadRegra_Empresa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadRegra_Empresa);
end;

procedure TfrmCadRegra_Empresa.prc_Consultar;
begin
  fDMCadRegra_Empresa.cdsConsulta.Close;
  fDMCadRegra_Empresa.sdsConsulta.CommandText := fDMCadRegra_Empresa.ctConsulta;
  fDMCadRegra_Empresa.cdsConsulta.Open;
end;

procedure TfrmCadRegra_Empresa.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadRegra_Empresa.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadRegra_Empresa.cdsRegra_Empresa.State in [dsBrowse]) or not(fDMCadRegra_Empresa.cdsRegra_Empresa.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRegra_Empresa.cdsRegra_Empresa.CancelUpdates;
  Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadRegra_Empresa.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRegra_Empresa.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadRegra_Empresa.cdsConsulta.IsEmpty) or not(fDMCadRegra_Empresa.cdsConsulta.Active) or (fDMCadRegra_Empresa.cdsConsultaID.AsInteger < 1) then
    exit;

  prc_Posiciona_Regra;

  if (fDMCadRegra_Empresa.cdsRegra_Empresa.IsEmpty) then
    exit;

  Habilita;

  fDMCadRegra_Empresa.cdsRegra_Empresa.Edit;
end;

procedure TfrmCadRegra_Empresa.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadRegra_Empresa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadRegra_Empresa);
end;

procedure TfrmCadRegra_Empresa.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRegra_Empresa.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadRegra_Empresa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadRegra_Empresa.cdsRegra_Empresa);
end;

procedure TfrmCadRegra_Empresa.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadRegra_Empresa.Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);

  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
end;

procedure TfrmCadRegra_Empresa.btnInserir_ItensClick(Sender: TObject);
var
  i : Integer;
  vTexto1 : String;
begin
  fDMCadRegra_Empresa.prc_Inserir_Itens;

  ffrmCadRegra_Empresa_Itens := TfrmCadRegra_Empresa_Itens.Create(self);
  ffrmCadRegra_Empresa_Itens.fDMCadRegra_Empresa   := fDMCadRegra_Empresa;
  ffrmCadRegra_Empresa_Itens.ShowModal;
  FreeAndNil(ffrmCadRegra_Empresa_Itens);
end;

procedure TfrmCadRegra_Empresa.btnAlterar_ItensClick(Sender: TObject);
begin
  if fDMCadRegra_Empresa.cdsRegra_Empresa_ItensID.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe item para alterar ', mtInformation, [mbOk], 0);
    exit;
  end;

  ffrmCadRegra_Empresa_Itens := TfrmCadRegra_Empresa_Itens.Create(self);
  ffrmCadRegra_Empresa_Itens.fDMCadRegra_Empresa   := fDMCadRegra_Empresa;
  ffrmCadRegra_Empresa_Itens.ShowModal;
  FreeAndNil(ffrmCadRegra_Empresa_Itens);
end;

procedure TfrmCadRegra_Empresa.btnExcluir_ItensClick(Sender: TObject);
begin
  if fDMCadRegra_Empresa.cdsRegra_Empresa_ItensID.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe item para excluir ', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.Delete;
end;

procedure TfrmCadRegra_Empresa.prc_Posiciona_Regra;
begin
  if fDMCadRegra_Empresa.cdsConsultaID.AsInteger = 0 then
    fDMCadRegra_Empresa.prc_Localizar(-1)
  else
    fDMCadRegra_Empresa.prc_Localizar(fDMCadRegra_Empresa.cdsConsultaID.AsInteger);
  fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.Close;
  fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.Open;
  fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.Last;
end;

procedure TfrmCadRegra_Empresa.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadRegra_Empresa.cdsRegra_Empresa.State in [dsEdit, dsInsert]) then
    begin
      if not(fDMCadRegra_Empresa.cdsConsulta.Active) or (fDMCadRegra_Empresa.cdsConsulta.IsEmpty) or
            (fDMCadRegra_Empresa.cdsConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Regra;
    end;
  end;
end;

procedure TfrmCadRegra_Empresa.btCopiarClick(Sender: TObject);
var
  ffrmCadRegra_Empresa_Copiar: TfrmCadRegra_Empresa_Copiar;
begin
  if not(fDMCadRegra_Empresa.cdsConsulta.Active) or (fDMCadRegra_Empresa.cdsConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe regra para ser copiada!', mtInformation, [mbOk], 0);
    exit;
  end;
  ffrmCadRegra_Empresa_Copiar := TfrmCadRegra_Empresa_Copiar.Create(self);
  ffrmCadRegra_Empresa_Copiar.fDMCadRegra_Empresa   := fDMCadRegra_Empresa;
  ffrmCadRegra_Empresa_Copiar.ShowModal;
  FreeAndNil(ffrmCadRegra_Empresa_Copiar);
  if fDMCadRegra_Empresa.cdsRegra_Empresa.State in [dsEdit,dsInsert] then
  begin
    RzPageControl1.ActivePage := TS_Cadastro;
    btnAlterar.Enabled := True;
    Habilita;
  end;
end;

procedure TfrmCadRegra_Empresa.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadRegra_Empresa.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
