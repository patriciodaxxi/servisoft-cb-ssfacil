unit UCadTipoCobranca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, UDMCadTipoCobranca, UCBase,
  DB, StdCtrls, DBCtrls, Mask, ExtCtrls, DBGrids, RzTabs, SMDBGrid, NxCollection, RxDBComb;

type
  TfrmCadTipoCobranca = class(TForm)
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
    UCControls1: TUCControls;
    Label6: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnConsultar: TNxButton;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    Label4: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    RxDBComboBox2: TRxDBComboBox;
    DBCheckBox21: TDBCheckBox;
    Label5: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    Label49: TLabel;
    Shape8: TShape;
    Label16: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    DBCheckBox22: TDBCheckBox;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure DBCheckBox6Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure DBCheckBox13Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure DBCheckBox18Click(Sender: TObject);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure DBCheckBox20Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMCadTipoCobranca: TDMCadTipoCobranca;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Cod_Imp_Fiscal;
  public
    { Public declarations }
  end;

var
  frmCadTipoCobranca: TfrmCadTipoCobranca;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadTipoCobranca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadTipoCobranca);
  Action := Cafree;
end;

procedure TfrmCadTipoCobranca.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTipoCobranca.cdsTipoCobranca.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTipoCobranca.prc_Excluir_Registro;
begin
  fDMCadTipoCobranca.prc_Excluir;
end;

procedure TfrmCadTipoCobranca.prc_Gravar_Registro;
begin
  fDMCadTipoCobranca.prc_Gravar;
  if fDMCadTipoCobranca.cdsTipoCobranca.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTipoCobranca.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTipoCobranca.prc_Inserir_Registro;
begin
  fDMCadTipoCobranca.prc_Inserir;

  if fDMCadTipoCobranca.cdsTipoCobranca.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadTipoCobranca.FormShow(Sender: TObject);
begin
  fDMCadTipoCobranca := TDMCadTipoCobranca.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTipoCobranca);
  btnConsultarClick(Sender);
end;

procedure TfrmCadTipoCobranca.prc_Consultar;
begin
  fDMCadTipoCobranca.cdsTipoCobranca.Close;
  fDMCadTipoCobranca.sdsTipoCobranca.CommandText := fDMCadTipoCobranca.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(edtNome.Text) <> '' then
    fDMCadTipoCobranca.sdsTipoCobranca.CommandText := fDMCadTipoCobranca.sdsTipoCobranca.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadTipoCobranca.cdsTipoCobranca.Open;
end;

procedure TfrmCadTipoCobranca.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTipoCobranca.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTipoCobranca.cdsTipoCobranca.State in [dsBrowse]) or not(fDMCadTipoCobranca.cdsTipoCobranca.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTipoCobranca.cdsTipoCobranca.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTipoCobranca.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTipoCobranca.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTipoCobranca.cdsTipoCobranca.IsEmpty) or not(fDMCadTipoCobranca.cdsTipoCobranca.Active) or
     (fDMCadTipoCobranca.cdsTipoCobrancaID.AsInteger < 1) then
    exit;

  fDMCadTipoCobranca.cdsTipoCobranca.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadTipoCobranca.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTipoCobranca.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTipoCobranca.DBCheckBox6Click(Sender: TObject);
begin
  RxDBComboBox1.Visible := DBCheckBox6.Checked;
  Label4.Visible        := DBCheckBox6.Checked;
  DBCheckBox10.Visible := DBCheckBox6.Checked;
end;

procedure TfrmCadTipoCobranca.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    edtNome.Clear;
end;

procedure TfrmCadTipoCobranca.DBCheckBox5Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox4Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox7Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox8Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox13Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox3Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox16Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox17Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox18Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox19Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox20Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox2Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.DBCheckBox1Click(Sender: TObject);
begin
  prc_Cod_Imp_Fiscal;
end;

procedure TfrmCadTipoCobranca.prc_Cod_Imp_Fiscal;
var
  vCont : Integer;
begin
  if not Assigned(fDMCadTipoCobranca) then
    exit;
  if not(fDMCadTipoCobranca.cdsTipoCobranca.State in [dsEdit,dsInsert]) then
    exit;
  vCont := 0;
  if DBCheckBox5.Checked then
    vCont := vCont + 1;
  if DBCheckBox4.Checked then
    vCont := vCont + 1;
  if DBCheckBox7.Checked then
    vCont := vCont + 1;
  if DBCheckBox8.Checked then
    vCont := vCont + 1;
  if DBCheckBox13.Checked then
    vCont := vCont + 1;
  if DBCheckBox3.Checked then
    vCont := vCont + 1;
  if DBCheckBox16.Checked then
    vCont := vCont + 1;
  if DBCheckBox17.Checked then
    vCont := vCont + 1;
  if DBCheckBox18.Checked then
    vCont := vCont + 1;
  if DBCheckBox19.Checked then
    vCont := vCont + 1;
  if DBCheckBox20.Checked then
    vCont := vCont + 1;
  if DBCheckBox2.Checked then
    vCont := vCont + 1;
  if DBCheckBox1.Checked then
    vCont := vCont + 1;

  if vCont > 1 then
    exit
  else
  if vCont = 0 then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.Clear;

  if DBCheckBox5.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '01'
  else
  if DBCheckBox4.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '02'
  else
  if DBCheckBox7.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '03'
  else
  if DBCheckBox8.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '03'
  else
  if DBCheckBox13.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '05'
  else
  if DBCheckBox3.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '15'
  else
  if DBCheckBox16.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '99'
  else
  if DBCheckBox17.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '10'
  else
  if DBCheckBox18.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '11'
  else
  if DBCheckBox19.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '12'
  else
  if DBCheckBox20.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '13'
  else
  if DBCheckBox2.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '99'
  else
  if DBCheckBox1.Checked then
    fDMCadTipoCobranca.cdsTipoCobrancaCOD_IMP_FISCAL.AsString := '99';
end;

procedure TfrmCadTipoCobranca.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadTipoCobranca.cdsTipoCobrancaMOSTRARNOCUPOM.AsString = 'S' then
    Background := clYellow;
  if fDMCadTipoCobranca.cdsTipoCobrancaGERAR_NFCE.AsString = 'S' then
  begin
    AFont.Color := clBlue;
    AFont.Style := [fsBold];
  end
  else
  if fDMCadTipoCobranca.cdsTipoCobrancaGERAR_NFCE.AsString = 'N' then
  begin
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end
end;

end.

