unit UIBPT_Atualiza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNCM, DBGrids,
  ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, NxCollection, RxDBComb, ComCtrls,
  Variants;

type
  TfrmIBPT_Atualiza = class(TForm)
    pnlPesquisa: TPanel;
    btnConsultar: TNxButton;
    btnAjustar_IBPT: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnAjustar_IBPTClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadNCM: TDMCadNCM;

    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Habilita;
    procedure prc_Posiciona_NCM;
    procedure prc_Gerar_CST(UF: String ; ID_CST: Integer);
    procedure prc_Gravar_IBPT(NCM : String);
    
  public
    { Public declarations }
  end;

var
  frmIBPT_Atualiza: TfrmIBPT_Atualiza;

implementation

uses rsDBUtils, uUtilPadrao, UDMCadTab_IBPT,
  uUtilIBPT;

{$R *.dfm}

procedure TfrmIBPT_Atualiza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmIBPT_Atualiza.prc_Gravar_Registro;
begin
end;

procedure TfrmIBPT_Atualiza.prc_Inserir_Registro;
begin
end;

procedure TfrmIBPT_Atualiza.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadNCM := TDMCadNCM.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNCM);
  prc_Consultar;
end;

procedure TfrmIBPT_Atualiza.prc_Consultar;
begin
  fDMCadNCM.cdsNCM_Consulta.Close;
  fDMCadNCM.sdsNCM_Consulta.CommandText := fDMCadNCM.ctConsulta
                                         + 'WHERE ((N.ibpt_inativo = ' +QuotedStr('N') + ') or (N.ibpt_inativo IS NULL)) '
                                         + '  AND ((N.inativo = ' +QuotedStr('N') + ') or (N.inativo IS NULL)) '
                                         + '  AND ((IBPT.DT_FINAL < :DATA) or (IBPT.DT_FINAL IS NULL))';
  fDMCadNCM.sdsNCM_Consulta.ParamByName('DATA').AsDate := Date;
  fDMCadNCM.cdsNCM_Consulta.Open;
end;

procedure TfrmIBPT_Atualiza.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmIBPT_Atualiza.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNCM);
end;

procedure TfrmIBPT_Atualiza.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNCM.cdsNCM_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmIBPT_Atualiza.prc_Habilita;
begin
end;

procedure TfrmIBPT_Atualiza.prc_Posiciona_NCM;
begin
end;

procedure TfrmIBPT_Atualiza.prc_Gerar_CST(UF: String; ID_CST: Integer);
begin
end;

procedure TfrmIBPT_Atualiza.btnAjustar_IBPTClick(Sender: TObject);
begin
  fDMCadNCM.cdsNCM_Consulta.First;
  while not fDMCadNCM.cdsNCM_Consulta.Eof do
  begin
    fDMCadNCM.qIBPT.Close;
    fDMCadNCM.qIBPT.ParamByName('CODIGO').AsString := fDMCadNCM.cdsNCM_ConsultaNCM.AsString;
    fDMCadNCM.qIBPT.Open;
    if (fDMCadNCM.qIBPT.IsEmpty) or (fDMCadNCM.qIBPTDT_FINAL.AsDateTime < Date) then
      prc_Gravar_IBPT(fDMCadNCM.cdsNCM_ConsultaNCM.AsString);
    fDMCadNCM.cdsNCM_Consulta.Next;
  end;
  prc_Consultar;
end;

procedure TfrmIBPT_Atualiza.prc_Gravar_IBPT(NCM: String);
var
  fDMCadTab_IBPT: TDMCadTab_IBPT;
begin
  fDMCadTab_IBPT := TDMCadTab_IBPT.Create(Self);
  try
  uUTILIBPT.prc_Busca_OnLine(fDMCadNCM.qParametros_NFETOKEN_IBPT.AsString,'09312127000110',NCM,fDMCadTab_IBPT.qFilialUF.AsString,'');
  except
  end;

  if trim(vIBPT_NCM) = '' then
    exit;

  try
    fDMCadTab_IBPT.prc_Localizar(0,NCM,'');
    if not fDMCadTab_IBPT.cdsIBPT.IsEmpty then
      fDMCadTab_IBPT.cdsIBPT.Edit
    else
    begin
      fDMCadTab_IBPT.prc_Inserir;
      fDMCadTab_IBPT.cdsIBPTCODIGO.AsString := vIBPT_NCM;
    end;
    fDMCadTab_IBPT.cdsIBPTNOME.AsString   := vIBPT_Descricao;
    if vIBPT_Ex <= 0 then
      fDMCadTab_IBPT.cdsIBPTEX.AsString := ''
    else
      fDMCadTab_IBPT.cdsIBPTEX.AsString := IntToStr(vIBPT_Ex);
    fDMCadTab_IBPT.cdsIBPTTABELA.AsString := '0';
    fDMCadTab_IBPT.cdsIBPTDT_INICIO.AsDateTime := StrToDate(vIBPT_VigenciaInicio);
    fDMCadTab_IBPT.cdsIBPTDT_FINAL.AsDateTime := StrToDate(vIBPT_VigenciaFim);
    fDMCadTab_IBPT.cdsIBPTCHAVE.AsString      := vIBPT_Chave;
    fDMCadTab_IBPT.cdsIBPTVERSAO.AsString     := vIBPT_Versao;
    fDMCadTab_IBPT.cdsIBPTFONTE.AsString      := vIBPT_Fonte;
    fDMCadTab_IBPT.cdsIBPTPERC_ESTADUAL.AsFloat   := StrToFloat(FormatFloat('0.000',vIBPT_Estadual));
    fDMCadTab_IBPT.cdsIBPTPERC_MUNICIPAL.AsFloat  := StrToFloat(FormatFloat('0.000',vIBPT_Municipal));
    fDMCadTab_IBPT.cdsIBPTPERC_NACIONAL.AsFloat   := StrToFloat(FormatFloat('0.000',vIBPT_Nacional));
    fDMCadTab_IBPT.cdsIBPTPERC_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.000',vIBPT_Importado));
    fDMCadTab_IBPT.prc_Gravar;
  finally
    FreeAndNil(fDMCadTab_IBPT);
  end;

end;

end.
