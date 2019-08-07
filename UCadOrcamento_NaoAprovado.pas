unit UCadOrcamento_NaoAprovado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, ExtCtrls, Grids, DBGrids, SMDBGrid, DBCtrls,
  StdCtrls, Mask, ToolEdit, RzPanel, NxCollection, DB, UCadPedido;

  //Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, ,
  //DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  //RzEdit, RzDBEdit, RzButton, UCadOrcamento_Itens, UEscolhe_Filial, UCBase, RzPanel,
 // Menus, NxEdit, NxCollection, UCadOrcamento_Aprov;

type
  TfrmCadOrcamento_NaoAprovado = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    btnFechar: TNxButton;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    vItem_Pedido: Integer;
    procedure prc_Montar_mOrcamento_Itens;


  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    
  end;

var
  frmCadOrcamento_NaoAprovado: TfrmCadOrcamento_NaoAprovado;

implementation

uses rsDBUtils, UMenu, uUtilPadrao, uCalculo_Pedido, uGrava_Pedido;

{$R *.dfm}

procedure TfrmCadOrcamento_NaoAprovado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOrcamento_NaoAprovado.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  Label2.Visible := ((fDMCadPedido.cdsOrcamentoID_CLIENTE.AsInteger <= 0) or (fDMCadPedido.cdsOrcamentoID_CLIENTE.IsNull));
  prc_Montar_mOrcamento_Itens;
end;

procedure TfrmCadOrcamento_NaoAprovado.prc_Montar_mOrcamento_Itens;
begin
  fDMCadPedido.mOrcamento_Itens.EmptyDataSet;
  fDMCadPedido.cdsOrcamento_Itens.First;
  while not fDMCadPedido.cdsOrcamento_Itens.Eof do
  begin
    if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsOrcamento_ItensDTAPROVADO_NAO.AsFloat)) > 10) then
    begin
      fDMCadPedido.mOrcamento_Itens.Insert;
      fDMCadPedido.mOrcamento_ItensID_Orcamento.AsInteger := fDMCadPedido.cdsOrcamento_ItensID.AsInteger;
      fDMCadPedido.mOrcamento_ItensItem.AsInteger         := fDMCadPedido.cdsOrcamento_ItensITEM.AsInteger;
      if fDMCadPedido.cdsOrcamento_ItensID_PRODUTO.AsInteger > 0 then
        fDMCadPedido.mOrcamento_ItensID_Produto.AsInteger   := fDMCadPedido.cdsOrcamento_ItensID_PRODUTO.AsInteger
      else
        fDMCadPedido.mOrcamento_ItensID_Produto.Clear;
      fDMCadPedido.mOrcamento_ItensNome_Produto.AsString   := fDMCadPedido.cdsOrcamento_ItensNOMEPRODUTO.AsString;
      fDMCadPedido.mOrcamento_ItensQtd.AsFloat             := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsOrcamento_ItensQTD.AsFloat));
      fDMCadPedido.mOrcamento_ItensVlr_Unitario.AsFloat    := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsOrcamento_ItensVLR_UNITARIO.AsFloat));
      fDMCadPedido.mOrcamento_ItensVlr_Total.AsFloat       := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsOrcamento_ItensVLR_TOTAL.AsFloat));
      fDMCadPedido.mOrcamento_ItensAprovar.AsBoolean       := False;
      fDMCadPedido.mOrcamento_ItensReprovar.AsBoolean      := False;
      fDMCadPedido.mOrcamento_ItensDtEntrega.AsDateTime    := fDMCadPedido.cdsOrcamento_ItensDTENTREGA.AsDateTime;
      fDMCadPedido.mOrcamento_ItensID_CFOP.AsInteger       := fDMCadPedido.cdsOrcamento_ItensID_CFOP.AsInteger;
      fDMCadPedido.mOrcamento_ItensQtd_Peca.AsInteger      := fDMCadPedido.cdsOrcamento_ItensQTD_PECA.AsInteger;
      fDMCadPedido.mOrcamento_ItensID_NCM.AsInteger        := fDMCadPedido.cdsOrcamento_ItensID_NCM.AsInteger;
      fDMCadPedido.mOrcamento_ItensTipo_Orcamento.AsString := fDMCadPedido.cdsOrcamento_ItensTIPO_ORCAMENTO.AsString;
      fDMCadPedido.mOrcamento_ItensPerc_Desconto.AsFloat   := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsOrcamento_ItensPERC_DESCONTO.AsFloat));
      fDMCadPedido.mOrcamento_ItensVlr_Desconto.AsFloat    := StrToFloat(FormatFloat('0.0000',(fDMCadPedido.cdsOrcamento_ItensVLR_DESCONTO.AsFloat + fDMCadPedido.cdsOrcamento_ItensVLR_DESCONTORATEIO.AsFloat)));
      fDMCadPedido.mOrcamento_ItensPerc_Comissao.AsFloat   := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsOrcamento_ItensPERC_COMISSAO.AsFloat));
      fDMCadPedido.mOrcamento_ItensFoto.AsString           := fDMCadPedido.cdsOrcamento_ItensFOTO.AsString;
      fDMCadPedido.mOrcamento_ItensData_Nao_Aprov.AsDateTime := fDMCadPedido.cdsOrcamento_ItensDTAPROVADO_NAO.AsDateTime;
      fDMCadPedido.mOrcamento_ItensMotivo_Nao_Aprov.AsString := fDMCadPedido.cdsOrcamento_ItensMOTIVO_NAO_APROV.AsString;
      fDMCadPedido.mOrcamento_ItensMotivo_Nao_Aprovado_Memo.Value := fDMCadPedido.cdsOrcamento_ItensMOTIVO_NAO_APROV.Value;
      if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
      begin
        fDMCadPedido.qProduto.Close;
        fDMCadPedido.qProduto.ParamByName('ID').AsInteger := fDMCadPedido.cdsOrcamento_ItensID_PRODUTO.AsInteger;
        fDMCadPedido.qProduto.Open;
        if fDMCadPedido.qProdutoID_GRUPO.AsInteger > 0 then
        begin
          fDMCadPedido.qGrupo.Close;
          fDMCadPedido.qGrupo.ParamByName('ID').AsInteger  := fDMCadPedido.qProdutoID_GRUPO.AsInteger;
          fDMCadPedido.qGrupo.Open;
          fDMCadPedido.mOrcamento_ItensNome_Grupo.AsString := fDMCadPedido.qGrupoNOME.AsString;
        end;
      end;
      fDMCadPedido.mOrcamento_Itens.Post;
    end;
    fDMCadPedido.cdsOrcamento_Itens.Next;
  end;
end;

procedure TfrmCadOrcamento_NaoAprovado.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPedido.mOrcamento_ItensCopiado.AsString = 'S' then
    Background := clMoneyGreen;
end;

procedure TfrmCadOrcamento_NaoAprovado.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
