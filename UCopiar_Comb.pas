unit UCopiar_Comb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, ExtCtrls, NxCollection, Grids, DBGrids,
  SMDBGrid, UDMCopiarProduto, UDMCadProduto, DB;

type
  TfrmCopiar_Comb = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label2: TLabel;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    btnCopiar: TNxButton;
    ckCopiarSemi: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCopiarProduto: TDMCopiarProduto;
    
    procedure prc_consultar;
    procedure prc_Consumo;
    procedure prc_Consumo_Semi;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    vID_Produto_Loc : Integer;
    vQtd_Semi_Loc : Real;

  end;

var
  frmCopiar_Comb: TfrmCopiar_Comb;

implementation

uses rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmCopiar_Comb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCopiar_Comb.FormShow(Sender: TObject);
begin
  fDMCopiarProduto := TDMCopiarProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCopiarProduto);

  fDMCopiarProduto.cdsSel_Produto.Close;
  if vID_Produto_Loc > 0 then
    fDMCopiarProduto.sdsSel_Produto.ParamByName('TIPO_REG').AsString := 'S'
  else
    fDMCopiarProduto.sdsSel_Produto.ParamByName('TIPO_REG').AsString := fDMCadProduto.cdsProdutoTIPO_REG.AsString;
  fDMCopiarProduto.cdsSel_Produto.Open;

  if vID_Produto_Loc > 0 then
  begin
    RxDBLookupCombo1.KeyValue := vID_Produto_Loc;
    RxDBLookupCombo2.KeyValue := vID_Produto_Loc;
    ckCopiarSemi.Checked      := True;
    btnConsultarClick(Sender);
  end;
  ckCopiarSemi.Visible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
end;

procedure TfrmCopiar_Comb.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Produto não informado', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  prc_consultar;
end;

procedure TfrmCopiar_Comb.prc_consultar;
begin
  fDMCopiarProduto.cdsProduto_Comb.Close;
  fDMCopiarProduto.sdsProduto_Comb.ParamByName('ID').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCopiarProduto.cdsProduto_Comb.Open;
  fDMCopiarProduto.cdsProduto_Comb_Mat.Close;
  fDMCopiarProduto.cdsProduto_Comb_Mat.Open;
end;

procedure TfrmCopiar_Comb.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCopiarProduto.cdsProduto_Comb.Close;
  if trim(RxDBLookupCombo1.Text) <> '' then
    RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
end;

procedure TfrmCopiar_Comb.RxDBLookupCombo2Change(Sender: TObject);
begin
  fDMCopiarProduto.cdsProduto_Comb.Close;
  if trim(RxDBLookupCombo2.Text) <> '' then
    RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
end;

procedure TfrmCopiar_Comb.btnCopiarClick(Sender: TObject);
var
  x : Integer;
  vItem, vItem_Mat : Integer;
begin
  if not(fDMCopiarProduto.cdsProduto_Comb.Active) then
  begin
    MessageDlg('*** Consulta não efetuada!', mtInformation, [mbOk], 0);
    exit;
  end;

  if fDMCadProduto.cdsProduto_Consumo.RecordCount <= 0 then
    if MessageDlg('Consumo não informado na tela principal, se confirmar a copia, verificar a qtd. de consumo nas combinações, Confirmar ? ',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

  fDMCopiarProduto.cdsProduto_Comb.First;
  while not fDMCopiarProduto.cdsProduto_Comb.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      if not fDMCadProduto.cdsProduto_Comb.Locate('ID;ID_COR_COMBINACAO',VarArrayOf([fDMCopiarProduto.cdsProduto_CombID.AsInteger,fDMCopiarProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger]),[locaseinsensitive]) then
      begin
        fDMCadProduto.cdsProduto_Comb.Last;
        vItem := fDMCadProduto.cdsProduto_CombITEM.AsInteger;
        vItem := vItem + 1;
        fDMCadProduto.cdsProduto_Comb.Insert;
        fDMCadProduto.cdsProduto_CombID.AsInteger   := fDMCadProduto.cdsProdutoID.AsInteger;
        fDMCadProduto.cdsProduto_CombITEM.AsInteger := vItem;
        for x := 0 to (fDMCopiarProduto.cdsProduto_Comb.FieldCount - 1) do
        begin
          if (fDMCopiarProduto.cdsProduto_Comb.Fields[x].FieldName <> 'ID') and (fDMCopiarProduto.cdsProduto_Comb.Fields[x].FieldName <> 'ITEM')  then
            fDMCadProduto.cdsProduto_Comb.FieldByName(fDMCopiarProduto.cdsProduto_Comb.Fields[x].FieldName).AsVariant := fDMCopiarProduto.cdsProduto_Comb.Fields[x].Value;
        end;
        fDMCadProduto.cdsProduto_Comb.Post;

        //14/08/2017 para copiar as cores do Semi
        if (ckCopiarSemi.Checked) and (StrToFloat(FormatFloat('0.0000',vQtd_Semi_Loc)) > 0) and (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
        begin
          vItem_Mat := 0;
          fDMCadProduto.cdsProduto_Consumo.First;
          while not fDMCadProduto.cdsProduto_Consumo.Eof do
          begin
            vItem_Mat := vItem_Mat + 1;
            fDMCadProduto.cdsProduto_Comb_Mat.Insert;
            fDMCadProduto.cdsProduto_Comb_MatID.AsInteger          := fDMCadProduto.cdsProdutoID.AsInteger;
            fDMCadProduto.cdsProduto_Comb_MatITEM.AsInteger        := vItem;
            //fDMCadProduto.cdsProduto_Comb_MatITEM_MAT.AsInteger    := vItem_Mat;
            fDMCadProduto.cdsProduto_Comb_MatITEM_MAT.AsInteger    := fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger;
            fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
            if fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger = vID_Produto_Loc then
              fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger := fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger
            else
              fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger := 0;
            if fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger > 0 then
              fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger;
            if fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger > 0 then
              fDMCadProduto.cdsProduto_Comb_MatID_SETOR.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger;
            fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
            fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
            fDMCadProduto.cdsProduto_Comb_MatUNIDADE.AsString    := fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString;
            fDMCadProduto.cdsProduto_Comb_MatTINGIMENTO.AsString := fDMCadProduto.cdsProduto_ConsumoTINGIMENTO.AsString;
            fDMCadProduto.cdsProduto_Comb_MatIMP_TALAO.AsString  := fDMCadProduto.cdsProduto_ConsumoIMP_TALAO.AsString;
            fDMCadProduto.cdsProduto_Comb_Mat.Post;
            fDMCadProduto.cdsProduto_Consumo.Next;
          end;
        end
        else
        begin
          vItem_Mat := 0;
          fDMCopiarProduto.cdsProduto_Comb_Mat.First;
          while not fDMCopiarProduto.cdsProduto_Comb_Mat.Eof do
          begin
            vItem_Mat := vItem_Mat + 1;
            fDMCadProduto.cdsProduto_Comb_Mat.Insert;
            fDMCadProduto.cdsProduto_Comb_MatID.AsInteger       := fDMCadProduto.cdsProdutoID.AsInteger;
            fDMCadProduto.cdsProduto_Comb_MatITEM.AsInteger     := vItem;
            //fDMCadProduto.cdsProduto_Comb_MatITEM_MAT.AsInteger := vItem_Mat;
            for x := 0 to (fDMCopiarProduto.cdsProduto_Comb_Mat.FieldCount - 1) do
            begin
              if (fDMCopiarProduto.cdsProduto_Comb_Mat.Fields[x].FieldName <> 'ID') and (fDMCopiarProduto.cdsProduto_Comb_Mat.Fields[x].FieldName <> 'ITEM') then
                //and (fDMCopiarProduto.cdsProduto_Comb_Mat.Fields[x].FieldName <> 'ITEM_MAT') then
                fDMCadProduto.cdsProduto_Comb_Mat.FieldByName(fDMCopiarProduto.cdsProduto_Comb_Mat.Fields[x].FieldName).AsVariant := fDMCopiarProduto.cdsProduto_Comb_Mat.Fields[x].Value;
            end;
            prc_Consumo;
            fDMCadProduto.cdsProduto_Comb_Mat.Post;
            fDMCopiarProduto.cdsProduto_Comb_Mat.Next;
          end;
        end;
      end;
    end;
    fDMCopiarProduto.cdsProduto_Comb.Next;
  end;
  Close;
end;

procedure TfrmCopiar_Comb.prc_Consumo;
begin
  if (fDMCopiarProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger > 0) and
     (fDMCadProduto.cdsProduto_Consumo.Locate('ID_MATERIAL;ID_POSICAO',
       VarArrayOf([fDMCopiarProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger,fDMCopiarProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger]),[locaseinsensitive])) then
  begin
    fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
    fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
  end
  else
  if (fDMCopiarProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger <= 0) and
     (fDMCadProduto.cdsProduto_Consumo.Locate('ID_MATERIAL',fDMCopiarProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger,[loCaseInsensitive])) then
  begin
    fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
    fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
  end;
end;

procedure TfrmCopiar_Comb.prc_Consumo_Semi;
begin

end;

end.
