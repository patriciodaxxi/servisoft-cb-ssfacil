unit UGerar_Rotulos_Color;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, DB,
  DBGrids, ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  UCBase, Math, DateUtils, NxCollection, Menus, Variants, SMDBFind, SqlExpr, UDMConsPedido, UDMCadCBarra_Int;

type
  TfrmGerar_Rotulos_Color = class(TForm)
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
    btnEtiqIndividual: TNxButton;
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
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEtiqIndividualClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;
    fDMCadCBarra_Int: TDMCadCBarra_Int;

    vQtd_Caixa: Integer;
    vQtd_Pares: Integer;
    vImp : Boolean;
    vImp_ER : String;//R=Rotulo   E=Etiqueta Individual

    procedure prc_Monta_Arquivo_Rot;

    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_Imp;
    procedure prc_Limpar_mRotulos;
    procedure prc_Montar_Rotulos(Perc: Real ; Qtd: Integer = 0);
    procedure prc_Inserir_Rotulos(Num_Volume: Integer = 0 ; Qtd_Volume: Integer = 0);
    procedure prc_Gravar_mRotulos_Prod(Qtd: Real ; Resto: Boolean = False);
    procedure prc_Gravar_mRotulos_Tam(Qtd: Integer);

    procedure prc_Grava_mEtiq_Individual(Ind : Integer);

    function fnc_Busca_Embalagem(ID_Produto: Integer): Integer;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmGerar_Rotulos_Color: TfrmGerar_Rotulos_Color;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, USel_Pessoa, UDMUtil,
  VarUtils, URelRotulos, uCalculo_Pedido, UEtiq_Individual;

{$R *.dfm}

procedure TfrmGerar_Rotulos_Color.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vNum_Pedido_Pos := 0;
  vTipo_Pedido    := '';
  Action := Cafree;
end;

procedure TfrmGerar_Rotulos_Color.FormShow(Sender: TObject);
begin
  {vTipo_Pedido := 'P';
  vRotulo      := True;
  fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  vRotulo      := False;

  fDMCadPedido.prc_Abrir_cdsCliente;}

  if cePedInterno.AsInteger > 0 then
  begin
    btnConsultarClick(Sender);
    if not fDMCadPedido.cdsPedido_Consulta.IsEmpty then
      SMDBGrid1.SelectAllClick(SMDBGrid1);
  end;
end;

procedure TfrmGerar_Rotulos_Color.prc_Consultar(ID: Integer);
begin
  fDMCadPedido.cdsPedido_Consulta.Close;
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.ctConsulta + ' WHERE PED.TIPO_REG = ' + QuotedStr('P');
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.CANCELADO = ' + QuotedStr('N');
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
    0: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO <> ' + QuotedStr('S');
    1: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO = ' + QuotedStr('S');
  end;
  fDMCadPedido.cdsPedido_Consulta.Open;
end;

procedure TfrmGerar_Rotulos_Color.btnConsultarClick(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.Close;
  fDMCadPedido.cdsProduto.Open;
  prc_Consultar(0);
end;

procedure TfrmGerar_Rotulos_Color.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPedido);
end;

procedure TfrmGerar_Rotulos_Color.SMDBGrid1GetCellParams(Sender: TObject;
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

procedure TfrmGerar_Rotulos_Color.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPedido.cdsPedido);
end;

procedure TfrmGerar_Rotulos_Color.edtPedClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos_Color.cePedInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos_Color.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos_Color.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmGerar_Rotulos_Color.prc_Posiciona_Imp;
begin
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.cdsPedidoImp.Close;
  fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp.Open;

  fDMCadPedido.cdsPedidoImp_Itens.Close;
  fDMCadPedido.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Itens.Open;
end;

procedure TfrmGerar_Rotulos_Color.prc_Limpar_mRotulos;
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

procedure TfrmGerar_Rotulos_Color.prc_Montar_Rotulos(Perc: Real ; Qtd: Integer = 0);
var
  vQtdAux: Real;
  vQtdAux2: Real;
  vContador: Integer;
  i, i2: Integer;
  vQtdCaixaAux: Integer;
  vQtdAux3: Integer;
  vContadorAux: Integer;
  vResto: Boolean;
  vQtdResto: Integer;
begin
  vContador := Qtd;
  vQtdAux3 := fDMCadPedido.mItensImpQtd.AsInteger div vQtd_Caixa;
  vResto := False;
  vQtdResto := 0;
  if fDMCadPedido.mItensImpQtd.AsInteger mod vQtd_Caixa > 0 then
  begin
    vResto    := True;
    if vQtd_Caixa > fDMCadPedido.mItensImpQtd.AsInteger then
      vQtdResto := fDMCadPedido.mItensImpQtd.AsInteger
    else
      vQtdResto := fDMCadPedido.mItensImpQtd.AsInteger - (vQtd_Caixa * vQtdAux3);
  end;
  for i := 1 to vContador do
  begin
    if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
    begin
      if (vResto) and (i = vContador) then
        Qtd := vQtdResto
      else
      if (vResto) and (fDMCadPedido.mItensImpQtd.AsInteger > vQtd_Caixa) then
        Qtd := vQtd_Caixa
      else
        Qtd := fDMCadPedido.mItensImpQtd.AsInteger div vContador;
      if Qtd <= 0 then
        Qtd := 1;
      prc_Inserir_Rotulos(i,vContador);
      prc_Gravar_mRotulos_Prod(Qtd);
      vQtdCaixaAux := 0;
      vContadorAux := 0;
      fDMCadPedido.mItensImp_Tam.First;
      while not fDMCadPedido.mItensImp_Tam.Eof do
      begin
        //16/06/2015
        vContadorAux := vContadorAux + 1;
        if fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger > 0 then
        begin
          if i = vContador then
            qtd := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger
          else
            Qtd := fDMCadPedido.mItensImp_TamQtd.AsInteger div vContador;
          if Qtd <= 0 then
            Qtd := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger;
          if Qtd > fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger then
            Qtd := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger;
          if (qtd + vQtdCaixaAux) > vQtd_Caixa then
          begin
            Qtd := vQtd_Caixa - vQtdCaixaAux;
            //Qtd := (qtd + vQtdCaixaAux) - vQtd_Caixa;
          end;
          if Qtd > 0 then
          begin
            prc_Gravar_mRotulos_Tam(Qtd);
            fDMCadPedido.mItensImp_Tam.Edit;
            fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger - Qtd;
            fDMCadPedido.mItensImp_Tam.Post;
          end;
          vQtdCaixaAux := vQtdCaixaAux + Qtd;
        end;
        if vQtdCaixaAux >= vQtd_Caixa then
          fDMCadPedido.mItensImp_Tam.Last
        else
        if vContadorAux >= fDMCadPedido.mItensImp_Tam.RecordCount then
        begin
          if vQtdCaixaAux < vQtd_Caixa then
          begin
            if fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger <= 0 then
              fDMCadPedido.mItensImp_Tam.Delete;
            fDMCadPedido.mItensImp_Tam.First;
            vContadorAux := 0;
          end
          else
            fDMCadPedido.mItensImp_Tam.Last;
        end
        else
          fDMCadPedido.mItensImp_Tam.Next;

      end;
      i2 := 0;
      fDMCadPedido.mRotulos_Prod.Edit;
      fDMCadPedido.mRotulos_Tam.First;
      while not fDMCadPedido.mRotulos_Tam.Eof do
      begin
        i2 := i2 + 1;
        fDMCadPedido.mRotulos_Prod.FieldByName('Tam'+IntToStr(i2)).AsString      := fDMCadPedido.mRotulos_TamTamanho.AsString;
        fDMCadPedido.mRotulos_Prod.FieldByName('Qtd_Tam'+IntToStr(i2)).AsInteger := fDMCadPedido.mRotulos_TamQtd.AsInteger;
        fDMCadPedido.mRotulos_Tam.Next;
      end;
      fDMCadPedido.mRotulos_Prod.Post;
    end;
  end;
end;

procedure TfrmGerar_Rotulos_Color.prc_Inserir_Rotulos(Num_Volume: Integer = 0 ; Qtd_Volume: Integer = 0);
var
  vID: Integer;
begin
  fDMCadPedido.mRotulos.Last;
  vID := fDMCadPedido.mRotulosID.AsInteger + 1;
  fDMCadPedido.mRotulos.Insert;
  fDMCadPedido.mRotulosID.AsInteger  := vID;
  fDMCadPedido.mRotulosID_Pedido.AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
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

  if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
  begin
    if fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger <> fDMCadPedido.cdsFilialID.AsInteger then
      fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);
    fDMCadPedido.mRotulosNome_Filial.AsString := fDMCadPedido.cdsFilialNOME.AsString;
    fDMCadPedido.mRotulosNome_Filial_Interno.AsString := fDMCadPedido.cdsFilialNOME_INTERNO.AsString;
    fDMCadPedido.mRotulosEndereco_Filial.AsString     := fDMCadPedido.cdsFilialENDERECO.AsString;
    fDMCadPedido.mRotulosNum_Filial.AsString          := fDMCadPedido.cdsFilialNUM_END.AsString;
    fDMCadPedido.mRotulosBairro_Filial.AsString       := fDMCadPedido.cdsFilialBAIRRO.AsString;
    fDMCadPedido.mRotulosCidade_Filial.AsString       := fDMCadPedido.cdsFilialCIDADE.AsString;
    fDMCadPedido.mRotulosUF_Filial.AsString           := fDMCadPedido.cdsFilialUF.AsString;
    fDMCadPedido.mRotulosPedido_Cliente.AsString      := fDMCadPedido.cdsPedido_ConsultaPEDIDO_CLIENTE.AsString;
    fDMCadPedido.mRotulosNum_Pedido.AsInteger         := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
    fDMCadPedido.mRotulosID_Transportadora.AsInteger  := fDMCadPedido.cdsPedido_ConsultaID_TRANSPORTADORA.AsInteger;
    fDMCadPedido.mRotulosNome_Transportadora.AsString := fDMCadPedido.cdsPedido_ConsultaNOME_TRANSPORTADORA.AsString;
  end;
  fDMCadPedido.mRotulosNum_Volume.AsInteger   := Num_Volume;
  fDMCadPedido.mRotulosTotal_Volume.AsInteger := Qtd_Volume;
  fDMCadPedido.mRotulos.Post;
end;

procedure TfrmGerar_Rotulos_Color.prc_Gravar_mRotulos_Prod(Qtd: Real ; Resto: Boolean = False);
var
  vExiste: Boolean;
begin
  vExiste := False;
  if vExiste then
    fDMCadPedido.mRotulos_Prod.Edit
  else
  begin
    fDMCadPedido.mRotulos_Prod.Insert;
    fDMCadPedido.mRotulos_ProdID.AsInteger             := fDMCadPedido.mRotulosID.AsInteger;
    fDMCadPedido.mRotulos_ProdID_Produto.AsInteger     := fDMCadPedido.mItensImpID_Produto.AsInteger;
    fDMCadPedido.mRotulos_ProdReferencia.AsString      := fDMCadPedido.mItensImpReferencia.AsString;
    fDMCadPedido.mRotulos_ProdNome_Produto.AsString    := fDMCadPedido.mItensImpNome_Produto.AsString;
    fDMCadPedido.mRotulos_ProdID_Combinacao.AsInteger  := fDMCadPedido.mItensImpID_Combinacao.AsInteger;
    fDMCadPedido.mRotulos_ProdNome_Combiancao.AsString := fDMCadPedido.mItensImpNome_Combinacao.AsString;
    fDMCadPedido.mRotulos_ProdCarimbo.AsString         := fDMCadPedido.mItensImpCarimbo.AsString;
    fDMCadPedido.mRotulos_ProdCarimboAux.AsString      := fDMCadPedido.mItensImpCarimboAux.AsString;
    fDMCadPedido.mRotulos_ProdItem_Original.AsInteger  := fDMCadPedido.mItensImpItem_Original.AsInteger;
  end;
  fDMCadPedido.mRotulos_ProdQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulos_ProdQtd.AsFloat + Qtd));
  fDMCadPedido.mRotulos_Prod.Post;
end;

procedure TfrmGerar_Rotulos_Color.btnImprimirClick(Sender: TObject);
var
  vTexto : String;
begin
  vImp := False;
  vImp_ER := 'R';
  prc_Monta_Arquivo_Rot;
  if not vImp then
    exit;

  fDMCadPedido.qFilial_Rel.Close;
  fDMCadPedido.qFilial_Rel.ParamByName('ID').AsInteger      := vFilial;
  fDMCadPedido.qFilial_Rel.ParamByName('TIPO').AsInteger    := 7;
  fDMCadPedido.qFilial_Rel.ParamByName('POSICAO').AsInteger := 1;
  fDMCadPedido.qFilial_Rel.Open;
  if trim(fDMCadPedido.qFilial_RelCAMINHO.AsString) = '' then
  begin
    fRelRotulos              := TfRelRotulos.Create(Self);
    fRelRotulos.fDMCadPedido := fDMCadPedido;
    fRelRotulos.RLReport1.PreviewModal;
    fRelRotulos.RLReport1.Free;
    FreeAndNil(fRelRotulos);
  end
  else
  begin
    vTexto := fDMCadPedido.qFilial_RelCAMINHO.AsString;
    if FileExists(vTexto) then
      fDMCadPedido.frxReport1.Report.LoadFromFile(vTexto)
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vTexto);
      Exit;
    end;
    fDMCadPedido.frxReport1.ShowReport;
  end;
end;

function TfrmGerar_Rotulos_Color.fnc_Busca_Embalagem(
  ID_Produto: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT EMB.qtd_emb'
                       + ' FROM produto_emb EMB '
                       + ' WHERE EMB.ID = ' + IntToStr(ID_Produto)
                       + '   AND EMB.TIPO_EMB = ' + QuotedStr('C');
    sds.Open;
    Result := sds.FieldByName('Qtd_Emb').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmGerar_Rotulos_Color.prc_Gravar_mRotulos_Tam(Qtd: Integer);
begin
  if (fDMCadPedido.mRotulos_Tam.Locate('ID;ID_Produto;Tamanho',VarArrayOf([fDMCadPedido.mRotulosID.AsInteger,fDMCadPedido.mItensImpID_Produto.AsInteger,fDMCadPedido.mItensImp_TamTamanho.AsString]),[locaseinsensitive])) then
    fDMCadPedido.mRotulos_Tam.Edit
  else
  begin
    fDMCadPedido.mRotulos_Tam.Insert;
    fDMCadPedido.mRotulos_TamID.AsInteger         := fDMCadPedido.mRotulosID.AsInteger;
    fDMCadPedido.mRotulos_TamID_Produto.AsInteger := fDMCadPedido.mRotulos_ProdID_Produto.AsInteger;
    fDMCadPedido.mRotulos_TamTamanho.AsString     := fDMCadPedido.mItensImp_TamTamanho.AsString;
  end;
  fDMCadPedido.mRotulos_TamQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulos_TamQtd.AsFloat + Qtd));
  fDMCadPedido.mRotulos_Tam.Post;
end;

procedure TfrmGerar_Rotulos_Color.FormCreate(Sender: TObject);
begin
  vTipo_Pedido := 'P';
  vRotulo      := True;
  fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  vRotulo      := False;

  fDMCadPedido.prc_Abrir_cdsCliente;
end;

procedure TfrmGerar_Rotulos_Color.prc_Monta_Arquivo_Rot;
var
  vTexto: String;
  vPerc: Real;
  vQtdAux, vQtdAux2: Integer;
  vErro: Boolean;
  vMsgErro: String;
begin
  vErro    := False;
  vMsgErro := '';
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
  vFilial := 0;
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue;
  fDMCadPedido.vItem_Rotulo := 0;
  fDMCadPedido.cdsPedido_Consulta.First;
  while not fDMCadPedido.cdsPedido_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if vImp_ER = 'E' then
      begin
        fDMCadPedido.qEtiqImp.Close;
        fDMCadPedido.qEtiqImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
        fDMCadPedido.qEtiqImp.Open;
        if fDMCadPedido.qEtiqImpCONTADOR.AsInteger > 0 then
          if MessageDlg('Etiqueta já impressa, deseja reimprimir?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
            Continue;
      end;
      prc_Posiciona_Imp;
      //fDMCadPedido.prc_Monta_Itens_Imp(True);
      uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido,True);

      vFilial := fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger;

      if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
      begin
        fDMCadPedido.mItensImp.First;
        while not fDMCadPedido.mItensImp.Eof do
        begin
          vQtd_Caixa := fnc_Busca_Embalagem(fDMCadPedido.mItensImpID_Produto.AsInteger);
          if vQtd_Caixa <= 0 then
          begin
            vErro := True;
            vMsgErro := vMsgErro + #13 + ' Produto ' + fDMCadPedido.mItensImpID_Produto.AsString + '  Sem Embalagem no cadastro';
          end
          else
          if not vErro then
          begin
          //aqui
            vQtdAux    := fDMCadPedido.mItensImpQtd.AsInteger div vQtd_Caixa;
            if fDMCadPedido.mItensImpQtd.AsInteger mod vQtd_Caixa > 0 then
              vQtdAux := vQtdAux + 1;
            prc_Montar_Rotulos(0,vQtdAux);
          end;
          fDMCadPedido.mItensImp.Next;
        end
      end;
    end;
    fDMCadPedido.cdsPedido_Consulta.Next;
  end;

  if vErro then
  begin
    MessageDlg('*** Rótulos não gerados, ' + #13 + vMsgErro, mtInformation, [mbOk], 0);
    exit;
  end;

  vImp := True;
  
  if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
  begin
    vQtdAux := 0;
    fDMCadPedido.mRotulos.First;
    while not fDMCadPedido.mRotulos.Eof do
    begin
      vQtdAux := vQtdAux + 1;
      fDMCadPedido.mRotulos.Edit;
      fDMCadPedido.mRotulosNum_Volume.AsInteger   := vQtdAux;
      fDMCadPedido.mRotulosTotal_Volume.AsInteger := fDMCadPedido.mRotulos.RecordCount;
      fDMCadPedido.mRotulos.Post;
      fDMCadPedido.mRotulos.Next;
    end;
  end;
end;

procedure TfrmGerar_Rotulos_Color.prc_Grava_mEtiq_Individual(Ind: Integer);
var
  vCodBarraAux: String;
  vGravar: Boolean;
  sds : TSQLDataSet;
begin
  vCodBarraAux := '';
  fDMConsPedido.controla_Impressao := '';
  fDMConsPedido.cdsCBarra.Close;
  fDMConsPedido.sdsCBarra.ParamByName('P1').AsInteger := fDMCadPedido.mRotulos_ProdID_Produto.AsInteger;
  fDMConsPedido.sdsCBarra.ParamByName('C1').AsInteger := fDMCadPedido.mRotulos_ProdID_Combinacao.AsInteger;
  fDMConsPedido.sdsCBarra.ParamByName('T1').AsString  := fDMCadPedido.mRotulos_Prod.FieldByName('Tam'+IntToStr(Ind)).AsString;
  fDMConsPedido.cdsCBarra.Open;
  if fDMConsPedido.cdsCBarra.IsEmpty then
  begin
    if fDMConsPedido.qParametros_ProdGERAR_COD_BARRA_INT.AsString = 'S' then
      vCodBarraAux := fDMCadCBarra_Int.fnc_Montar_CodBarra(fDMCadPedido.mRotulos_ProdID_Produto.AsInteger,
                                                           fDMCadPedido.mRotulos_ProdID_Combinacao.AsInteger,
                                                           fDMCadPedido.mRotulos_Prod.FieldByName('Tam'+IntToStr(Ind)).AsString,'E');
  end
  else
    vCodBarraAux := fDMConsPedido.cdsCBarraCOD_BARRA.AsString;
  vGravar := True;

  if not vGravar then
    exit;

  fDMConsPedido.mEtiq_Individual.Insert;
  fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger  := fDMCadPedido.mRotulos_ProdID_Produto.AsInteger;
  fDMConsPedido.mEtiq_IndividualReferencia.AsString   := fDMCadPedido.mRotulos_ProdReferencia.AsString;
  fDMConsPedido.mEtiq_IndividualNome_Produto.AsString := fDMCadPedido.mRotulos_ProdNome_Produto.AsString;
  fDMConsPedido.mEtiq_IndividualTamanho.AsString      := fDMCadPedido.mRotulos_Prod.FieldByName('Tam'+IntToStr(Ind)).AsString;
  fDMConsPedido.mEtiq_IndividualTamanho_USA.AsString  := fDMConsPedido.qGradeMarcarTAMANHO_USA.AsString;
  fDMConsPedido.mEtiq_IndividualTamanho_EUR.AsString  := fDMConsPedido.qGradeMarcarTAMANHO_EUR.AsString;
  fDMConsPedido.mEtiq_IndividualItem_Pedido.AsInteger := 0;
  fDMConsPedido.mEtiq_IndividualTotalItens.AsString   := '0';
  fDMConsPedido.mEtiq_IndividualID_Pedido.AsInteger   := 0;
  fDMConsPedido.mEtiq_IndividualNum_Pedido.AsInteger  := 0;
  fDMConsPedido.mEtiq_IndividualCodBarra.AsString     := vCodBarraAux;
  fDMConsPedido.mEtiq_IndividualCaminhoFoto.AsString  := fDMConsPedido.cdsProdutoFOTO.AsString;
  fDMConsPedido.mEtiq_IndividualNomeCombinacao.AsString := fDMCadPedido.mRotulos_ProdNome_Combiancao.AsString;
  fDMConsPedido.mEtiq_IndividualUnidade.AsString        := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  fDMConsPedido.mEtiq_IndividualNumOS.AsString          := '';
  fDMConsPedido.mEtiq_IndividualEncerado.AsString       := '';
  fDMConsPedido.mEtiq_IndividualObs_Etiqueta.AsString   := '';

  if fDMConsPedido.cdsPedido_Item2TALAO_IMPRESSO.AsString = 'S' then
    fDMConsPedido.controla_Impressao := fDMConsPedido.cdsPedido_Item2TALAO_IMPRESSO.AsString;
    
  try
      sds := TSQLDataSet.Create(nil);
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'UPDATE PEDIDO_ITEM SET TALAO_IMPRESSO = ' + QuotedStr('S') +
                           ' WHERE ID = ' + IntToStr(fDMCadPedido.mRotulosID_Pedido.AsInteger);
      sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
  fDMConsPedido.mEtiq_Individual.Post;
end;

procedure TfrmGerar_Rotulos_Color.btnEtiqIndividualClick(Sender: TObject);
var
  i : Integer;
  i2 : Integer;
  ffrmEtiq_Individual: TfrmEtiq_Individual;
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  fDMCadCBarra_Int := TDMCadCBarra_Int.Create(Self);
  fDMConsPedido.controla_Impressao := 'N';
  vImp_ER := 'E';
  vImp := False;
  prc_Monta_Arquivo_Rot;
  if not vImp then
    exit;

  fDMConsPedido.mEtiq_Individual.EmptyDataSet;

  fDMCadPedido.mRotulos.First;
  while not fDMCadPedido.mRotulos.Eof do
  begin
    fDMCadPedido.mRotulos_Prod.First;
    while not fDMCadPedido.mRotulos_Prod.Eof do
    begin
      fDMConsPedido.cdsProduto.Locate('ID',fDMCadPedido.mRotulos_ProdID_Produto.AsInteger,[loCaseInsensitive]);
      for i := 1 to 9 do
      begin
        //fDMCadPedido.mRotulos_ProdQtd_Tam1
        if fDMCadPedido.mRotulos_Prod.FieldByName('Qtd_Tam'+IntToStr(i)).AsInteger > 0 then
        begin
          fDMConsPedido.qGradeMarcar.Close;
          fDMConsPedido.qGradeMarcar.ParamByName('ID').AsInteger     := fDMConsPedido.cdsProdutoID_GRADE.AsInteger;
          fDMConsPedido.qGradeMarcar.ParamByName('TAMANHO').AsString := fDMCadPedido.mRotulos_Prod.FieldByName('Qtd_Tam'+IntToStr(i)).AsString;
          fDMConsPedido.qGradeMarcar.Open;
          for i2 := 1 to fDMCadPedido.mRotulos_Prod.FieldByName('Qtd_Tam'+IntToStr(i)).AsInteger do
            prc_Grava_mEtiq_Individual(i);
        end;
      end;

      fDMCadPedido.mRotulos_Prod.Next;
    end;
    fDMCadPedido.mRotulos.Next;
  end;

  ffrmEtiq_Individual := TfrmEtiq_Individual.Create(self);
  ffrmEtiq_Individual.fDMConsPedido   := fDMConsPedido;
  ffrmEtiq_Individual.RzPageControl1.ActivePage := ffrmEtiq_Individual.TS_Avulsa;
  ffrmEtiq_Individual.ShowModal;
  FreeAndNil(ffrmEtiq_Individual);
  FreeAndNil(fDMCadCBarra_Int);
end;

end.
