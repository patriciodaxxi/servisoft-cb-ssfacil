unit UCadDescontada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, NxCollection, StdCtrls,
  Mask, ToolEdit, UDMCadDuplicata, SqlExpr, Menus, DB, RzPanel;

type
  TfrmCadDescontada = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnImprimir: TNxButton;
    btnExcluir: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    btnConsultar: TNxButton;
    StaticText2: TStaticText;
    CheckBox1: TCheckBox;
    PopupMenu1: TPopupMenu;
    Detalhado1: TMenuItem;
    Movimento1: TMenuItem;
    gbxDespesa: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Movimento1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;
    procedure prc_Gravar_mTitulos(ID_Descontada: Integer);
    procedure prc_scroll(DataSet: TDataSet);

  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  frmCadDescontada: TfrmCadDescontada;

implementation

uses rsDBUtils, UCadDuplicata_Desc, DmdDatabase;

{$R *.dfm}

procedure TfrmCadDescontada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadDuplicata.vTipo_Rel := '';
  Action := Cafree;
end;

procedure TfrmCadDescontada.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
  fDMCadDuplicata.cdsDescontada_Consulta.Last;
  btnExcluir.Enabled := False;
end;

procedure TfrmCadDescontada.prc_Consultar;
var
  vComando: String;
begin
  btnExcluir.Enabled := False;
  fDMCadDuplicata.cdsDescontada_Consulta.Close;
  vComando := vComando + ' WHERE 0 = 0';
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND D.DTDESCONTADA >= :DTINICIAL ';
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND D.DTDESCONTADA <= :DTFINAL ';
  if CheckBox1.Checked then
    vComando := vComando + ' AND D.VLR_LIBERADO <= ' + FormatFloat('0',0);
  fDMCadDuplicata.sdsDescontada_Consulta.CommandText := fDMCadDuplicata.ctDescontada_Consulta + vComando;
  if DateEdit1.Date > 10 then
    fDMCadDuplicata.sdsDescontada_Consulta.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  if DateEdit2.Date > 10 then
    fDMCadDuplicata.sdsDescontada_Consulta.ParamByName('DTFINAL').AsDate := DateEdit2.Date;
  fDMCadDuplicata.cdsDescontada_Consulta.Open;
  fDMCadDuplicata.cdsDescontada_Consulta.Last;
end;

procedure TfrmCadDescontada.FormShow(Sender: TObject);
begin
  fDMCadDuplicata := TDMCadDuplicata.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  fDMCadDuplicata.cdsDescontada_Consulta.AfterScroll := prc_scroll;
end;

procedure TfrmCadDescontada.btnExcluirClick(Sender: TObject);
var
  sds: TSQLDataSet;
  vMsgAux: String;
begin
  if not (SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    MessageDlg('*** Título não selecionado!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadDuplicata.cdsDescontada.Close;
  fDMCadDuplicata.sdsDescontada.ParamByName('ID').AsInteger := fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger;
  fDMCadDuplicata.cdsDescontada.Open;
  fDMCadDuplicata.cdsDescontada_Valores.Close;
  fDMCadDuplicata.cdsDescontada_Valores.Open;
  if fDMCadDuplicata.cdsDescontada.IsEmpty then
  begin
    MessageDlg('*** Movimento não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;

  vMsgAux := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT COUNT(1) CONTADOR FROM DUPLICATA WHERE ID_DESCONTADA =  ' + IntToStr(fDMCadDuplicata.cdsDescontadaID.AsInteger)
                       + ' AND CONFIRMA_PGTO = ' + QuotedStr('S');
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      vMsgAux := '*** Existe duplicatas já pagas pelo cliente, exclusão do movimento cancelado!';
  finally
    FreeAndNil(sds);
  end;

  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir o registro selecionado: ' + fDMCadDuplicata.cdsDescontada_ConsultaNUM_DESCONTADA.AsString + ' ?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadDuplicata.cdsDescontada_Valores.First;
  while not fDMCadDuplicata.cdsDescontada_Valores.Eof do
    fDMCadDuplicata.cdsDescontada_Valores.Delete;

  fDMCadDuplicata.cdsDescontada.Delete;
  fDMCadDuplicata.cdsDescontada.ApplyUpdates(0);
  prc_Consultar;
end;

procedure TfrmCadDescontada.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmCadDuplicata_Desc: TfrmCadDuplicata_Desc;
  vIDAux: Integer;
begin
  if fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger <= 0 then
    exit;
  fDMCadDuplicata.cdsDescontada.Close;
  fDMCadDuplicata.sdsDescontada.ParamByName('ID').AsInteger := fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger;
  fDMCadDuplicata.cdsDescontada.Open;
  fDMCadDuplicata.cdsDescontada_Valores.Close;
  fDMCadDuplicata.cdsDescontada_Valores.Open;
  if fDMCadDuplicata.cdsDescontada.IsEmpty then
  begin
    MessageDlg('*** Movimento não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadDuplicata.mTitulos.EmptyDataSet;
  prc_Gravar_mTitulos(fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger);
  vIDAux := fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger;                        

  ffrmCadDuplicata_Desc := TfrmCadDuplicata_Desc.Create(self);
  ffrmCadDuplicata_Desc.fDMCadDuplicata := fDMCadDuplicata;
  ffrmCadDuplicata_Desc.vID_Descontada  := fDMCadDuplicata.cdsDescontadaID.AsInteger;
  ffrmCadDuplicata_Desc.ShowModal;
  FreeAndNil(ffrmCadDuplicata_Desc);

  btnConsultarClick(Sender);
  fDMCadDuplicata.cdsDescontada_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadDescontada.prc_Gravar_mTitulos(ID_Descontada: Integer);
begin
  fDMCadDuplicata.cdsDuplicata_Consulta.Close;
  fDMCadDuplicata.sdsDuplicata_Consulta.CommandText := fDMCadDuplicata.ctDuplicata_Consulta
                                                     + ' WHERE DUP.ID_DESCONTADA = ' + IntToStr(ID_Descontada);
  fDMCadDuplicata.cdsDuplicata_Consulta.Open;
  fDMCadDuplicata.cdsDuplicata_Consulta.First;
  while not fDMCadDuplicata.cdsDuplicata_Consulta.Eof do
  begin
    fDMCadDuplicata.mTitulos.Insert;
    fDMCadDuplicata.mTitulosID.AsInteger             := fDMCadDuplicata.cdsDuplicata_ConsultaID.AsInteger;
    fDMCadDuplicata.mTitulosID_Cliente.AsInteger     := fDMCadDuplicata.cdsDuplicata_ConsultaID_PESSOA.AsInteger;
    fDMCadDuplicata.mTitulosNome_Cliente.AsString    := fDMCadDuplicata.cdsDuplicata_ConsultaNOME_PESSOA.AsString;
    fDMCadDuplicata.mTitulosVlr_Parcela.AsFloat      := fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat;
    fDMCadDuplicata.mTitulosDt_Vencimento.AsDateTime := fDMCadDuplicata.cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime;
    fDMCadDuplicata.mTitulosNum_Duplicata.AsString   := fDMCadDuplicata.cdsDuplicata_ConsultaNUMDUPLICATA.AsString;
    fDMCadDuplicata.mTitulosParcela.AsInteger        := fDMCadDuplicata.cdsDuplicata_ConsultaPARCELA.AsInteger;
    fDMCadDuplicata.mTitulosFilial.AsInteger         := fDMCadDuplicata.cdsDuplicata_ConsultaFILIAL.AsInteger;
    fDMCadDuplicata.mTitulosCNPJ_Cliente.AsString    := fDMCadDuplicata.cdsDuplicata_ConsultaCNPJ_CPF.AsString;
    fDMCadDuplicata.mTitulos.Post;
    fDMCadDuplicata.cdsDuplicata_Consulta.Next;
  end;
end;

procedure TfrmCadDescontada.Movimento1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadDuplicata.cdsDescontada_Consulta.Active) or (fDMCadDuplicata.cdsDescontada_Consulta.IsEmpty) then
    exit;
  fDMCadDuplicata.vTipo_Rel := 'DE';
  fDMCadDuplicata.cdsDescontada_Imp.Close;
  fDMCadDuplicata.sdsDescontada_Imp.ParamByName('ID').AsInteger := fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger;
  fDMCadDuplicata.cdsDescontada_Imp.Open;
  if fDMCadDuplicata.cdsDescontada_Imp.IsEmpty then
    exit;
  fDMCadDuplicata.mTitulos.EmptyDataSet;
  prc_Gravar_mTitulos(fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger);
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Descontada_Ind.fr3';
  if FileExists(vArq) then
    fDMCadDuplicata.frxReport1.Report.LoadFromFile(vArq);
  fDMCadDuplicata.frxReport1.ShowReport;
end;

procedure TfrmCadDescontada.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadDuplicata.cdsDescontada_Consulta.IsEmpty then
    exit;
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDescontada_ConsultaVLR_LIBERADO.AsFloat)) <= 0 then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadDescontada.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  btnExcluir.Enabled := (SMDBGrid1.SelectedRows.Count > 0);
end;

procedure TfrmCadDescontada.Detalhado1Click(Sender: TObject);
begin
  ShowMessage('em desenvolvimento');
end;

procedure TfrmCadDescontada.prc_scroll(DataSet: TDataSet);
begin
  fDMCadDuplicata.cdsDescontada_Imp_Valores.Close;
  fDMCadDuplicata.sdsDescontada_Imp_Valores.ParamByName('ID').AsInteger := fDMCadDuplicata.cdsDescontada_ConsultaID.AsInteger;
  fDMCadDuplicata.cdsDescontada_Imp_Valores.Open;
end;

end.
