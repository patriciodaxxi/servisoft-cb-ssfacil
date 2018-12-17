unit uGerar_NFSe_Consumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadNotaServico, UDMCadRecibo,
  UDMCadOS, Grids, DBGrids, SMDBGrid, NxCollection, ExtCtrls, DB;

type
  TfrmGerar_NFSe_Consumo = class(TForm)
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vAnoMes: String;
    vAnoMesAnt: String;
    fDMCadNotaServico: TDMCadNotaServico;
    fDMCadRecibo: TDMCadRecibo;
    fDMCadOS: TDMCadOS;
  end;

var
  frmGerar_NFSe_Consumo: TfrmGerar_NFSe_Consumo;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmGerar_NFSe_Consumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmGerar_NFSe_Consumo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOS);

  fDMCadOS.mContrato_Consumo.EmptyDataSet;

  fDMCadOS.cdsOS_Servico_Int_Cons.Close;
  fDMCadOS.sdsOS_Servico_Int_Cons.ParamByName('ID').AsInteger := fDMCadOS.cdsContratoID.AsInteger;
  fDMCadOS.cdsOS_Servico_Int_Cons.Open;

  if fDMCadOS.cdsOS_Servico_Int_Cons.IsEmpty then
  begin
    ShowMessage('Este contrato não contém serviços de consumo!');
    PostMessage(frmGerar_NFSe_Consumo.Handle, WM_CLOSE, 0, 0);
    exit;
  end;

  fDMCadOS.cdsOS_Servico_Int_Mes.IndexFieldNames := 'ID;ITEM;ANO_MES';
  while not fDMCadOS.cdsOS_Servico_Int_Cons.Eof do
  begin
    fDMCadOS.mContrato_Consumo.Insert;
    fDMCadOS.mContrato_ConsumoID.AsInteger              := fDMCadOS.cdsOS_Servico_Int_ConsID.AsInteger;
    fDMCadOS.mContrato_ConsumoITEM.AsInteger            := fDMCadOS.cdsOS_Servico_Int_ConsITEM.AsInteger;
    fDMCadOS.mContrato_ConsumoID_SERVICO_INT.AsInteger  := fDMCadOS.cdsOS_Servico_Int_ConsID_SERVICO_INT.AsInteger;
    fDMCadOS.mContrato_ConsumoNOME_SERVICO_INT.AsString := fDMCadOS.cdsOS_Servico_Int_ConsNOME_SERVICO_INT.AsString;
    fDMCadOS.mContrato_ConsumoFRANQUIA.AsInteger        := fDMCadOS.cdsOS_Servico_Int_ConsQTD_FRANQUIA.AsInteger;
    fDMCadOS.mContrato_ConsumoVLR_EXCEDENTE.AsCurrency  := fDMCadOS.cdsOS_Servico_Int_ConsVLR_UNIT_EXCEDENTE.AsCurrency;

    fDMCadOS.cdsOS_Servico_Int_Mes.Close;
    fDMCadOS.sdsOS_Servico_Int_Mes.ParamByName('ID').AsInteger   := fDMCadOS.cdsOS_Servico_Int_ConsID.AsInteger;
    fDMCadOS.sdsOS_Servico_Int_Mes.ParamByName('ITEM').AsInteger := fDMCadOS.cdsOS_Servico_Int_ConsItem.AsInteger;
    fDMCadOS.cdsOS_Servico_Int_Mes.Open;

    if fDMCadOS.cdsOS_Servico_Int_Mes.FindKey([fDMCadOS.cdsOS_Servico_Int_ConsID.AsInteger,fDMCadOS.cdsOS_Servico_Int_ConsITEM.AsInteger,vAnoMes]) then
    begin
      fDMCadOS.mContrato_ConsumoQTD_ANT.AsInteger   := fDMCadOS.cdsOS_Servico_Int_MesQTD_ANT.AsInteger;
      fDMCadOS.mContrato_ConsumoQTD_ATUAL.AsInteger := fDMCadOS.cdsOS_Servico_Int_MesQTD_ATUAL.AsInteger;
    end
    else
    begin
      if fDMCadOS.cdsOS_Servico_Int_Mes.FindKey([fDMCadOS.cdsOS_Servico_Int_ConsID.AsInteger,fDMCadOS.cdsOS_Servico_Int_ConsITEM.AsInteger,vAnoMesAnt]) then
        fDMCadOS.mContrato_ConsumoQTD_ANT.AsInteger := fDMCadOS.cdsOS_Servico_Int_MesQTD_ATUAL.AsInteger;
      //else
        //SMDBGrid1.Columns[4].ReadOnly := False;
    end;
    fDMCadOS.mContrato_Consumo.Post;
    fDMCadOS.cdsOS_Servico_Int_Cons.Next;
  end;
end;

procedure TfrmGerar_NFSe_Consumo.btnConfirmarClick(Sender: TObject);
var
  vControle: Integer;
begin
  fDMCadOS.mContrato_Consumo.First;
  while not fDMCadOS.mContrato_Consumo.Eof do
  begin
    //if StrToFloat(FormatFloat('0.0000',fDMCadOS.mContrato_ConsumoclVLR_UTILIZADA.AsCurrency)) > 0 then
    begin
      fDMCadOS.cdsOS_Servico_Int_Mes.IndexFieldNames := 'ID;ITEM;ANO_MES';
      if fDMCadOS.cdsOS_Servico_Int_Mes.FindKey([fDMCadOS.mContrato_ConsumoID.AsInteger,
                                                 fDMCadOS.mContrato_ConsumoITEM.AsInteger,vAnoMes]) then
        fDMCadOS.cdsOS_Servico_Int_Mes.Edit
      else
        fDMCadOS.cdsOS_Servico_Int_Mes.Insert;

      fDMCadOS.cdsOS_Servico_Int_MesID.AsInteger     := fDMCadOS.mContrato_ConsumoID.AsInteger;
      fDMCadOS.cdsOS_Servico_Int_MesITEM.AsInteger   := fDMCadOS.mContrato_ConsumoITEM.AsInteger;
      fDMCadOS.cdsOS_Servico_Int_MesANO_MES.AsString := vAnoMes;

      fDMCadOS.qMesControle.Close;
      fDMCadOS.qMesControle.ParamByName('ID').AsInteger   := fDMCadOS.mContrato_ConsumoID.AsInteger;
      fDMCadOS.qMesControle.ParamByName('ITEM').AsInteger := fDMCadOS.mContrato_ConsumoITEM.AsInteger;
      fDMCadOS.qMesControle.Open;
      vControle := fDMCadOS.qMesControleCONTROLE.AsInteger + 1;
      fDMCadOS.cdsOS_Servico_Int_MesCONTROLE.AsInteger := vControle;
      fDMCadOS.qMesControle.Close;

      fDMCadOS.cdsOS_Servico_Int_MesQTD_ANT.AsInteger        := fDMCadOS.mContrato_ConsumoQTD_ANT.AsInteger;
      fDMCadOS.cdsOS_Servico_Int_MesQTD_ATUAL.AsInteger      := fDMCadOS.mContrato_ConsumoQTD_ATUAL.AsInteger;
    //  fDMCadOS.cdsOS_Servico_Int_MesQTD_INFORMADA.AsInteger  := fDMCadOS.mContrato_ConsumoQTD_ATUAL.AsInteger;
      fDMCadOS.cdsOS_Servico_Int_MesVLR_EXCEDENTE.AsCurrency := fDMCadOS.mContrato_ConsumoclVLR_UTILIZADA.AsCurrency;
      fDMCadOS.cdsOS_Servico_Int_Mes.Post;
      fDMCadOS.cdsOS_Servico_Int_Mes.ApplyUpdates(0);
    end;

    fDMCadOS.mContrato_Consumo.Next;
  end;
  Close;
end;

procedure TfrmGerar_NFSe_Consumo.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  {if not fDMCadOS.mContrato_Consumo.IsEmpty then
  begin
    if (Field = fDMCadOS.mContrato_ConsumoQTD_ATUAL) then
    begin
      Background  := clMoneyGreen;
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
      Highlight   := True;
    end;
  end;}
end;

end.
