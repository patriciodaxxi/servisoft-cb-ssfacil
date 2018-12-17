unit UConsOrdProd_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, SMDBGrid, NxCollection, UDMConsLote, DB,
  RzTabs;

type
  TfrmConsOrdProd_Ped = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Talao_Auxiliar: TRzTabSheet;
    Panel1: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape3: TShape;
    SMDBGrid1: TSMDBGrid;
    btnCancelar: TNxButton;
    SMDBGrid2: TSMDBGrid;
    TS_Processo: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    Panel2: TPanel;
    Shape6: TShape;
    Label6: TLabel;
    Label1: TLabel;
    Shape4: TShape;
    TS_TalaoPed: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsLote: TDMConsLote;
    procedure prc_Consultar_OrdProd;
    procedure prc_Consultar_Talao_Aux;
    procedure prc_Consultar_Talao_Ped;
    procedure prc_Consultar_Talao_Calc;
  public
    { Public declarations }
    vID_PedidoLoc : Integer;
  end;

var
  frmConsOrdProd_Ped: TfrmConsOrdProd_Ped;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsOrdProd_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsOrdProd_Ped.FormShow(Sender: TObject);
begin
  fDMConsLote := TDMConsLote.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsLote);
  TS_Talao_Auxiliar.TabVisible := (fDMConsLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S');
  TS_Processo.TabVisible       := (fDMConsLote.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  TS_TalaoPed.TabVisible       := (fDMConsLote.qParametrosUSA_LOTE.AsString = 'S');

  if fDMConsLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S' then
  begin
    RzPageControl1.ActivePage := TS_Talao_Auxiliar;
    prc_Consultar_OrdProd;
    prc_Consultar_Talao_Aux;
  end
  else
  if (fDMConsLote.qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
  begin
    RzPageControl1.ActivePage := TS_Processo;
    prc_Consultar_Talao_Ped;
  end
  else
  if fDMConsLote.qParametrosUSA_LOTE.AsString = 'S' then
  begin
    RzPageControl1.ActivePage := TS_TalaoPed;
    prc_Consultar_Talao_Calc;
  end;
end;

procedure TfrmConsOrdProd_Ped.prc_Consultar_OrdProd;
begin
  fDMConsLote.cdsOrdProd.Close;
  fDMConsLote.sdsOrdProd.ParamByName('ID_PEDIDO').AsInteger := vID_PedidoLoc;
  fDMConsLote.cdsOrdProd.Open;
end;

procedure TfrmConsOrdProd_Ped.prc_Consultar_Talao_Aux;
begin
  fDMConsLote.cdsTalao_Aux.Close;
  fDMConsLote.sdsTalao_Aux.ParamByName('ID_PEDIDO').AsInteger := vID_PedidoLoc;
  fDMConsLote.cdsTalao_Aux.Open;
end;

procedure TfrmConsOrdProd_Ped.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMConsLote.cdsTalao_AuxDTRETORNO.IsNull) and (fDMConsLote.cdsTalao_AuxDTSAIDA.AsDateTime > 10) then
    Background := clYellow
  else
  if fDMConsLote.cdsTalao_AuxDTRETORNO.AsDateTime > 10 then
    Background := clMoneyGreen;
end;

procedure TfrmConsOrdProd_Ped.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsOrdProd_Ped.prc_Consultar_Talao_Ped;
begin
  fDMConsLote.cdsConsTalao_Ped.Close;
  fDMConsLote.sdsConsTalao_Ped.ParamByName('ID_PEDIDO').AsInteger := vID_PedidoLoc;
  fDMConsLote.cdsConsTalao_Ped.Open;
  fDMConsLote.cdsConsTalao_Ped.IndexFieldNames := 'ITEM_PEDIDO;NOME_PROCESSO';
end;

procedure TfrmConsOrdProd_Ped.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsLote.cdsConsTalao_PedDTBAIXA.AsDateTime > 10 then
    Background := $0077FF77
  else
  if fDMConsLote.cdsConsTalao_PedDTENTRADA.AsDateTime > 10 then
    Background := $00FFFFB9;
end;

procedure TfrmConsOrdProd_Ped.prc_Consultar_Talao_Calc;
begin
  fDMConsLote.cdsTalao_Calc.Close;
  fDMConsLote.sdsTalao_Calc.ParamByName('ID_PEDIDO').AsInteger := vID_PedidoLoc;
  fDMConsLote.cdsTalao_Calc.Open;
  fDMConsLote.cdsTalao_Calc.IndexFieldNames := 'ITEM_PEDIDO;NUM_TALAO';
end;

end.
