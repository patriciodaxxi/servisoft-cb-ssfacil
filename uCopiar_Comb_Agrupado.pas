unit uCopiar_Comb_Agrupado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids,
  SMDBGrid, ExtCtrls, UDMCopiarProduto, StdCtrls, Buttons, DB, UDMCadProduto, SqlExpr;

type
  TfrmCopiar_Comb_Agrupado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Panel5: TPanel;
    SMDBGrid2: TSMDBGrid;
    Panel4: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    fdmCopiarProduto: TDMCopiarProduto;
    procedure prc_Abre_Agrupado(ID: Integer);
    procedure prc_Abre_Combinacao(ID: Integer);
    function fnc_Existe_Comb: Boolean;
    { Private declarations }
  public
    fdmCadProduto: TdmCadProduto;
    vID_Produto: Integer;
    { Public declarations }
  end;

var
  frmCopiar_Comb_Agrupado: TfrmCopiar_Comb_Agrupado;

implementation

uses
  rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmCopiar_Comb_Agrupado.prc_Abre_Agrupado(ID: Integer);
begin
  fdmCopiarProduto.cdsCopia_Produto_Agrupado.Close;
  fdmCopiarProduto.sdsCopia_Produto_Agrupado.ParamByName('ID').AsInteger := ID;
  fdmCopiarProduto.cdsCopia_Produto_Agrupado.Open;
end;

procedure TfrmCopiar_Comb_Agrupado.FormShow(Sender: TObject);
begin
  fdmCopiarProduto := TDMCopiarProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fdmCopiarProduto);
  prc_Abre_Agrupado(vID_Produto);
  prc_Abre_Combinacao(vID_Produto);
end;

procedure TfrmCopiar_Comb_Agrupado.prc_Abre_Combinacao(ID: Integer);
begin
  fdmCopiarProduto.cdsCopia_Produto_Comb.Close;
  fdmCopiarProduto.sdsCopia_Produto_Comb.ParamByName('ID').AsInteger := ID;
  fdmCopiarProduto.cdsCopia_Produto_Comb.Open;
end;

procedure TfrmCopiar_Comb_Agrupado.BitBtn1Click(Sender: TObject);
var
  vGerar: Boolean;
  x: Integer;
  vItem, vItem_Mat: Integer;
begin
  vGerar := False;
  fdmCopiarProduto.cdsCopia_Produto_Agrupado.First;
  while not fdmCopiarProduto.cdsCopia_Produto_Agrupado.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fdmCadProduto.prc_Localizar(fdmCopiarProduto.cdsCopia_Produto_AgrupadoID.AsInteger);
      fdmCopiarProduto.qSemi.Close;
      fdmCopiarProduto.qSemi.ParamByName('ID').AsInteger := fdmCadProduto.cdsProdutoID.AsInteger;
      fdmCopiarProduto.qSemi.Open;
      fdmCopiarProduto.cdsCopia_Produto_Comb.First;
      while not fdmCopiarProduto.cdsCopia_Produto_Comb.Eof do
      begin
        if SMDBGrid2.SelectedRows.CurrentRowSelected then
        begin
          if not fnc_Existe_Comb then
          begin
            fdmCadProduto.prc_Abrir_Produto_Comb(fdmCadProduto.cdsProdutoID.AsInteger);
            fdmCadProduto.prc_Inserir_ProdComb;
            for x := 0 to (fDMCopiarProduto.cdsCopia_Produto_Comb.FieldCount - 1) do
            begin
              if (fDMCopiarProduto.cdsCopia_Produto_Comb.Fields[x].FieldName <> 'ID') and (fDMCopiarProduto.cdsCopia_Produto_Comb.Fields[x].FieldName <> 'ITEM') then
                fdmCadProduto.cdsProduto_Comb.FieldByName(fDMCopiarProduto.cdsCopia_Produto_Comb.Fields[x].FieldName).AsVariant := fdmCopiarProduto.cdsCopia_Produto_Comb.Fields[x].Value;
            end;
            fdmCadProduto.cdsProduto_Comb.Post;

        //14/08/2017 para copiar as cores do Semi
            if (StrToFloat(FormatFloat('0.0000', fdmCopiarProduto.qSemiQTD_CONSUMO.AsFloat)) > 0) then
            begin
              vItem_Mat := 0;
              fDMCadProduto.cdsProduto_Consumo.First;
              while not fDMCadProduto.cdsProduto_Consumo.Eof do
              begin
                vItem_Mat := vItem_Mat + 1;
                fDMCadProduto.cdsProduto_Comb_Mat.Insert;
                fDMCadProduto.cdsProduto_Comb_MatID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
                fDMCadProduto.cdsProduto_Comb_MatITEM.AsInteger := fdmCadProduto.cdsProduto_CombITEM.AsInteger;
                fDMCadProduto.cdsProduto_Comb_MatITEM_MAT.AsInteger := vItem_Mat;
                fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
                if fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger = fdmCopiarProduto.cdsCopia_Produto_CombID.AsInteger then
                  fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger := fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger
                else
                  fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger := 0;
                if fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger > 0 then
                  fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger;
                fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
                fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
                fDMCadProduto.cdsProduto_Comb_MatUNIDADE.AsString := fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString;
                fDMCadProduto.cdsProduto_Comb_MatTINGIMENTO.AsString := fDMCadProduto.cdsProduto_ConsumoTINGIMENTO.AsString;
                fDMCadProduto.cdsProduto_Comb_MatIMP_TALAO.AsString := fDMCadProduto.cdsProduto_ConsumoIMP_TALAO.AsString;
                fDMCadProduto.cdsProduto_Comb_Mat.Post;
                fDMCadProduto.cdsProduto_Consumo.Next;
              end;
            end;
            fdmCadProduto.cdsProduto_Comb.ApplyUpdates(0);
          end;

          {if not fdmCopiarProduto.cdsCopia_Comb_Agrupado.Locate('ID;ID_COR_COMBINACAO', VarArrayOf([fdmCopiarProduto.cdsCopia_Produto_AgrupadoID.AsInteger,
            fDMCopiarProduto.cdsCopia_Produto_CombID_COR_COMBINACAO.AsInteger]), [locaseinsensitive]) then
          begin
            fdmCopiarProduto.cdsCopia_Comb_Agrupado.Last;
            vItem := fdmCopiarProduto.cdsCopia_Comb_AgrupadoITEM.AsInteger;
            vItem := vItem + 1;
            fdmCopiarProduto.cdsCopia_Comb_Agrupado.Insert;
            fdmCopiarProduto.cdsCopia_Comb_AgrupadoID.AsInteger := fdmCopiarProduto.cdsCopia_Produto_AgrupadoID.AsInteger;
            fdmCopiarProduto.cdsCopia_Comb_AgrupadoITEM.AsInteger := vItem;
            for x := 0 to (fDMCopiarProduto.cdsCopia_Produto_Comb.FieldCount - 1) do
            begin
              if (fDMCopiarProduto.cdsCopia_Produto_Comb.Fields[x].FieldName <> 'ID') and (fDMCopiarProduto.cdsCopia_Produto_Comb.Fields[x].FieldName <> 'ITEM') then
                fdmCopiarProduto.cdsCopia_Comb_Agrupado.FieldByName(fDMCopiarProduto.cdsCopia_Produto_Comb.Fields[x].FieldName).AsVariant := fdmCopiarProduto.cdsCopia_Produto_Comb.Fields[x].Value;
            end;
            fdmCopiarProduto.cdsCopia_Comb_Agrupado.Post;
            fdmCopiarProduto.cdsCopia_Produto_Comb.Next;
          end
          else
            fdmCopiarProduto.cdsCopia_Produto_Comb.Next;}
        end;
        fdmCopiarProduto.cdsCopia_Produto_Comb.Next;
      end;
//      fdmCadProduto.cdsProduto.Edit;
//      fdmCadProduto.prc_Gravar;
      fdmCopiarProduto.cdsCopia_Produto_Agrupado.Next;
      vGerar := True;
    end
    else
      fdmCopiarProduto.cdsCopia_Produto_Agrupado.Next;
  end;
  if not vGerar then
  begin
    MessageDlg('Nenhum Registro Selecionado!', mtError, [mbOK], 0);
    Exit;
  end
  else
  begin
    MessageDlg('Copia Gerada com Sucesso!', mtConfirmation, [mbOK], 0);
    Close;
  end;

end;

function TfrmCopiar_Comb_Agrupado.fnc_Existe_Comb: Boolean;
var
  sds: TSQLDataSet;
begin

  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM produto_comb PC ' + ' WHERE PC.ID = :ID ' + ' AND PC.id_cor_combinacao = :ID_COR_COMBINACAO ';

    SDS.ParamByName('ID').AsInteger := fdmCopiarProduto.cdsCopia_Produto_AgrupadoID.AsInteger;
    SDS.ParamByName('ID_COR_COMBINACAO').AsInteger := fdmCopiarProduto.cdsCopia_Produto_CombID_COR_COMBINACAO.AsInteger;
    sds.open;
    Result := (sds.FieldByName('CONTADOR').AsInteger > 0);
  finally
    FreeAndNil(sds);
  end;

end;

end.

