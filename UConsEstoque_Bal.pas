unit UConsEstoque_Bal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Mask, 
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, NxCollection, ToolEdit, DBFilter,
  RzTabs, CurrEdit;

type
  TfrmConsEstoque_Bal = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    btnConsultar: TNxButton;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    btnImprimir_Est: TNxButton;
    StaticText1: TStaticText;
    RzPageControl1: TRzPageControl;
    TS_Balanco: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TS_Verificar: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    btnVerificar: TNxButton;
    Shape1: TShape;
    Label3: TLabel;
    Panel3: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    NxButton1: TNxButton;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimir_EstClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsEstoque_Bal: TfrmConsEstoque_Bal;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelEstoque_Bal,
  UConsEstoque_Bal_Det;

{$R *.dfm}

procedure TfrmConsEstoque_Bal.prc_Consultar;
var
  vQtdAux: Integer;
begin
  vQtdAux := 0;
  fDMConsEstoque.cdsBalanco.Close;
  fDMConsEstoque.sdsBalanco.ParamByName('FILIAL').AsInteger   := RxDBLookupCombo1.KeyValue;
  fDMConsEstoque.sdsBalanco.ParamByName('DTMOVIMENTO').AsDate := DateEdit1.Date;
  case RadioGroup2.ItemIndex of
    0: fDMConsEstoque.sdsBalanco.ParamByName('TIPO_REG').AsString  := 'P';
    1: fDMConsEstoque.sdsBalanco.ParamByName('TIPO_REG').AsString  := 'M';
    2: fDMConsEstoque.sdsBalanco.ParamByName('TIPO_REG').AsString  := 'C';
    3: fDMConsEstoque.sdsBalanco.ParamByName('TIPO_REG').AsString  := 'S';
  end;
  fDMConsEstoque.cdsBalanco.Open;
end;

procedure TfrmConsEstoque_Bal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoque_Bal.FormShow(Sender: TObject);
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  RadioGroup2Click(Sender);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;
end;

procedure TfrmConsEstoque_Bal.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsBalanco.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Bal.RadioGroup2Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'TAMANHO') then
      SMDBGrid1.Columns[i].Visible := (fDMConsEstoque.qParametrosUSA_GRADE.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_COR') then
      SMDBGrid1.Columns[i].Visible := ((fDMConsEstoque.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or
                                      (fDMConsEstoque.qParametrosINFORMAR_COR_PROD.AsString = 'C'));
  end;
end;

procedure TfrmConsEstoque_Bal.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsEstoque_Bal.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMConsEstoque.cdsMarca.IndexFieldNames := 'NOME';
end;

procedure TfrmConsEstoque_Bal.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsEstoque.cdsGrupo.IndexFieldNames := 'NOME';
end;

procedure TfrmConsEstoque_Bal.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMConsEstoque.cdsSubGrupo.IndexFieldNames := 'NOME';
end;

procedure TfrmConsEstoque_Bal.btnConsultarClick(Sender: TObject);
begin
  fDMConsEstoque.cdsBalanco.Filtered := False;
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data Referência não informada!', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    exit;
  end;
  prc_Consultar;

  fDMConsEstoque.cdsBalanco.Filter   := '';
  if RadioGroup1.ItemIndex = 0 then
  begin
    fDMConsEstoque.cdsBalanco.Filter   := 'QTD_ESTOQUE > '''+'0'+'''';
    fDMConsEstoque.cdsBalanco.Filtered := True;
  end;
end;

procedure TfrmConsEstoque_Bal.btnImprimir_EstClick(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  vTipo_Config_Email := 4;
  fDMConsEstoque.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
  fDMConsEstoque.cdsBalanco.IndexFieldNames := 'NOME_PRODUTO;TAMANHO';

  fRelEstoque_Bal                := TfRelEstoque_Bal.Create(Self);
  fRelEstoque_Bal.fDMConsEstoque := fDMConsEstoque;
  fRelEstoque_Bal.vDataRef       := DateEdit1.Date;
  fRelEstoque_Bal.vNumPagIni     := CurrencyEdit1.AsInteger;
  fRelEstoque_Bal.RLReport1.PreviewModal;
  fRelEstoque_Bal.RLReport1.Free;
  FreeAndNil(fRelEstoque_Bal);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsEstoque_Bal.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmConsEstoque_Bal_Det: TfrmConsEstoque_Bal_Det;
begin
  if not(fDMConsEstoque.cdsBalanco.Active) or (fDMConsEstoque.cdsBalancoID_PRODUTO.AsInteger <= 0) then
    exit;
  fDMConsEstoque.cdsEstoque_Mov.Close;
  fDMConsEstoque.sdsEstoque_Mov.CommandText := fDMConsEstoque.ctEstoque_Mov
                                             + ' WHERE EM.ID_PRODUTO = ' + IntToStr(fDMConsEstoque.cdsBalancoID_PRODUTO.AsInteger)
                                             + '   AND EM.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  fDMConsEstoque.cdsEstoque_Mov.Open;

  ffrmConsEstoque_Bal_Det := TfrmConsEstoque_Bal_Det.Create(self);
  ffrmConsEstoque_Bal_Det.fDMConsEstoque := fDMConsEstoque;
  ffrmConsEstoque_Bal_Det.ShowModal;
  FreeAndNil(ffrmConsEstoque_Bal_Det);
end;

procedure TfrmConsEstoque_Bal.btnVerificarClick(Sender: TObject);
var
  sds: TSQLDataSet;
  vAux : Real;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    SMDBGrid1.DisableScroll;
    fDMConsEstoque.cdsBalanco.First;
    while not fDMConsEstoque.cdsBalanco.Eof do
    begin
      sds.Close;
      sds.CommandText := 'SELECT M.id_produto, M.dtmovimento, M.vlr_unitario, P.referencia, P.nome NOME_PRODUTO, P.UNIDADE UNIDADE_PROD, M.UNIDADE UNIDADE_EST '
                       + ' FROM ESTOQUE_MOV M '
                       + ' INNER JOIN PRODUTO P '
                       + ' ON M.id_produto = P.id '
                       + ' WHERE M.DTMOVIMENTO <= :DTMOVIMENTO '
                       + ' AND M.tipo_es = ' + QuotedStr('E')
                       + ' AND M.gerar_custo = ' + QuotedStr('S')
                       + ' AND M.ID_PRODUTO = :ID_PRODUTO ';
      sds.ParamByName('ID_PRODUTO').AsInteger := fDMConsEstoque.cdsBalancoID_PRODUTO.AsInteger;
      sds.ParamByName('DTMOVIMENTO').AsDate   := DateEdit1.Date;
      sds.Open;
      while not sds.Eof do
      begin
        if not fDMConsEstoque.mBalanco_Ver.Locate('ID_PRODUTO',sds.FieldByName('ID_Produto').AsInteger,[loCaseInsensitive]) then
        begin
          fDMConsEstoque.mBalanco_Ver.Insert;
          fDMConsEstoque.mBalanco_VerID_Produto.AsInteger := sds.FieldByName('ID_Produto').AsInteger;
          fDMConsEstoque.mBalanco_VerPreco_Menor.AsFloat  := StrToFloat(FormatFloat('0.000000',sds.FieldByName('Vlr_Unitario').AsFloat));
          fDMConsEstoque.mBalanco_VerPreco_Maior.AsFloat  := StrToFloat(FormatFloat('0.000000',sds.FieldByName('Vlr_Unitario').AsFloat));
          fDMConsEstoque.mBalanco_VerDtPreco_Menor.AsDateTime := sds.FieldByName('DtMovimento').AsDateTime;
          fDMConsEstoque.mBalanco_VerDtPreco_Maior.AsDateTime := sds.FieldByName('DtMovimento').AsDateTime;
          fDMConsEstoque.mBalanco_VerPerc_Diferenca.AsFloat   := 0;
          fDMConsEstoque.mBalanco_VerReferencia.AsString      := sds.FieldByName('Referencia').AsString;
          fDMConsEstoque.mBalanco_VerNome_Produto.AsString    := sds.FieldByName('Nome_Produto').AsString;
          fDMConsEstoque.mBalanco_VerUnidade.AsString         := sds.FieldByName('UNIDADE_PROD').AsString;
          if trim(fDMConsEstoque.mBalanco_VerUnidade.AsString) <> trim(sds.FieldByName('UNIDADE_EST').AsString) then
            fDMConsEstoque.mBalanco_VerPossui_Unid_dif.AsString := 'S'
          else
            fDMConsEstoque.mBalanco_VerPossui_Unid_dif.AsString := 'N';
          fDMConsEstoque.mBalanco_Ver.Post;
        end
        else
        begin
          fDMConsEstoque.mBalanco_Ver.Edit;
          if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mBalanco_VerPreco_Menor.AsFloat)) > StrToFloat(FormatFloat('0.000000',sds.FieldByName('VLR_UNITARIO').AsFloat)) then
          begin
            fDMConsEstoque.mBalanco_VerPreco_Menor.AsFloat := StrToFloat(FormatFloat('0.000000',sds.FieldByName('VLR_UNITARIO').AsFloat));
            fDMConsEstoque.mBalanco_VerDtPreco_Menor.AsDateTime := sds.FieldByName('DTMOVIMENTO').AsDateTime;
          end;
          if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mBalanco_VerPreco_Maior.AsFloat)) < StrToFloat(FormatFloat('0.000000',sds.FieldByName('VLR_UNITARIO').AsFloat)) then
          begin
            fDMConsEstoque.mBalanco_VerPreco_Maior.AsFloat := StrToFloat(FormatFloat('0.000000',sds.FieldByName('VLR_UNITARIO').AsFloat));
            fDMConsEstoque.mBalanco_VerDtPreco_Maior.AsDateTime := sds.FieldByName('DTMOVIMENTO').AsDateTime;
          end;
          if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mBalanco_VerPreco_Menor.AsFloat)) <> StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mBalanco_VerPreco_Maior.AsFloat)) then
          begin
            vAux := StrToFloat(FormatFloat('0.0000',(fDMConsEstoque.mBalanco_VerPreco_Menor.AsFloat / fDMConsEstoque.mBalanco_VerPreco_Maior.AsFloat) * 100));
            vAux := StrToFloat(FormatFloat('0.0000',100 - vAux));
            fDMConsEstoque.mBalanco_VerPerc_Diferenca.AsFloat := StrToFloat(FormatFloat('0.0000',vAux));
          end;
          if trim(fDMConsEstoque.mBalanco_VerUnidade.AsString) <> trim(sds.FieldByName('UNIDADE_EST').AsString) then
            fDMConsEstoque.mBalanco_VerPossui_Unid_dif.AsString := 'S'
          else
            fDMConsEstoque.mBalanco_VerPossui_Unid_dif.AsString := 'N';
          fDMConsEstoque.mBalanco_Ver.Post;
        end;
        sds.Next;
      end;

      fDMConsEstoque.cdsBalanco.Next;
    end;
  except
  on e: Exception do
    begin
      FreeAndNil(sds);
      raise Exception.Create('Erro ao gravar o mBalanco_Ver : ' + #13 + e.Message);
    end;
  end;
  SMDBGrid1.EnableScroll;
end;


procedure TfrmConsEstoque_Bal.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
begin           
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.mBalanco_Ver.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Bal.SMDBGrid2DblClick(Sender: TObject);
var
  ffrmConsEstoque_Bal_Det: TfrmConsEstoque_Bal_Det;
begin
  if (fDMConsEstoque.mBalanco_Ver.IsEmpty) or (fDMConsEstoque.mBalanco_VerID_Produto.AsInteger <= 0) then
    exit;

  fDMConsEstoque.cdsBalanco.Locate('ID_PRODUTO',fDMConsEstoque.mBalanco_VerID_Produto.AsInteger,[loCaseInsensitive]);

  fDMConsEstoque.cdsEstoque_Mov.Close;
  fDMConsEstoque.sdsEstoque_Mov.CommandText := fDMConsEstoque.ctEstoque_Mov
                                             + ' WHERE EM.ID_PRODUTO = ' + IntToStr(fDMConsEstoque.mBalanco_VerID_Produto.AsInteger)
                                             + '   AND EM.DTMOVIMENTO < ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  fDMConsEstoque.cdsEstoque_Mov.Open;

  ffrmConsEstoque_Bal_Det := TfrmConsEstoque_Bal_Det.Create(self);
  ffrmConsEstoque_Bal_Det.fDMConsEstoque := fDMConsEstoque;
  ffrmConsEstoque_Bal_Det.vMostrar       := CheckBox1.Checked;
  ffrmConsEstoque_Bal_Det.ShowModal;
  FreeAndNil(ffrmConsEstoque_Bal_Det);
end;

procedure TfrmConsEstoque_Bal.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsEstoque.mBalanco_VerPossui_Unid_dif.AsString = 'S' then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsEstoque_Bal.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMConsEstoque.cdsBalancoclPreco_Medio.AsFloat <= 0) then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;

end;

procedure TfrmConsEstoque_Bal.NxButton1Click(Sender: TObject);
var
  vArq : String;
begin
  SMDBGrid2.DisableScroll;
  fDMConsEstoque.mBalanco_Ver.First;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Balanco_Verificacao.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado: ' + vArq);
    Exit;
  end;
  SMDBGrid2.EnableScroll;
  fDMConsEstoque.frxReport1.ShowReport;
end;

procedure TfrmConsEstoque_Bal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    CheckBox1.Visible := not(CheckBox1.Visible);
end;

end.
