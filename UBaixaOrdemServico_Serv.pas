unit UBaixaOrdemServico_Serv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, RxLookup,
  StdCtrls, Mask, DBCtrls, NxCollection, ExtCtrls, ToolEdit, RXDBCtrl, RzEdit, RzDBEdit, DB;

type
  TfrmBaixaOrdemServico_Serv = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel5: TPanel;
    btnConfBaixa: TNxButton;
    NxButton1: TNxButton;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label7: TLabel;
    Label9: TLabel;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    Label8: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    vID_Servico_Ant: Integer;
    function fnc_Calcular(Vlr_Unitario, Qtd: Real): Real;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmBaixaOrdemServico_Serv: TfrmBaixaOrdemServico_Serv;

implementation

uses rsDBUtils, DateUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmBaixaOrdemServico_Serv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Serv.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Serv.Cancel;
  Action := Cafree;
end;

procedure TfrmBaixaOrdemServico_Serv.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  vID_Servico_Ant := fDMCadOrdemServico.cdsOrdemServico_ServID_SERVICO_INT.AsInteger;
end;

procedure TfrmBaixaOrdemServico_Serv.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    if fDMCadOrdemServico.cdsOrdemServico_ServID.AsInteger <> vID_Servico_Ant then
    begin
      fDMCadOrdemServico.cdsServico_Int.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_ServID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
      fDMCadOrdemServico.cdsOrdemServico_ServVLR_UNITARIO.AsFloat      := fDMCadOrdemServico.cdsServico_IntVLR_UNITARIO.AsFloat;
//      fDMCadOrdemServico.cdsOrdemServico_ServNOME_SERVICO_INT.AsString := fDMCadOrdemServico.cdsServico_IntNOME.AsString;
    end;
  end;
end;

function TfrmBaixaOrdemServico_Serv.fnc_Calcular(Vlr_Unitario,
  Qtd: Real): Real;
begin
  Result := 0;
  if (StrToFloat(FormatFloat('0.00000',Vlr_Unitario)) > 0) and (StrToFloat(FormatFloat('0.00000',Qtd)) > 0) then
    Result := StrToFloat(FormatFloat('0.00',Vlr_Unitario * Qtd));
end;

procedure TfrmBaixaOrdemServico_Serv.btnConfBaixaClick(Sender: TObject);
begin
  fDMCadOrdemServico.vMsgOS := '';
  if trim(RxDBLookupCombo1.Text) = '' then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Serviço não informado!';
  if trim(RxDBLookupCombo2.Text) = '' then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Técnico não informado!';
  if StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_ServTEMPO_TOTAL.AsFloat)) <= 0 then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Tempo não informado!';
  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbok], 0);
    exit;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Serv.Post;
  Close;
end;

procedure TfrmBaixaOrdemServico_Serv.NxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaixaOrdemServico_Serv.Panel1Exit(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico_ServDTENTRADA.AsDateTime > 10) and (fDMCadOrdemServico.cdsOrdemServico_ServDTSAIDA.AsDateTime > 10) and
     (fDMCadOrdemServico.cdsOrdemServico_ServHRENTRADA.AsDateTime > 0) and (fDMCadOrdemServico.cdsOrdemServico_ServHRSAIDA.AsDateTime > 0) then
    fDMCadOrdemServico.cdsOrdemServico_ServTEMPO_TOTAL.AsFloat := fnc_Calcular_Hora(fDMCadOrdemServico.cdsOrdemServico_ServHRENTRADA.AsDateTime,
                                                                                    fDMCadOrdemServico.cdsOrdemServico_ServHRSAIDA.AsDateTime);
end;

procedure TfrmBaixaOrdemServico_Serv.DBEdit2Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_ServVLR_TOTAL.AsFloat := fnc_Calcular(fDMCadOrdemServico.cdsOrdemServico_ServVLR_UNITARIO.AsFloat,
                                                              fDMCadOrdemServico.cdsOrdemServico_ServTEMPO_TOTAL.AsFloat);
end;

procedure TfrmBaixaOrdemServico_Serv.DBEdit1Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_ServVLR_TOTAL.AsFloat := fnc_Calcular(fDMCadOrdemServico.cdsOrdemServico_ServVLR_UNITARIO.AsFloat,
                                                              fDMCadOrdemServico.cdsOrdemServico_ServTEMPO_TOTAL.AsFloat);
end;

end.
