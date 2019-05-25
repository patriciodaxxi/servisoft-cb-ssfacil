unit UCadNotaFiscal_Alt_CCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadNotaFiscal, ExtCtrls, Grids, DBGrids, SMDBGrid, RxLookup,
  StdCtrls, NxCollection, DB, SqlExpr;

type
  TfrmCadNotaFiscal_Alt_CCusto = class(TForm)
    lblContaOrc: TLabel;
    RxDBlkContaOrc: TRxDBLookupCombo;
    RxDBlkCCusto: TRxDBLookupCombo;
    lblCCusto: TLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure RxDBlkContaOrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBlkCCustoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    
  end;

var
  frmCadNotaFiscal_Alt_CCusto: TfrmCadNotaFiscal_Alt_CCusto;

implementation

uses rsDBUtils, USel_ContaOrc, USel_CentroCusto, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Alt_CCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Alt_CCusto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  lblContaOrc.Visible      := ((fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S') and (fDMCadNotaFiscal.qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS.AsString = 'S'));
  RxDBlkContaOrc.Visible   := ((fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S') and (fDMCadNotaFiscal.qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS.AsString = 'S'));
  lblCCusto.Visible        := (fDMCadNotaFiscal.qParametros_NTEUSA_CENTRO_CUSTO.AsString = 'S');
  RxDBlkCCusto.Visible     := (fDMCadNotaFiscal.qParametros_NTEUSA_CENTRO_CUSTO.AsString = 'S');
end;

procedure TfrmCadNotaFiscal_Alt_CCusto.NxButton2Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  Close;
end;

procedure TfrmCadNotaFiscal_Alt_CCusto.NxButton1Click(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if trim(RxDBlkContaOrc.Text) = '' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID.Clear;
  if trim(RxDBlkCCusto.Text) = '' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCENTRO_CUSTO_ID.Clear;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger > 0 then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensCENTRO_CUSTO_ID.AsInteger <= 0 then
        sds.CommandText   := 'UPDATE ESTOQUE_MOV SET ID_CENTROCUSTO = NULL '
      else
        sds.CommandText   := 'UPDATE ESTOQUE_MOV SET ID_CENTROCUSTO = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscal_ItensCENTRO_CUSTO_ID.AsInteger);
      sds.CommandText := sds.CommandText + ' WHERE ID = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger);
      sds.ExecSQL();
    finally
      FreeAndNil(sds);
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);
  Close;
end;

procedure TfrmCadNotaFiscal_Alt_CCusto.RxDBlkContaOrcKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBlkContaOrc.Text <> '' then
      vID_ContaOrcamento_Pos := RxDBlkContaOrc.KeyValue;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
      frmSel_ContaOrc.ComboBox2.ItemIndex := 0
    else
      frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      RxDBlkContaOrc.KeyValue:= vID_ContaOrcamento_Pos;
  end;
end;

procedure TfrmCadNotaFiscal_Alt_CCusto.RxDBlkCCustoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBlkCCusto.Text <> '' then
      vID_Centro_Custo := RxDBlkCCusto.KeyValue;
    frmSel_CentroCusto := TfrmSel_CentroCusto.Create(Self);
    frmSel_CentroCusto.ShowModal;
    if vID_Centro_Custo > 0 then
      RxDBlkCCusto.KeyValue := vID_Centro_Custo;
  end;
end;

end.

