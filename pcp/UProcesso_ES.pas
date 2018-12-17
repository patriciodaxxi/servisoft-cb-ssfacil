unit UProcesso_ES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  FMTBcd, DB, UDMBaixaPedido, RxLookup, UCBase, Mask, ToolEdit, NxCollection, NxEdit, CurrEdit, ComCtrls, RzDTP, RzEdit,
  RzPanel, SqlExpr, dbXPress;

type
  TfrmProcesso_ES = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label7: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    fDMBaixaPedido: TDMBaixaPedido;
    vMSGLocal : WideString;
    vDigitoIni : String;

    vContador: Integer;

    function fnc_Talao_OK: Boolean;
    procedure prc_Gravar_ES;

    procedure prc_Verifica_Lote;
    procedure prc_Verifica_Talao;

  public
    { Public declarations }
  end;

var
  frmProcesso_ES: TfrmProcesso_ES;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmProcesso_ES.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmProcesso_ES.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMBaixaPedido := TDMBaixaPedido.Create(Self);
  fDMBaixaPedido.cdsAtelier.Open;
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaPedido);
  fDMBaixaPedido.cdsFilial.First;

  DateEdit1.Date       := Date;
  RzDateTimeEdit1.Time := Now;
end;

procedure TfrmProcesso_ES.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if fnc_Talao_OK then
      prc_Gravar_ES;
  end;
end;


function TfrmProcesso_ES.fnc_Talao_OK: Boolean;
begin
  Result := False;

  Edit1.Text := Monta_Numero(Edit1.Text,0);
  if Length(Edit1.Text) < 12 then
  begin
    MessageDlg('*** Código informado incorreto!', mtError, [mbOk], 0);
    exit;
  end;
  vMSGLocal := '';
  vDigitoIni := copy(Edit1.Text,1,1);
  if vDigitoIni = '9' then
    prc_Verifica_Lote
  else
  if vDigitoIni = '2' then
    prc_Verifica_Talao
  else
    vMSGLocal := vMSGLocal + #13 + '*** Código de barras inválido!';

  if trim(vMSGLocal) <> '' then
    MessageDlg(vMSGLocal, mtError, [mbOk], 0)
  else
    Result := True;
end;

procedure TfrmProcesso_ES.prc_Gravar_ES;
var
  vHora: TTime;
  ID: TTransactionDesc;
  vData:TDate;
begin
  vHora := Now;
  if trim(RzDateTimeEdit1.Text) <> '' then
    vHora := RzDateTimeEdit1.Time
  else
    vHora := Now;
  if DateEdit1.Date > 10 then
    vData := DateEdit1.Date
  else
    vData := Date;

  vMSGLocal := '';  
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    if vDigitoIni = '9' then
    begin
      vMSGLocal := vMSGLocal + #13 + '  Nº OP: ' + fDMBaixaPedido.cdsLoteNUM_ORDEM.AsString;
      vMSGLocal := vMSGLocal + #13 + 'Nº Lote: ' + fDMBaixaPedido.cdsLoteNUM_LOTE.AsString;

      fDMBaixaPedido.cdsLote.Edit;
      if fDMBaixaPedido.cdsLoteDTENTRADA.IsNull then
      begin
        fDMBaixaPedido.cdsLoteDTENTRADA.AsDateTime := vData;
        fDMBaixaPedido.cdsLoteHRENTRADA.AsDateTime := vHora;
        vMSGLocal := vMSGLocal + #13 + #13 + 'Início da Produção';
      end;
      //else
      //begin
      //  fDMBaixaPedido.cdsLoteDTBAIXA.AsDateTime := vData;
      //  fDMBaixaPedido.cdsLoteHRBAIXA.AsDateTime := vHora;
      //end;
      fDMBaixaPedido.cdsLote.Post;
      fDMBaixaPedido.cdsLote.ApplyUpdates(0);
    end
    else
    if vDigitoIni = '2' then
    begin
      vMSGLocal := vMSGLocal + #13 + 'Nº Lote: ' + fDMBaixaPedido.qLote2NUM_LOTE.AsString;
      vMSGLocal := vMSGLocal + #13 + 'Nº Talão: ' + fDMBaixaPedido.cdsTalaoNUM_TALAO.AsString;
      fDMBaixaPedido.cdsTalao.Edit;
      if fDMBaixaPedido.cdsTalaoDTENTRADA.IsNull then
      begin
        fDMBaixaPedido.cdsTalaoDTENTRADA.AsDateTime := vData;
        fDMBaixaPedido.cdsTalaoHRENTRADA.AsDateTime := vHora;
        vMSGLocal := vMSGLocal + #13 + #13 + 'Inicio do Processo ' + fDMBaixaPedido.cdsTalaoDTENTRADA.AsString + ' ' + fDMBaixaPedido.cdsTalaoHRENTRADA.AsString;
      end
      else
      begin
        fDMBaixaPedido.cdsTalaoDTBAIXA.AsDateTime := vData;
        fDMBaixaPedido.cdsTalaoHRBAIXA.AsDateTime := vHora;
        vMSGLocal := vMSGLocal + #13 + #13 + 'Processo Encerrado ' + fDMBaixaPedido.cdsTalaoDTBAIXA.AsString + ' ' + fDMBaixaPedido.cdsTalaoHRBAIXA.AsString;
      end;
      fDMBaixaPedido.cdsTalao.Post;
      fDMBaixaPedido.cdsTalao.ApplyUpdates(0);
    end;
    dmDatabase.scoDados.Commit(ID);
    Label5.Caption := vMSGLocal;

  except
      on e: Exception do
      begin
        raise Exception.Create('Erro ao gravar talao auxiliar: ' + #13+#13 + e.Message);
        dmDatabase.scoDados.Rollback(ID);
      end;
  end;
  Edit1.SelectAll;
end;

procedure TfrmProcesso_ES.Edit1Change(Sender: TObject);
begin
  Label5.Caption := '';
end;

procedure TfrmProcesso_ES.prc_Verifica_Lote;
var
  vOrdem, vLote : Integer;
  vAux : Real;
begin
  vOrdem := StrToInt(copy(Edit1.Text,2,5));
  vLote  := StrToInt(copy(Edit1.Text,7,6));
  fDMBaixaPedido.cdsLote.Close;
  fDMBaixaPedido.sdsLote.ParamByName('NUM_ORDEM').AsInteger := vOrdem;
  fDMBaixaPedido.sdsLote.ParamByName('NUM_LOTE').AsInteger  := vLote;
  fDMBaixaPedido.cdsLote.Open;
  if fDMBaixaPedido.cdsLote.IsEmpty then
    vMSGLocal := vMSGLocal + #13 + '*** Ordem/Lote não encontrado!';
  if not(fDMBaixaPedido.cdsLoteDTENTRADA.IsNull) then
  begin
    if not(fDMBaixaPedido.cdsLoteDTBAIXA.IsNull) then
      vMSGLocal := vMSGLocal + #13 + '*** Ordem/Lote já Encerrados data/hora: ' + fDMBaixaPedido.cdsLoteDTBAIXA.AsString + ' ' + fDMBaixaPedido.cdsLoteHRBAIXA.AsString
    else
      vMSGLocal := vMSGLocal + #13 + '*** Ordem/Lote já iniciada: ' + fDMBaixaPedido.cdsLoteDTENTRADA.AsString + ' ' + fDMBaixaPedido.cdsLoteHRENTRADA.AsString;
  end;
  //if not(fDMBaixaPedido.cdsLoteDTENTRADA.IsNull) and (fDMBaixaPedido.cdsLoteDTBAIXA.IsNull) then
  //begin
  //  vAux := StrtoFloat(FormatDateTime('HH:MM:SS',Now)) - fDMBaixaPedido.cdsLoteHRENTRADA.AsDateTime;
    //aqui verificar;
  //end;
end;

procedure TfrmProcesso_ES.prc_Verifica_Talao;
var
  vID: Integer;
  vNum_Talao: Integer;
  vNum_Lote: Integer;
  vAux : Real;
begin
  vNum_Lote  := StrToInt(copy(Edit1.Text,2,7));
  vNum_Talao := StrToInt(copy(Edit1.Text,9,4));

  fDMBaixaPedido.qLote2.Close;
  fDMBaixaPedido.qLote2.ParamByName('NUM_LOTE').AsInteger := vNum_Lote;
  fDMBaixaPedido.qLote2.Open;
  if fDMBaixaPedido.qLote2.IsEmpty then
  begin
    vMSGLocal := vMSGLocal + #13 + '*** Lote não encontrado!';
    exit;
  end;

  fDMBaixaPedido.cdsTalao.Close;
  fDMBaixaPedido.sdsTalao.ParamByName('ID').AsInteger   := fDMBaixaPedido.qLote2ID.AsInteger;
  fDMBaixaPedido.sdsTalao.ParamByName('NUM_TALAO').AsInteger := vNum_Talao;
  fDMBaixaPedido.cdsTalao.Open;
  if fDMBaixaPedido.cdsTalao.IsEmpty then
    vMSGLocal := vMSGLocal + #13 + '*** Talão não encontrado!';
  if not(fDMBaixaPedido.cdsTalaoDTBAIXA.IsNull) then
    vMSGLocal := vMSGLocal + #13 + '*** Talão já foi Encerrado!!';
  if (fDMBaixaPedido.cdsTalaoDTBAIXA.IsNull) and not(fDMBaixaPedido.cdsTalaoDTENTRADA.IsNull) then
  begin
    vAux := StrtoFloat(FormatDateTime('HH:MM:SS',Now)) - fDMBaixaPedido.cdsLoteHRENTRADA.AsDateTime;
    //MessageDlg('*** Talão já foi dada a Saída no dia ' + fDMBaixaPedido.cdsTalao_AuxDTSAIDA.AsString, mtInformation, [mbOk], 0);
  end;
end;

end.
