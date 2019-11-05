unit USel_CombTam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsPedido, NxCollection, Grids, DBGrids, SMDBGrid, UDMCadCBarra_Int;

type
  TfrmSel_CombTam = class(TForm)
    SMDBGrid1: TSMDBGrid;
    NxPanel1: TNxPanel;
    btnFechar: TNxButton;
    btnConfirmar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCBarra_Int: TDMCadCBarra_Int;
  public
    { Public declarations }
    fDMConsPedido: TDMConsPedido;
    
  end;

var
  frmSel_CombTam: TfrmSel_CombTam;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmSel_CombTam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadCBarra_Int);
  Action := Cafree;
end;

procedure TfrmSel_CombTam.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  fDMCadCBarra_Int := TDMCadCBarra_Int.Create(Self);

  fDMConsPedido.cdsCor_Tam.Close;
  fDMConsPedido.sdsCor_Tam.ParamByName('ID').AsInteger := fDMConsPedido.cdsProdutoID.AsInteger;
  fDMConsPedido.cdsCor_Tam.Open;
end;

procedure TfrmSel_CombTam.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_CombTam.btnConfirmarClick(Sender: TObject);
var
  i: Integer;
begin
  fDMConsPedido.cdsCor_Tam.First;
  while not fDMConsPedido.cdsCor_Tam.Eof do
  begin
    if fDMConsPedido.cdsCor_TamQTD_IMP.AsInteger > 0 then
    begin
      for i := 1 to fDMConsPedido.cdsCor_TamQTD_IMP.AsInteger do
      begin
        fDMConsPedido.mEtiq_Individual.Insert;
        fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger    := fDMConsPedido.cdsProdutoID.AsInteger;
        fDMConsPedido.mEtiq_IndividualReferencia.AsString     := fDMConsPedido.cdsProdutoREFERENCIA.AsString;
        fDMConsPedido.mEtiq_IndividualNome_Produto.AsString   := fDMConsPedido.cdsProdutoNOME.AsString;
        fDMConsPedido.mEtiq_IndividualMarca.AsString          := fDMConsPedido.cdsProdutoMARCA.AsString;
        fDMConsPedido.mEtiq_IndividualTamanho.AsString        := fDMConsPedido.cdsCor_TamTAMANHO.AsString;
        fDMConsPedido.mEtiq_IndividualTamanho_USA.AsString    := fDMConsPedido.cdsCor_TamTAMANHO_USA.AsString;
        fDMConsPedido.mEtiq_IndividualTamanho_EUR.AsString    := fDMConsPedido.cdsCor_TamTAMANHO_EUR.AsString;
        fDMConsPedido.mEtiq_IndividualPreco_Produto.AsString  := fDMConsPedido.cdsProdutoPRECO_VENDA.AsString;
        fDMConsPedido.mEtiq_IndividualNomeCombinacao.AsString := fDMConsPedido.cdsCor_TamNOME_COMBINACAO.AsString;
        if trim(fDMConsPedido.cdsCor_TamCOD_BARRA.AsString) = '' then
          fDMConsPedido.mEtiq_IndividualCodBarra.AsString := fDMCadCBarra_Int.fnc_Montar_CodBarra(fDMConsPedido.cdsCor_TamID_PRODUTO.AsInteger,
                                                             fDMConsPedido.cdsCor_TamID_COR_COMBINACAO.AsInteger,
                                                             fDMConsPedido.cdsCor_TamTAMANHO.AsString,'E')
        else
          fDMConsPedido.mEtiq_IndividualCodBarra.AsString      := fDMConsPedido.cdsCor_TamCOD_BARRA.AsString;
        fDMConsPedido.mEtiq_IndividualCaminhoFoto.AsString   := fDMConsPedido.cdsProdutoFOTO.AsString;
        fDMConsPedido.mEtiq_Individual.Post;
      end;
    end;
    fDMConsPedido.cdsCor_Tam.Next;
  end;
  Close;
end;

end.
