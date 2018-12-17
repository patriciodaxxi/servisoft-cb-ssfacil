unit UOpcaoImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxEdit, StdCtrls, RzLstBox, RzChkLst, NxCollection, UDMCadPedido;

type
  TfrmOpcaoImp = class(TForm)
    RzCheckList1: TRzCheckList;
    ckImp_Cabecalho: TNxCheckBox;
    btnAlterar_Itens: TNxButton;
    btnConfirmar_Itens: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnConfirmar_ItensClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Gravar_mImpPed(NomeVia : String ; ImpPreco : Boolean);
    
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmOpcaoImp: TfrmOpcaoImp;

implementation

uses uUtilPadrao, rsDBUtils, DB;

{$R *.dfm}

procedure TfrmOpcaoImp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmOpcaoImp.btnAlterar_ItensClick(Sender: TObject);
var
  vFlag : Boolean;
  i : Integer;
  vVia : String;
begin
  vFlag := False;
  fDMCadPedido.mImpPed.EmptyDataSet;
  for i := 1 to 5 do
  begin
    case i of
      1 : vVia := 'CLIENTE';
      2 : vVia := 'DEPÓSITO';
      3 : vVia := 'LOJA';
      4 : vVia := 'VENDEDOR';
      5 : vVia := 'ESCRITÓRIO';
    end;
    if RzCheckList1.ItemChecked[i] then
      prc_Gravar_mImpPed(vVia,True);
  end;
  fDMCadPedido.vImp_cabecalho := ckImp_Cabecalho.Checked;
  Close;
end;

procedure TfrmOpcaoImp.btnConfirmar_ItensClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOpcaoImp.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

procedure TfrmOpcaoImp.prc_Gravar_mImpPed(NomeVia: String;
  ImpPreco: Boolean);
begin
  fDMCadPedido.mImpPed.Insert;
  fDMCadPedido.mImpPedID_Pedido.AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.mImpPedNome_Via.AsString   := NomeVia;
  if Copy(fDMCadPedido.mImpPedNome_Via.AsString,1,3) = 'DEP' then
    fDMCadPedido.mImpPedImp_Preco.AsString := 'N'
  else
    fDMCadPedido.mImpPedImp_Preco.AsString := 'S';
  fDMCadPedido.mImpPedNum_Pedido.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  fDMCadPedido.mImpPed.Post;
end;

end.
