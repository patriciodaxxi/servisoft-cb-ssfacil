unit uCadCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCentroCusto,
  UCBase, RxLookup, StdCtrls, RxDBComb, Mask, DBCtrls, RXSpin, ExtCtrls, db, DBGrids, RzTabs, NxCollection, ToolEdit, RXDBCtrl,
  CurrEdit;

type
  TfrmCadCentroCusto = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label38: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RxSpinButton1: TRxSpinButton;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    Label5: TLabel;
    DBDateEdit1: TDBDateEdit;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
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
    procedure RxSpinButton1TopClick(Sender: TObject);
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadCentroCusto: TDMCadCentroCusto;
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
  frmCadCentroCusto: TfrmCadCentroCusto;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfrmCadCentroCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCentroCusto.prc_Excluir_Registro;
begin
  fDMCadCentroCusto.prc_Excluir;
end;

procedure TfrmCadCentroCusto.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadCentroCusto.cdsCentroCustoID.AsInteger;
  fDMCadCentroCusto.prc_Gravar;
  if fDMCadCentroCusto.cdsCentroCusto.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCentroCusto.vMsgCentroCusto, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar;
  
  fDMCadCentroCusto.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadCentroCusto.prc_Inserir_Registro;
begin
  fDMCadCentroCusto.prc_Inserir;

  if fDMCadCentroCusto.cdsCentroCusto.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadCentroCusto.cdsSuperior.Close;
  fDMCadCentroCusto.cdsSuperior.Open;

  prc_Habilita;

  DBEdit3.SetFocus;
end;

procedure TfrmCadCentroCusto.FormShow(Sender: TObject);
begin
  fDMCadCentroCusto := TDMCadCentroCusto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCentroCusto);
  fDMCadCentroCusto.cdsSuperior.IndexFieldNames := 'DESCRICAO';
  fDMCadCentroCusto.cdsSuperior.Open;
  btnConsultarClick(Sender);
  Edit4.SetFocus;
end;

procedure TfrmCadCentroCusto.prc_Consultar;
begin
  fDMCadCentroCusto.cdsConsulta.Close;
  fDMCadCentroCusto.sdsConsulta.CommandText := fDMCadCentroCusto.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadCentroCusto.sdsConsulta.CommandText := fDMCadCentroCusto.sdsConsulta.CommandText + ' AND DESCRICAO LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadCentroCusto.cdsConsulta.IndexFieldNames := 'COD_PRINCIPAL;CODIGO';
  fDMCadCentroCusto.cdsConsulta.Open;
end;

procedure TfrmCadCentroCusto.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCentroCusto.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCentroCusto.cdsCentroCusto.State in [dsBrowse]) or not(fDMCadCentroCusto.cdsCentroCusto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCentroCusto.cdsCentroCusto.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadCentroCusto.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCentroCusto.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCentroCusto.cdsCentroCusto.IsEmpty) or not(fDMCadCentroCusto.cdsCentroCusto.Active) or
     (fDMCadCentroCusto.cdsCentroCustoID.AsInteger < 1) then
    Exit;

  fDMCadCentroCusto.cdsCentroCusto.Edit;
  prc_Habilita;
end;

procedure TfrmCadCentroCusto.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCentroCusto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCentroCusto);
end;

procedure TfrmCadCentroCusto.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCentroCusto.RxSpinButton1TopClick(Sender: TObject);
begin
  fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger := fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger + 1;
end;

procedure TfrmCadCentroCusto.RxSpinButton1BottomClick(Sender: TObject);
begin
  fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger := fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger - 1;
end;

procedure TfrmCadCentroCusto.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Value = '' then
  begin
    fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger := 1;
    fDMCadCentroCusto.cdsCentroCustoTIPO.AsString   := 'S';
  end
  else
    fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger := fDMCadCentroCusto.cdsSuperiorNIVEL.AsInteger + 1;
end;

procedure TfrmCadCentroCusto.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadCentroCusto.cdsCentroCustoCODIGO.Clear;
end;

procedure TfrmCadCentroCusto.DBEdit1Enter(Sender: TObject);
var
  vUlt: String;
  vProx: Integer;
begin
  if (fDMCadCentroCusto.cdsCentroCustoCODIGO.IsNull) or (fDMCadCentroCusto.cdsCentroCustoCODIGO.AsString = '') then
  begin
    if fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger > 1 then
    begin
      fDMCadCentroCusto.sqProximo.SQL.Text := 'SELECT MAX(CODIGO) ' +
                                           'FROM CENTROCUSTO ' +
                                           'WHERE CODIGO LIKE ' + QuotedStr(fDMCadCentroCusto.cdsSuperiorCODIGO.AsString + '.%') +
                                           ' AND NIVEL = ' + DBEdit2.Text;
      fDMCadCentroCusto.sqProximo.Open;
      vUlt := Copy(fDMCadCentroCusto.sqProximoMAX.AsString,Length(fDMCadCentroCusto.sqProximoMAX.AsString)-1,2);
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      fDMCadCentroCusto.cdsCentroCustoCODIGO.AsString := fDMCadCentroCusto.cdsSuperiorCODIGO.AsString + '.' +
                                                   FormatFloat('00',vProx);
    end
    else
    begin
      fDMCadCentroCusto.sqProximo.SQL.Text := 'SELECT MAX(CODIGO) ' +
                                           'FROM CENTROCUSTO ' +
                                           'WHERE NIVEL = ' + DBEdit2.Text;
      fDMCadCentroCusto.sqProximo.Open;
      vUlt := fDMCadCentroCusto.sqProximoMAX.AsString;
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      fDMCadCentroCusto.cdsCentroCustoCODIGO.AsInteger := vProx;
    end;
    fDMCadCentroCusto.sqProximo.Close;
  end;
end;

procedure TfrmCadCentroCusto.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadCentroCusto.cdsCentroCustoNIVEL.AsInteger = 1 then
    AFont.Style := [fsBold];
end;

procedure TfrmCadCentroCusto.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCentroCusto.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadCentroCusto.cdsConsulta.Active) or (fDMCadCentroCusto.cdsConsulta.IsEmpty) or
        (fDMCadCentroCusto.cdsConsultaID.AsInteger < 1) then
    Exit;

  prc_Posiciona_Reg;

  if fDMCadCentroCusto.cdsCentroCusto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  prc_Consultar;
end;

procedure TfrmCadCentroCusto.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
end;

procedure TfrmCadCentroCusto.prc_Posiciona_Reg;
begin
  fDMCadCentroCusto.prc_Localizar(fDMCadCentroCusto.cdsConsultaID.AsInteger);
end;

procedure TfrmCadCentroCusto.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadCentroCusto.cdsCentroCusto.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadCentroCusto.cdsConsulta.Active) or (fDMCadCentroCusto.cdsConsulta.IsEmpty) or
            (fDMCadCentroCusto.cdsConsultaID.AsInteger = 0) then
        exit;
      prc_Posiciona_Reg;
    end;
  end;
end;

end.

