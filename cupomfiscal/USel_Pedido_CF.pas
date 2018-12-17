//tag 11  é a copia do pedido sem cobrança (Fututo)
unit USel_Pedido_CF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCupomFiscal, Buttons, Grids, DBGrids, SMDBGrid, DB, UCupomFiscal, NxCollection, SqlExpr,
  Mask, ToolEdit;

type
  TfrmSel_Pedido_CF = class(TForm)    
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    SMDBGrid6: TSMDBGrid;
    Shape3: TShape;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_Pedido(ID: Integer = 0; Item_Pedido: Integer = 0);
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens;
    procedure prc_MostraNota;

    procedure prc_scroll(DataSet: TDataSet);

    //function fnc_Desc_Estoque: Real;
    function fnc_busca_Produto_Tipo(ID_Tipo: Integer): String;
    function fnc_busca_Matriz_Preco(ID_Matriz: Integer): String;

  public
    { Public declarations }
    vCodCliente: Integer;
    vTipo_RegPed: String;

    fDMCupomFiscal: TDMCupomFiscal;
    ffCupomFiscal2: TfCupomFiscal;
  end;

var
  frmSel_Pedido_CF: TfrmSel_Pedido_CF;

implementation

uses rsDBUtils, uUtilPadrao, StrUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmSel_Pedido_CF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Pedido_CF.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCupomFiscal);
  SMDBGrid1.DataSource := fDMCupomFiscal.dsPedido;
  SMDBGrid6.DataSource := fDMCupomFiscal.dsPedido_Tipo;
  DateEdit1.Date       := Date - 7;
  prc_MostraNota;
  if (fDMCupomFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
    fDMCupomFiscal.cdsPedido.AFTERSCROLL := prc_scroll;
  SMDBGrid6.Visible := (fDMCupomFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S');

  if fDMCupomFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString <> 'S' then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'QTD_FUT') then
        SMDBGrid1.Columns[i].Visible := False;
      if (SMDBGrid1.Columns[i].FieldName = 'NOME_GRUPO') then
        SMDBGrid1.Columns[i].Visible := (fDMCupomFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
    end;
    Shape3.Visible := (fDMCupomFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
    Label4.Visible := (fDMCupomFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
  end;
end;

procedure TfrmSel_Pedido_CF.prc_Consultar_Pedido(ID: Integer = 0; Item_Pedido: Integer = 0);
begin
  SMDBGrid1.DisableScroll;
  fDMCupomFiscal.cdsPedido.Close;
  fDMCupomFiscal.sdsPedido.CommandText := fDMCupomFiscal.ctPedido;
  if ID > 0 then
  begin
    fDMCupomFiscal.sdsPedido.CommandText := fDMCupomFiscal.sdsPedido.CommandText + ' AND PE.ID = ' + IntToStr(ID) +
                                            ' AND PI.ITEM = ' + IntToStr(Item_Pedido);
  end
  else
  begin
    fDMCupomFiscal.sdsPedido.CommandText := fDMCupomFiscal.sdsPedido.CommandText + ' AND PE.TIPO_REG = ' + QuotedStr('P');
  end;
  fDMCupomFiscal.cdsPedido.Open;
  fDMCupomFiscal.cdsPedido.First;
  while not fDMCupomFiscal.cdsPedido.Eof do
  begin
    fDMCupomFiscal.cdsPedido.Edit;
    if fDMCupomFiscal.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCupomFiscal.cdsPedidoclQtd_Restante.AsFloat))
    else
      fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCupomFiscal.cdsPedidoQTD_RESTANTE.AsFloat));
    fDMCupomFiscal.cdsPedido.Post;
    fDMCupomFiscal.cdsPedido.Next;
  end;
  SMDBGrid1.EnableScroll;
  if ID > 0 then
    SMDBGrid1.SelectAllClick(SMDBGrid1);
end;

procedure TfrmSel_Pedido_CF.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd_Faturado: Real;
begin
  if (SMDBGrid1.SelectedRows.CurrentRowSelected) and
     (StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_FATURADO.AsFloat)) <= 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  begin
    begin
      vQtd_Faturado := fDMCupomFiscal.cdsPedidoQTD_FATURADO.AsFloat;
      if (Tag = 11) then
        vQtd_Faturado := fDMCupomFiscal.cdsPedidoQTD_FUT.AsFloat;
      if (StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0) and (Tag = 11) then
        Background  := clSilver
      else
      if (StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0) then
      begin
        Background  := clGreen;
        AFont.Color := clWhite;
      end;

      if (Field = fDMCupomFiscal.cdsPedidoQTD_AFATURAR) then
      begin
        Background  := clYellow;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end
      else
      if (Field = fDMCupomFiscal.cdsPedidoclQtd_Restante) then
      begin
        Background  := clMoneyGreen;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end;
    end;
  end;
end;

procedure TfrmSel_Pedido_CF.prc_Gravar_NotaItens;
var
  vItemAux: Integer;
  vNum_Controle_Tam: Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto: String;
begin
  //28/01/2017
  fDMCupomFiscal.qPedido_Cupom.Close;
  fDMCupomFiscal.qPedido_Cupom.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsPedidoID.AsInteger;
  fDMCupomFiscal.qPedido_Cupom.Open;
  if not(fDMCupomFiscal.qPedido_Cupom.IsEmpty) and (trim(fDMCupomFiscal.qPedido_CupomENDERECO.AsString) <> '') then
  begin
    if (fDMCupomFiscal.cdsCupomFiscal_Cli.IsEmpty) then
    begin
      fDMCupomFiscal.cdsCupomFiscal_Cli.Insert;
      fDMCupomFiscal.cdsCupomFiscal_CliENDERECO.AsString := fDMCupomFiscal.qPedido_CupomENDERECO.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliNUM_END.AsString  := fDMCupomFiscal.qPedido_CupomNUM_END.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliBAIRRO.AsString   := fDMCupomFiscal.qPedido_CupomBAIRRO.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliID_CIDADE.AsInteger := fDMCupomFiscal.qPedido_CupomID_CIDADE.AsInteger;
      fDMCupomFiscal.cdsCupomFiscal_CliDDD.AsString        := fDMCupomFiscal.qPedido_CupomDDD.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliFONE.AsString       := fDMCupomFiscal.qPedido_CupomFONE.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliCEP.AsString        := fDMCupomFiscal.qPedido_CupomCEP.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliEMAIL.AsString      := fDMCupomFiscal.qPedido_CupomEMAIL.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliCOMPLEMENTO.AsString := fDMCupomFiscal.qPedido_CupomCOMPLEMENTO.AsString;
      fDMCupomFiscal.cdsCupomFiscalTIPO_ATENDIMENTO.AsInteger := fDMCupomFiscal.cdsPedidoTIPO_ATENDIMENTO.AsInteger;
      fDMCupomFiscal.cdsCupomFiscal_CliPLACA.AsString         := fDMCupomFiscal.qPedido_CupomPLACA.AsString;
      fDMCupomFiscal.cdsCupomFiscal_CliUF_TRANSP.AsString     := fDMCupomFiscal.qPedido_CupomUFPLACA.AsString;

      fDMCupomFiscal.cdsCupomFiscalID_TRANSPORTADORA.AsInteger := fDMCupomFiscal.cdsPedidoID_TRANSPORTADORA.AsInteger;

      fDMCupomFiscal.cdsCupomFiscal_Cli.Post;
    end;
  end;
  //*****************

  if fDMCupomFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    fDMCupomFiscal.cdsPedido_Tipo.Close;
    fDMCupomFiscal.sdsPedido_Tipo.ParamByName('ID').AsInteger   := fDMCupomFiscal.cdsPedidoID.AsInteger;
    fDMCupomFiscal.sdsPedido_Tipo.ParamByName('ITEM').AsInteger := fDMCupomFiscal.cdsPedidoITEM.AsInteger;
    fDMCupomFiscal.cdsPedido_Tipo.Open;
  end;
  //13/01/2017
  if fDMCupomFiscal.cdsPedidoID_TIPO_COBRANCA.AsInteger > 0 then
    fDMCupomFiscal.cdsCupomFiscalID_TIPOCOBRANCA.AsInteger := fDMCupomFiscal.cdsPedidoID_TIPO_COBRANCA.AsInteger;
  if fDMCupomFiscal.cdsPedidoID_VENDEDOR.AsInteger > 0 then
    fDMCupomFiscal.cdsCupomFiscalID_VENDEDOR.AsInteger := fDMCupomFiscal.cdsPedidoID_VENDEDOR.AsInteger;
  fDMCupomFiscal.cdsCupomFiscalPERC_VENDEDOR.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoPERC_COMISSAO_PED.AsFloat));

  fDMCupomFiscal.vNome_Consumidor := '';
  if (fDMCupomFiscal.cdsPedidoID_CLIENTE.AsInteger > 0) then
  begin
    fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger := fDMCupomFiscal.cdsPedidoID_CLIENTE.AsInteger;
    fDMCupomFiscal.cdsCupomFiscalCLIENTE_NOME.AsString := fDMCupomFiscal.cdsPedidoNOMECLIENTE.AsString;
    fDMCupomFiscal.vClienteID := fDMCupomFiscal.cdsPedidoID_CLIENTE.AsInteger;
    if fDMCupomFiscal.cdsPedidoID_CLIENTE.AsInteger = fDMCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger then
      fDMCupomFiscal.vNome_Consumidor := fDMCupomFiscal.cdsPedidoNOME_CONSUMIDOR.AsString;
  end
  else
  if trim(fDMCupomFiscal.cdsPedidoNOME_CONSUMIDOR.AsString) <> '' then
  begin
    fDMCupomFiscal.cdsCupomFiscalCLIENTE_NOME.AsString := fDMCupomFiscal.cdsPedidoNOME_CONSUMIDOR.AsString;
    fDMCupomFiscal.vNome_Consumidor                    := fDMCupomFiscal.cdsPedidoNOME_CONSUMIDOR.AsString;
  end;
  //**************************

  ffCupomFiscal2.CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
  ffCupomFiscal2.Edit1Enter(ffCupomFiscal2);
  ffCupomFiscal2.Edit1.Text          := fDMCupomFiscal.cdsPedidoID_PRODUTO.AsString;
  ffCupomFiscal2.Edit1Exit(ffCupomFiscal2);
  ffCupomFiscal2.CurrencyEdit2.Value := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoVLR_UNITARIO.AsFloat));
  ffCupomFiscal2.CurrencyEdit1Exit(ffCupomFiscal2);
  ffCupomFiscal2.CurrencyEdit6.Value := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoPERC_DESCONTO.AsFloat));
  ffCupomFiscal2.CurrencyEdit4.Value := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoVLR_DESCONTO.AsFloat + fDMCupomFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat));
  ffCupomFiscal2.CurrencyEdit4Exit(ffCupomFiscal2);

  if (fDMCupomFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString <> 'S') and (fDMCupomFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'T') and (fDMCupomFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'R') then
  begin
    if (fDMCupomFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat)) > 0) and (trim(fDMCupomFiscal.cdsParametrosUNIDADE_PECA.AsString) <> '') then
      ffCupomFiscal2.vUnidade := fDMCupomFiscal.cdsParametrosUNIDADE_PECA.AsString
    else
      ffCupomFiscal2.vUnidade := fDMCupomFiscal.cdsPedidoUNIDADE.AsString;
  end;
  ffCupomFiscal2.vPerc_IPI := fDMCupomFiscal.cdsPedidoPERC_IPI.AsFloat;

  vTexto := '';
  if fDMCupomFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S' then
  begin
    vTexto := '';
    if fDMCupomFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'C' then
      vTexto := fDMCupomFiscal.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' (X)mm ' + fDMCupomFiscal.cdsPedido_TipoCOMPRIMENTO.AsString
              + ' (Y)mm ' + fDMCupomFiscal.cdsPedido_TipoLARGURA.AsString + ' (*)mm ' + fDMCupomFiscal.cdsPedido_TipoALTURA.AsString
    else
    if fDMCupomFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'R' then
      vTexto := fDMCupomFiscal.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' ø ' + fDMCupomFiscal.cdsPedido_TipoDIAMETRO.AsString
              + ' comp. ' + fDMCupomFiscal.cdsPedido_TipoCOMPRIMENTO.AsString
    else
    if fDMCupomFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'T' then
      vTexto := fDMCupomFiscal.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' ø ext ' + fDMCupomFiscal.cdsPedido_TipoDIAMETRO_EXT.AsString
              + ' ø int ' + fDMCupomFiscal.cdsPedido_TipoDIAMETRO_INT.AsString
              + ' parede ' + fDMCupomFiscal.cdsPedido_TipoPAREDE.AsString
              + ' comp. ' + fDMCupomFiscal.cdsPedido_TipoCOMPRIMENTO.AsString;
    if StrToFloat(FormatFloat('00',fDMCupomFiscal.cdsPedidoQTD_PECA.AsFloat)) > 0 then
      vTexto := vTexto + ' - ' + FormatFloat('00',fDMCupomFiscal.cdsPedidoQTD_PECA.AsFloat) + ' PCS';
    //fDMCupomFiscal. cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCupomFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + ' ' + vTexto;
    //if StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat)) > 0 then
    // fDMCupomFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat * fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
  end
  else
  if (fDMCupomFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') and ((fDMCupomFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'T') and
     (fDMCupomFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'R')) then
  begin
    vTexto := '';
    //Porta
    if fDMCupomFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'P' then
    begin
      if fDMCupomFiscal.cdsPedido_TipoID_PERFIL.AsInteger > 0 then
        vTexto := '(Perfil:' + fnc_busca_Produto_Tipo(fDMCupomFiscal.cdsPedido_TipoID_PERFIL.AsInteger) + ') ';
      if fDMCupomFiscal.cdsPedido_TipoID_VIDRO.AsInteger > 0 then
      begin
        vTexto := vTexto + '(Vidro:' +fnc_busca_Produto_Tipo(fDMCupomFiscal.cdsPedido_TipoID_VIDRO.AsInteger) + ') ';
      end;
      if fDMCupomFiscal.cdsPedido_TipoID_FURACAO.AsInteger > 0 then
      begin
        vTexto := vTexto + '(Furação:';
        vTexto := vTexto + fnc_busca_Matriz_Preco(fDMCupomFiscal.cdsPedido_TipoID_FURACAO.AsInteger) + ') ';
      end;
    end
    else
    //Vidro
    if fDMCupomFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'V' then
    begin
      if fDMCupomFiscal.cdsPedido_TipoID_ACABAMENTO.AsInteger > 0 then
        vTexto := vTexto + '(' + fnc_busca_Matriz_Preco(fDMCupomFiscal.cdsPedido_TipoID_ACABAMENTO.AsInteger) + ') ';
      if fDMCupomFiscal.cdsPedido_TipoID_REDONDO_MOD.AsInteger > 0 then
        vTexto := vTexto + '(' + fnc_busca_Matriz_Preco(fDMCupomFiscal.cdsPedido_TipoID_REDONDO_MOD.AsInteger) + ') ';
      if fDMCupomFiscal.cdsPedido_TipoID_CMOEDA.AsInteger > 0 then
        vTexto := vTexto + '(c.moeda:' + fnc_busca_Matriz_Preco(fDMCupomFiscal.cdsPedido_TipoID_CMOEDA.AsInteger) + ') ';
      if fDMCupomFiscal.cdsPedido_TipoID_FUROS.AsInteger > 0 then
        vTexto := vTexto + '(Furos:' + fnc_busca_Matriz_Preco(fDMCupomFiscal.cdsPedido_TipoID_FUROS.AsInteger)
                + ' Q.' + fDMCupomFiscal.cdsPedido_TipoQTD_FUROS.AsString + ') ';
    end;
    vTexto := vTexto + '(Alt.mm:' + FormatFloat('0.####',fDMCupomFiscal.cdsPedido_TipoALTURA.AsFloat)
            + ' Larg.mm: ' + FormatFloat('0.####',fDMCupomFiscal.cdsPedido_TipoLARGURA.AsFloat) + ')';
    vTexto := trim(vTexto);
  end;
  ffCupomFiscal2.vNome_Complementar := vTexto;
  
  ffCupomFiscal2.vID_Pedido    := fDMCupomFiscal.cdsPedidoID.AsInteger;
  ffCupomFiscal2.vItem_Pedido  := fDMCupomFiscal.cdsPedidoITEM.AsInteger;
  ffCupomFiscal2.vItem_Cliente := fDMCupomFiscal.cdsPedidoITEM_CLIENTE.AsInteger;
  ffCupomFiscal2.vNumero_OC    := fDMCupomFiscal.cdsPedidoPEDIDO_CLIENTE.AsString;
  ffCupomFiscal2.vNumero_OS    := fDMCupomFiscal.cdsPedidoNUMOS.AsString;
  ffCupomFiscal2.vNum_Pedido   := fDMCupomFiscal.cdsPedidoNUM_PEDIDO.AsInteger;

  ffCupomFiscal2.vPedidoSelecionado := True;
  ffCupomFiscal2.btConfirmarItClick(ffCupomFiscal2);
  if fDMCupomFiscal.cdsCupom_Itens.State in [dsEdit,dsInsert] then
    fDMCupomFiscal.cdsCupom_Itens.Post;
  ffCupomFiscal2.vPedidoSelecionado := False;

  //28/11/2014  Pedido futuro
  //if fDMCupomFiscal.cdsCFOPBAIXAR_FUT.AsString = 'S' then
  {if (fDMCupomFiscal.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') then
  begin
    fDMCupomFiscal.qDupPedido.Close;
    fDMCupomFiscal.qDupPedido.ParamByName('ID_PEDIDO').AsInteger := fDMCupomFiscal.cdsPedidoID.AsInteger;
    fDMCupomFiscal.qDupPedido.Open;
    if not fDMCupomFiscal.qDupPedido.IsEmpty then
      fDMCupomFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'N';
    fDMCupomFiscal.qDupPedido.Close;
  end;
  if Tag = 11 then
  begin
    fDMCupomFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger   := fDMCupomFiscal.cdsPedidoID.AsInteger;
    fDMCupomFiscal.cdsNotaFiscal_ItensITEM_PEDIDO_FUT.AsInteger := fDMCupomFiscal.cdsPedidoITEM.AsInteger;
    fDMCupomFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'N';
  end
  else
  begin
    fDMCupomFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger     := fDMCupomFiscal.cdsPedidoITEM.AsInteger;
    fDMCupomFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger       := fDMCupomFiscal.cdsPedidoID.AsInteger;
    //16/02/2015
    if fDMCupomFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S' then
    begin
      fDMCupomFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',fnc_Desc_Estoque));
      if fDMCupomFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat > fDMCupomFiscal.cdsNotaFiscal_ItensQTD.AsFloat then
        fDMCupomFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat := fDMCupomFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
      if StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat)) >= StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) then
        fDMCupomFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N'
      else
        fDMCupomFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'S';
    end
    //else
    //09/03/2015
    //if fDMCupomFiscal.cdsPedidoID_MOVESTOQUE.AsInteger > 0 then
      //fDMCupomFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';
  end;}

  fDMCupomFiscal.cdsPedido.Edit;
  if Tag = 11 then
    fDMCupomFiscal.cdsPedidoQTD_FUT.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_FUT.AsFloat + fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat))
  else
  begin
    fDMCupomFiscal.cdsPedidoQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_FATURADO.AsFloat + fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
    fDMCupomFiscal.cdsPedidoQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_RESTANTE.AsFloat - fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
    fDMCupomFiscal.cdsPedidoQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_LIBERADA.AsFloat - fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
  end;
  fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat := 0;
  fDMCupomFiscal.cdsPedido.Post;
end;

procedure TfrmSel_Pedido_CF.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_Pedido;
end;

procedure TfrmSel_Pedido_CF.btnImportarClick(Sender: TObject);
begin
  prc_Gravar_Nota;
end;

procedure TfrmSel_Pedido_CF.prc_MostraNota;
var
  i: Integer;
begin
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if ((SMDBGrid1.Columns[i].FieldName = 'NUM_DOC') or (SMDBGrid1.Columns[i].FieldName = 'NUM_TALAO')) and
       (fDMCupomFiscal.cdsParametrosEMPRESA_NAVALHA.AsString <> 'S') then
      SMDBGrid1.Columns[i].Visible := False
    else
    if (SMDBGrid1.Columns[i].FieldName = 'clQtd_NaoLiberada') and
       (fDMCupomFiscal.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'N') then
      SMDBGrid1.Columns[i].Visible := False;
  end;
end;

procedure TfrmSel_Pedido_CF.prc_Gravar_Nota;
var
  vMsgErro: String;
begin
  if (fDMCupomFiscal.cdsPedido.IsEmpty) then
    exit;

  vMsgErro := '';
  try
    fDMCupomFiscal.cdsPedido.First;
    while not fDMCupomFiscal.cdsPedido.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        if StrToFloat(FormatFloat('0.00000',fDMCupomFiscal.cdsPedidoVLR_UNITARIO.AsFloat)) <= 0 then
          vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCupomFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCupomFiscal.cdsPedidoITEM.AsString + ', não possui valor'
        else
        if (fDMCupomFiscal.cdsParametrosPERMITE_QTDMAIOR_PEDIDO.AsString <> 'S') and
           (StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) >
           StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoclQtd_Restante.AsFloat))) then
          vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a pendente, Ped: ' +
                      fDMCupomFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCupomFiscal.cdsPedidoITEM.AsString
        else
        if StrToFloat(FormatFloat('0.000000',fDMCupomFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) > StrToFloat(FormatFloat('0.000000',0)) then
        begin
          if not fDMCupomFiscal.cdsCupom_Itens.Locate('Num_Pedido;Item_Pedido',VarArrayOf([fDMCupomFiscal.cdsPedidoNUM_PEDIDO.AsInteger,fDMCupomFiscal.cdsPedidoITEM.AsInteger]),[locaseinsensitive]) then
            prc_Gravar_NotaItens;
        end
        else
          vMsgErro := vMsgErro + #13 + '*** Quantidade não informada, Ped: ' + fDMCupomFiscal.cdsPedidoNUM_PEDIDO.AsString +
                      ' Item: ' + fDMCupomFiscal.cdsPedidoITEM.AsString;
      end;                                                              
      fDMCupomFiscal.cdsPedido.Next;
    end;
    //04/02/2017
    if fDMCupomFiscal.cdsPedidoID_CONDPGTO.AsInteger > 0 then
      fDMCupomFiscal.cdsCupomFiscalID_CONDPGTO.AsInteger := fdmCupomFiscal.cdsPedidoID_CONDPGTO.AsInteger;
    //******************
  except
    on E: exception do
    begin
      if fDMCupomFiscal.cdsCupom_Itens.State in [dsEdit,dsInsert] then
        fDMCupomFiscal.cdsCupom_Itens.Cancel;
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0)
  else
  if trim(vMsgErro) = '' then
    Close;
end;

procedure TfrmSel_Pedido_CF.prc_scroll(DataSet: TDataSet);
begin
  if (fDMCupomFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') or (fDMCupomFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') then
  begin
    fDMCupomFiscal.cdsPedido_Tipo.Close;
    fDMCupomFiscal.sdsPedido_Tipo.ParamByName('ID').AsInteger   := fDMCupomFiscal.cdsPedidoID.AsInteger;
    fDMCupomFiscal.sdsPedido_Tipo.ParamByName('ITEM').AsInteger := fDMCupomFiscal.cdsPedidoITEM.AsInteger;
    fDMCupomFiscal.cdsPedido_Tipo.Open;
  end;
end;

{function TfrmSel_Pedido_CF.fnc_Desc_Estoque: Real;
var
  vQtdAux, vQtdAux2: Real;
  vComandoAux, vComandoAux2: String;
  i: Integer;
  vTamAux: String;
begin
  fDMCupomFiscal.cdsEstoque_Desc.Close;
  i := PosEx('GROUP',fDMCupomFiscal.ctqEstoque_Desc,0);
  vComandoAux  := copy(fDMCupomFiscal.ctqEstoque_Desc,i,Length(fDMCupomFiscal.ctqEstoque_Desc) - i + 1);
  vComandoAux2 := copy(fDMCupomFiscal.ctqEstoque_Desc,1,i-1);
  if fDMCupomFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
    vComandoAux2 := vComandoAux2 + ' AND I.ID_COR = ' + IntToStr(fDMCupomFiscal.cdsNotaFiscal_ItensID_COR.AsInteger)
  else
    vComandoAux2 := vComandoAux2 + ' AND I.ID_COR IS NULL ';
  if trim(vTamAux) = '' then
    vTamAux := ''
  else
    vTamAux := fDMCupomFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;

  fDMCupomFiscal.sdsEstoque_Desc.CommandText := vComandoAux2 + vComandoAux;
  fDMCupomFiscal.sdsEstoque_Desc.ParamByName('FILIAL').AsInteger       := fDMCupomFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMCupomFiscal.sdsEstoque_Desc.ParamByName('ID_PEDIDO').AsInteger   := fDMCupomFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
  fDMCupomFiscal.sdsEstoque_Desc.ParamByName('ITEM_PEDIDO').AsInteger := fDMCupomFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
  fDMCupomFiscal.sdsEstoque_Desc.ParamByName('TAMANHO').AsString      := vTamAux;
  fDMCupomFiscal.sdsEstoque_Desc.ParamByName('ID_NOTA').AsInteger     := fDMCupomFiscal.cdsNotaFiscal_ItensID.AsInteger;
  fDMCupomFiscal.cdsEstoque_Desc.Open;
  vQtdAux := 0;
  fDMCupomFiscal.cdsEstoque_Desc.First;
  while not fDMCupomFiscal.cdsEstoque_Desc.Eof do
  begin
    if fDMCupomFiscal.cdsEstoque_DescTIPO_NOTA.AsString = 'S' then
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + fDMCupomFiscal.cdsEstoque_DescQTD.AsFloat))
    else
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux - fDMCupomFiscal.cdsEstoque_DescQTD.AsFloat));
    fDMCupomFiscal.cdsEstoque_Desc.Next;
  end;
  vQtdAux2 := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoQTD.AsFloat - vQtdAux));
  if StrToFloat(FormatFloat('0.0000',vQtdAux2)) <= StrToFloat(FormatFloat('0.0000',0)) then
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQTD.AsFloat))
  else
  //if StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= vQtdAux2 then
  //  vQtdAux := StrToFloat(FormatFloat('0.0000',0))
  //else
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQtd.AsFloat - vQtdAux2));
  if vQtdAux <= 0 then
    vQtdAux := StrToFloat(FormatFloat('0.0000',0));
  Result := StrToFloat(FormatFloat('0.0000',vQtdAux));

  {fDMCupomFiscal.cdsEstoque_Desc.SQL.Text := vComandoAux2 + vComandoAux;
  fDMCupomFiscal.cdsEstoque_Desc.ParamByName('FILIAL').AsInteger       := fDMCupomFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMCupomFiscal.cdsEstoque_Desc.ParamByName('ID_PEDIDO').AsInteger   := fDMCupomFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
  fDMCupomFiscal.cdsEstoque_Desc.ParamByName('ITEM_PEDIDO').AsInteger := fDMCupomFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
  fDMCupomFiscal.cdsEstoque_Desc.ParamByName('TAMANHO').AsString      := vTamAux;
  fDMCupomFiscal.cdsEstoque_Desc.Open;
  vQtdAux := 0;
  while not fDMCupomFiscal.cdsEstoque_Desc.Eof do
  begin
    if fDMCupomFiscal.cdsEstoque_DescTIPO_NOTA.AsString = 'S' then
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + fDMCupomFiscal.cdsEstoque_DescQTD.AsFloat))
    else
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux - fDMCupomFiscal.cdsEstoque_DescQTD.AsFloat));
    fDMCupomFiscal.cdsEstoque_Desc.Next;
  end;
  vQtdAux2 := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsPedidoQTD.AsFloat - vQtdAux));
  if StrToFloat(FormatFloat('0.0000',vQtdAux2)) <= StrToFloat(FormatFloat('0.0000',0)) then
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQTD.AsFloat))
  else
  if StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= vQtdAux2 then
    vQtdAux := StrToFloat(FormatFloat('0.0000',0))
  else
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsNotaFiscal_ItensQtd.AsFloat - vQtdAux));
  Result := StrToFloat(FormatFloat('0.0000',vQtdAux));

end;}

function TfrmSel_Pedido_CF.fnc_busca_Produto_Tipo(ID_Tipo: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT NOME FROM PRODUTO  ' +
                         ' WHERE ID = ' + IntToStr(ID_Tipo);
    sds.Open;
    Result := sds.FieldByName('NOME').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

function TfrmSel_Pedido_CF.fnc_busca_Matriz_Preco(ID_Matriz: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT NOME FROM MATRIZ_PRECO  ' +
                         ' WHERE ID = ' + IntToStr(ID_Matriz);
    sds.Open;
    Result := sds.FieldByName('NOME').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

end.
