unit UCadPlano_Contabil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid,uDMCadPlano_Contabil,
  Mask, UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, RxLookup, RXSpin, NxCollection, RzPanel,
  ToolEdit, RXDBCtrl;

type
  TfrmCadPlano_Contabil = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    RxSpinButton1: TRxSpinButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    btnAlterar: TNxButton;
    DBCheckBox1: TDBCheckBox;
    Label10: TLabel;
    btnImprimir: TNxButton;
    DBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    UCControls1: TUCControls;
    Label7: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label9: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Enter(Sender: TObject);
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure RxSpinButton1TopClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadPlano_Contabil: TDMCadPlano_Contabil;
    vID_Superior: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmCadPlano_Contabil: TfrmCadPlano_Contabil;

implementation

uses rsDBUtils, URelContaOrc, StdConvs, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadPlano_Contabil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPlano_Contabil.prc_Excluir_Registro;
begin
  fDMCadPlano_Contabil.prc_Excluir;
end;

procedure TfrmCadPlano_Contabil.prc_Gravar_Registro;
begin
  fDMCadPlano_Contabil.prc_Gravar;
  if fDMCadPlano_Contabil.cdsPlano_Contabil.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPlano_Contabil.vMsgConta, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPlano_Contabil.prc_Inserir_Registro;
begin
  vID_Superior := 0;
  if (fDMCadPlano_Contabil.cdsPlano_Contabil.Active) or not (fDMCadPlano_Contabil.cdsPlano_Contabil.IsEmpty) then
  begin
    if fDMCadPlano_Contabil.cdsPlano_ContabilTIPO_REG.AsString = 'S' then
      vID_Superior := StrToInt(fDMCadPlano_Contabil.cdsPlano_ContabilID.AsString)
    else if (trim(fDMCadPlano_Contabil.cdsPlano_ContabilSUPERIOR.AsString) <> '') and not (fDMCadPlano_Contabil.cdsPlano_ContabilSUPERIOR.IsNull) then
      vID_Superior := StrToInt(fDMCadPlano_Contabil.cdsPlano_ContabilSUPERIOR.AsString);
  end;


  fDMCadPlano_Contabil.prc_Inserir;

  if fDMCadPlano_Contabil.cdsPlano_Contabil.State in [dsBrowse] then
    exit;
  if vID_Superior > 0 then
    fDMCadPlano_Contabil.cdsPlano_ContabilSUPERIOR.AsString := IntToStr(vID_Superior);

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadPlano_Contabil.cdsSuperior.Close;
  fDMCadPlano_Contabil.cdsSuperior.Open;
  fDMCadPlano_Contabil.qUltimoCodReduzido.Close;
  fDMCadPlano_Contabil.qUltimoCodReduzido.Open;
  fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO_REDUZIDO.AsInteger := fDMCadPlano_Contabil.qUltimoCodReduzidoULTIMO_CODIGO.AsInteger + 1;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadPlano_Contabil.FormShow(Sender: TObject);
begin
  fDMCadPlano_Contabil := TDMCadPlano_Contabil.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPlano_Contabil);
  fDMCadPlano_Contabil.cdsSuperior.Open;
  fDMCadPlano_Contabil.cdsSuperior.IndexFieldNames := 'NOME';
  btnConsultarClick(Sender);
end;

procedure TfrmCadPlano_Contabil.prc_Consultar;
begin
  fDMCadPlano_Contabil.cdsPlano_Contabil.Close;
  fDMCadPlano_Contabil.sdsPlano_Contabil.CommandText := fDMCadPlano_Contabil.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadPlano_Contabil.sdsPlano_Contabil.CommandText := fDMCadPlano_Contabil.sdsPlano_Contabil.CommandText + ' AND NOME LIKE ' +
                                              QuotedStr('%'+Edit4.Text+'%');
  fDMCadPlano_Contabil.cdsPlano_Contabil.IndexFieldNames := 'CODIGO';
  fDMCadPlano_Contabil.cdsPlano_Contabil.Open;
end;

procedure TfrmCadPlano_Contabil.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPlano_Contabil.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPlano_Contabil.cdsPlano_Contabil.State in [dsBrowse]) or not(fDMCadPlano_Contabil.cdsPlano_Contabil.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPlano_Contabil.cdsPlano_Contabil.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPlano_Contabil.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPlano_Contabil.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPlano_Contabil.cdsPlano_Contabil.IsEmpty) or not(fDMCadPlano_Contabil.cdsPlano_Contabil.Active) or (fDMCadPlano_Contabil.cdsPlano_ContabilID.AsInteger < 1) then
    exit;

  fDMCadPlano_Contabil.cdsPlano_Contabil.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPlano_Contabil.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPlano_Contabil.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPlano_Contabil);
end;

procedure TfrmCadPlano_Contabil.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPlano_Contabil.DBEdit1Enter(Sender: TObject);
var
  vUlt: String;
  vProx: Integer;
begin
  fDMCadPlano_Contabil.prc_Proximo_Codigo;
end;

procedure TfrmCadPlano_Contabil.RxSpinButton1BottomClick(Sender: TObject);
begin
  fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger := fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger - 1;
end;

procedure TfrmCadPlano_Contabil.RxSpinButton1TopClick(Sender: TObject);
begin
  fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger := fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger + 1;
end;

procedure TfrmCadPlano_Contabil.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPlano_Contabil.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPlano_Contabil.cdsPlano_Contabil.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPlano_Contabil.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadPlano_Contabil.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO.Clear;
end;

procedure TfrmCadPlano_Contabil.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Value = '' then
  begin
    fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger   := 1;
    fDMCadPlano_Contabil.cdsPlano_ContabilTIPO_REG.AsString := 'S';
  end
  else
  begin
    fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger := fDMCadPlano_Contabil.cdsSuperiorNIVEL.AsInteger + 1;
  end;
end;

procedure TfrmCadPlano_Contabil.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPlano_Contabil.cdsPlano_ContabilTIPO_REG.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmCadPlano_Contabil.btnImprimirClick(Sender: TObject);
begin
  if not(fDMCadPlano_Contabil.cdsPlano_Contabil.Active) or (fDMCadPlano_Contabil.cdsPlano_Contabil.IsEmpty) or (fDMCadPlano_Contabil.cdsPlano_ContabilID.AsInteger <= 0) then
    exit;
  vTipo_Config_Email := 3;

end;

end.
