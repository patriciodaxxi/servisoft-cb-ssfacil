unit UConsManifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsManifesto, DBCtrls, StdCtrls, ExtCtrls, Mask, ToolEdit,
  RxLookup, Buttons, Grids, DBGrids, SMDBGrid, UManifesto_Cli;

type
  TfrmConsManifesto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Label5: TLabel;
    cbIndNFe: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsManifesto: TDMConsManifesto;
    ffrmManifesto_Cli : TfrmManifesto_Cli;
    
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmConsManifesto: TfrmConsManifesto;

implementation

uses rsDBUtils, DB, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsManifesto.BitBtn1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOK], 0);
    exit;
  end;
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) then
  begin
    MessageDlg('*** Data inicial ou final não informadas!', mtInformation, [mbOK], 0);
    exit;
  end;

  prc_Consultar;
end;

procedure TfrmConsManifesto.prc_Consultar;
begin
  fDMConsManifesto.cdsConsulta.Close;
  fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.ctConsulta
                                            + ' WHERE 0 = 0 ';
  if DateEdit1.Date > 10 then
    fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                        + ' AND AUX.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                        + ' AND AUX.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if RxDBLookupCombo1.Text <> '' then
    fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText +
                                             ' AND AUX.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText +
                                             ' AND AUX.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);

  case cbIndNFe.ItemIndex of
    0 : fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                                                  + ' AND NFE2.TIPO IS NULL' ;
    1 : fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                                                  + ' AND ((NFE2.TIPO IS NULL) OR (NFE2.TIPO = ' + QuotedStr('CIE') + '))';
    2 : fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                                                  + ' AND NFE2.TIPO = ' + QuotedStr('COP');
    3 : fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                                                  + ' AND NFE2.TIPO = ' + QuotedStr('DES');
    4 : fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                                                  + ' AND NFE2.TIPO = ' + QuotedStr('ONR');
    5 : fDMConsManifesto.sdsConsulta.CommandText := fDMConsManifesto.sdsConsulta.CommandText
                                                  + ' AND NFE2.TIPO = ' + QuotedStr('CIE');
  end;
  fDMConsManifesto.cdsConsulta.Open;
end;

procedure TfrmConsManifesto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMConsManifesto);
end;

procedure TfrmConsManifesto.FormShow(Sender: TObject);
begin
  fDMConsManifesto := TDMConsManifesto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsManifesto);
end;

procedure TfrmConsManifesto.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(fDMConsManifesto.cdsConsulta.Active) or (fDMConsManifesto.cdsConsulta.IsEmpty) or (fDMConsManifesto.cdsConsultaNUMNOTA.AsInteger <= 0) then
  begin
    MessageDlg('*** Nota não selecionada!', mtInformation, [mbOK], 0);
    exit;
  end;

  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
  begin
    fDMConsManifesto.cdsFilial.First;
    vFilial := fDMConsManifesto.cdsFilialID.AsInteger;
  end;

  ffrmManifesto_Cli := TfrmManifesto_Cli.Create(self);
  ffrmManifesto_Cli.vSerie    := fDMConsManifesto.cdsConsultaSERIE.AsString;
  ffrmManifesto_Cli.vNumNota  := fDMConsManifesto.cdsConsultaNUMNOTA.AsInteger;
  ffrmManifesto_Cli.vID_Nota  := fDMConsManifesto.cdsConsultaID.AsInteger;
  ffrmManifesto_Cli.ShowModal;

  FreeAndNil(ffrmManifesto_Cli);
  vFilial := 0;
end;

end.
