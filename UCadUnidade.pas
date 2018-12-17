unit UCadUnidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadUnidade,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, UCBase, Mask, NxCollection, RzPanel, UCadUnidade_Conv;

type
  TfrmCadUnidade = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    gbxVendedor: TRzGroupBox;
    Panel3: TPanel;
    SMDBGrid2: TSMDBGrid;
    btnInserir_Itens: TBitBtn;
    btnAlterar_Itens: TBitBtn;
    btnExcluir_Itens: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
  private
    { Private declarations }
    fDMCadUnidade: TDMCadUnidade;
    ffrmCadUnidade_Conv : TfrmCadUnidade_Conv;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Habilita;
    function fnc_Existe(Unidade : String) : Boolean;

  public
    { Public declarations }

  end;

var
  frmCadUnidade: TfrmCadUnidade;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadUnidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadUnidade.btnExcluirClick(Sender: TObject);
begin
  if fDMCadUnidade.cdsUnidade.IsEmpty then
    exit;

  if fnc_Existe(fDMCadUnidade.cdsUnidadeUNIDADE.AsString) then
  begin
    MessageDlg('*** Unidade de Medida já usada, não pode ser excluída!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadUnidade.prc_Excluir_Registro;
begin
  fDMCadUnidade.prc_Excluir;
end;

procedure TfrmCadUnidade.prc_Gravar_Registro;
begin
  fDMCadUnidade.prc_Gravar;
  if fDMCadUnidade.cdsUnidade.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadUnidade.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilita;
end;

procedure TfrmCadUnidade.prc_Inserir_Registro;
begin
  fDMCadUnidade.prc_Inserir;

  if fDMCadUnidade.cdsUnidade.State in [dsBrowse] then
    exit;
  RzPageControl1.ActivePage := TS_Cadastro;
  prc_Habilita;
  DBEdit1.SetFocus;
end;

procedure TfrmCadUnidade.FormShow(Sender: TObject);
begin
  fDMCadUnidade := TDMCadUnidade.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadUnidade);
  Label3.Visible := (fDMCadUnidade.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  DBEdit3.Visible := (fDMCadUnidade.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
end;

procedure TfrmCadUnidade.prc_Consultar;
begin
  fDMCadUnidade.cdsUnidade.Close;
  fDMCadUnidade.sdsUnidade.CommandText := fDMCadUnidade.ctCommand
                                                       + ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    fDMCadUnidade.sdsUnidade.CommandText := fDMCadUnidade.sdsUnidade.CommandText
                                    + ' AND UNIDADE = ' + QuotedStr(Edit1.Text);
  fDMCadUnidade.cdsUnidade.Open;
end;

procedure TfrmCadUnidade.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadUnidade.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadUnidade.cdsUnidade.State in [dsBrowse]) or not(fDMCadUnidade.cdsUnidade.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadUnidade.cdsUnidade.CancelUpdates;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilita;
end;

procedure TfrmCadUnidade.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadUnidade.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadUnidade.cdsUnidade.IsEmpty) or not(fDMCadUnidade.cdsUnidade.Active) or (trim(fDMCadUnidade.cdsUnidadeUNIDADE.AsString) = '') then
    exit;
  fDMCadUnidade.cdsUnidade.Edit;
  prc_Habilita;
end;

procedure TfrmCadUnidade.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadUnidade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadUnidade);
end;

procedure TfrmCadUnidade.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadUnidade.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadUnidade.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadUnidade.prc_Limpar_Edit_Consulta;
begin
  Edit1.Clear;
end;

procedure TfrmCadUnidade.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadUnidade.prc_Inserir_Itens;

  ffrmCadUnidade_Conv := TfrmCadUnidade_Conv.Create(self);
  ffrmCadUnidade_Conv.fDMCadUnidade := fDMCadUnidade;
  ffrmCadUnidade_Conv.ShowModal;

  FreeAndNil(ffrmCadUnidade_Conv);
end;

procedure TfrmCadUnidade.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadUnidade.cdsUnidade_Conv.IsEmpty) or (trim(fDMCadUnidade.cdsUnidade_ConvUNIDADE.AsString) = '') then
    exit;
  fDMCadUnidade.cdsUnidade_Conv.Edit;

  ffrmCadUnidade_Conv := TfrmCadUnidade_Conv.Create(self);
  ffrmCadUnidade_Conv.fDMCadUnidade := fDMCadUnidade;
  ffrmCadUnidade_Conv.ShowModal;

  FreeAndNil(ffrmCadUnidade_Conv);
end;

procedure TfrmCadUnidade.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadUnidade.cdsUnidade_Conv.IsEmpty) or (trim(fDMCadUnidade.cdsUnidade_ConvUNIDADE.AsString) = '') then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadUnidade.cdsUnidade_Conv.Delete;
end;

procedure TfrmCadUnidade.prc_Habilita;
begin
  TS_Consulta.TabEnabled   := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
end;

function TfrmCadUnidade.fnc_Existe(Unidade : String) : Boolean;
begin
  Result := True;
  fDMCadUnidade.qVerUnidade.Close;
  fDMCadUnidade.qVerUnidade.ParamByName('UNIDADE').AsString := Unidade;
  fDMCadUnidade.qVerUnidade.Open;
  if (fDMCadUnidade.qVerUnidadeCONTADOR.AsInteger > 0) or (fDMCadUnidade.qVerUnidadeCONTADOR_PROD.AsInteger > 0) then
    Result := True
  else
    Result := False;
end;

procedure TfrmCadUnidade.DBEdit1Enter(Sender: TObject);
begin
  if fDMCadUnidade.cdsUnidade.State in [dsInsert] then
    DBEdit1.ReadOnly := False
  else
    DBEdit1.ReadOnly := fnc_Existe(fDMCadUnidade.cdsUnidadeUNIDADE.AsString);
end;

end.
