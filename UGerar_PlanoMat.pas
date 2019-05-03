unit UGerar_PlanoMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPlanoMat, RzTabs, ExtCtrls, StdCtrls, Mask, ToolEdit,
  CurrEdit, NxCollection, Grids, DBGrids, SMDBGrid, DB, UCBase, SqlExpr, dbXPress;
  
type
  TfrmGerar_PlanoMat = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_ConsMaterial: TRzTabSheet;
    TS_Gerar: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    TS_Processo: TRzTabSheet;
    TS_Tingimento: TRzTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    btnConsPendente: TNxButton;
    btnGerar_Plano: TNxButton;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    Splitter1: TSplitter;
    btnConsultar: TNxButton;
    UCControls1: TUCControls;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsPendenteClick(Sender: TObject);
    procedure btnGerar_PlanoClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadPlanoMat: TDMCadPlanoMat;
    vNum_Plano : Integer;
    vComando : String;
    vOpcaoImp : String;

    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_Gravar_mMatAux;
    procedure prc_Gravar_PlanoMat;
    procedure prc_Gravar_Itens;
    procedure prc_Gravar_PlanoLote(Num_Ordem : String);
    procedure prc_ConsMaterial;
    procedure prc_ConsTingimento;
    procedure prc_Condicao;
    procedure prc_Monta_Opcao;

    function fnc_Busca_Plano : Integer;
    function fnc_Busca_OP(Num_Plano : Integer) : String;

  public
    { Public declarations }
  end;

var
  frmGerar_PlanoMat: TfrmGerar_PlanoMat;

implementation

uses
  rsDBUtils, UMenu, DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmGerar_PlanoMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACtion := caFree;
end;

procedure TfrmGerar_PlanoMat.FormShow(Sender: TObject);
begin
  fDMCadPlanoMat := TDMCadPlanoMat.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPlanoMat);

  fDMCadPlanoMat.cdsOrdemPend.AfterScroll := prc_scroll;
end;

procedure TfrmGerar_PlanoMat.prc_scroll(DataSet: TDataSet);
begin
  SMDBGrid2.DisableScroll;
  fDMCadPlanoMat.cdsOrdemPend_Lote.Close;
  fDMCadPlanoMat.sdsOrdemPend_Lote.ParamByName('NUM_ORDEM').AsInteger := fDMCadPlanoMat.cdsOrdemPendNUM_ORDEM.AsInteger;
  fDMCadPlanoMat.cdsOrdemPend_Lote.Open;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmGerar_PlanoMat.btnConsPendenteClick(Sender: TObject);
begin
  fDMCadPlanoMat.cdsOrdemPend.Close;
  fDMCadPlanoMat.cdsOrdemPend.Open;
end;

procedure TfrmGerar_PlanoMat.btnGerar_PlanoClick(Sender: TObject);
var
  vTipo : String;
  i : Integer;
  vFlag : Boolean;
  vTexto : String;
  ID: TTransactionDesc;
begin
  vRegistro_CSV := '';
  fDMCadPlanoMat.mMatAux.EmptyDataSet;
  SMDBGrid1.DisableScroll;
  fDMCadPlanoMat.cdsOrdemPend.First;
  while not fDMCadPlanoMat.cdsOrdemPend.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      prc_Gravar_mMatAux;
      vRegistro_CSV := vRegistro_CSV + fDMCadPlanoMat.cdsOrdemPendNUM_ORDEM.AsString + ';';
    end;

    fDMCadPlanoMat.cdsOrdemPend.Next;
  end;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vNum_Plano := 0;
    fDMCadPlanoMat.mMatAux.IndexFieldNames := 'Ordenar;Tipo_Producao;ID_Material;ID_Cor';
    fDMCadPlanoMat.mMatAux.First;
    while not fDMCadPlanoMat.mMatAux.Eof do
    begin
      if vNum_Plano <= 0 then
        prc_Gravar_PlanoMat;
      prc_Gravar_Itens;

      fDMCadPlanoMat.mMatAux.Next;
    end;

    vFlag := False;
    while not vFlag do
    begin
      vTexto := fnc_Montar_Campo;
      if  Trim(vTexto) <> '' then
        prc_Gravar_PlanoLote(vTexto)
      else
        vFlag := True;
    end;
    fDMCadPlanoMat.cdsPlanoMat.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
      begin
        vNum_Plano := 0;
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Plano Material: ' + #13 + e.Message);
      end;
  end;

  SMDBGrid1.EnableScroll;
  btnConsPendenteClick(Sender);
  if vNum_Plano > 0 then
  begin
    MessageDlg('*** Plano ' + IntToStr(vNum_Plano) + ' gerado!', mtConfirmation, [mbOk], 0);
    RzPageControl1.ActivePage  := TS_ConsMaterial;
    CurrencyEdit1.AsInteger    := vNum_Plano;
  end;
end;

function TfrmGerar_PlanoMat.fnc_Busca_Plano: Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT MAX(NUM_PLANO) NUM_PLANO FROM PLANOMAT ';
    sds.Open;
    Result := sds.FieldByName('NUM_PLANO').AsInteger + 1;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmGerar_PlanoMat.prc_Gravar_mMatAux;
var
  vTam : String;
  vTipo : String;
begin
  fDMCadPlanoMat.cdsLote_Mat.Close;
  fDMCadPlanoMat.sdsLote_Mat.ParamByName('NUM_ORDEM').AsInteger := fDMCadPlanoMat.cdsOrdemPendNUM_ORDEM.AsInteger;
  fDMCadPlanoMat.cdsLote_Mat.Open;

  fDMCadPlanoMat.cdsLote_Mat.First;
  while not fDMCadPlanoMat.cdsLote_Mat.Eof do
  begin

    vTam := '';
    if Trim(fDMCadPlanoMat.cdsLote_MatTAMANHO.AsString) <> '' then
      vTam := fDMCadPlanoMat.cdsLote_MatTAMANHO.AsString;
    vTipo := '';
    if Trim(fDMCadPlanoMat.cdsLote_MatTIPO_PRODUCAO.AsString) <> '' then
      vTipo := fDMCadPlanoMat.cdsLote_MatTIPO_PRODUCAO.AsString;

    if fDMCadPlanoMat.mMatAux.Locate('ID_Material;ID_Cor;Tamanho;Tipo_Producao',VarArrayOf([fDMCadPlanoMat.cdsLote_MatID_MATERIAL.AsInteger,
                                      fDMCadPlanoMat.cdsLote_MatID_COR.AsInteger,vTam,vTipo ]),[locaseinsensitive]) then
      fDMCadPlanoMat.mMatAux.Edit
    else
    begin
      fDMCadPlanoMat.mMatAux.Insert;
      fDMCadPlanoMat.mMatAuxID_Material.AsInteger  := fDMCadPlanoMat.cdsLote_MatID_MATERIAL.AsInteger;
      fDMCadPlanoMat.mMatAuxID_Cor.AsInteger       := fDMCadPlanoMat.cdsLote_MatID_COR.AsInteger;
      fDMCadPlanoMat.mMatAuxTamanho.AsString       := vTam;
      fDMCadPlanoMat.mMatAuxTipo_Producao.AsString := vTipo;
      fDMCadPlanoMat.mMatAuxQtd_Consumo.AsFloat    := 0;
      fDMCadPlanoMat.mMatAuxQtd_Produto.AsFloat    := 0;
      fDMCadPlanoMat.mMatAuxOrdenar.AsString       := fDMCadPlanoMat.cdsLote_MatORDENAR.AsString;
      fDMCadPlanoMat.mMatAuxCru.AsString           := fDMCadPlanoMat.cdsLote_MatCRU.AsString;
      fDMCadPlanoMat.mMatAuxTingimento.AsString    := fDMCadPlanoMat.cdsLote_MatTINGIMENTO.AsString;
    end;
    fDMCadPlanoMat.mMatAuxQtd_Consumo.AsFloat := fDMCadPlanoMat.mMatAuxQtd_Consumo.AsFloat + fDMCadPlanoMat.cdsLote_MatQTD_CONSUMO.AsFloat;
    fDMCadPlanoMat.mMatAuxQtd_Produto.AsFloat := fDMCadPlanoMat.mMatAuxQtd_Produto.AsFloat + fDMCadPlanoMat.cdsLote_MatQTD_PRODUTO.AsFloat;
    fDMCadPlanoMat.mMatAux.Post;

    fDMCadPlanoMat.cdsLote_Mat.Next;
  end;

end;

procedure TfrmGerar_PlanoMat.prc_Gravar_PlanoMat;
begin
  vNum_Plano := fnc_Busca_Plano;
  fDMCadPlanoMat.prc_Inserir;
  fDMCadPlanoMat.cdsPlanoMatNUM_PLANO.AsInteger    := vNum_Plano;
end;

procedure TfrmGerar_PlanoMat.prc_Gravar_Itens;
begin
  fDMCadPlanoMat.prc_Inserir_Itens;

  fDMCadPlanoMat.cdsPlanoMat_ItensID_MATERIAL.AsInteger  := fDMCadPlanoMat.mMatAuxID_Material.AsInteger;
  fDMCadPlanoMat.cdsPlanoMat_ItensID_COR.AsInteger       := fDMCadPlanoMat.mMatAuxID_Cor.AsInteger;
  fDMCadPlanoMat.cdsPlanoMat_ItensTAMANHO.AsString       := fDMCadPlanoMat.mMatAuxTamanho.AsString;
  fDMCadPlanoMat.cdsPlanoMat_ItensQTD_CONSUMO.AsFloat    := fDMCadPlanoMat.mMatAuxQtd_Consumo.AsFloat;
  fDMCadPlanoMat.cdsPlanoMat_ItensTIPO_PRODUCAO.AsString := fDMCadPlanoMat.mMatAuxTipo_Producao.AsString;
  fDMCadPlanoMat.cdsPlanoMat_ItensCRU.AsString           := fDMCadPlanoMat.mMatAuxCru.AsString;
  fDMCadPlanoMat.cdsPlanoMat_ItensTINGIMENTO.AsString    := fDMCadPlanoMat.mMatAuxTingimento.AsString;
  fDMCadPlanoMat.cdsPlanoMat_Itens.Post;
end;

procedure TfrmGerar_PlanoMat.prc_Gravar_PlanoLote(Num_Ordem: String);
begin
  fDMCadPlanoMat.cdsPlanoMat_Lote.Last;
  fDMCadPlanoMat.cdsPlanoMat_Lote.Insert;
  fDMCadPlanoMat.cdsPlanoMat_LoteID.AsInteger        := fDMCadPlanoMat.cdsPlanoMatID.AsInteger;
  fDMCadPlanoMat.cdsPlanoMat_LoteNUM_ORDEM.AsInteger := StrToInt(Num_Ordem);
  fDMCadPlanoMat.cdsPlanoMat_Lote.Post;
end;

procedure TfrmGerar_PlanoMat.btnConsultarClick(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Processo then
    prc_ConsMaterial
  else
  if RzPageControl2.ActivePage = TS_Tingimento then
    prc_ConsTingimento;
end;

procedure TfrmGerar_PlanoMat.prc_ConsMaterial;
begin
  prc_Condicao;
  //if CurrencyEdit1.AsInteger <= 0 then
  //begin
    case ComboBox1.ItemIndex of
      1 : vComando := vComando + ' AND I.TIPO_PRODUCAO = ' + QuotedStr('T');
      2 : vComando := vComando + ' AND I.TIPO_PRODUCAO = ' + QuotedStr('E');
    end;
  //end;
  fDMCadPlanoMat.cdsConsMaterial.Close;
  fDMCadPlanoMat.sdsConsMaterial.CommandText := fDMCadPlanoMat.ctConsMaterial + vComando;
  fDMCadPlanoMat.cdsConsMaterial.Open;
end;

procedure TfrmGerar_PlanoMat.RzPageControl2Change(Sender: TObject);
begin
  ComboBox1.Visible := (RzPageControl2.ActivePage = TS_Processo);
  Label6.Visible    := (RzPageControl2.ActivePage = TS_Processo);
end;

procedure TfrmGerar_PlanoMat.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := fnc_Busca_OP(CurrencyEdit1.AsInteger);
  prc_Monta_Opcao;
  if RzPageControl2.ActivePage = TS_Processo then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\PlanoMat.fr3'
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\PlanoMat_Ting.fr3';
  if FileExists(vArq) then
    fDMCadPlanoMat.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    MessageDlg('*** Relatório ' + vArq + ', não encontrado!' , mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadPlanoMat.frxReport1.variables['Ordens'] := QuotedStr(vComando);
  if RzPageControl2.ActivePage = TS_Processo then
  begin
    case ComboBox1.ItemIndex of
      1 : fDMCadPlanoMat.frxReport1.variables['Processo']    := QuotedStr('TRANÇADEIRA');
      2 : fDMCadPlanoMat.frxReport1.variables['Processo']    := QuotedStr('TEAR');
    end;
  end
  else
    fDMCadPlanoMat.frxReport1.variables['Processo']    := QuotedStr('TINGIMENTO');
  fDMCadPlanoMat.frxReport1.variables['ImpOpcao']    := QuotedStr(vOpcaoImp);
  fDMCadPlanoMat.frxReport1.variables['OpcaoTitulo'] := QuotedStr('PLANO MATERIAL Nº ' + CurrencyEdit1.Text);
  fDMCadPlanoMat.frxReport1.ShowReport;
end;


procedure TfrmGerar_PlanoMat.prc_ConsTingimento;
begin
  prc_Condicao;
  fDMCadPlanoMat.cdsConsTing.Close;
  fDMCadPlanoMat.sdsConsTing.CommandText := fDMCadPlanoMat.ctConsTing + vComando + ' ORDER BY I.CRU DESC, MAT.NOME ';
  fDMCadPlanoMat.cdsConsTing.Open;
end;

procedure TfrmGerar_PlanoMat.prc_Condicao;
begin
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND P.NUM_PLANO = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND P.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND P.DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if CurrencyEdit2.AsInteger > 0 then
      vComando := vComando + ' AND I.ID_MATERIAL = ' + IntToStr(CurrencyEdit2.AsInteger)
    else
    if Trim(Edit1.Text) <> '' then
      vComando := vComando + ' AND MAT.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  end;
end;

function TfrmGerar_PlanoMat.fnc_Busca_OP(Num_Plano: Integer): String;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT PL.num_ordem FROM PLANOMAT_LOTE PL INNER JOIN PLANOMAT P ON PL.ID = P.ID WHERE P.num_plano = :NUM_PLANO ';
    sds.ParamByName('NUM_PLANO').AsInteger := Num_Plano;
    sds.Open;
    Result := '';
    while not sds.Eof do
    begin
      if Result = '' then
        Result := sds.FieldByName('NUM_ORDEM').AsString
      else
        Result := Result + ',' + sds.FieldByName('NUM_ORDEM').AsString;
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmGerar_PlanoMat.prc_Monta_Opcao;
begin
  vOpcaoImp := '';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10 ) then
    vOpcaoImp := vOpcaoImp + '(Dt.Inicial: ' + DateEdit1.Text +  ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Final: ' + DateEdit2.Text + ')';
  if CurrencyEdit2.AsInteger > 0 then
    vOpcaoImp := vOpcaoImp + '(ID Material: ' + CurrencyEdit2.Text + ')';
  if Trim(Edit1.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Material: ' + Edit1.Text + ')';

end;

end.
