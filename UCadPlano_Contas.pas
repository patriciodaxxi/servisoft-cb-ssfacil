unit UCadPlano_Contas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPlano_Contas,
  Mask, UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, RxLookup, RXSpin, NxCollection, RzPanel,
  ToolEdit, RXDBCtrl;

type
  TfrmCadPlano_Contas = class(TForm)
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
    fDMCadPlano_Contas: TDMCadPlano_Contas;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmCadPlano_Contas: TfrmCadPlano_Contas;

implementation

uses rsDBUtils, URelContaOrc, StdConvs, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadPlano_Contas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPlano_Contas.prc_Excluir_Registro;
begin
  fDMCadPlano_Contas.prc_Excluir;
end;

procedure TfrmCadPlano_Contas.prc_Gravar_Registro;
begin
  fDMCadPlano_Contas.prc_Gravar;
  if fDMCadPlano_Contas.cdsPlano_Contas.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPlano_Contas.vMsgConta, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);


end;

procedure TfrmCadPlano_Contas.prc_Inserir_Registro;
begin
  fDMCadPlano_Contas.prc_Inserir;

  if fDMCadPlano_Contas.cdsPlano_Contas.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadPlano_Contas.cdsSuperior.Close;
  fDMCadPlano_Contas.cdsSuperior.Open;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit3.SetFocus;
end;

procedure TfrmCadPlano_Contas.FormShow(Sender: TObject);
begin
  fDMCadPlano_Contas := TDMCadPlano_Contas.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPlano_Contas);
  fDMCadPlano_Contas.cdsSuperior.Open;
  fDMCadPlano_Contas.cdsSuperior.IndexFieldNames := 'NOME';
  btnConsultarClick(Sender);
end;

procedure TfrmCadPlano_Contas.prc_Consultar;
begin
  fDMCadPlano_Contas.cdsPlano_Contas.Close;
  fDMCadPlano_Contas.sdsPlano_Contas.CommandText := fDMCadPlano_Contas.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadPlano_Contas.sdsPlano_Contas.CommandText := fDMCadPlano_Contas.sdsPlano_Contas.CommandText + ' AND NOME LIKE ' +
                                              QuotedStr('%'+Edit4.Text+'%');
  fDMCadPlano_Contas.cdsPlano_Contas.IndexFieldNames := 'CODIGO';
  fDMCadPlano_Contas.cdsPlano_Contas.Open;
end;

procedure TfrmCadPlano_Contas.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPlano_Contas.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPlano_Contas.cdsPlano_Contas.State in [dsBrowse]) or not(fDMCadPlano_Contas.cdsPlano_Contas.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPlano_Contas.cdsPlano_Contas.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPlano_Contas.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPlano_Contas.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPlano_Contas.cdsPlano_Contas.IsEmpty) or not(fDMCadPlano_Contas.cdsPlano_Contas.Active) or (fDMCadPlano_Contas.cdsPlano_ContasID.AsInteger < 1) then
    exit;

  fDMCadPlano_Contas.cdsPlano_Contas.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPlano_Contas.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPlano_Contas.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPlano_Contas);
end;

procedure TfrmCadPlano_Contas.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPlano_Contas.DBEdit1Enter(Sender: TObject);
var
  vUlt: String;
  vProx: Integer;
begin
  fDMCadPlano_Contas.prc_Proximo_Codigo;
  {if (fDMCadPlano_Contas.cdsPlano_ContasCODIGO.IsNull) or (fDMCadPlano_Contas.cdsPlano_ContasCODIGO.AsString = '') then
  begin
    if fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsInteger > 1 then
    begin
      fDMCadPlano_Contas.sqProximo.SQL.Text := 'SELECT MAX(CODIGO) ' +
                                           'FROM CONTA_ORCAMENTO ' +
                                           'WHERE CODIGO LIKE ' + QuotedStr(fDMCadPlano_Contas.cdsSuperiorCODIGO.AsString + '.%') +
                                           ' AND NIVEL = ' + DBEdit2.Text;
      fDMCadPlano_Contas.sqProximo.Open;
      vUlt := Copy(fDMCadPlano_Contas.sqProximoMAX.AsString,Length(fDMCadPlano_Contas.sqProximoMAX.AsString)-1,2);
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      fDMCadPlano_Contas.cdsPlano_ContasCODIGO.AsString := fDMCadPlano_Contas.cdsSuperiorCODIGO.AsString + '.' +
                                                   FormatFloat('00',vProx);
    end
    else
    begin
      fDMCadPlano_Contas.sqProximo.SQL.Text := 'SELECT MAX(CODIGO) ' +
                                           'FROM CONTA_ORCAMENTO ' +
                                           'WHERE NIVEL = ' + DBEdit2.Text;
      fDMCadPlano_Contas.sqProximo.Open;
      vUlt := fDMCadPlano_Contas.sqProximoMAX.AsString;
      if trim(vUlt) = '' then
        vUlt := '000';
      vProx := StrToInt(FormatFloat('000',StrToInt(vUlt) + 1));
      fDMCadPlano_Contas.cdsPlano_ContasCODIGO.AsInteger := vProx;
    end;
    fDMCadPlano_Contas.sqProximo.Close;
  end;}
end;

procedure TfrmCadPlano_Contas.RxSpinButton1BottomClick(Sender: TObject);
begin
  fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsInteger := fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsInteger - 1;
end;

procedure TfrmCadPlano_Contas.RxSpinButton1TopClick(Sender: TObject);
begin
  fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsInteger := fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsInteger + 1;
end;

procedure TfrmCadPlano_Contas.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPlano_Contas.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPlano_Contas.cdsPlano_Contas.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPlano_Contas.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadPlano_Contas.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadPlano_Contas.cdsPlano_ContasCODIGO.Clear;
end;

procedure TfrmCadPlano_Contas.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Value = '' then
  begin
    fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsInteger   := 1;
    fDMCadPlano_Contas.cdsPlano_ContasTIPO_REG.AsString := 'S';
  end
  else
  begin
    fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsInteger := fDMCadPlano_Contas.cdsSuperiorNIVEL.AsInteger + 1;
  end;
end;

procedure TfrmCadPlano_Contas.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPlano_Contas.cdsPlano_ContasTIPO_REG.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmCadPlano_Contas.btnImprimirClick(Sender: TObject);
begin
  if not(fDMCadPlano_Contas.cdsPlano_Contas.Active) or (fDMCadPlano_Contas.cdsPlano_Contas.IsEmpty) or (fDMCadPlano_Contas.cdsPlano_ContasID.AsInteger <= 0) then
    exit;
  vTipo_Config_Email := 3;

  {fRelContaOrc := TfRelContaOrc.Create(Self);
  fRelContaOrc.fDMCadPlano_Contas := fDMCadPlano_Contas;
  fRelContaOrc.RLReport1.PreviewModal;
  fRelContaOrc.RLReport1.Free;
  FreeAndNil(fRelContaOrc);}
end;

end.
