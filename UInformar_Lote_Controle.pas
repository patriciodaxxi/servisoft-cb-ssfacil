unit UInformar_Lote_Controle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, NxCollection, Grids,
  DBGrids, SMDBGrid, UDMCadNotaFiscal;

type
  TfrmInformar_Lote_Controle = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Edit1: TEdit;
    btnConfirmar: TNxButton;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    SMDBGrid1: TSMDBGrid;
    btnExcluir: TNxButton;
    StaticText1: TStaticText;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    vID_Produto : Integer;
    
  end;

var
  frmInformar_Lote_Controle: TfrmInformar_Lote_Controle;

implementation

uses DB, rsDBUtils, UConsEstoque_Lote;

{$R *.dfm}

procedure TfrmInformar_Lote_Controle.FormShow(Sender: TObject);
var
  vQtd : Real;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  vQtd := 0;
  fDMCadNotaFiscal.mLoteControle.First;
  while not fDMCadNotaFiscal.mLoteControle.Eof do
  begin
    vQtd := vQtd + fDMCadNotaFiscal.mLoteControleQtd.AsFloat;
    fDMCadNotaFiscal.mLoteControle.Next;
  end;
  CurrencyEdit2.Value := CurrencyEdit2.Value - vQtd;
end;

procedure TfrmInformar_Lote_Controle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmInformar_Lote_Controle.btnConfirmarClick(Sender: TObject);
begin
  if CurrencyEdit1.Value > CurrencyEdit2.Value then
  begin
    MessageDlg('*** Quantidade informada maior que o Pedido!', mtError, [mbOk], 0);
    CurrencyEdit1.SetFocus;
    exit;
  end;
  if fDMCadNotaFiscal.mLoteControle.Locate('ID_Pedido;Item_Pedido;Num_Lote_Controle',
     VarArrayOf([fDMCadNotaFiscal.cdsPedidoID.AsInteger,fDMCadNotaFiscal.cdsPedidoITEM.AsInteger,Edit1.Text]),[locaseinsensitive]) then
    fDMCadNotaFiscal.mLoteControle.Edit
  else
  begin
    fDMCadNotaFiscal.mLoteControle.Insert;
    fDMCadNotaFiscal.mLoteControleID_Pedido.AsInteger   := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
    fDMCadNotaFiscal.mLoteControleItem_Pedido.AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
    fDMCadNotaFiscal.mLoteControleNum_Lote_Controle.AsString := Edit1.Text;
  end;
  fDMCadNotaFiscal.mLoteControleQtd.AsFloat                := CurrencyEdit1.Value;
  fDMCadNotaFiscal.mLoteControle.Post;

  CurrencyEdit2.Value := CurrencyEdit2.Value - CurrencyEdit1.Value;
  CurrencyEdit1.Clear;
  Edit1.Clear;
  CurrencyEdit1.SetFocus;
end;

procedure TfrmInformar_Lote_Controle.btnExcluirClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.mLoteControle.IsEmpty then
    exit;
  CurrencyEdit2.Value := CurrencyEdit2.Value + fDMCadNotaFiscal.mLoteControleQtd.AsFloat;
  fDMCadNotaFiscal.mLoteControle.Delete;
end;

procedure TfrmInformar_Lote_Controle.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ffrmConsEstoque_Lote: TfrmConsEstoque_Lote;
begin
  if Key = 27 then
    Close
  else
  if (Key = Vk_F2) then
  begin
    ffrmConsEstoque_Lote := TfrmConsEstoque_Lote.Create(Self);
    ffrmConsEstoque_Lote.vID_Produto_Lote := vID_Produto;
    ffrmConsEstoque_Lote.vID_Filial_Lote  := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger; 
    ffrmConsEstoque_Lote.ShowModal;
    FreeAndNil(ffrmConsEstoque_Lote);
  end;
end;

end.
