Unit UCadPedido_MatMed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, StdCtrls, Mask, DBCtrls, RxLookup, NxCollection,
  ExtCtrls, DB, Buttons, RzPanel, ToolEdit, CurrEdit;

type
  TfrmCadPedido_MatMed = class(TForm)
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label38: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    btnCalcular: TNxButton;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
  private
    { Private declarations }
    vID_TipoMatAnt : Integer;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmCadPedido_MatMed: TfrmCadPedido_MatMed;

implementation

uses rsDBUtils, UCadTipo_Material;

{$R *.dfm}

procedure TfrmCadPedido_MatMed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_MatMed.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  RxDBLookupCombo5.SetFocus;
  fDMCadPedido.cdsTipo_Material.Close;
  fDMCadPedido.cdsTipo_Material.Open;

  fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadPedido_MatMed.NxButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a digitação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPedido.cdsPedido_Item_Tipo.CancelUpdates;
  Close;
end;

procedure TfrmCadPedido_MatMed.NxButton1Click(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Item_Tipo.State in [dsEdit, dsInsert] then
    fDMCadPedido.cdsPedido_Item_Tipo.Post;
  Close;
end;

procedure TfrmCadPedido_MatMed.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsTipo_Material.Close;
  fDMCadPedido.cdsTipo_Material.Open;
end;

procedure TfrmCadPedido_MatMed.btnCalcularClick(Sender: TObject);
var
  vAux : Real;
begin
  vAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat
        * fDMCadPedido.cdsPedido_Item_TipoESPESSURA.AsFloat * fDMCadPedido.cdsPedido_Item_TipoDENSIDADE.AsFloat));
  if StrToFloat(FormatFloat('0.0000',vAux)) <= 0 then
  begin
    fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat      := 0;
    fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := 0;
  end
  else
  begin
    fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat      := StrToFloat(FormatFloat('0.00',vAux / 1000));
    fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat));
  end;
end;


procedure TfrmCadPedido_MatMed.SpeedButton1Click(Sender: TObject);
var
  ffrmCadTipo_Material: TfrmCadTipo_Material;
begin
  ffrmCadTipo_Material := TfrmCadTipo_Material.Create(self);
  ffrmCadTipo_Material.ShowModal;
  FreeAndNil(ffrmCadTipo_Material);
  SpeedButton4Click(sender);
end;

procedure TfrmCadPedido_MatMed.RxDBLookupCombo5Exit(Sender: TObject);
begin
  if (not(fDMCadPedido.cdsPedido_Item_Tipo.State in [dsEdit,dsInsert])) or (trim(RxDBLookupCombo5.Text) = '') then
    exit;

  if RxDBLookupCombo5.KeyValue <> vID_TipoMatAnt then
  begin
    if RxDBLookupCombo5.KeyValue <> fDMCadPedido.cdsTipo_MaterialID.AsInteger then
      fDMCadPedido.cdsTipo_Material.Locate('ID',RxDBLookupCombo5.KeyValue,[loCaseInsensitive]);
    fDMCadPedido.qPessoa_TipoMat.Close;
    fDMCadPedido.qPessoa_TipoMat.ParamByName('CODIGO').AsInteger           := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    fDMCadPedido.qPessoa_TipoMat.ParamByName('ID_TIPO_MATERIAL').AsInteger := RxDBLookupCombo5.KeyValue;
    fDMCadPedido.qPessoa_TipoMat.Open;
    if StrToFloat(FormatFloat('0.0000',fDMCadPedido.qPessoa_TipoMatESPESSURA.AsFloat)) > 0 then
      fDMCadPedido.cdsPedido_Item_TipoESPESSURA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.qPessoa_TipoMatESPESSURA.AsFloat));
    fDMCadPedido.cdsPedido_Item_TipoFATOR_CALCULO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoFATOR_CALCULO.AsFloat));
    fDMCadPedido.qPessoa_TipoMat.Close;
    fDMCadPedido.cdsPedido_Item_TipoDENSIDADE.AsFloat    := fDMCadPedido.cdsTipo_MaterialDENSIDADE.AsFloat;
    fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := fDMCadPedido.cdsTipo_MaterialVALOR.AsFloat;
  end;
end;

procedure TfrmCadPedido_MatMed.RxDBLookupCombo5Enter(Sender: TObject);
begin
  vID_TipoMatAnt := fDMCadPedido.cdsPedido_Item_TipoID_TIPO_MATERIAL.AsInteger; 
end;

end.
