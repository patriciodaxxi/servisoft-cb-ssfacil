unit USel_Cor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient,
  Provider, SqlExpr, NxCollection, StdCtrls, UDMCadProduto;

type
  TfrmSel_Cor = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    sdsCor: TSQLDataSet;
    dspCor: TDataSetProvider;
    cdsCor: TClientDataSet;
    cdsCorID: TFMTBCDField;
    cdsCorNOME: TStringField;
    dsCor: TDataSource;
    btnConfirmar: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnConsultar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    ctCor : String;
    procedure prc_Consultar;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmSel_Cor: TfrmSel_Cor;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Cor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Cor.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Cor.btnConfirmarClick(Sender: TObject);
begin
  cdsCor.First;
  while not cdsCor.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if not fDMCadProduto.cdsProduto_Cor.Locate('ID_COR_COMBINACAO',cdsCorID.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadProduto.prc_Inserir_ProdCor;
        fDMCadProduto.cdsProduto_CorNOME.AsString := cdsCorNOME.AsString;
        fDMCadProduto.cdsProduto_CorID_COR_COMBINACAO.AsInteger := cdsCorID.AsInteger;

        if (fDMCadProduto.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S') and (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
          fDMCadProduto.cdsProduto_CorPRECO_VENDA.AsFloat := fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat;

        fDMCadProduto.cdsProduto_Cor.Post;
      end;
    end;
    cdsCor.Next;
  end;
  Close;
end;

procedure TfrmSel_Cor.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Cor.prc_Consultar;
begin
  cdsCor.Close;
  sdsCor.CommandText := ctCor;
  if trim(Edit1.Text) <> '' then
    sdsCor.CommandText := sdsCor.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  cdsCor.Open;
end;

procedure TfrmSel_Cor.FormShow(Sender: TObject);
begin
  ctCor := sdsCor.CommandText;
end;

procedure TfrmSel_Cor.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    prc_Consultar;
end;

procedure TfrmSel_Cor.SMDBGrid1DblClick(Sender: TObject);
begin
  vCodCor_Pos := cdsCorID.AsInteger;
  Close;
end;

end.
