unit UManifesto_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMManifesto_Cli, StdCtrls,
  ExtCtrls, Buttons, RzTabs, Grids, DBGrids, SMDBGrid, RzPanel, DBXpress;

type
  TfrmManifesto_Cli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtConsChave: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    lblSerie: TLabel;
    lblNota: TLabel;
    btnConsultar: TBitBtn;
    chkConsSalvarXML: TCheckBox;
    labConsRetorno: TLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Memo1: TMemo;
    SMDBGrid1: TSMDBGrid;
    TabSheet3: TRzTabSheet;
    gbxVendedor: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    Panel2: TPanel;
    btnConfirmar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fDMManifesto_Cli: TDMManifesto_Cli;
    vContador: Integer;

    procedure prc_Abrir_NotaFiscal;
    procedure prc_Gravar_Eventos;

    function fnc_Proximo_Item: Integer;
  public
    { Public declarations }
    vNumNota: Integer;
    vSerie: String;
    vID_Nota: Integer;                 
  end;

var
  frmManifesto_Cli: TfrmManifesto_Cli;

implementation

uses rsDBUtils, uUtilPadrao, uNFeComandos, DmdDatabase, DB;

{$R *.dfm}

procedure TfrmManifesto_Cli.FormShow(Sender: TObject);
begin
  fDMManifesto_Cli := TDMManifesto_Cli.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMManifesto_Cli);

  lblNota.Caption  := IntToStr(vNumNota);
  lblSerie.Caption := vSerie;

  prc_Abrir_NotaFiscal;

  if not fDMManifesto_Cli.cdsNotaFiscal.IsEmpty then
    edtConsChave.Text := fDMManifesto_Cli.cdsNotaFiscalNFECHAVEACESSO.AsString;

  if trim(edtConsChave.Text) <> '' then
    btnConsultarClick(Sender);
end;

procedure TfrmManifesto_Cli.btnConsultarClick(Sender: TObject);
var
  oNFeStream: TMemoryStream;
  oStrStream: TStringStream;
  texto: string;
  vLocalServidorNFe: String;
begin
  Memo1.Lines.Clear;

  fDMManifesto_Cli.cdsConsultaNFe.Close;

  fDMManifesto_Cli.qFilial.Close;
  fDMManifesto_Cli.qFilial.ParamByName('ID').AsInteger := vFilial;
  fDMManifesto_Cli.qFilial.Open;

  oNFeStream := TMemoryStream.Create;
  try
    if fDMManifesto_Cli.qFilialPESSOA.AsString = 'F' then
      texto := Monta_Texto(fDMManifesto_Cli.qFilialCNPJ_CPF.AsString,11)
    else
      texto := Monta_Texto(fDMManifesto_Cli.qFilialCNPJ_CPF.AsString,14);
    vLocalServidorNFe := fDMManifesto_Cli.qParametrosLOCALSERVIDORNFE.AsString;
    if trim(fDMManifesto_Cli.qFilialLOCALSERVIDORNFE.AsString) <> '' then
      vLocalServidorNFe := fDMManifesto_Cli.qFilialLOCALSERVIDORNFE.AsString;

    labConsRetorno.Caption := ConsultarNFe( trim(vLocalServidorNFe) ,
                                            texto,
                                            edtConsChave.Text,
                                            oNFeStream,
                                            False,
                                            false ); // 23/09/2015

    oNFeStream.Position := 0;
    Memo1.Lines.LoadFromStream(oNFeStream);

    oStrStream := TStringStream.Create('');
    try
      oNFeStream.Position := 0;
      oStrStream.CopyFrom(oNFeStream, oNFeStream.Size);
      fDMManifesto_Cli.xtrConsultaNFe.TransformRead.SourceXml := oStrStream.DataString;
      fDMManifesto_Cli.xtrConsultaNFe.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\ConsultaNFe.xtr';

      if chkConsSalvarXML.Checked then
      begin
        if FileExists('c:\a\man_'+edtConsChave.Text+'.xml') then
          DeleteFile('c:\a\man_'+edtConsChave.Text+'.xml');
        oNFeStream.Position := 0;
        oNFeStream.SaveToFile('c:\a\man_'+edtConsChave.Text+'.xml');
      end;
    finally
      FreeAndNil(oStrStream);
    end;
  finally
    FreeAndNil(oNFeStream);
  end;

  fDMManifesto_Cli.cdsConsultaNFe.Open;
end;

procedure TfrmManifesto_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMManifesto_Cli);
  Action := Cafree;
end;

procedure TfrmManifesto_Cli.prc_Abrir_NotaFiscal;
begin
  fDMManifesto_Cli.cdsNotaFiscal.Close;
  fDMManifesto_Cli.sdsNotaFiscal.ParamByName('ID').AsInteger := vID_Nota;
  fDMManifesto_Cli.cdsNotaFiscal.Open;
end;

procedure TfrmManifesto_Cli.btnConfirmarClick(Sender: TObject);
begin
  if MessageDlg('Deseja gravar os eventos na nota?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vContador := 0;
  fDMManifesto_Cli.cdsNFeEventos.First;
  while not fDMManifesto_Cli.cdsNFeEventos.Eof do
  begin
    if (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210200) or
       (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210210) or
       (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210220) or
       (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210240) then
      prc_Gravar_Eventos;

    fDMManifesto_Cli.cdsNFeEventos.Next;
  end;

  MessageDlg('...Total de ' + IntToStr(vContador) + ' evento(s) gravado(s)!', mtInformation, [mbOK], 0);

  Close;
end;

procedure TfrmManifesto_Cli.prc_Gravar_Eventos;
var
  vTipoAux: String;
  vItemAux: Integer;
  ID: TTransactionDesc;
begin
  vTipoAux := '';
  if (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210200) then
    vTipoAux := 'COP'
  else
  if (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210210) then
    vTipoAux := 'CIE'
  else
  if (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210220) then
    vTipoAux := 'DES'
  else
  if (fDMManifesto_Cli.cdsNFeEventostpEvento.AsInteger = 210240) then
    vTipoAux := 'ONR';

  fDMManifesto_Cli.cdsNotaFiscal_NFe.Close;
  fDMManifesto_Cli.sdsNotaFiscal_NFe.ParamByName('ID').AsInteger       := vID_Nota;
  fDMManifesto_Cli.sdsNotaFiscal_NFe.ParamByName('TIPO').AsString      := vTipoAux;
  fDMManifesto_Cli.sdsNotaFiscal_NFe.ParamByName('ITEMTIPO').AsInteger := fDMManifesto_Cli.cdsNFeEventosnSeqEvento.AsInteger;
  fDMManifesto_Cli.cdsNotaFiscal_NFe.Open;
  if not(fDMManifesto_Cli.cdsNotaFiscal_NFe.IsEmpty) and (fDMManifesto_Cli.cdsNotaFiscal_NFeITEMTIPO.AsInteger > 0) then
    exit;

  ID.TransactionID  := 999;
  ID.IsolationLevel := xilREADCOMMITTED;

  dmDatabase.scoDados.StartTransaction(ID);
  try
    vItemAux := fnc_Proximo_Item;

    fDMManifesto_Cli.cdsNotaFiscal_NFe.Insert;
    fDMManifesto_Cli.cdsNotaFiscal_NFeID.AsInteger       := vID_Nota;
    fDMManifesto_Cli.cdsNotaFiscal_NFeITEM.AsInteger     := vItemAux;
    fDMManifesto_Cli.cdsNotaFiscal_NFeTIPO.AsString      := vTipoAux;
    fDMManifesto_Cli.cdsNotaFiscal_NFeITEMTIPO.AsInteger := fDMManifesto_Cli.cdsNFeEventosnSeqEvento.AsInteger;
    if vTipoAux = 'COP' then
      fDMManifesto_Cli.cdsNotaFiscal_NFeDESCRICAO.AsString := 'Confirmação da Operação'
    else
    if vTipoAux = 'CIE' then
      fDMManifesto_Cli.cdsNotaFiscal_NFeDESCRICAO.AsString := 'Ciência da Operação'
    else
    if vTipoAux = 'DES' then
      fDMManifesto_Cli.cdsNotaFiscal_NFeDESCRICAO.AsString := 'Desconhecimento da Operação'
    else
    if vTipoAux = 'ONR' then
      fDMManifesto_Cli.cdsNotaFiscal_NFeDESCRICAO.AsString := 'Operação Não Realizada';
    fDMManifesto_Cli.cdsNotaFiscal_NFeMOTIVO.AsString := fDMManifesto_Cli.cdsNFeEventosxJust.AsString;
    fDMManifesto_Cli.cdsNotaFiscal_NFeDATAHORAAUT.AsDateTime := fDMManifesto_Cli.cdsNFeEventosdhEvento.AsDateTime;
    fDMManifesto_Cli.cdsNotaFiscal_NFeXML.Value := Memo1.Lines.Text;
    fDMManifesto_Cli.cdsNotaFiscal_NFeDTCADASTRO.AsDateTime := Date;
    fDMManifesto_Cli.cdsNotaFiscal_NFeHRCADASTRO.AsDateTime := Now;
    fDMManifesto_Cli.cdsNotaFiscal_NFe.Post;
    fDMManifesto_Cli.cdsNotaFiscal_NFe.ApplyUpdates(0);

    fDMManifesto_Cli.cdsNotaFiscal.Edit;
    fDMManifesto_Cli.cdsNotaFiscalSTATUS_MANIFESTO.AsString := vTipoAux;
    fDMManifesto_Cli.cdsNotaFiscal.Post;
    fDMManifesto_Cli.cdsNotaFiscal.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

    vContador := vContador + 1;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

function TfrmManifesto_Cli.fnc_Proximo_Item: Integer;
begin
  Result := 0;
  fDMManifesto_Cli.qProximaItem_NFe.Close;
  fDMManifesto_Cli.qProximaItem_NFe.ParamByName('ID').AsInteger := vID_Nota;
  fDMManifesto_Cli.qProximaItem_NFe.Open;
  Result := fDMManifesto_Cli.qProximaItem_NFeITEM.AsInteger + 1;
end;

end.
