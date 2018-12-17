unit UConsDRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsDRE, StdCtrls, NxEdit, RxLookup, NxCollection, ExtCtrls,
  Grids, DBGrids, SMDBGrid, Mask, ToolEdit, CurrEdit, DB, ComObj;

type
  TfrmConsDRE = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    NxComboBox2: TNxComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    ceAnoIni: TCurrencyEdit;
    ceMesIni: TCurrencyEdit;
    ceMesFin: TCurrencyEdit;
    ceAnoFin: TCurrencyEdit;
    NxButton1: TNxButton;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsDRE: TDMConsDRE;
    vIndice_Total : Integer;
    vDescMes : array[1..12] of String;

    procedure prc_Consultar;
    procedure prc_Montar_mData;
    procedure prc_Le_DRE;
    procedure prc_Le_mDREAux;

    procedure prc_CriaExcel(vDados: TDataSource);

  public
    { Public declarations }

  end;

var
  frmConsDRE: TfrmConsDRE;


implementation

uses rsDBUtils, DateUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsDRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsDRE.FormShow(Sender: TObject);
begin
  fDMConsDRE := TDMConsDRE.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsDRE);
  if fDMConsDRE.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMConsDRE.cdsFilialID.AsInteger;

  vDescMes[1]  := 'Jan';
  vDescMes[2]  := 'Fev';
  vDescMes[3]  := 'Mar';
  vDescMes[4]  := 'Abr';
  vDescMes[5]  := 'Mai';
  vDescMes[6]  := 'Jun';
  vDescMes[7]  := 'Jul';
  vDescMes[8]  := 'Ago';
  vDescMes[9]  := 'Set';
  vDescMes[10] := 'Out';
  vDescMes[11] := 'Nov';
  vDescMes[12] := 'Dez';
end;

procedure TfrmConsDRE.btnConsultarClick(Sender: TObject);
var
  vAux : Integer;
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if (ceAnoIni.AsInteger = ceAnoFin.AsInteger) and (ceMesIni.AsInteger > ceMesFin.AsInteger) then
  begin
    MessageDlg('*** Mês inicial não pode ser maior que o final!', mtError, [mbOk], 0);
    exit;
  end;
  if ceAnoIni.AsInteger > ceAnoFin.AsInteger then
  begin
    MessageDlg('*** Ano inicial não pode ser maior que o final!', mtError, [mbOk], 0);
    exit;
  end;
  if ceAnoIni.AsInteger <> ceAnoFin.AsInteger then
  begin
    vAux := (12 - ceMesIni.AsInteger) + ceMesIni.AsInteger + 1;
    if vAux > 12 then
    begin
      MessageDlg('*** Período não pode ser maior que 12 Meses!', mtError, [mbOk], 0);
      exit;
    end;
  end;
  if (ceAnoIni.AsInteger <= 1990) or (ceAnoFin.AsInteger <= 1990) then
  begin
    MessageDlg('*** Ano inicial ou final esta incorreto!', mtError, [mbOk], 0);
    exit;
  end;

  Label2.Visible := True;
  Label2.Refresh;

  prc_Montar_mData;
  prc_Consultar;
  prc_Le_DRE;
  prc_Le_mDREAux;

  Label2.Visible := False;
  Label2.Refresh;
end;

procedure TfrmConsDRE.prc_Consultar;
var
  vComando : WideString;
  vData : TDateTime;
begin
  vComando := 'WITH RECURSIVE '
            + '   datas (d) AS ('
            + '     SELECT cast(:DataIni as date) from RDB$DATABASE'
            + '      UNION ALL'
            + '     SELECT d+1 FROM datas'
            + '      WHERE d < cast(:DataFin as date)'
            + '   ),'
            + '   hierarchy as ('
            + '   SELECT F.ID,'
            + '          F.Superior,'
            + '          F.codigo,'
            + '          F.nome,'
            + '          F.tipo_reg,'
            + '          F.nivel,'
            + '          case'
            + '            when F.somar = ' + QuotedStr('-') + ' then'
            + '              SUM(coalesce(-1*DUP.valor,0)) '
            + '            else '
            + '              SUM(coalesce(DUP.valor,0)) '
            + '          end VALOR, '
            + '          F.somar, '
            + '          case '
            + '            when F.nivel = 1 then '
            + '               (SELECT FIRST 1 F1.ID FROM PLANO_DRE F1 '
            + '                 where F1.nivel = 1 '
            + '                   and F1.codigo > F.codigo '
            + '                   and F1.somar = ' + QuotedStr('=')
            + '                 order by F1.codigo)'
            + '            else null'
            + '          end somar_em,'
            + '          extract(year from datas.d) ano, extract(month from datas.d) mes'
            + '     FROM datas, plano_dre F'
            + '     LEFT JOIN plano_dre_itens I ON F.ID = I.ID'
            + '     LEFT JOIN (select vdre.* from vdre where vdre.tipo in (:Tipo1) or vdre.tipo in (:Tipo2)) DUP'
            + '           ON DUP.id_conta_orcamento = I.id_conta_orcamento';
  if NxComboBox2.ItemIndex = 1 then
    vComando := vComando + '        and datas.d = dup.dtvencimento '
  else
    vComando := vComando + '        and datas.d = dup.dtemissao';
  vComando := vComando
            + '    WHERE ( (F.tipo_reg = ' +QuotedStr('A') +')'
            + '          OR (F.tipo_reg = '+QuotedStr('S') + ' and somar <>' +QuotedStr('=')
            + '              and not exists(select 1 from plano_dre FF where ff.superior = F.id)) )'
            + '    GROUP BY F.ID, F.Superior, F.codigo, F.nome, F.tipo_reg, F.nivel, F.somar, datas.d '
            + '),'
            + '  h2 AS ('
            + '   SELECT F.ID,'
            + '          F.Superior,'
            + '          F.codigo,'
            + '          F.nome,'
            + '          F.tipo_reg,'
            + '          F.nivel,'
            + '          F.valor valor,'
            + '          F.somar,'
            + '          F.somar_em,'
            + '          F.ANO,'
            + '          F.MES'
            + '     FROM hierarchy F'
            + '    UNION ALL'
            + '   SELECT P.ID,'
            + '          P.Superior,'
            + '          P.codigo,'
            + '          P.nome,'
            + '          P.tipo_reg,'
            + '          P.nivel,'
            + '          F.valor valor,'
            + '          P.somar,'
            + '          case'
            + '            when P.nivel = 1 then'
            + '               (SELECT FIRST 1 F1.ID FROM PLANO_DRE F1'
            + '                 where F1.nivel = 1'
            + '                   and F1.codigo > P.codigo'
            + '                   and F1.somar = ' +QuotedStr('=')
            + '                 order by F1.codigo)'
            + '            else null'
            + '          end somar_em,'
            + '          F.ANO,'
            + '          F.MES'
            + '     FROM plano_dre P'
            + '     JOIN h2 F ON F.Superior = P.ID '
            + '),'
            + '  h3 AS ('
            + '   SELECT F.ID,'
            + '          F.Superior,'
            + '          F.codigo,'
            + '          F.nome,'
            + '          F.tipo_reg,'
            + '          F.nivel,'
            + '          F.valor valor,'
            + '          F.somar,'
            + '          F.somar_em,'
            + '          F.ANO,'
            + '          F.MES'
            + '     FROM h2 F'
            + '    UNION ALL'
            + '   SELECT P.ID,'
            + '          P.Superior,'
            + '          P.codigo,'
            + '          P.nome,'
            + '          P.tipo_reg,'
            + '          P.nivel,'
            + '          F.valor valor,'
            + '          P.somar,'
            + '          case'
            + '            when P.nivel = 1 then'
            + '               (SELECT FIRST 1 F1.ID FROM PLANO_DRE F1'
            + '                 where F1.nivel = 1'
            + '                   and F1.codigo > P.codigo'
            + '                   and F1.somar = ' +QuotedStr('=')
            + '                 order by F1.codigo)'
            + '            else null'
            + '          end somar_em,'
            + '          F.ANO,'
            + '          F.MES'
            + '     FROM plano_dre P'
            + '     JOIN h3 F ON F.Somar_em = P.Id '
            + ')'
            + 'SELECT ano,'
            + '       mes,'
            + '       ID,'
            + '       Superior,'
            + '       codigo,'
            + '       nome,'
            + '       tipo_reg,'
            + '       nivel,'
            + '       Sum(valor) valor,'
            + '       somar'
            + ' FROM  h3'
            + ' group by ID, Superior, codigo, nome, tipo_reg, nivel, somar, ano, mes '
            + 'order by ano, mes, codigo';

  fDMConsDRE.cdsDRE.Close;
  fDMConsDRE.sdsDRE.CommandText := vComando;

  vData := EncodeDate(ceAnoIni.AsInteger,ceMesIni.AsInteger,01);
  fDMConsDRE.sdsDRE.ParamByName('DataIni').AsDate := vData;
  vData := EncodeDate(ceAnoFin.AsInteger,ceMesFin.AsInteger,DaysInAMonth(ceAnoFin.AsInteger,ceMesFin.AsInteger));
  fDMConsDRE.sdsDRE.ParamByName('DataFin').AsDate := vData;
  if NxComboBox2.ItemIndex = 0 then
  begin
    fDMConsDRE.sdsDRE.ParamByName('Tipo1').AsString := 'DUP';
    fDMConsDRE.sdsDRE.ParamByName('Tipo2').AsString := 'FIN';
  end
  else
  if NxComboBox2.ItemIndex = 1 then
  begin
    fDMConsDRE.sdsDRE.ParamByName('Tipo1').AsString := 'DUP';
    fDMConsDRE.sdsDRE.ParamByName('Tipo2').AsString := '';
  end
  else
  if NxComboBox2.ItemIndex = 2 then
  begin
    fDMConsDRE.sdsDRE.ParamByName('Tipo1').AsString := 'FIN';
    fDMConsDRE.sdsDRE.ParamByName('Tipo2').AsString := 'BAI';
  end;

  fDMConsDRE.cdsDRE.Open;
end;

procedure TfrmConsDRE.prc_Montar_mData;
var
  vFlag : Boolean;
  vAno, vMes : Integer;
  i : Integer;
  vTexto : String;
begin
  vFlag := False;
  vAno  := ceAnoIni.AsInteger;
  vMes  := ceMesIni.AsInteger;
  fDMConsDRE.mData.EmptyDataSet;
  vIndice_Total := 0;

  i := 0;
  while not vFlag do
  begin
    i := i + 1;
    fDMConsDRE.mData.Insert;
    fDMConsDRE.mDataAno.AsInteger    := vAno;
    fDMConsDRE.mDataMes.AsInteger    := vMes;
    fDMConsDRE.mDataIndice.AsInteger := i;
    fDMConsDRE.mData.Post;

    vMes := vMes + 1;
    if vMes > 12 then
    begin
      vMes := 1;
      vAno := vAno + 1;
    end;
    if vAno > ceAnoFin.AsInteger then
      vFlag := True
    else
    if (vAno = ceAnoFin.AsInteger) and (vMes > ceMesFin.AsInteger) then
      vFlag := True;
  end;

  vIndice_Total := i + 1;
  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    vTexto := SMDBGrid1.Columns[i].FieldName;
    //if (copy(vTexto,1,5) = 'Valor') or (copy(vTexto,1,7) = 'Perc_AV') then
    if (copy(vTexto,1,5) = 'Valor') then
    begin
      vTexto := copy(vTexto,6,Length(vTexto)-5);
      if StrToInt(vTexto) = vIndice_Total then
      begin
        SMDBGrid1.Columns[i].Title.Caption := 'Total';
        SMDBGrid1.Columns[i].Visible := True;
      end
      else
      begin
        if fDMConsDRE.mData.Locate('Indice',StrToInt(vTexto),[loCaseInsensitive]) then
        begin
          SMDBGrid1.Columns[i].Title.Caption := vDescMes[fDMConsDRE.mDataMes.AsInteger] + '/' + fDMConsDRE.mDataAno.AsString;
          SMDBGrid1.Columns[i].Visible := True;
        end
        else
          SMDBGrid1.Columns[i].Visible := False;
      end;
    end
    else
    if (copy(vTexto,1,7) = 'Perc_AV') then
    begin
      vTexto := copy(vTexto,8,Length(vTexto)-7);
      if StrToInt(vTexto) = vIndice_Total then
        SMDBGrid1.Columns[i].Visible := True
      else
      begin
        if fDMConsDRE.mData.Locate('Indice',StrToInt(vTexto),[loCaseInsensitive]) then
          SMDBGrid1.Columns[i].Visible := True
        else
          SMDBGrid1.Columns[i].Visible := False;
      end;
    end;
  end;
end;

procedure TfrmConsDRE.prc_Le_DRE;
var
  vIndice : Integer;
  i : Integer;
begin
  fDMConsDRE.mDREAux.EmptyDataSet;
  fDMConsDRE.cdsDRE.First;
  while not fDMConsDRE.cdsDRE.Eof do
  begin
    if fDMConsDRE.mData.Locate('Ano;Mes',VarArrayOf([fDMConsDRE.cdsDREANO.AsInteger,fDMConsDRE.cdsDREMES.AsInteger]),[locaseinsensitive]) then
      vIndice := fDMConsDRE.mDataIndice.AsInteger
    else
      vIndice := 13;
    if fDMConsDRE.mDREAux.Locate('ID_DRE',fDMConsDRE.cdsDREID.AsInteger,[loCaseInsensitive]) then
      fDMConsDRE.mDREAux.Edit
    else
    begin
      fDMConsDRE.mDREAux.Insert;
      fDMConsDRE.mDREAuxID_DRE.AsInteger  := fDMConsDRE.cdsDREID.AsInteger;
      fDMConsDRE.mDREAuxCodigo.AsString   := fDMConsDRE.cdsDRECODIGO.AsString;
      fDMConsDRE.mDREAuxNome.AsString     := fDMConsDRE.cdsDRENOME.AsString;
      fDMConsDRE.mDREAuxTipo_Reg.AsString := fDMConsDRE.cdsDRETIPO_REG.AsString;
      fDMConsDRE.mDREAuxSomar.AsString    := fDMConsDRE.cdsDRESOMAR.AsString;
      for i := 1 to 13 do
      begin
        fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(i)).AsFloat   := 0;
        fDMConsDRE.mDREAux.FieldByName('Perc_AV'+IntToStr(i)).AsFloat := 0;
      end;
    end;
    fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(vIndice)).AsFloat := fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(vIndice)).AsFloat
                                                                       + fDMConsDRE.cdsDREVALOR.AsFloat;

    fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(vIndice_Total)).AsFloat := fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(vIndice_Total)).AsFloat
                                                                       + fDMConsDRE.cdsDREVALOR.AsFloat;
    fDMConsDRE.mDREAux.Post;

    fDMConsDRE.cdsDRE.Next;
  end;
end;

procedure TfrmConsDRE.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsDRE.mDREAuxTipo_Reg.AsString = 'S' then
    AFont.Style := [fsBold];

end;

procedure TfrmConsDRE.NxButton1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmConsDRE.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel2(planilha, vDados, SMDBGrid1);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmConsDRE.prc_Le_mDREAux;
var
  vTotal: array[1..13] of Real;
  i : Integer;
begin
  for i := 1 to 13 do
    vTotal[i] := 0;
  fDMConsDRE.mDREAux.First;
  for i := 1 to 13 do
  begin
    vTotal[i] := 0;
    if StrToFloat(FormatFloat('0.00',fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(i)).AsFloat)) <> 0 then
      vTotal[i] := StrToFloat(FormatFloat('0.00',fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(i)).AsFloat));
  end;
  while not fDMConsDRE.mDREAux.Eof do
  begin
    fDMConsDRE.mDREAux.Edit;
    for i := 1 to 13 do
    begin
      if (StrToFloat(FormatFloat('0.00',fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(i)).AsFloat)) <> 0) and (vTotal[i] <> 0) then
        fDMConsDRE.mDREAux.FieldByName('Perc_AV'+IntToStr(i)).AsFloat := StrToFloat(FormatFloat('0.00',(fDMConsDRE.mDREAux.FieldByName('Valor'+IntToStr(i)).AsFloat
                                                                       / vTotal[i]) * 100));
    end;
    fDMConsDRE.mDREAux.Post;
    fDMConsDRE.mDREAux.Next;
  end;
end;

end.
