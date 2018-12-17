unit UGerar_Rotulos_SGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, DB,
  DBGrids, ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  UCBase, Math, DateUtils, NxCollection, Menus, Variants;

type
  TfrmGerar_Rotulos_SGrade = class(TForm)
    pnlPesquisa: TPanel;
    lblCliente: TLabel;
    lblNumNota: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    lblSerie: TLabel;
    edtCliente: TEdit;
    cePedInterno: TCurrencyEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    edtPedCliente: TEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Panel4: TPanel;
    Shape5: TShape;
    Label30: TLabel;
    Shape6: TShape;
    Label31: TLabel;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtPedClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePedInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadPedido: TDMCadPedido;

    vQtd_Caixa: Integer;

    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_Imp;
    procedure prc_Limpar_mRotulos;
    procedure prc_Montar_Rotulos(Perc: Real);
    procedure prc_Inserir_Rotulos;
    procedure prc_Gravar_mRotulos_Prod(Qtd: Real);
  public
    { Public declarations }

  end;

var
  frmGerar_Rotulos_SGrade: TfrmGerar_Rotulos_SGrade;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, USel_Pessoa, UDMUtil,
  VarUtils, URelRotulos_SGrade, uCalculo_Pedido;

{$R *.dfm}

procedure TfrmGerar_Rotulos_SGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vNum_Pedido_Pos := 0;
  vTipo_Pedido    := '';
  Action := Cafree;
end;

procedure TfrmGerar_Rotulos_SGrade.FormShow(Sender: TObject);
begin
  vTipo_Pedido := 'P';
  vRotulo      := True;
  fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  vRotulo      := False;

  fDMCadPedido.prc_Abrir_cdsCliente;
end;

procedure TfrmGerar_Rotulos_SGrade.prc_Consultar(ID: Integer);
begin
  fDMCadPedido.cdsPedido_Consulta.Close;
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.ctConsulta + ' WHERE PED.TIPO_REG = ' + QuotedStr('P');
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND CANCELADO = ' + QuotedStr('N');
  if ID > 0 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.ID = ' + IntToStr(ID)
  else
  if cePedInterno.AsInteger > 0 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.NUM_PEDIDO = ' + cePedInterno.Text;

  if not(RxDBLookupCombo1.Text = '') then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if Trim(edtPedCliente.Text) <> '' then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(edtPedCliente.Text);
  if DateEdit1.Date > 10 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.DTEMISSAO >= ' +
                                                   QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.DTEMISSAO <= ' +
                                                   QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if Trim(edtCliente.Text) <> '' then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + ')' +
                                                   ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + '))';
  case RadioGroup1.ItemIndex of
    0: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND FATURADO <> ' + QuotedStr('S');
    1: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND FATURADO = ' + QuotedStr('S');
  end;
  fDMCadPedido.cdsPedido_Consulta.Open;
end;

procedure TfrmGerar_Rotulos_SGrade.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmGerar_Rotulos_SGrade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPedido);
end;

procedure TfrmGerar_Rotulos_SGrade.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    Exit;

  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'S') then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'P') then
    Background  := clAqua
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'C') then
  begin
    Background  := clRed;
    AFont.Color := clWhite
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'X') then
    Background  := $0080FFFF;
end;

procedure TfrmGerar_Rotulos_SGrade.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPedido.cdsPedido);
end;

procedure TfrmGerar_Rotulos_SGrade.edtPedClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos_SGrade.cePedInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos_SGrade.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos_SGrade.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmGerar_Rotulos_SGrade.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadPedido.cdsPedido_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerar_Rotulos_SGrade.prc_Posiciona_Imp;
begin
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.cdsPedidoImp.Close;
  fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp.Open;

  fDMCadPedido.cdsPedidoImp_Itens.Close;
  fDMCadPedido.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Itens.Open;
end;

procedure TfrmGerar_Rotulos_SGrade.prc_Limpar_mRotulos;
begin
  fDMCadPedido.mRotulos.First;
  while not fDMCadPedido.mRotulos.Eof do
  begin
    fDMCadPedido.mRotulos_Prod.First;
    while not fDMCadPedido.mRotulos_Prod.Eof do
    begin
      fDMCadPedido.mRotulos_Tam.First;
      while not fDMCadPedido.mRotulos_Tam.Eof do
        fDMCadPedido.mRotulos_Tam.Delete;
      fDMCadPedido.mRotulos_Prod.Delete;
    end;
    fDMCadPedido.mRotulos.Delete;
  end;
end;

procedure TfrmGerar_Rotulos_SGrade.prc_Montar_Rotulos(Perc: Real);
var
  vQtdAux: Real;
  vQtdAux2: Real;
begin
  vQtdAux := fDMCadPedido.mItensImpQtd.AsInteger;
  if fDMCadPedido.mItensImpQtd.AsInteger > vQtd_Caixa then
    vQtdAux := vQtd_Caixa;

  if fDMCadPedido.mRotulosQtd.AsInteger >= vQtd_Caixa then
    prc_Inserir_Rotulos
  else
    vQtdAux := vQtd_Caixa - fDMCadPedido.mRotulosQtd.AsInteger;
  if vQtdAux > fDMCadPedido.mItensImpQtd.AsInteger then
    vQtdAux := fDMCadPedido.mItensImpQtd.AsInteger;
  if vQtdAux > vQtd_Caixa then
    vQtdAux := vQtd_Caixa;
  if StrToFloat(FormatFloat('0',vQtdAux)) > 0 then
    prc_Gravar_mRotulos_Prod(StrToFloat(FormatFloat('0',vQtdAux)));
end;

procedure TfrmGerar_Rotulos_SGrade.prc_Inserir_Rotulos;
var
  vID: Integer;
begin
  fDMCadPedido.mRotulos.Last;
  vID := fDMCadPedido.mRotulosID.AsInteger + 1;
  fDMCadPedido.mRotulos.Insert;
  fDMCadPedido.mRotulosID.AsInteger  := vID;
  fDMCadPedido.mRotulosQtd.AsInteger := 0;
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedido_ConsultaID_CLIENTE.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.qPessoa.Close;
  fDMCadPedido.qPessoa.ParamByName('CODIGO').AsInteger := fDMCadPedido.cdsPedido_ConsultaID_CLIENTE.AsInteger;
  fDMCadPedido.qPessoa.Open;

  fDMCadPedido.mRotulosNome_Cliente.AsString := fDMCadPedido.cdsPedido_ConsultaNOME_CLIENTE.AsString;
  if trim(fDMCadPedido.qPessoaENDERECO_ENT.AsString) <> '' then
  begin
    fDMCadPedido.mRotulosEndereco.AsString        := fDMCadPedido.qPessoaENDERECO_ENT.AsString;
    fDMCadPedido.mRotulosNum_Endereco.AsString    := fDMCadPedido.qPessoaNUM_END_ENT.AsString;
    fDMCadPedido.mRotulosBairro.AsString          := fDMCadPedido.qPessoaBAIRRO_ENT.AsString;
    fDMCadPedido.mRotulosCep.AsString             := fDMCadPedido.qPessoaCEP_ENT.AsString;
    fDMCadPedido.mRotulosComplemento_End.AsString := fDMCadPedido.qPessoaCOMPLEMENTO_END_ENT.AsString;
    fDMCadPedido.mRotulosCidade.AsString          := fDMCadPedido.qPessoaCIDADE_ENT.AsString;
    fDMCadPedido.mRotulosUF.AsString              := fDMCadPedido.qPessoaUF_ENT.AsString;
  end
  else
  begin
    fDMCadPedido.mRotulosEndereco.AsString        := fDMCadPedido.qPessoaENDERECO.AsString;
    fDMCadPedido.mRotulosNum_Endereco.AsString    := fDMCadPedido.qPessoaNUM_END.AsString;
    fDMCadPedido.mRotulosBairro.AsString          := fDMCadPedido.qPessoaBAIRRO.AsString;
    fDMCadPedido.mRotulosCep.AsString             := fDMCadPedido.qPessoaCEP.AsString;
    fDMCadPedido.mRotulosComplemento_End.AsString := fDMCadPedido.qPessoaCOMPLEMENTO_END.AsString;
    fDMCadPedido.mRotulosCidade.AsString          := fDMCadPedido.qPessoaCIDADE.AsString;
    fDMCadPedido.mRotulosUF.AsString              := fDMCadPedido.qPessoaUF.AsString;
  end;
  fDMCadPedido.mRotulos.Post;
end;

procedure TfrmGerar_Rotulos_SGrade.prc_Gravar_mRotulos_Prod(Qtd: Real);
begin
  if (fDMCadPedido.mRotulos_Prod.Locate('ID;ID_Produto',VarArrayOf([fDMCadPedido.mRotulosID.AsInteger,fDMCadPedido.mItensImpID_Produto.AsInteger]),[locaseinsensitive])) then
    fDMCadPedido.mRotulos_Prod.Edit
  else
  begin
    fDMCadPedido.mRotulos_Prod.Insert;
    fDMCadPedido.mRotulos_ProdID.AsInteger          := fDMCadPedido.mRotulosID.AsInteger;
    fDMCadPedido.mRotulos_ProdID_Produto.AsInteger  := fDMCadPedido.mItensImpID_Produto.AsInteger;
    fDMCadPedido.mRotulos_ProdReferencia.AsString   := fDMCadPedido.mItensImpReferencia.AsString;
    fDMCadPedido.mRotulos_ProdNome_Produto.AsString := fDMCadPedido.mItensImpNome_Produto.AsString;
  end;
  fDMCadPedido.mRotulos_ProdQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulos_ProdQtd.AsFloat + Qtd));
  fDMCadPedido.mRotulos_Prod.Post;

  if not(fDMCadPedido.mRotulos.State in [dsEdit,dsInsert]) then
    fDMCadPedido.mRotulos.Edit;
  fDMCadPedido.mRotulosQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulosQtd.AsFloat + Qtd));

  //Descontar quantidade
  fDMCadPedido.mItensImp.Edit;
  fDMCadPedido.mItensImpQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mItensImpQtd.AsFloat - Qtd));
  fDMCadPedido.mItensImp.Post;
  //*******************************
end;

procedure TfrmGerar_Rotulos_SGrade.btnImprimirClick(Sender: TObject);
var
  vTexto: String;
  vPerc: Real;
  vQtdAux, vQtdAux2: Integer;
  vQtd_Pedido: Integer;
begin
  vTexto := InputBox('Corrugado','Informe a quantidade por caixa: ', '16');
  vTexto := Monta_Numero(vTexto,0);
  if trim(vTexto) = '' then
  begin
    MessageDlg('*** Não foi informada a quantidade por caixa', mtInformation, [mbOk], 0);
    Exit;
  end;
  vQtd_Caixa := StrToInt(vTexto);
  if vQtd_Caixa <= 0 then
    exit;
  fDMCadPedido.mItensImp.First;
  while not fDMCadPedido.mItensImp.Eof do
  begin
    fDMCadPedido.mItensImp_Tam.First;
    while not fDMCadPedido.mItensImp_Tam.Eof do
      fDMCadPedido.mItensImp_Tam.Delete;
    fDMCadPedido.mItensImp_Mat.First;
    while not fDMCadPedido.mItensImp_Mat.Eof do
      fDMCadPedido.mItensImp_Mat.Delete;
    fDMCadPedido.mItensImp.Delete;
  end;
  fDMCadPedido.vItem_Rotulo := 0;
  fDMCadPedido.cdsPedido_Consulta.First;
  while not fDMCadPedido.cdsPedido_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      prc_Posiciona_Imp;
      //fDMCadPedido.prc_Monta_Itens_Imp(True);
      uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido,True);

    end;
    fDMCadPedido.cdsPedido_Consulta.Next;
  end;

  fDMCadPedido.mItensImp.IndexFieldNames := 'ID_Produto;Item';
  prc_Limpar_mRotulos;
  fDMCadPedido.mItensImp.First;
  while not fDMCadPedido.mItensImp.Eof do
  begin
    vQtdAux := 0;
    prc_Inserir_Rotulos;
    //if (fDMCadPedido.mRotulos.IsEmpty) or (fDMCadPedido.mRotulosQtd.AsInteger >= vQtd_Caixa) then
    //  prc_Inserir_Rotulos
    //else
    while fDMCadPedido.mItensImpQtd.AsInteger > 0 do
    begin
      prc_Montar_Rotulos(0);
    end;
    fDMCadPedido.mItensImp.Next;
  end;
  fRelRotulos_SGrade              := TfRelRotulos_SGrade.Create(Self);
  fRelRotulos_SGrade.fDMCadPedido := fDMCadPedido;
  fRelRotulos_SGrade.RLReport1.PreviewModal;
  fRelRotulos_SGrade.RLReport1.Free;
  FreeAndNil(fRelRotulos_SGrade);
end;

end.
