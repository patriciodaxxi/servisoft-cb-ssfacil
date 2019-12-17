unit UCadMovProdST;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadMovProdST,
  UCBase, RxLookup, StdCtrls, RxDBComb, Mask, DBCtrls, RXSpin, ExtCtrls, db, DBGrids, RzTabs, NxCollection, ToolEdit, RXDBCtrl,
  CurrEdit, RzPanel, ComCtrls;

type
  TfrmCadMovProdST = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    Label5: TLabel;
    DBDateEdit1: TDBDateEdit;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label2: TLabel;
    edtRef: TEdit;
    Label14: TLabel;
    ceIDProduto: TCurrencyEdit;
    Label16: TLabel;
    edtNome_Prod: TEdit;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label9: TLabel;
    gbxVendedor: TRzGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    NxButton1: TNxButton;
    Label33: TLabel;
    edtIdProduto: TEdit;
    edtNomeProduto: TEdit;
    cStat: TStatusBar;
    Label3: TLabel;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    DBEdit10: TDBEdit;
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
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure edtIdProdutoEnter(Sender: TObject);
    procedure edtIdProdutoExit(Sender: TObject);
    procedure edtIdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMCadMovProdST: TDMCadMovProdST;
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
  frmCadMovProdST: TfrmCadMovProdST;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmCadMovProdST.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMovProdST.prc_Excluir_Registro;
begin
  fDMCadMovProdST.prc_Excluir;
end;

procedure TfrmCadMovProdST.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  if StrToFloat(FormatFloat('0.000',fDMCadMovProdST.cdsMovProdSTPERC_ST.AsFloat)) <= 0 then
  begin
    if MessageDlg('% ST não foi informada, deseja gravar assim mesmo?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
      exit;
  end;

  fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger := StrToInt(edtIdProduto.Text);
  vIDAux := fDMCadMovProdST.cdsMovProdSTID.AsInteger;
  fDMCadMovProdST.prc_Gravar;
  if fDMCadMovProdST.cdsMovProdST.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMovProdST.vMsgMovProdST, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar;
  
  fDMCadMovProdST.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadMovProdST.prc_Inserir_Registro;
begin
  fDMCadMovProdST.prc_Inserir;

  if fDMCadMovProdST.cdsMovProdST.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;
  prc_Habilita;
  edtIdProduto.Clear;
  edtNomeProduto.Clear;
  DBEdit3.SetFocus;
end;

procedure TfrmCadMovProdST.FormShow(Sender: TObject);
begin
  fDMCadMovProdST := TDMCadMovProdST.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMovProdST);
  cStat.Panels[0].Text := vUsuario;
  cStat.Panels[1].Text := fnc_Busca_Nome_Filial;
end;

procedure TfrmCadMovProdST.prc_Consultar;
var
  vComando : String;
begin
  fDMCadMovProdST.cdsConsulta.Close;
  vComando := '';
  if Trim(edtRef.Text) <> '' then
    vComando := vComando + ' AND P.REFERENCIA LIKE ' + QuotedStr('%'+edtRef.Text+'%');
  if ceIDProduto.AsInteger > 0 then
    vComando := vComando + ' AND P.ID = ' + IntToStr(ceIDProduto.AsInteger);
  if Trim(edtNome_Prod.Text) <> '' then
    vComando := ' AND P.NOME LIKE ' + QuotedStr('%'+edtNome_Prod.Text+'%');

  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND M.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND M.DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date));
  fDMCadMovProdST.sdsConsulta.CommandText := fDMCadMovProdST.ctConsulta + ' WHERE 0 = 0 ' + vComando;
  fDMCadMovProdST.cdsConsulta.Open;
end;

procedure TfrmCadMovProdST.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMovProdST.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadMovProdST.cdsMovProdST.State in [dsBrowse]) or not(fDMCadMovProdST.cdsMovProdST.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMovProdST.cdsMovProdST.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadMovProdST.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMovProdST.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadMovProdST.cdsMovProdST.IsEmpty) or not(fDMCadMovProdST.cdsMovProdST.Active) or
     (fDMCadMovProdST.cdsMovProdSTID.AsInteger < 1) then
    Exit;

  fDMCadMovProdST.cdsMovProdST.Edit;
  prc_Habilita;
end;

procedure TfrmCadMovProdST.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMovProdST.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMovProdST);
end;

procedure TfrmCadMovProdST.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMovProdST.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMovProdST.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadMovProdST.cdsConsulta.Active) or (fDMCadMovProdST.cdsConsulta.IsEmpty) or
        (fDMCadMovProdST.cdsConsultaID.AsInteger < 1) then
    Exit;

  prc_Posiciona_Reg;

  if fDMCadMovProdST.cdsMovProdST.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  prc_Consultar;
end;

procedure TfrmCadMovProdST.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
end;

procedure TfrmCadMovProdST.prc_Posiciona_Reg;
begin
  fDMCadMovProdST.prc_Localizar(fDMCadMovProdST.cdsConsultaID.AsInteger);
  if fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger > 0 then
  begin
    edtIdProduto.Text := IntToStr(fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger);
    edtIdProdutoExit(edtIdProduto);
  end;
end;

procedure TfrmCadMovProdST.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadMovProdST.cdsMovProdST.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadMovProdST.cdsConsulta.Active) or (fDMCadMovProdST.cdsConsulta.IsEmpty) or
            (fDMCadMovProdST.cdsConsultaID.AsInteger = 0) then
        exit;
      prc_Posiciona_Reg;
    end;
  end;
end;

procedure TfrmCadMovProdST.NxButton1Click(Sender: TObject);
var
  vQtdAux : Real;
begin
  vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadMovProdST.cdsMovProdSTQTD_ORIGINAL.AsFloat));
  if (StrToFloat(FormatFloat('0.00000',fDMCadMovProdST.cdsMovProdSTQTD_PACOTE.AsFloat)) <> 0)
    and (StrToFloat(FormatFloat('0.00000',fDMCadMovProdST.cdsMovProdSTQTD_PACOTE.AsFloat)) <> 1) then
    vQtdAux := StrToCurr(FormatCurr('0.00000',fDMCadMovProdST.cdsMovProdSTQTD_ORIGINAL.AsFloat * fDMCadMovProdST.cdsMovProdSTQTD_PACOTE.AsFloat));
  fDMCadMovProdST.cdsMovProdSTBASE_ST.AsFloat        := StrToCurr(FormatCurr('0.00',fDMCadMovProdST.cdsMovProdSTBASE_ST_ORIGINAL.AsFloat / vQtdAux));
  fDMCadMovProdST.cdsMovProdSTVLR_ST.AsFloat         := StrToCurr(FormatCurr('0.00',fDMCadMovProdST.cdsMovProdSTVLR_ST_ORIGINAL.AsFloat / vQtdAux));
  fDMCadMovProdST.cdsMovProdSTVLR_ICMS_SUBST.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadMovProdST.cdsMovProdSTVLR_ICMS_SUBST_ORIG.AsFloat / vQtdAux));
end;

procedure TfrmCadMovProdST.edtIdProdutoEnter(Sender: TObject);
begin
  cStat.Panels[2].Text := 'F2 Consulta Produto';
end;

procedure TfrmCadMovProdST.edtIdProdutoExit(Sender: TObject);
begin
  cStat.Panels[2].Text := '';
  if trim(edtIdProduto.Text) = '' then
  begin
    edtNomeProduto.Clear;
    fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger := 0;
    exit;
  end;
  edtNomeProduto.Clear;
  edtIdProduto.Text := Trim(edtIdProduto.Text);
  fDMCadMovProdST.prc_Abrir_Produto(StrToInt(edtIdProduto.Text));
  if fDMCadMovProdST.cdsProduto.IsEmpty then
  begin
    MessageDlg('*** Produto não encontrado!',mtError, [mbOk], 0);
    edtIdProduto.SetFocus;
    exit;
  end;
  edtNomeProduto.Text := fDMCadMovProdST.cdsProdutoNOME.AsString;
end;

procedure TfrmCadMovProdST.edtIdProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if trim(edtIdProduto.Text) = '' then
      edtNomeProduto.SetFocus
    else
      DateEdit1.SetFocus;
  end
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      edtIdProduto.Text := IntToStr(vCodProduto_Pos);
    fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger := vCodProduto_Pos;
  end;
end;

procedure TfrmCadMovProdST.edtNomeProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      edtIdProduto.Text := IntToStr(vCodProduto_Pos);
    fDMCadMovProdST.cdsMovProdSTID_PRODUTO.AsInteger := vCodProduto_Pos;
  end;

end;

end.

