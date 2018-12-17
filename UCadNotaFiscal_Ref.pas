unit UCadNotaFiscal_Ref;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadNotaFiscal, StdCtrls,
  Buttons, Mask, DBCtrls, DB, ExtCtrls, RxLookup, RxDBComb;

type
  TfrmCadNotaFiscal_Ref = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    pnlNFe: TPanel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    pnlNotaFiscal: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    pnlCupom: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    RxDBComboBox2: TRxDBComboBox;
    pnlCTe: TPanel;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBComboBox2Click(Sender: TObject);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal; 
  end;

var
  frmCadNotaFiscal_Ref: TfrmCadNotaFiscal_Ref;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Ref.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Ref.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Ref.Cancel;
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Ref.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  //if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
  //if fDMCadNotaFiscal.vState_Item = 'I' then
  //  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'S';
  RxDBComboBox2Click(Sender);
end;

procedure TfrmCadNotaFiscal_Ref.BitBtn1Click(Sender: TObject);
var
  vFlagErro : Boolean;
begin
  if fnc_Erro then
    exit;

  vFlagErro := False;  
  try
    fDMCadNotaFiscal.cdsNotaFiscal_RefID.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    //fDMCadNotaFiscal.cdsNotaFiscal_RefITEM.AsInteger := vItemAux + 1;
    fDMCadNotaFiscal.cdsNotaFiscal_RefDESCRICAO_TIPO.AsString := RxDBComboBox2.Text;
    fDMCadNotaFiscal.cdsNotaFiscal_Ref.Post;
  except
    on E: exception do
    begin
      vFlagErro := True;  
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;

  end;

  if not vFlagErro then
    Close;
end;

function TfrmCadNotaFiscal_Ref.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if RxDBComboBox2.ItemIndex = 0 then
  begin
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString) = '' then
      vMsgErro := vMsgErro + #13 + '*** Chave de acesso não informada!';
    if Length(fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString) < 44 then
      vMsgErro := vMsgErro + #13 + '*** Chave de acesso faltando dígitos!';
  end
  else
  if (RxDBComboBox2.ItemIndex = 1) or (RxDBComboBox2.ItemIndex = 2) then
  begin
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefSERIE_REF.AsString) = '' then
      vMsgErro := vMsgErro + #13 + '*** Série não informada!';
    if fDMCadNotaFiscal.cdsNotaFiscal_RefNUMNOTA_REF.AsInteger <= 0 then
      vMsgErro := vMsgErro + #13 + '*** Nº da nota não informado!';
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefMODELO_REF.AsString) = '' then
      vMsgErro := vMsgErro + #13 + '*** Modelo não informado!';
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefUF_REF.AsString) = '' then
      vMsgErro := vMsgErro + #13 + '*** UF do emitente não informado!';
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefCNPJ_REF.AsString) = '' then
      vMsgErro := vMsgErro + #13 + '*** CNPJ do emitente não informado!';
    if (fDMCadNotaFiscal.cdsNotaFiscal_RefMES_REF.AsInteger <= 0) or (fDMCadNotaFiscal.cdsNotaFiscal_RefANO_REF.AsInteger <= 0) then
      vMsgErro := vMsgErro + #13 + '*** Mês/Ano emitente não informados!';
    if (RxDBComboBox2.ItemIndex = 2) then
      if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefINSCESTADUAL_REF.AsString) = '' then
        vMsgErro := vMsgErro + #13 + '*** Insc. Estadual não informada!';
  end
  else
  if RxDBComboBox2.ItemIndex = 3 then
  begin
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_MODELO.AsString) = '' then
      vMsgErro := vMsgErro + #13 + '*** Modelo do cupom não informado!';
    if fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_NUMECF.AsInteger <= 0 then
      vMsgErro := vMsgErro + #13 + '*** Nº do Cupom não informado!';
  end;
  if trim(vMsgErro) <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadNotaFiscal_Ref.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadNotaFiscal_Ref.RxDBComboBox2Click(Sender: TObject);
begin                
  pnlNFe.Visible := (RxDBComboBox2.ItemIndex = 0);
  pnlNotaFiscal.Visible := ((RxDBComboBox2.ItemIndex = 1) or (RxDBComboBox2.ItemIndex = 2));
  pnlCupom.Visible := (RxDBComboBox2.ItemIndex = 3);
  pnlCTe.Visible   := (RxDBComboBox2.ItemIndex = 4);
end;

end.
