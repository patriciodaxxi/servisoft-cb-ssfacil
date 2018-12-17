unit UGerarXML_NFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsNotaEletronica, RxLookup, UCBase, Mask, ToolEdit,
  RzPanel, RzTabs, CurrEdit, NxEdit, NxCollection, DateUtils;

type
  TfrmGerarXML_NFe = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Shape2: TShape;
    Label10: TLabel;
    Label1: TLabel;
    btnConsultar: TNxButton;
    btnGravar_XML: TNxButton;
    RzPageControl1: TRzPageControl;
    TS_NFe: TRzTabSheet;
    TS_NFCe: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnGravar_XMLClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsNotaEletronica: TDMConsNotaEletronica;
    ColunaOrdenada: String;
    vDiretorio : String;

    procedure prc_Consultar;
    procedure prc_Consultar_NFCe;
    procedure prc_Gerar_NFe;
    procedure prc_Gerar_NFCe;
    function Monta_Diretorio(Tipo, Diretorio: string): string;

  public
    { Public declarations }
  end;

var
  frmGerarXML_NFe: TfrmGerarXML_NFe;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, StrUtils;

{$R *.dfm}

procedure TfrmGerarXML_NFe.prc_Consultar;
var
  vComando : String;
  vComandoAux : String;
  i : Integer;
  vDescDataNTE : String;
begin
  fDMConsNotaEletronica.cdsNotaFiscal.Close;
  fDMConsNotaEletronica.sdsNotaFiscal.CommandText := fDMConsNotaEletronica.ctNotaFiscal;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND NT.FILIAL =  ' + IntToStr(RxDBLookupCombo1.KeyValue);
  vComando := vComando + ' AND (NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ')';
  vComando := vComando + ' AND (NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ')';
  fDMConsNotaEletronica.sdsNotaFiscal.CommandText := fDMConsNotaEletronica.sdsNotaFiscal.CommandText + vComando;
  fDMConsNotaEletronica.cdsNotaFiscal.Open;
end;

procedure TfrmGerarXML_NFe.prc_Consultar_NFCe;
var
  vComando : String;
  vComandoAux : String;
  i : Integer;
  vDescDataNTE : String;
begin
  fDMConsNotaEletronica.cdsCupom.Close;
  fDMConsNotaEletronica.sdsCupom.CommandText := fDMConsNotaEletronica.ctCupom;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND NT.FILIAL =  ' + IntToStr(RxDBLookupCombo1.KeyValue);
  vComando := vComando + ' AND (NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ')';
  vComando := vComando + ' AND (NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ')';
  fDMConsNotaEletronica.sdsCupom.CommandText := fDMConsNotaEletronica.sdsCupom.CommandText + vComando;
  fDMConsNotaEletronica.cdsCupom.Open;
end;

procedure TfrmGerarXML_NFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMConsNotaEletronica);
  Action := Cafree;
end;

procedure TfrmGerarXML_NFe.FormShow(Sender: TObject);
begin
  fDMConsNotaEletronica := TDMConsNotaEletronica.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotaEletronica);
  fDMConsNotaEletronica.cdsFilial.First;
  if (fDMConsNotaEletronica.cdsFilial.RecordCount < 2) and (fDMConsNotaEletronica.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsNotaEletronica.cdsFilialID.AsInteger;
end;

procedure TfrmGerarXML_NFe.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsNotaEletronica.cdsNotaFiscal.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerarXML_NFe.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsNotaEletronica.cdsNotaFiscalCANCELADA.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMConsNotaEletronica.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
  begin
    Background  := $000080FF;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmGerarXML_NFe.btnConsultarClick(Sender: TObject);
begin
  if ((DateEdit1.Date <= 10) or (DateEdit2.Date <= 10)) or (DateEdit1.Date > DateEdit2.Date) then
  begin
    MessageDlg('*** Data não informada ou incorreta!', mtInformation, [mbOk], 0);
    Exit;
  end;
  if RzPageControl1.ActivePage = TS_NFCe then
    prc_Consultar_NFCe
  else
    prc_Consultar;
end;

procedure TfrmGerarXML_NFe.btnGravar_XMLClick(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_NFCe then
    prc_Gerar_NFCe
  else
    prc_Gerar_NFe;
end;

function TfrmGerarXML_NFe.Monta_Diretorio(Tipo, Diretorio : string): string;
var
  vSerieAux : String;
  vAnoMes : String;
  i : Integer;
begin
  vSerieAux := '';
  if Tipo <> 'I' then
  begin
    //if Tipo = 'C' then
    //  vAnoMes := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_NFeDTCADASTRO.AsDateTime)) + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_NFeDTCADASTRO.AsDateTime))
    //else
      vAnoMes := FormatFloat('0000',YearOf(fDMConsNotaEletronica.cdsNotaFiscalDTEMISSAO.AsDateTime)) + FormatFloat('00',MonthOf(fDMConsNotaEletronica.cdsNotaFiscalDTEMISSAO.AsDateTime));
    vSerieAux := fDMConsNotaEletronica.cdsNotaFiscalSERIE.AsString;
    for i := 1 to 3 - Length(vSerieAux) do
      vSerieAux := '0' + vSerieAux;
  end;
  Result := '';
  if Diretorio = '' then
    Raise Exception.Create('É obrigatório informar o diretório para salvar o arquivo!');
  if copy(Diretorio,Length(Diretorio),1) <> '\' then
    Diretorio := Diretorio + '\';

  if not DirectoryExists(Diretorio) then
  begin
    ShowMessage('Pasta não ' + Diretorio + ' existe!');
    exit;
  end;

  //if Tipo = 'T' then
  //  Result := Diretorio + 'NFe_' + FormatFloat('00',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) + '.txt'
  //else
  if Tipo = 'P' then
  begin
    Result := Diretorio + vAnoMes;
    CreateDir(Result);
    Result := Result + '\NFe_' + FormatFloat('00',fDMConsNotaEletronica.cdsNotaFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMConsNotaEletronica.cdsNotaFiscalNUMNOTA.AsInteger) + '.pdf';
  end
  else
  {if Tipo = 'I'then
  begin
    Result := Diretorio + 'Inutilizadas';
    CreateDir(Result);
    Result := Result + '\NFe_' + FormatFloat('00',fDMNFe.qFilialID.AsFloat) + '_' +  fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_INI.AsString + '_a_' + fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_FIN.AsString + '_';
  end
  else}
  {if Tipo = 'C'then
  begin
    Result := Diretorio + 'CCe';
    CreateDir(Result);
    Result := Diretorio + 'CCe\' + vAnoMes;
    CreateDir(Result);
    Result := Result + '\CCe_' + FormatFloat('00',fDMNFe.qFilialID.AsFloat) + '_S' + vSerieAux + '_'+ FormatFloat('000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) + '_Seq' + FormatFloat('00',fDMCadNotaFiscal.cdsNotaFiscal_NFeITEMTIPO.AsInteger) + '_';
  end
  else}
  begin
    Result := Diretorio + vAnoMes;
    CreateDir(Result);
    Result := Result + '\NFe_' + FormatFloat('00',fDMConsNotaEletronica.cdsNotaFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMConsNotaEletronica.cdsNotaFiscalNUMNOTA.AsInteger);
  end;
end;

procedure TfrmGerarXML_NFe.prc_Gerar_NFCe;
begin
  try
    fDMConsNotaEletronica.cdsCupom.First;
    while not fDMConsNotaEletronica.cdsCupom.Eof do
    begin
      vDiretorio := Monta_Diretorio('X',fDMConsNotaEletronica.qParametrosENDXMLNFCE.AsString);
      vDiretorio := vDiretorio + '_' + fDMConsNotaEletronica.cdsCupomNFECHAVEACESSO.AsString + '.XML';
      fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Close;
      fDMConsNotaEletronica.sdsNota_Fiscal_Eletronica.ParamByName('CHAVE_ACESSO').AsString := fDMConsNotaEletronica.cdsCupomNFECHAVEACESSO.AsString;
      fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Open;
      fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.First;
      while not fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Eof do
      begin
        if fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaSTATUS.AsString = '100' then
          fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaXML_ASSINADO_PROC.SaveToFile(vDiretorio);
        fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Next;
      end;
      fDMConsNotaEletronica.cdsCupom.Next;
    end;
  except
  end;
  MessageDlg('*** Processo finalizado!', mtInformation, [mbOk], 0);
end;

procedure TfrmGerarXML_NFe.prc_Gerar_NFe;
begin
  try
    fDMConsNotaEletronica.cdsNotaFiscal.First;
    while not fDMConsNotaEletronica.cdsNotaFiscal.Eof do
    begin
      vDiretorio := Monta_Diretorio('X',fDMConsNotaEletronica.qParametrosENDXMLNFE.AsString);
      vDiretorio := vDiretorio + '_' + fDMConsNotaEletronica.cdsNotaFiscalNFECHAVEACESSO.AsString + '.XML';
      fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Close;
      fDMConsNotaEletronica.sdsNota_Fiscal_Eletronica.ParamByName('CHAVE_ACESSO').AsString := fDMConsNotaEletronica.cdsNotaFiscalNFECHAVEACESSO.AsString;
      fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Open;
      fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.First;
      while not fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Eof do
      begin
        if fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaSTATUS.AsString = '100' then
          fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaXML_ASSINADO_PROC.SaveToFile(vDiretorio);
        fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Next;
      end;
      fDMConsNotaEletronica.cdsNotaFiscal.Next;
    end;
  except
  end;
  MessageDlg('*** Processo finalizado!', mtInformation, [mbOk], 0);
end;

procedure TfrmGerarXML_NFe.SMDBGrid2TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsNotaEletronica.cdsCupom.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerarXML_NFe.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsNotaEletronica.cdsCupomCANCELADO.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMConsNotaEletronica.cdsCupomNFEDENEGADA.AsString = 'S' then
  begin
    Background  := $000080FF;
    AFont.Color := clWhite;
  end;
end;

end.
