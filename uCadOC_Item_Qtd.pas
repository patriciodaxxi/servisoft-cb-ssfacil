unit uCadOC_Item_Qtd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, NxCollection, UDMCadPedido,
  DBCtrls;

type
  TfrmCadOC_Item_Qtd = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Edit1: TEdit;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vQtdAnt : Real;

  end;

var
  frmCadOC_Item_Qtd: TfrmCadOC_Item_Qtd;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadOC_Item_Qtd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOC_Item_Qtd.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOC_Item_Qtd.btnConfirmarClick(Sender: TObject);
var
  vQtd : Real;
begin
  if (StrToFloat(FormatFloat('0.0000',vQtdAnt)) <= 0) and (CurrencyEdit1.Value <= 0) then
  begin
    MessageDlg('*** Quandidade não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  if CurrencyEdit1.AsInteger <= 0 then
  begin
    if MessageDlg('Excluir a quantidade informada a mais de ' + FormatFloat('0.####',vQtdAnt) + ' anteriormente?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    vQtd := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat - vQtdAnt));
    if vQtd < 0 then
    begin
      MessageDlg('*** Processo de exclusão cancelado, pois o saldo ficara negativo!', mtInformation, [mbOk], 0);
      exit;
    end;
  end
  else
  begin
    if MessageDlg('Alterar a quantidade informada a mais no item da OC?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  try
    if not fDMCadPedido.cdsPedido_Item_Qtd.IsEmpty then
      fDMCadPedido.cdsPedido_Item_Qtd.Edit
    else
    begin
      fDMCadPedido.cdsPedido_Item_Qtd.Insert;
      fDMCadPedido.cdsPedido_Item_QtdID.AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
      fDMCadPedido.cdsPedido_Item_QtdITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
    end;
    if CurrencyEdit1.AsInteger <= 0 then
      fDMCadPedido.cdsPedido_Item_QtdQTD.AsFloat := StrToFloat(FormatFloat('0.0000',0))
    else
      fDMCadPedido.cdsPedido_Item_QtdQTD.AsFloat := StrToFloat(FormatFloat('0.0000',CurrencyEdit1.Value + vQtdAnt));
    fDMCadPedido.cdsPedido_Item_QtdMOTIVO.AsString := Edit1.Text;
    fDMCadPedido.cdsPedido_Item_Qtd.Post;
    fDMCadPedido.cdsPedido_Item_Qtd.ApplyUpdates(0);

    fDMCadPedido.cdsPedido_Itens.Edit;
    if CurrencyEdit1.AsInteger <= 0 then
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat := (fDMCadPedido.cdsPedido_ItensQTD.AsFloat - vQtdAnt)
    else
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := (fDMCadPedido.cdsPedido_ItensQTD.AsFloat) + CurrencyEdit1.Value;
    fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat - fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat - fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat;
    fDMCadPedido.cdsPedido_ItensQTD_AFATURAR.AsFloat := fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat;
    fDMCadPedido.cdsPedido_Itens.Post;
  except
    fDMCadPedido.vGravou_OK_Ajuste := False;
  end;

  Close;
end;

procedure TfrmCadOC_Item_Qtd.FormShow(Sender: TObject);
var
  vQtdAux : Real;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  vQtdAux := fDMCadPedido.cdsPedido_ItensQTD.AsFloat - fDMCadPedido.cdsPedido_Item_QtdQTD.AsFloat;
  Label6.Caption := FormatFloat('0.####',vQtdAux);
end;

end.
