//tag 11  é a copia do pedido sem cobrança (Fututo)
unit USel_Pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadNotaFiscal, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, UCadNotaEntrada_Itens, uDmCadVale,
  NxCollection, uCadVale_Itens, SqlExpr, UCadRecNF_Itens;

type
  TfrmSel_Pedido = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    SMDBGrid6: TSMDBGrid;
    Shape3: TShape;
    Label4: TLabel;
    SMDBGrid2: TSMDBGrid;
    Splitter1: TSplitter;
    Label5: TLabel;
    Shape4: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    Label8: TLabel;
    edtPedido: TEdit;
    Shape5: TShape;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure prc_Consultar_Pedido(Tipo: String; ID: Integer = 0; Item_Pedido: Integer = 0);
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens(Lote: Boolean; VlrDesconto : Real);
    procedure prc_Gravar_Vale;
    procedure prc_Gravar_ValeItens;
    procedure prc_MostraNota;
    procedure prc_MostraVale;
    procedure prc_Gravar_MObra;
    procedure prc_Montar_Acessorios;
    procedure prc_Gerar_mLoteControle;

    procedure prc_scroll(DataSet: TDataSet);

    function fnc_Desc_Estoque: Real;
    function fnc_busca_Produto_Tipo(ID_Tipo: Integer): String;
    function fnc_busca_Matriz_Preco(ID_Matriz: Integer): String;

    function fnc_Qtd_Pedidos(Tipo_Reg: String; ID_Cliente, Filial: Integer): Integer;

  public
    { Public declarations }
    vCodCliente: Integer;
    vTipo_RegPed: String;
    vTipo: String;

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDmCadVale: TDmCadVale;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
    ffrmCadRecNF_Itens: TfrmCadRecNF_Itens;
    ffrmCadVale_Itens: TfrmCadVale_Itens;
    ffrmCadNotaEntrada_Itens: TfrmCadNotaEntrada_Itens;

  end;

var
  frmSel_Pedido: TfrmSel_Pedido;

implementation

uses rsDBUtils, uUtilPadrao, StrUtils, DmdDatabase, UInformar_Lote_Controle,
  UConsEstoque_Lote, uCalculo_NotaFiscal;

{$R *.dfm}

procedure TfrmSel_Pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Pedido.FormShow(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Visible := False;
  if vTipo = 'VAL' then
  begin
    Shape5.Visible := False;
    Label9.Visible := False;
    oDBUtils.SetDataSourceProperties(Self,fDmCadVale);
    SMDBGrid1.DataSource := fDMCadVale.dsPedido;
    SMDBGrid6.DataSource := fDMCadVale.dsPedido_Tipo;
    prc_MostraVale;
    if (fDmCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S') then
      fDmCadVale.cdsPedido.AFTERSCROLL := prc_scroll;
    SMDBGrid6.Visible := (fDmCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
    SMDBGrid2.Visible := False;
    Label5.Visible    := False;
    Label7.Visible    := False;

    for i := 0 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'QTD_FUT') then
        SMDBGrid1.Columns[i].Visible := False;
      if (SMDBGrid1.Columns[i].FieldName = 'NOME_COR') then
        SMDBGrid1.Columns[i].Visible := ((fDmCadVale.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDmCadVale.qParametrosINFORMAR_COR_PROD.AsString = 'C')  or (fDmCadVale.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
      if (SMDBGrid1.Columns[i].FieldName = 'NOME_GRUPO') then
        SMDBGrid1.Columns[i].Visible := (fDmCadVale.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
      if (SMDBGrid1.Columns[i].FieldName = 'ITEM_ORIGINAL') then
        SMDBGrid1.Columns[i].Visible := (fDmCadVale.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S');
      if (SMDBGrid1.Columns[i].FieldName = 'NOME_CONSUMIDOR') and (fDmCadVale.qParametros_NFePERMITE_IMPORTAR_S_CLIENTE.AsString = 'S') then
      begin
        SMDBGrid1.Columns[i].FieldName     := 'NOMECLIENTE';
        SMDBGrid1.Columns[i].Title.Caption := 'Nome Cliente';
      end;

      if (SMDBGrid1.Columns[i].FieldName = 'NOME_CONSUMIDOR') then
        SMDBGrid1.Columns[i].Visible := (fDmCadVale.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
      if (SMDBGrid1.Columns[i].FieldName = 'NOMEPRODUTO') and (fDmCadVale.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
      begin
        SMDBGrid1.Columns[i].FieldName     := 'NOME_PRODUTO_PED';
        SMDBGrid1.Columns[i].Title.Caption := 'Nome Produto';
      end;
    end;
  end
  else //vTipo = 'NTS' or 'RNF'
  begin
    oDBUtils.SetDataSourceProperties(Self,fDMCadNotaFiscal);
    SMDBGrid1.DataSource := fDMCadNotaFiscal.dsPedido;
    SMDBGrid6.DataSource := fDMCadNotaFiscal.dsPedido_Tipo;
    SMDBGrid2.Visible    := (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S');
    prc_MostraNota;
    if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
      fDMCadNotaFiscal.cdsPedido.AFTERSCROLL := prc_scroll;
    SMDBGrid6.Visible := (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S');

    if Tag = 11 then
    begin
      fDMCadNotaFiscal.vID_CFOP     := 0;
      fDMCadNotaFiscal.vID_Variacao := 0;
      if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0 then
        fDMCadNotaFiscal.vID_CFOP := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger
      else
      if fDMCadNotaFiscal.cdsParametrosID_OPERACAO_PED_FUT.AsInteger > 0 then
        uCalculo_NotaFiscal.prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsParametrosID_OPERACAO_PED_FUT.AsInteger,'O');
    end;
    Shape4.Visible := (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S');
    Label6.Visible := (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S');
    Shape5.Visible := (fDMCadNotaFiscal.qParametros_NFeUSA_PREFAT.AsString = 'S');
    Label9.Visible := (fDMCadNotaFiscal.qParametros_NFeUSA_PREFAT.AsString = 'S');
  end;

  if vTipo <> 'VAL' then
  begin
    //if fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString <> 'S' then
    begin
      for i := 0 to SMDBGrid1.ColCount - 2 do
      begin
        if (SMDBGrid1.Columns[i].FieldName = 'QTD_FUT') then
          SMDBGrid1.Columns[i].Visible := False;
        if (SMDBGrid1.Columns[i].FieldName = 'NOME_COR') then
          SMDBGrid1.Columns[i].Visible := ((fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C')  or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
        if (SMDBGrid1.Columns[i].FieldName = 'NOME_GRUPO') then
          SMDBGrid1.Columns[i].Visible := (fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
        if (SMDBGrid1.Columns[i].FieldName = 'ITEM_ORIGINAL') then
          SMDBGrid1.Columns[i].Visible := (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S');

        if (SMDBGrid1.Columns[i].FieldName = 'NOME_CONSUMIDOR') and (fDMCadNotaFiscal.qParametros_NFePERMITE_IMPORTAR_S_CLIENTE.AsString = 'S') then
        begin
          SMDBGrid1.Columns[i].FieldName     := 'NOMECLIENTE';
          SMDBGrid1.Columns[i].Title.Caption := 'Nome Cliente';
        end;

        if (SMDBGrid1.Columns[i].FieldName = 'NOME_CONSUMIDOR') then
          SMDBGrid1.Columns[i].Visible := (fDMCadNotaFiscal.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
        if (SMDBGrid1.Columns[i].FieldName = 'NOMEPRODUTO') and (fDMCadNotaFiscal.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
        begin
          SMDBGrid1.Columns[i].FieldName     := 'NOME_PRODUTO_PED';
          SMDBGrid1.Columns[i].Title.Caption := 'Nome Produto';
        end;
      end;
    end;
    Shape3.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
    Label4.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
  end;
  Label5.Visible := SMDBGrid2.Visible;
  Label7.Visible := SMDBGrid2.Visible;
end;

procedure TfrmSel_Pedido.prc_Consultar_Pedido(Tipo: String; ID: Integer = 0; Item_Pedido: Integer = 0);
var
  vQtdAux: Integer;
begin
  //SMDBGrid1.DisableScroll;
  SMDBGrid1.ClearFilter;
  SMDBGrid1.DataSource := nil;
  Memo1.Lines.Clear;

  if (Tipo = 'NTS') or (Tipo = 'MO') or (Tipo = 'RNF')  then
  begin
    //14/11/2015
    if fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S' then
    begin
      fDMCadNotaFiscal.mLoteControle.MasterSource := nil;
      fDMCadNotaFiscal.mLoteControle.MasterFields := '';
      fDMCadNotaFiscal.mLoteControle.EmptyDataSet;
    end;
    fDMCadNotaFiscal.cdsPedido.Close;
    fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.ctPedido;
    if ((vTipo_RegPed = 'P') and (fDMCadNotaFiscal.cdsParametrosUSA_APROVACAO_PED.AsString = 'S'))
      or ((vTipo_RegPed = 'C') and (fDMCadNotaFiscal.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S')) then
      fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.APROVADO_PED = ' + QuotedStr('A');
    if ID > 0 then
    begin
      fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.ID = ' + IntToStr(ID)
                                              + ' AND PI.ITEM = ' + IntToStr(Item_Pedido);
    end
    else
    begin
      if vTipo_RegPed = 'C' then
        fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PI.TIPO_REG = ' + QuotedStr('C')
      else
      begin
        fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PI.TIPO_REG = ' + QuotedStr('P');
        //Incluido 28/11/2016
        if fDMCadNotaFiscal.qParametros_PedUSA_CONFERENCIA.AsString = 'S' then
          fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PI.QTD_LIBERADA > 0 ';
        //***********************
      end;
      if vCodCliente > 0 then
        fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText +
                                                  ' AND PE.ID_CLIENTE = ' + IntToStr(vCodCliente);
      if Tipo = 'MO' then
        fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.TIPO_VENDA = ' + QuotedStr('M');

      if fDMCadNotaFiscal.qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA.AsString = 'S' then
        fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND PE.FILIAL = ' + fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsString;

      //28/04/2017
      if fDMCadNotaFiscal.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
        fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText + ' AND coalesce(PI.TIPO_SERVICO,' + QuotedStr('') + ') <> ' + QuotedStr('S');
      //****************
    end;
    if trim(edtPedido.Text) <> '' then
      fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.sdsPedido.CommandText +
                                                  ' AND PE.PEDIDO_CLIENTE = ' + QuotedStr(edtPedido.Text);
    fDMCadNotaFiscal.cdsPedido.Open;
    fDMCadNotaFiscal.cdsPedido.First;
    //if foi colocado no dia 08/04/2018
    //Pois estava demorando muito entrando neste item aqui
    //if (fDMCadNotaFiscal.qParametros_NFeUSA_NOVA_COPIA_PED.AsString <> 'S') or (ID > 0) then
    //begin
      //26/05/2016
      if (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'N') or (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.IsNull) then
      begin
        while not fDMCadNotaFiscal.cdsPedido.Eof do
        begin
          fDMCadNotaFiscal.cdsPedido.Edit;
          if ID > 0 then
            fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.mMObra_PedQtd.AsFloat))
          else
          if fDMCadNotaFiscal.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
            fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsPedidoclQtd_Restante.AsFloat))
          else
            fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat));
          fDMCadNotaFiscal.cdsPedido.Post;
          fDMCadNotaFiscal.cdsPedido.Next;
        end;
      end;
    //end;
    //14/11/2015
    if fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S' then
    begin
      fDMCadNotaFiscal.mLoteControle.MasterSource := fDMCadNotaFiscal.dsPedido;
      fDMCadNotaFiscal.mLoteControle.MasterFields := 'ID;ITEM';
      fDMCadNotaFiscal.mLoteControle.IndexFieldNames := 'ID_Pedido;Item_Pedido';
      //17/03/2016
      //if fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S' then
      //  prc_Gerar_mLoteControle;
    end;

    if fDMCadNotaFiscal.qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA.AsString = 'S' then
    begin
      vQtdAux := fnc_Qtd_Pedidos(vTipo_RegPed,fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);
      Memo1.Visible := (vQtdAux > 0);
      if vQtdAux > 0 then
        //Memo1.Lines.Text := 'Existe ' + IntToStr(vQtdAux) + ' Pedido(s) em outra Filial';
        Memo1.Lines.Text := IntToStr(vQtdAux) + ' Pedido(s) cadastrado(s) em outra Filial';
    end;
    if fDMCadNotaFiscal.qParametros_PedIMP_ORDEM_ITEM_PED.AsString = 'R' then
      fDMCadNotaFiscal.cdsPedido.IndexFieldNames := 'NUM_PEDIDO;REFERENCIA;ITEM'
    else
      fDMCadNotaFiscal.cdsPedido.IndexFieldNames := 'NUM_PEDIDO;ITEM';
    SMDBGrid1.DataSource := fDMCadNotaFiscal.dsPedido;
  end
  else
  begin
    fDMCadVale.cdsPedido.Close;
    fDMCadVale.sdsPedido.CommandText := fDMCadVale.ctPedido;
    fDMCadVale.sdsPedido.CommandText := fDMCadVale.sdsPedido.CommandText + ' AND PE.TIPO_REG = ' + QuotedStr('P');
    if fDmCadVale.qParametrosUSA_APROVACAO_PED.AsString = 'S' then
      fDMCadVale.sdsPedido.CommandText := fDMCadVale.sdsPedido.CommandText + ' AND PE.APROVADO_PED = ' + QuotedStr('A');
    if vCodCliente > 0 then
      fDMCadVale.sdsPedido.CommandText := fDMCadVale.sdsPedido.CommandText +
                                          ' AND PE.ID_CLIENTE = ' + IntToStr(vCodCliente);
    if fDmCadVale.qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA.AsString = 'S' then
      fDMCadVale.sdsPedido.CommandText := fDMCadVale.sdsPedido.CommandText + ' AND PE.FILIAL = ' + fDmCadVale.cdsValeFILIAL.AsString;

    fDMCadVale.cdsPedido.Open;
    fDMCadVale.cdsPedido.First;
    while not fDMCadVale.cdsPedido.Eof do
    begin
      fDMCadVale.cdsPedido.Edit;
      if fDMCadVale.qParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
        fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadVale.cdsPedidoclQtd_Restante.AsFloat))
      else
        fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadVale.cdsPedidoQTD_RESTANTE.AsFloat));
      fDMCadVale.cdsPedido.Post;
      fDMCadVale.cdsPedido.Next;
    end;
    if fDMCadVale.qParametros_PedIMP_ORDEM_ITEM_PED.AsString = 'R' then
      fDMCadVale.cdsPedido.IndexFieldNames := 'NUM_PEDIDO;REFERENCIA;ITEM'
    else
      fDMCadVale.cdsPedido.IndexFieldNames := 'NUM_PEDIDO;ITEM';
    SMDBGrid1.DataSource := fDmCadVale.dsPedido;
  end;
  //SMDBGrid1.EnableScroll;
  if ID > 0 then
    SMDBGrid1.SelectAllClick(SMDBGrid1);
end;

procedure TfrmSel_Pedido.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd_Faturado: Real;
  vFlag : Boolean;
begin
  if ((vTipo = 'NTS') or (vTipo = 'RNF')) then
  begin
    vFlag := False;
    if (fDMCadNotaFiscal.qParametros_NFeUSA_PREFAT.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoExiste_PreFat.AsString = 'S')  then
    begin
      Background  := $0095B8FF;
      AFont.Color := clBlack;
      vFlag       := True;
    end;
    if vFlag then
      exit;
  end;

  if ((vTipo = 'NTS') or (vTipo = 'RNF'))  and (SMDBGrid1.SelectedRows.CurrentRowSelected) and
     (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat)) <= 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (vTipo = 'VAL') and (SMDBGrid1.SelectedRows.CurrentRowSelected) and
     (StrToFloat(FormatFloat('0.000000',fDmCadVale.cdsPedidoQTD_AFATURAR.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.000000',fDmCadVale.cdsPedidoQTD_FATURADO.AsFloat)) <= 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  begin
    if (vTipo = 'NTS') or (vTipo = 'MO') or (vTipo = 'RNF') then
    begin
      vQtd_Faturado := fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat;
      if (Tag = 11) then
        vQtd_Faturado := fDMCadNotaFiscal.cdsPedidoQTD_FUT.AsFloat;
      //if (vTipo_RegPed <> 'C') and (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat)) > 0) then
      if (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoCOPIAR_SELECIONADO.AsString = 'N') and
         (fDMCadNotaFiscal.cdsPedidoLANCA_LOTE_CONTROLE.AsString = 'S') then
        Background  := clYellow
      else
      if (vTipo_RegPed <> 'C') and (StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0) and (Tag = 11) then
        Background  := clSilver
      else
      if (vTipo_RegPed <> 'C') and (StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0) then
      begin
        Background  := clGreen;
        AFont.Color := clWhite;
      end;

      if (Field = fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR) then
      begin
        Background  := clYellow;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end
      else
      if (Field = fDMCadNotaFiscal.cdsPedidoclQtd_Restante) then
      begin
        Background  := clMoneyGreen;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end;
    end
    else
    begin
      if (StrToFloat(FormatFloat('0.000000',fDmCadVale.cdsPedidoQTD_FATURADO.AsFloat)) > 0) then
        Background  := clGreen;
      if (Field = fDmCadVale.cdsPedidoQTD_AFATURAR) then
      begin
        Background  := clYellow;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end
      else
      if (Field = fDmCadVale.cdsPedidoclQtd_Restante) then
      begin
        Background  := clMoneyGreen;
        AFont.Style := [fsBold];
        AFont.Color := clBlack;
      end;
    end;
  end;
end;

procedure TfrmSel_Pedido.prc_Gravar_NotaItens(Lote: Boolean; VlrDesconto : Real);
var
  vItemAux: Integer;
  vNum_Controle_Tam: Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto: String;
  vExiste: Boolean;
  vQtd_Tam: Real;
  vGravaAux: Boolean;
begin
  //09/11/2015, alterado para gravar a obs da nota dia 26/01/2017
  {if ((fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and
     ((StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ADIANTAMENTO.AsFloat)) > 0) or
      (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ENTRADA.AsFloat)) > 0))) or
      ((fDMCadNotaFiscal.cdsParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsPedidoOBS_NOTA.AsString) <> '')) then}
  if ((fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and
     ((StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ADIANTAMENTO.AsFloat)) > 0) or
      (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ENTRADA.AsFloat)) > 0))) then
  begin
    if not fDMCadNotaFiscal.mPedidoAux.FindKey([fDMCadNotaFiscal.cdsPedidoID.AsInteger]) then
    begin
      vGravaAux := True;
      fDMCadNotaFiscal.mPedidoAux.Insert;
      fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger      := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
      if ((fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and ((StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ADIANTAMENTO.AsFloat)) > 0) or
         (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ENTRADA.AsFloat)) > 0))) then
      begin
        fDMCadNotaFiscal.mPedidoAuxVlr_Adiantamento.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ADIANTAMENTO.AsFloat));
        if fDMCadNotaFiscal.cdsPedidoGERA_ENTRADA_NO_PEDIDO.AsString = 'S' then
          fDMCadNotaFiscal.mPedidoAuxVlr_Entrada.AsFloat := StrToFloat(FormatFloat('0.00',0))
        else
          fDMCadNotaFiscal.mPedidoAuxVlr_Entrada.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_ENTRADA.AsFloat));
      end;
      {if ((fDMCadNotaFiscal.cdsParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsPedidoOBS_NOTA.AsString) <> '')) then
      begin
        if fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID_PEDIDO',fDMCadNotaFiscal.cdsPedidoID.AsInteger,[loCaseInsensitive]) then
          vGravaAux := False
        else
        begin
          fDMCadNotaFiscal.mPedidoAuxOBS_Nota.AsString := fDMCadNotaFiscal.cdsPedidoOBS_NOTA.AsString;
        end;
      end;}
      //if not vGravaAux then
      //  fDMCadNotaFiscal.mPedidoAux.Cancel
      //else
      //  fDMCadNotaFiscal.mPedidoAux.Post;
    end;
  end;
  //****************

  if fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    fDMCadNotaFiscal.cdsPedido_Tipo.Close;
    fDMCadNotaFiscal.sdsPedido_Tipo.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
    fDMCadNotaFiscal.sdsPedido_Tipo.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
    fDMCadNotaFiscal.cdsPedido_Tipo.Open;
  end;
  //25/05/2018
  if (fDMCadNotaFiscal.qParametros_PedUSA_TAB_PRECO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_TAB_PRECO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_TAB_PRECO.AsInteger := fDMCadNotaFiscal.cdsPedidoID_TAB_PRECO.AsInteger;
  //**********************

  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
  begin
    if Tag = 11 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.vID_CFOP
    else
    if Tag = 95 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := RxDBLookupCombo1.KeyValue
    else
    if vTipo_RegPed = 'C' then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := RxDBLookupCombo1.KeyValue
    else
    if fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.cdsPedidoID_CFOP.AsInteger;
  end;
  if (fDMCadNotaFiscal.cdsPedidoLOCALENTREGA.AsString = 'N') or (fDMCadNotaFiscal.cdsPedidoLOCALENTREGA.AsString = 'E') then
    fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.AsString := fDMCadNotaFiscal.cdsPedidoLOCALENTREGA.AsString;
  if fDMCadNotaFiscal.cdsPedidoNOTIFICACAO.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger := fDMCadNotaFiscal.cdsPedidoNOTIFICACAO.AsInteger;
  //26/01/2017
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_FRETE.AsFloat)) > 0) and (fDMCadNotaFiscal.qParametros_NFeCOPIAR_VLR_FRETE_PED.AsString = 'S') then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat       := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_FRETE.AsFloat));
    //08/02/2017
    fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoPERC_ICMS_FRETE.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString := 'S';
  end;
  //*************
  //02/08/2018 Colocado o esquema do Lote com desconto
  if (fDMCadNotaFiscal.cdsPedidoDESC_SUFRAMA_ICMS.AsString = 'S') or (fDMCadNotaFiscal.cdsPedidoDESC_SUFRAMA_PIS_COFINS.AsString = 'S') then
  else
  begin
    if Lote then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat + VlrDesconto
    else
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedidoVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat;
  end;
  //*******************
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'N';
  if (fDMCadNotaFiscal.cdsPedidoID_CONDPGTO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger := fDMCadNotaFiscal.cdsPedidoID_CONDPGTO.AsInteger
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger <= 0) and (fDMCadNotaFiscal.cdsPedidoID_CONDPGTO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger := fDMCadNotaFiscal.cdsPedidoID_CONDPGTO.AsInteger;
  if fDMCadNotaFiscal.cdsPedidoID_TIPO_COBRANCA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger := fDMCadNotaFiscal.cdsPedidoID_TIPO_COBRANCA.AsInteger;
  if fDMCadNotaFiscal.cdsPedidoID_CONTA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger := fDMCadNotaFiscal.cdsPedidoID_CONTA.AsInteger;
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '') and (fDMCadNotaFiscal.cdsPedidoTIPO_FRETE.AsString <> '') then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString := fDMCadNotaFiscal.cdsPedidoTIPO_FRETE.AsString;
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger <= 0) and (fDMCadNotaFiscal.cdsPedidoID_CLIENTE_TRIANGULAR.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger := fDMCadNotaFiscal.cdsPedidoID_CLIENTE_TRIANGULAR.AsInteger;

  fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := 'P';
  if fDMCadNotaFiscal.cdsPedidoID_TRANSPORTADORA.AsInteger > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger := fDMCadNotaFiscal.cdsPedidoID_TRANSPORTADORA.AsInteger;
    if fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger > 0 then
    begin
      fDMCadNotaFiscal.cdsTransportadora.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger,[loCaseInsensitive]);
      fDMCadNotaFiscal.cdsNotaFiscalPLACA.AsString   := fDMCadNotaFiscal.cdsTransportadoraPLACA.AsString;
      fDMCadNotaFiscal.cdsNotaFiscalUFPLACA.AsString := fDMCadNotaFiscal.cdsTransportadoraUF_PLACA.AsString;
    end;
  end;

  if fDMCadNotaFiscal.cdsPedidoID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger := fDMCadNotaFiscal.cdsPedidoID_VENDEDOR.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsPedidoPERC_COMISSAO.AsFloat));
  end;

  //26/05/2016
  vExiste := False;
  if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID_PEDIDO;ITEM_ORIGINAL;ID_PRODUTO',VarArrayOf([fDMCadNotaFiscal.cdsPedidoID.AsInteger,
                                                   fDMCadNotaFiscal.cdsPedidoITEM_ORIGINAL.AsInteger,fDMCadNotaFiscal.cdsPedidoID_PRODUTO.AsInteger]),
                                                   [locaseinsensitive]) then
      vExiste := True;
  end;

  //Inicio do inserir   26/05/2016
  if vExiste then
    //Edit foi incluido   26/05/2016
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit
  else
  if not vExiste then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger        := vItemAux;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := fDMCadNotaFiscal.cdsPedidoID_PRODUTO.AsInteger;
    if fDMCadNotaFiscal.cdsPedidoID_COR.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger := fDMCadNotaFiscal.cdsPedidoID_COR.AsInteger;
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString <> 'RNF' then
    begin
      if (Tag = 95) then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo1.KeyValue;
        ffrmCadNotaFiscal_Itens.RxDBLookupCombo1.KeyValue       := RxDBLookupCombo1.KeyValue;
        ffrmCadNotaFiscal_Itens.RxDBLookupCombo1Exit(ffrmCadNotaFiscal_Itens);
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
      end
      else
      if (vTipo_RegPed = 'C') and (RxDBLookupCombo1.Text <> '') then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo1.KeyValue
      else
      if Tag = 11 then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.vID_CFOP;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
      end
      else
      if fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.cdsPedidoID_CFOP.AsInteger;
        //If do ajuste feito somente para a SulTextil, quando trocou de Simples para Geral e os pedidos
        //já estavam digitados todos como Simples  -  01/11/2016
        if fDMCadNotaFiscal.qParametros_NFeAJUSTA_VARIACAO.AsString = 'S' then
        begin
          fDMCadNotaFiscal.vID_Variacao := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
        end
        else
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.cdsPedidoID_VARIACAO.AsInteger;
          fDMCadNotaFiscal.vID_Variacao                             := fDMCadNotaFiscal.cdsPedidoID_VARIACAO.AsInteger;
        end;
      end
      else
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_VARIACAO.AsInteger;
        fDMCadNotaFiscal.vID_Variacao                             := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
      end;
    end;

    if vTipo_RegPed = 'C' then
      ffrmCadNotaEntrada_Itens.prc_Move_Dados_Itens
    else
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
      ffrmCadRecNF_Itens.prc_Move_Dados_Itens
    else
      ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

    if (fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString <> 'S') and (fDMCadNotaFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'T') and (fDMCadNotaFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'R') then
    begin
      if Tag <> 95 then
      begin
        if fDMCadNotaFiscal.cdsPedidoID_NCM_PED.AsInteger > 0 then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsPedidoID_NCM_PED.AsInteger
        else
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsPedidoID_NCM.AsInteger;
      end;
      if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat)) > 0) and (trim(fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString) <> '') then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString  := fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString
      else
        fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := fDMCadNotaFiscal.cdsPedidoUNIDADE.AsString;
    end;

  end;

  //14/11/2015
  if Lote then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mLoteControleQtd.AsFloat ));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString := fDMCadNotaFiscal.mLoteControleNum_Lote_Controle.AsString;
  end
  else
  begin
    //Foi ajustado para somar as quantidades quando possuir tamanho   Perfil   26/05/2016
    if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat + fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString := 'S';
    end
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString := '';
  end;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat := StrToFloat(FormatFloat('0.00',00))
  else
  if fDMCadNotaFiscal.qParametros_NFeCOPIA_PED_IMPOSTO.AsString <> 'N' then //if incluido 05/04/2018 devido a MB usar uma filial para fazer o pedido e outra para a Nota
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat := fDMCadNotaFiscal.cdsPedidoPERC_IPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsPedidoVLR_UNITARIO.AsFloat;
  if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));

  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  end;
  //07/11/2018 foi incluido a opção Alterar_Nome_prod
  if (fDMCadNotaFiscal.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') or (fDMCadNotaFiscal.qParametros_NFeALTERAR_NOME_PROD.AsString = 'S') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.cdsPedidoNOME_PRODUTO_PED.AsString
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.cdsPedidoNOMEPRODUTO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.cdsPedidoREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
  if fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat   := 0
  else
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoPERC_COMISSAO_ITEM.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoPERC_COMISSAO_ITEM.AsFloat))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoPERC_COMISSAO.AsFloat));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsPedidoOBS_COMPLEMENTAR.AsString;
  if fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S' then
  begin
    vTexto := '';
    if fDMCadNotaFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'C' then
      vTexto := fDMCadNotaFiscal.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' (X)mm ' + fDMCadNotaFiscal.cdsPedido_TipoCOMPRIMENTO.AsString
              + ' (Y)mm ' + fDMCadNotaFiscal.cdsPedido_TipoLARGURA.AsString
              + ' (*)mm ' + fDMCadNotaFiscal.cdsPedido_TipoALTURA.AsString
    else
    if fDMCadNotaFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'R' then
      vTexto := fDMCadNotaFiscal.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' ø ' + fDMCadNotaFiscal.cdsPedido_TipoDIAMETRO.AsString
              + ' comp. ' + fDMCadNotaFiscal.cdsPedido_TipoCOMPRIMENTO.AsString
    else
    if fDMCadNotaFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'T' then
      vTexto := fDMCadNotaFiscal.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' ø ext ' + fDMCadNotaFiscal.cdsPedido_TipoDIAMETRO_EXT.AsString
              + ' ø int ' + fDMCadNotaFiscal.cdsPedido_TipoDIAMETRO_INT.AsString
              + ' parede ' + fDMCadNotaFiscal.cdsPedido_TipoPAREDE.AsString
              + ' comp. ' + fDMCadNotaFiscal.cdsPedido_TipoCOMPRIMENTO.AsString;
    if StrToFloat(FormatFloat('00',fDMCadNotaFiscal.cdsPedidoQTD_PECA.AsFloat)) > 0 then
      vTexto := vTexto + ' - ' + FormatFloat('00',fDMCadNotaFiscal.cdsPedidoQTD_PECA.AsFloat) + ' PCS';
    fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + ' ' + vTexto;
    if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat * fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
  end
  else
  //31/07/2015  foi incluida a opção da Alluminium
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') and ((fDMCadNotaFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'T') and (fDMCadNotaFiscal.cdsPedidoTIPO_ACESSORIO.AsString <> 'R')) then
  begin
    vTexto := '';
    //Porta
    if fDMCadNotaFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'P' then
    begin
      //aqui
      if fDMCadNotaFiscal.cdsPedido_TipoID_PERFIL.AsInteger > 0 then
        vTexto := '(Perfil:' + fnc_busca_Produto_Tipo(fDMCadNotaFiscal.cdsPedido_TipoID_PERFIL.AsInteger) + ') ';
      if fDMCadNotaFiscal.cdsPedido_TipoID_VIDRO.AsInteger > 0 then
      begin
        vTexto := vTexto + '(Vidro:' +fnc_busca_Produto_Tipo(fDMCadNotaFiscal.cdsPedido_TipoID_VIDRO.AsInteger) + ') ';
      end;
      if fDMCadNotaFiscal.cdsPedido_TipoID_FURACAO.AsInteger > 0 then
      begin
        vTexto := vTexto + '(Furação:';
        vTexto := vTexto + fnc_busca_Matriz_Preco(fDMCadNotaFiscal.cdsPedido_TipoID_FURACAO.AsInteger) + ') ';
      end;
    end
    else
    //Vidro
    if fDMCadNotaFiscal.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'V' then
    begin
      if fDMCadNotaFiscal.cdsPedido_TipoID_ACABAMENTO.AsInteger > 0 then
        vTexto := vTexto + '(' + fnc_busca_Matriz_Preco(fDMCadNotaFiscal.cdsPedido_TipoID_ACABAMENTO.AsInteger) + ') ';
      if fDMCadNotaFiscal.cdsPedido_TipoID_REDONDO_MOD.AsInteger > 0 then
        vTexto := vTexto + '(' + fnc_busca_Matriz_Preco(fDMCadNotaFiscal.cdsPedido_TipoID_REDONDO_MOD.AsInteger) + ') ';
      if fDMCadNotaFiscal.cdsPedido_TipoID_CMOEDA.AsInteger > 0 then
        vTexto := vTexto + '(c.moeda:' + fnc_busca_Matriz_Preco(fDMCadNotaFiscal.cdsPedido_TipoID_CMOEDA.AsInteger) + ') ';
      if fDMCadNotaFiscal.cdsPedido_TipoID_FUROS.AsInteger > 0 then
        vTexto := vTexto + '(Furos:' + fnc_busca_Matriz_Preco(fDMCadNotaFiscal.cdsPedido_TipoID_FUROS.AsInteger)
                + ' Q.' + fDMCadNotaFiscal.cdsPedido_TipoQTD_FUROS.AsString + ') ';
    end;
    vTexto := vTexto + '(Alt.mm:' + FormatFloat('0.####',fDMCadNotaFiscal.cdsPedido_TipoALTURA.AsFloat)
            + ' Larg.mm: ' + FormatFloat('0.####',fDMCadNotaFiscal.cdsPedido_TipoLARGURA.AsFloat) + ')';
    vTexto := trim(vTexto);
    fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + ' ' + vTexto;
  end;
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + '('+fDMCadNotaFiscal.cdsPedidoNOME_CONSUMIDOR.AsString+')';
  end;

  if (fDMCadNotaFiscal.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoTIPO_OS.AsString = 'OC') and
    (trim(fDMCadNotaFiscal.cdsPedidoNUMOS.AsString) <> '') then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString        := fDMCadNotaFiscal.cdsPedidoNUMOS.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString        := '';
  end
  else
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString        := fDMCadNotaFiscal.cdsPedidoPEDIDO_CLIENTE.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString        := fDMCadNotaFiscal.cdsPedidoNUMOS.AsString;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_CLIENTE.AsInteger    := fDMCadNotaFiscal.cdsPedidoITEM_CLIENTE.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_PEDIDO.AsInteger      := fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensIMP_OC_NOTA.AsString      := fDMCadNotaFiscal.cdsPedidoIMP_OC_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString        := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_TALAO.AsString        := fDMCadNotaFiscal.cdsPedidoNUM_TALAO.AsString;

  //26/05/2016
  if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString := ''
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString := fDMCadNotaFiscal.cdsPedidoTAMANHO.AsString;
  //28/11/2014  Pedido futuro
  //if fDMCadNotaFiscal.cdsCFOPBAIXAR_FUT.AsString = 'S' then
  if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') then
  begin
    fDMCadNotaFiscal.qDupPedido.Close;
    fDMCadNotaFiscal.qDupPedido.ParamByName('ID_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
    fDMCadNotaFiscal.qDupPedido.Open;
    if not fDMCadNotaFiscal.qDupPedido.IsEmpty then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'N';
    fDMCadNotaFiscal.qDupPedido.Close;
  end;
  if Tag = 11 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger   := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO_FUT.AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'N';
  end
  else
  begin
    //26/05/2016
    if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger := 0
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger       := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger   := fDMCadNotaFiscal.cdsPedidoITEM_ORIGINAL.AsInteger;
    //16/02/2015
    if fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',fnc_Desc_Estoque));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat > fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat)) >= StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N'
      else
        fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'S';
    end
    else
    //09/03/2015
    if fDMCadNotaFiscal.cdsPedidoID_MOVESTOQUE.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';

    //16/02/2015 Foi alterado pela função fnc_Desc_Estoque
    //if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_FUT.AsFloat)) > 0 then
    //begin
    //  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';
    //end;
  end;
  //05/10/2016
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE_PED.AsInteger := fDMCadNotaFiscal.cdsPedidoID_MOVESTOQUE.AsInteger;
  //*************

  vQtd_Tam := 0;
  if vTipo_RegPed = 'C' then
  begin
    ffrmCadNotaEntrada_Itens.vPedidoSelecionado := True;
    ffrmCadNotaEntrada_Itens.BitBtn1Click(ffrmCadNotaEntrada_Itens);
    ffrmCadNotaEntrada_Itens.vPedidoSelecionado := False;
  end
  else
  begin
    //gravar a tabela cdsNotaFiscal_Tam   26/05/2016
    if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
    begin
      //if fDMCadNotaFiscal.cdsNotaFiscal_Tam.Locate('ID;ITEM;TAMANHO',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger,
      //                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger,fDMCadNotaFiscal.cdsPedidoTAMANHO.AsString]),[locaseinsensitive]) then
      //  fDMCadNotaFiscal.cdsNotaFiscal_Tam.Edit
      //else
      //begin
        fDMCadNotaFiscal.cdsNotaFiscal_Tam.Insert;
        fDMCadNotaFiscal.cdsNotaFiscal_TamID.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
        fDMCadNotaFiscal.cdsNotaFiscal_TamITEM.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
        fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString := fDMCadNotaFiscal.cdsPedidoTAMANHO.AsString;
        fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat      := 0;
      //end;
      fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat + fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
      fDMCadNotaFiscal.cdsNotaFiscal_TamID_PEDIDO.AsInteger   := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_TamITEM_PEDIDO.AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
      vQtd_Tam := fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_Tam.Post;
    end;

    //*******************
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
    begin
      ffrmCadRecNF_Itens.vNotaSelecionada   := False;
      ffrmCadRecNF_Itens.vPedidoSelecionado := True;
      ffrmCadRecNF_Itens.BitBtn1Click(ffrmCadRecNF_Itens);
      if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      ffrmCadRecNF_Itens.vPedidoSelecionado := False;
    end
    else
    begin
      ffrmCadNotaFiscal_Itens.vNotaSelecionada   := False;
      ffrmCadNotaFiscal_Itens.vPedidoSelecionado := True;
      ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
      if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      ffrmCadNotaFiscal_Itens.vPedidoSelecionado := False;
    end;
  end;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

  if vTipo_RegPed = 'C' then
    vFlag := ffrmCadNotaEntrada_Itens.vGravacao_Ok
  else
  begin
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
      vFlag := ffrmCadRecNF_Itens.vGravacao_Ok
    else
      vFlag := ffrmCadNotaFiscal_Itens.vGravacao_Ok;
  end;

  //if ffrmCadNotaFiscal_Itens.vGravacao_Ok then
  if vFlag then
  begin
    fDMCadNotaFiscal.cdsPedido.Edit;
    if Tag = 11 then
      fDMCadNotaFiscal.cdsPedidoQTD_FUT.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_FUT.AsFloat + fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat))
    else
    begin
      //fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat + fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
      //fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat - fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
      //fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat - fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
      if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
      begin
        fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat + vQtd_Tam));
        fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat - vQtd_Tam));
        fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat - vQtd_Tam));
      end
      else
      begin
        fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_FATURADO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
        fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_RESTANTE.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
        fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_LIBERADA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
      end;
    end;
    if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
      fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat - vQtd_Tam))
    else
      fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    fDMCadNotaFiscal.cdsPedido.Post;
  end;
end;

procedure TfrmSel_Pedido.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_Pedido(vTipo);
end;

procedure TfrmSel_Pedido.btnImportarClick(Sender: TObject);
begin
  if (vTipo = 'NTS') or (vTipo = 'RNF') then
  begin
    prc_Gravar_Nota;
  end
  else
  if vTipo = 'VAL' then
  begin
    prc_Gravar_Vale;
  end
  else
  if vTipo = 'MO' then
  begin
    prc_Gravar_MObra;
    Close;
  end;
end;

procedure TfrmSel_Pedido.prc_Gravar_ValeItens;
var
  vItemAux: Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto: String;
begin
  fDMCadVale.cdsValeItens.Last;
  vItemAux := fDMCadVale.cdsValeItensITEM.AsInteger + 1;

  fDMCadVale.cdsValeItens.Insert;
  fDMCadVale.cdsValeItensID.AsInteger          := fDMCadVale.cdsValeID.AsInteger;
  fDMCadVale.cdsValeItensITEM.AsInteger        := vItemAux;
  fDMCadVale.cdsValeItensID_PRODUTO.AsInteger  := fDMCadVale.cdsPedidoID_PRODUTO.AsInteger;

  if vTipo_RegPed = 'C' then
    ffrmCadNotaEntrada_Itens.prc_Move_Dados_Itens
  else
    ffrmCadVale_Itens.prc_Move_Dados_Itens;

  fDMCadVale.cdsValeItensUNIDADE.AsString      := fDMCadVale.cdsPedidoUNIDADE.AsString;
  fDMCadVale.cdsValeItensQTD.AsFloat           := StrToFloat(FormatFloat('0.000000',fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat));
  fDMCadVale.cdsValeItensPERC_IPI.AsFloat      := fDMCadVale.cdsPedidoPERC_IPI.AsFloat;
  fDMCadVale.cdsValeItensVLR_UNITARIO.AsFloat  := fDMCadVale.cdsPedidoVLR_UNITARIO.AsFloat;
  fDmCadVale.cdsValeItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00###',fDmCadVale.cdsPedidoPERC_DESCONTO.AsFloat));
  fDmCadVale.cdsValeItensVLR_DESCONTO.AsFloat  := StrToFloat(FormatFloat('0.00',fDmCadVale.cdsPedidoVLR_DESCONTO.AsFloat + fDmCadVale.cdsPedidoVLR_DESCONTORATEIO.AsFloat));

  if fDMCadVale.qParametrosARREDONDAR_5.AsString = 'B' then
    fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',(fDMCadVale.cdsValeItensQTD.AsFloat * fDMCadVale.cdsValeItensVLR_UNITARIO.AsFloat) - fDmCadVale.cdsValeItensVLR_DESCONTO.AsFloat))
  else
    fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',(fDMCadVale.cdsValeItensQTD.AsFloat * fDMCadVale.cdsValeItensVLR_UNITARIO.AsFloat) - fDmCadVale.cdsValeItensVLR_DESCONTO.AsFloat));

  if fDMCadVale.cdsValeItensPERC_IPI.AsFloat > 0 then
  begin
    if fDMCadVale.qParametrosARREDONDAR_5.AsString = 'B' then
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat * fDMCadVale.cdsValeItensPERC_IPI.AsFloat / 100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat * fDMCadVale.cdsValeItensPERC_IPI.AsFloat / 100));
    fDMCadVale.cdsValeItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  end;
  fDMCadVale.cdsValeItensNOME_PRODUTO.AsString   := fDMCadVale.cdsPedidoNOMEPRODUTO.AsString;
  fDMCadVale.cdsValeItensID_MOVESTOQUE.AsInteger := 0;
  fDMCadVale.cdsValeItensITEM_PEDIDO.AsInteger   := fDMCadVale.cdsPedidoITEM.AsInteger;
  fDMCadVale.cdsValeItensID_PEDIDO.AsInteger     := fDMCadVale.cdsPedidoID.AsInteger;
  fDMCadVale.cdsValeItensTAMANHO.AsString        := fDMCadVale.cdsPedidoTAMANHO.AsString;
  fDMCadVale.cdsValeItensNUM_PEDIDO.AsInteger    := fDMCadVale.cdsPedidoNUM_PEDIDO.AsInteger;
  fDmCadVale.cdsValeItensNUMERO_OC.AsString      := fDmCadVale.cdsPedidoPEDIDO_CLIENTE.AsString;
  fDmCadVale.cdsValeItensNUMERO_OS.AsString      := fDmCadVale.cdsPedidoNUMOS.AsString;
  if fDmCadVale.cdsPedidoID_MOVESTOQUE.AsInteger > 0 then
    fDmCadVale.cdsValeItensGERAR_ESTOQUE.AsString  := 'N'
  else
    fDmCadVale.cdsValeItensGERAR_ESTOQUE.AsString  := 'S';

  if fDmCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S' then
  begin
    vTexto := '';
    if fDmCadVale.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'C' then
      vTexto := fDmCadVale.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' (X)mm ' + fDmCadVale.cdsPedido_TipoCOMPRIMENTO.AsString
              + ' (Y)mm ' + fDmCadVale.cdsPedido_TipoLARGURA.AsString
              + ' (*)mm ' + fDmCadVale.cdsPedido_TipoALTURA.AsString
    else
    if fDmCadVale.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'R' then
      vTexto := fDmCadVale.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' ø ' + fDmCadVale.cdsPedido_TipoDIAMETRO.AsString
              + ' comp. ' + fDmCadVale.cdsPedido_TipoCOMPRIMENTO.AsString
    else
    if fDmCadVale.cdsPedido_TipoTIPO_ORCAMENTO.AsString = 'T' then
      vTexto := fDmCadVale.cdsPedido_TipoCOMPLEMENTO_NOME.AsString + ' ø ext ' + fDmCadVale.cdsPedido_TipoDIAMETRO_EXT.AsString
              + ' ø int ' + fDmCadVale.cdsPedido_TipoDIAMETRO_INT.AsString
              + ' parede ' + fDmCadVale.cdsPedido_TipoPAREDE.AsString
              + ' comp. ' + fDmCadVale.cdsPedido_TipoCOMPRIMENTO.AsString;
    if StrToFloat(FormatFloat('00',fDmCadVale.cdsPedidoQTD_PECA.AsFloat)) > 0 then
      vTexto := vTexto + ' - ' + FormatFloat('00',fDmCadVale.cdsPedidoQTD_PECA.AsFloat) + ' PCS';
    fDmCadVale.cdsValeItensCOMPLEMENTO_PROD.AsString := fDmCadVale.cdsValeItensCOMPLEMENTO_PROD.AsString + ' ' + vTexto;
    fDmCadVale.cdsValeItensCOMPLEMENTO_PROD.AsString := trim(fDmCadVale.cdsValeItensCOMPLEMENTO_PROD.AsString);
    if StrToFloat(FormatFloat('0.0000',fDmCadVale.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat)) > 0 then
      fDmCadVale.cdsValeItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',fDmCadVale.cdsPedidoQTD_LANCAR_ESTOQUE.AsFloat * fDmCadVale.cdsPedidoQTD_AFATURAR.AsFloat));
  end;

  ffrmCadVale_Itens.vNotaSelecionada   := False;
  ffrmCadVale_Itens.vPedidoSelecionado := True;
  ffrmCadVale_Itens.BitBtn1Click(ffrmCadVale_Itens);
  ffrmCadVale_Itens.vPedidoSelecionado := False;

  if fDMCadVale.cdsValeItens.State in [dsEdit,dsInsert] then
    fDMCadVale.cdsValeItens.Post;

  vFlag := ffrmCadVale_Itens.vGravacao_Ok;

  if vFlag then
  begin
    fDMCadVale.cdsPedido.Edit;
    fDMCadVale.cdsPedidoQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadVale.cdsPedidoQTD_FATURADO.AsFloat + fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat));
    fDMCadVale.cdsPedidoQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadVale.cdsPedidoQTD_RESTANTE.AsFloat - fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat));
    fDMCadVale.cdsPedidoQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadVale.cdsPedidoQTD_LIBERADA.AsFloat - fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat));
    fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat := 0;
    fDMCadVale.cdsPedido.Post;
  end;
end;

procedure TfrmSel_Pedido.prc_MostraNota;
var
  i: Integer;
begin
  Label3.Visible           := (vTipo_RegPed = 'C');
  RxDBLookupCombo1.Visible := (vTipo_RegPed = 'C');
  if (vTipo_RegPed = 'C') and (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
  if vTipo_RegPed = 'C' then
    Caption := 'Selecionar Ordens de Compra'
  else
    Caption := 'Selecionar Pedidos';

  Shape2.Visible := (vTipo_RegPed <> 'C');
  Label2.Visible := (vTipo_RegPed <> 'C');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'NUM_DOC') then
      SMDBGrid1.Columns[i].Visible := (fDMCadNotaFiscal.cdsParametrosEMPRESA_NAVALHA.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'NUM_TALAO') then
      SMDBGrid1.Columns[i].Visible := ((fDMCadNotaFiscal.cdsParametrosEMPRESA_NAVALHA.AsString = 'S')
                                    or (fDMCadNotaFiscal.qParametros_PedUSA_NUM_TALAO.AsString = 'I')
                                    or (fDMCadNotaFiscal.qParametros_PedUSA_NUM_TALAO.AsString = 'P'))
    else
    if (SMDBGrid1.Columns[i].FieldName = 'clQtd_NaoLiberada') and
       ((fDMCadNotaFiscal.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'N') or
       (vTipo_RegPed = 'C'))  then
      SMDBGrid1.Columns[i].Visible := False
    else
    if vTipo_RegPed = 'C' then
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'NUM_PEDIDO') then
        SMDBGrid1.Columns[i].Title.Caption := 'Nº Ordem de Compra'
      else
      if (SMDBGrid1.Columns[i].FieldName = 'PEDIDO_CLIENTE') then
        SMDBGrid1.Columns[i].Visible := False
    end;
  end;
end;

procedure TfrmSel_Pedido.prc_MostraVale;
var
  i: Integer;
begin
  Label3.Visible           := (vTipo_RegPed = 'C');
  RxDBLookupCombo1.Visible := (vTipo_RegPed = 'C');
  if (vTipo_RegPed = 'C') and (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
  if vTipo_RegPed = 'C' then
    Caption := 'Selecionar Ordens de Compra'
  else
    Caption := 'Selecionar Pedidos';

  Shape2.Visible := (vTipo_RegPed <> 'C');
  Label2.Visible := (vTipo_RegPed <> 'C');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'clQtd_NaoLiberada') and
       ((fDmCadVale.qParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'N') or
       (vTipo_RegPed = 'C'))  then
      SMDBGrid1.Columns[i].Visible := False
    else
    if vTipo_RegPed = 'C' then
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'NUM_PEDIDO') then
        SMDBGrid1.Columns[i].Title.Caption := 'Nº Ordem de Compra'
      else
      if (SMDBGrid1.Columns[i].FieldName = 'PEDIDO_CLIENTE') then
        SMDBGrid1.Columns[i].Visible := False
    end;
  end;
end;

procedure TfrmSel_Pedido.prc_Gravar_Nota;
var
  vMsgErro: String;
  vMsgAviso: WideString;
  vGravar: Boolean;
  vCodAnt : integer;
  vSel : Boolean;
  vVlrDesc : Real;
  vVlrAux : Real;
  vCont : Integer;
begin
  if Tag = 95 then
  begin
    oDBUtils.SetDataSourceProperties(Self,fDMCadNotaFiscal);
    SMDBGrid1.DataSource := fDMCadNotaFiscal.dsPedido;
    RxDBLookupCombo1.KeyValue := fDMCadNotaFiscal.mMObra_PedID_CFOP.AsInteger;
    prc_Consultar_Pedido(vTipo,fDMCadNotaFiscal.mMObra_PedID_Pedido.AsInteger,fDMCadNotaFiscal.mMObra_PedItem_Pedido.AsInteger);
  end;

  if (fDMCadNotaFiscal.cdsPedido.IsEmpty) then
    exit;

  if (vTipo_RegPed = 'C') and (RxDBLookupCombo1.Text = '') then
  begin
    MessageDlg('*** CFOP não foi informada!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;

  //09/11/2015
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  vCodAnt   := 0;
  vMsgErro  := '';
  vMsgAviso := '';
  try
    if fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
      fDMCadNotaFiscal.mPedAmbientes.EmptyDataSet;
    fDMCadNotaFiscal.cdsPedido.First;
    while not fDMCadNotaFiscal.cdsPedido.Eof do
    begin
      vSel := False;
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        vSel := True;
      if (fDMCadNotaFiscal.qParametros_FinUSA_NGR.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalNGR.AsString <> fDMCadNotaFiscal.cdsPedidoNGR.AsString) and
        (vSel) then
      begin
        MessageDlg('Pedido / Item: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' / ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString + ', não copiado devido divergência no NGR', mtInformation, [mbOk], 0);
        vSel := False;
      end;
      if (vSel) and (fDMCadNotaFiscal.qParametros_NFeUSA_PREFAT.AsString = 'S') then
      begin
        fDMCadNotaFiscal.qPreFat.Close;
        fDMCadNotaFiscal.qPreFat.ParamByName('ID_PEDIDO').AsInteger   := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
        fDMCadNotaFiscal.qPreFat.ParamByName('ITEM_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
        fDMCadNotaFiscal.qPreFat.Open;
        if fDMCadNotaFiscal.qPreFatCONTADOR.AsInteger > 0 then
        begin
          vMsgErro := vMsgErro + #13 + '*** Pedido: ' + fDMCadNotaFiscal.cdsPedidoPEDIDO_CLIENTE.AsString + '  Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString
                      + ', estão no Pré Faturamento';
          vSel := False;
        end;
      end;

      //if SMDBGrid1.SelectedRows.CurrentRowSelected then
      if vSel then
      begin
        //29/10/2016
        vGravar := True;
        if vTipo_RegPed = 'C' then
        begin
          if (fDMCadNotaFiscal.qParametros_OCPERMITIR_ENT_MAIOR.AsString <> 'S')
            and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) > StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoclQtd_Restante.AsFloat))) then
          begin
            vGravar := False;
            MessageDlg('*** Quantidade da Nota maior que a quantidade da OC !', mtError, [mbOk], 0);
          end;
        end;
        if vCodAnt > 0 then
        begin
          if vCodAnt <> fDMCadNotaFiscal.cdsPedidoID_CLIENTE.AsInteger then
          begin
            vGravar := False;
            MessageDlg('*** Somente pode ser selecionado pedidos do mesmo cliente!', mtError, [mbOk], 0);
          end;
        end;
        vCodAnt := fDMCadNotaFiscal.cdsPedidoID_CLIENTE.AsInteger;

        if vGravar then
        begin
          //06/04/2016
          if vTipo_RegPed <> 'C' then
          begin
            if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger <> fDMCadNotaFiscal.cdsPedidoID_VENDEDOR.AsInteger) then
            begin
              if fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount <= 0 then
                vMsgAviso := vMsgAviso + '*** Verificar o vendedor,  pedido diferente do cadastro do cliente... (Pedido: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ')' + #13
              else
                vMsgAviso := vMsgAviso + '*** Verificar o vendedor,  Pedido diferente da nota ou de outros pedidos que foram copiados para a nota.. (Pedido: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ')' + #13;
            end;
          end;
          //17/03/2016
          //if vTipo_RegPed <> 'C' then
          //begin

          //09/08/2018 calculando o desconto parcial
          vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat));
          if StrToFloat(FormatFloat('0.00',vVlrAux)) > 0 then
          begin
            if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) < StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD.AsFloat)) then
            begin
              vVlrAux := StrToFloat(FormatFloat('0.00',(StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) / StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD.AsFloat)))
                       * vVlrAux));
              fDMCadNotaFiscal.cdsPedido.Edit;
              if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat)) > 0 then
                fDMCadNotaFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux))
              else
                fDMCadNotaFiscal.cdsPedidoVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
              fDMCadNotaFiscal.cdsPedido.Post;
            end;
          end;
          //*******************

          if (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoLANCA_LOTE_CONTROLE.AsString = 'S')
            and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) > 0) and (vTipo_RegPed <> 'C')  then
              prc_Gerar_mLoteControle;
          if (fDMCadNotaFiscal.qParametros_EstGERAR_LOTE_AUT.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoCOPIAR_SELECIONADO.AsString = 'N') and
             (fDMCadNotaFiscal.cdsPedidoLANCA_LOTE_CONTROLE.AsString = 'S')  and (vTipo_RegPed <> 'C') then
            vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString + ', Não foi copiado, falta estoque com lote!'
          else
          if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsPedidoVLR_UNITARIO.AsFloat)) <= 0 then
            vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString + ', não possui valor'
          else
          if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.cdsPedidoID_CFOP.AsInteger <= 0) and (fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S') then
            vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString + ',  não possui CFOP'
          else
          if (fDMCadNotaFiscal.cdsParametrosPERMITE_QTDMAIOR_PEDIDO.AsString <> 'S') and (vTipo_RegPed <> 'C') and
             (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) >
              StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoclQtd_Restante.AsFloat))) then
            vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a pendente, Ped: ' +
                        fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString
          else
          if StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) > StrToFloat(FormatFloat('0.000000',0)) then
          begin
            //14/11/2015
            if fDMCadNotaFiscal.mLoteControle.IsEmpty then
            begin  //if abaixo já existia
              //26/05/2016  verificar o agrupamento dos itens na tabela cdsNotaFiscal_Tam
              if  (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') and (fDMCadNotaFiscal.cdsPedidoID_GRADE.AsInteger > 0) then
              begin
                prc_Gravar_NotaItens(False,0);
              end
              else
              if not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('Num_Pedido;Item_Pedido',VarArrayOf([fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsInteger,fDMCadNotaFiscal.cdsPedidoITEM.AsInteger]),[locaseinsensitive]) then
                prc_Gravar_NotaItens(False,0);
            end
            else
            begin
              //02/08/2019 foi colocado a linha do desconto, pois estava gerando o desconto integral em todos os lotes
              vVlrDesc := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat));
              vCont    := fDMCadNotaFiscal.mLoteControle.RecordCount;
              fDMCadNotaFiscal.mLoteControle.First;
              while not fDMCadNotaFiscal.mLoteControle.Eof do
              begin
                vVlrAux := StrToFloat(FormatFloat('0.00',0));
                if not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('Num_Pedido;Item_Pedido;Num_Lote_Controle',VarArrayOf([fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsInteger,fDMCadNotaFiscal.cdsPedidoITEM.AsInteger,fDMCadNotaFiscal.mLoteControleNum_Lote_Controle.AsString]),[locaseinsensitive]) then
                begin
                  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat)) > 0 then
                  begin
                    if vCont = 1 then
                      vVlrAux := StrToFloat(FormatFloat('0.00',vVlrDesc))
                    else
                    begin
                      vVlrAux := StrToFloat(FormatFloat('0.000',(fDMCadNotaFiscal.mLoteControleQtd.AsFloat / fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat) * 100));
                      //vVlrAux := StrToFloat(FormatFloat('0.00',((fDMCadNotaFiscal.cdsPedidoVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsPedidoVLR_DESCONTORATEIO.AsFloat) * vVlrAux) / 100));
                      vVlrAux := StrToFloat(FormatFloat('0.00',((vVlrDesc) * vVlrAux) / 100));
                      if StrToFloat(FormatFloat('0.00',vVlrAux)) > StrToFloat(FormatFloat('0.00',vVlrDesc)) then
                        vVlrAux := StrToFloat(FormatFloat('0.00',vVlrDesc));
                    end;
                    vCont    := vCont - 1;
                    vVlrDesc := StrToFloat(FormatFloat('0.00',vVlrDesc - vVlrAux));
                  end;
                  prc_Gravar_NotaItens(True,vVlrAux);
                end;
                fDMCadNotaFiscal.mLoteControle.Next;
              end;
            end;
          end
          else
            vMsgErro := vMsgErro + #13 + '*** Quantidade não informada, Ped: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString +
                        ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString;
          if fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
          begin
            if not fDMCadNotaFiscal.mPedAmbientes.FindKey([fDMCadNotaFiscal.cdsPedidoID.AsInteger]) then
            begin
              fDMCadNotaFiscal.mPedAmbientes.Insert;
              fDMCadNotaFiscal.mPedAmbientesID_Pedido.AsInteger := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
              fDMCadNotaFiscal.mPedAmbientes.Post;
            end;
          end;
        end;
      end;
      fDMCadNotaFiscal.cdsPedido.Next;
    end;
    //Alluminium 31/07/2015
    {if fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    begin
      //Trilhos/Roldanas
      prc_Montar_Acessorios;
    end;}
    if not(fDMCadNotaFiscal.mPedidoAux.IsEmpty) and ((fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') or (fDMCadNotaFiscal.cdsParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S')) then
    begin
      fDMCadNotaFiscal.mPedidoAux.First;
      while not fDMCadNotaFiscal.mPedidoAux.Eof do
      begin
        //26/01/2017  foi incluido o IF para poder colocar junto a obs
        if (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') then
        begin
          fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat + fDMCadNotaFiscal.mPedidoAuxVlr_Adiantamento.AsFloat));
          //11/05/2016
          fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat + fDMCadNotaFiscal.mPedidoAuxVlr_Entrada.AsFloat));
        end;
        //26/01/2017
        //if (fDMCadNotaFiscal.cdsParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S') and (trim(fDMCadNotaFiscal.mPedidoAuxOBS_Nota.AsString) <> '') then
         // fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.Value := fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.Value + '(' + fDMCadNotaFiscal.mPedidoAuxOBS_Nota.AsString + ')';
        //*********************
        fDMCadNotaFiscal.mPedidoAux.next;
      end;
    end;

  except
    on E: exception do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if trim(vMsgAviso) <> '' then
    MessageDlg(vMsgAviso, mtWarning, [mbOk], 0);
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0)
  else
  if trim(vMsgErro) = '' then
    Close;
end;

procedure TfrmSel_Pedido.prc_Gravar_Vale;
var
  vMsgErro: String;
begin
  if fDMCadVale.cdsPedido.IsEmpty then
    Exit;

  vMsgErro := '';
  try
    fDMCadVale.cdsPedido.First;
    while not fDMCadVale.cdsPedido.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        if (fDMCadVale.qParametrosPERMITE_QTDMAIOR_PEDIDO.AsString <> 'S') and
           (StrToFloat(FormatFloat('0.000000',fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat)) >
           StrToFloat(FormatFloat('0.000000',fDMCadVale.cdsPedidoclQtd_Restante.AsFloat))) then
          vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a pendente, Ped: ' +
                      fDMCadVale.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadVale.cdsPedidoITEM.AsString
        else
        if StrToFloat(FormatFloat('0.000000',fDMCadVale.cdsPedidoQTD_AFATURAR.AsFloat)) > StrToFloat(FormatFloat('0.000000',0)) then
          prc_Gravar_ValeItens
        else
          vMsgErro := vMsgErro + #13 + '*** Quantidade não informada, Ped: ' + fDMCadVale.cdsPedidoNUM_PEDIDO.AsString +
                     ' Item: ' + fDMCadVale.cdsPedidoITEM.AsString;
      end;
      fDMCadVale.cdsPedido.Next;
    end;
  except
    on E: exception do
    begin
      if fDMCadVale.cdsValeItens.State in [dsEdit,dsInsert] then
        fDMCadVale.cdsValeItens.Cancel;
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

procedure TfrmSel_Pedido.prc_Gravar_MObra;
var
  vMsgErro: String;
begin
  vMsgErro := '';
  fDMCadNotaFiscal.cdsPedido.First;
  while not fDMCadNotaFiscal.cdsPedido.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsPedidoVLR_UNITARIO.AsFloat)) <= 0 then
        vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString + ', não possui valor'
      else
      if (vTipo_RegPed = 'P') and (fDMCadNotaFiscal.cdsPedidoID_CFOP.AsInteger <= 0) and (fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S') then
        vMsgErro := vMsgErro + #13 + ' Ped: ' + fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString + ',  não possui CFOP'
      else
      if (fDMCadNotaFiscal.cdsParametrosPERMITE_QTDMAIOR_PEDIDO.AsString <> 'S') and
         (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) >
         StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoclQtd_Restante.AsFloat))) then
        vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a pendente, Ped: ' +
                    fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsString + ' Item: ' + fDMCadNotaFiscal.cdsPedidoITEM.AsString
      else
      if StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) > StrToFloat(FormatFloat('0.000000',0)) then
      begin
        if not fDMCadNotaFiscal.mMObra_Ped.Locate('Num_Pedido;Item_Pedido',VarArrayOf([fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsInteger,fDMCadNotaFiscal.cdsPedidoITEM.AsInteger]),[locaseinsensitive]) then
        begin
          if not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('Num_Pedido;Item_Pedido',VarArrayOf([fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsInteger,fDMCadNotaFiscal.cdsPedidoITEM.AsInteger]),[locaseinsensitive]) then
          begin
            fDMCadNotaFiscal.mMObra_Ped.Insert;
            fDMCadNotaFiscal.mMObra_PedID_Pedido.AsInteger     := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
            fDMCadNotaFiscal.mMObra_PedNum_Pedido.AsInteger    := fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsInteger;
            fDMCadNotaFiscal.mMObra_PedItem_Pedido.AsInteger   := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
            fDMCadNotaFiscal.mMObra_PedID_Produto.AsInteger    := fDMCadNotaFiscal.cdsPedidoID_PRODUTO.AsInteger;
            fDMCadNotaFiscal.mMObra_PedReferencia.AsString     := fDMCadNotaFiscal.cdsPedidoREFERENCIA.AsString;
            if fDMCadNotaFiscal.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
              fDMCadNotaFiscal.mMObra_PedNome_Produto.AsString   := fDMCadNotaFiscal.cdsPedidoNOME_PRODUTO_PED.AsString
            else
              fDMCadNotaFiscal.mMObra_PedNome_Produto.AsString   := fDMCadNotaFiscal.cdsPedidoNOMEPRODUTO.AsString;
            fDMCadNotaFiscal.mMObra_PedTamanho.AsString        := fDMCadNotaFiscal.cdsPedidoTAMANHO.AsString;
            fDMCadNotaFiscal.mMObra_PedPedido_Cliente.AsString := fDMCadNotaFiscal.cdsPedidoPEDIDO_CLIENTE.AsString;
            fDMCadNotaFiscal.mMObra_PedQtd.AsFloat             := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
            fDMCadNotaFiscal.mMObra_PedID_CFOP.AsInteger       := 0;
            fDMCadNotaFiscal.mMObra_PedCODCFOP.AsString        := '';
            fDMCadNotaFiscal.mMObra_Ped.Post;
          end;
        end;
      end;
    end;
    fDMCadNotaFiscal.cdsPedido.Next;
  end;
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
end;

procedure TfrmSel_Pedido.prc_scroll(DataSet: TDataSet);
begin
  if vTipo = 'VAL' then
  begin
    if fDmCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S' then
    begin
      fDmCadVale.cdsPedido_Tipo.Close;
      fDmCadVale.sdsPedido_Tipo.ParamByName('ID').AsInteger   := fDmCadVale.cdsPedidoID.AsInteger;
      fDmCadVale.sdsPedido_Tipo.ParamByName('ITEM').AsInteger := fDmCadVale.cdsPedidoITEM.AsInteger;
      fDmCadVale.cdsPedido_Tipo.Open;
    end;
  end
  else
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') or (fDMCadNotaFiscal.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') then
  begin
    fDMCadNotaFiscal.cdsPedido_Tipo.Close;
    fDMCadNotaFiscal.sdsPedido_Tipo.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
    fDMCadNotaFiscal.sdsPedido_Tipo.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
    fDMCadNotaFiscal.cdsPedido_Tipo.Open;
  end;
end;

function TfrmSel_Pedido.fnc_Desc_Estoque: Real;
var
  vQtdAux, vQtdAux2: Real;
  vComandoAux, vComandoAux2: String;
  i: Integer;
  vTamAux: String;
begin
  fDMCadNotaFiscal.cdsEstoque_Desc.Close;
  i := PosEx('GROUP',fDMCadNotaFiscal.ctqEstoque_Desc,0);
  vComandoAux  := copy(fDMCadNotaFiscal.ctqEstoque_Desc,i,Length(fDMCadNotaFiscal.ctqEstoque_Desc) - i + 1);
  vComandoAux2 := copy(fDMCadNotaFiscal.ctqEstoque_Desc,1,i-1);
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
    vComandoAux2 := vComandoAux2 + ' AND I.ID_COR = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger)
  else
    vComandoAux2 := vComandoAux2 + ' AND I.ID_COR IS NULL ';
  if trim(vTamAux) = '' then
    vTamAux := ''
  else
    vTamAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;

  fDMCadNotaFiscal.sdsEstoque_Desc.CommandText := vComandoAux2 + vComandoAux;
  fDMCadNotaFiscal.sdsEstoque_Desc.ParamByName('FILIAL').AsInteger       := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMCadNotaFiscal.sdsEstoque_Desc.ParamByName('ID_PEDIDO').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
  fDMCadNotaFiscal.sdsEstoque_Desc.ParamByName('ITEM_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
  fDMCadNotaFiscal.sdsEstoque_Desc.ParamByName('TAMANHO').AsString      := vTamAux;
  fDMCadNotaFiscal.sdsEstoque_Desc.ParamByName('ID_NOTA').AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
  fDMCadNotaFiscal.cdsEstoque_Desc.Open;
  vQtdAux := 0;
  fDMCadNotaFiscal.cdsEstoque_Desc.First;
  while not fDMCadNotaFiscal.cdsEstoque_Desc.Eof do
  begin
    if fDMCadNotaFiscal.cdsEstoque_DescTIPO_NOTA.AsString = 'S' then
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + fDMCadNotaFiscal.cdsEstoque_DescQTD.AsFloat))
    else
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux - fDMCadNotaFiscal.cdsEstoque_DescQTD.AsFloat));
    fDMCadNotaFiscal.cdsEstoque_Desc.Next;
  end;
  vQtdAux2 := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD.AsFloat - vQtdAux));
  if StrToFloat(FormatFloat('0.0000',vQtdAux2)) <= StrToFloat(FormatFloat('0.0000',0)) then
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat))
  else
  //if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= vQtdAux2 then
  //  vQtdAux := StrToFloat(FormatFloat('0.0000',0))
  //else
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQtd.AsFloat - vQtdAux2));
  if vQtdAux <= 0 then
    vQtdAux := StrToFloat(FormatFloat('0.0000',0));
  Result := StrToFloat(FormatFloat('0.0000',vQtdAux));

  {fDMCadNotaFiscal.cdsEstoque_Desc.SQL.Text := vComandoAux2 + vComandoAux;
  fDMCadNotaFiscal.cdsEstoque_Desc.ParamByName('FILIAL').AsInteger       := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMCadNotaFiscal.cdsEstoque_Desc.ParamByName('ID_PEDIDO').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
  fDMCadNotaFiscal.cdsEstoque_Desc.ParamByName('ITEM_PEDIDO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
  fDMCadNotaFiscal.cdsEstoque_Desc.ParamByName('TAMANHO').AsString      := vTamAux;
  fDMCadNotaFiscal.cdsEstoque_Desc.Open;
  vQtdAux := 0;
  while not fDMCadNotaFiscal.cdsEstoque_Desc.Eof do
  begin
    if fDMCadNotaFiscal.cdsEstoque_DescTIPO_NOTA.AsString = 'S' then
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + fDMCadNotaFiscal.cdsEstoque_DescQTD.AsFloat))
    else
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux - fDMCadNotaFiscal.cdsEstoque_DescQTD.AsFloat));
    fDMCadNotaFiscal.cdsEstoque_Desc.Next;
  end;
  vQtdAux2 := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD.AsFloat - vQtdAux));
  if StrToFloat(FormatFloat('0.0000',vQtdAux2)) <= StrToFloat(FormatFloat('0.0000',0)) then
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat))
  else
  if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= vQtdAux2 then
    vQtdAux := StrToFloat(FormatFloat('0.0000',0))
  else
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQtd.AsFloat - vQtdAux));
  Result := StrToFloat(FormatFloat('0.0000',vQtdAux));}

end;

function TfrmSel_Pedido.fnc_busca_Produto_Tipo(ID_Tipo: Integer): String;
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

function TfrmSel_Pedido.fnc_busca_Matriz_Preco(ID_Matriz: Integer): String;
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

procedure TfrmSel_Pedido.prc_Montar_Acessorios;
var
  sds: TSQLDataSet;
  vItemAux: Integer;
  vID_CFOPAux: Integer;
  vID_Variacao: Integer;
  vVlrAux: Real;
begin
  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    fDMCadNotaFiscal.mPedAmbientes.First;
    while not fDMCadNotaFiscal.mPedAmbientes.Eof do
    begin
      sds.Close;
      sds.CommandText   := 'SELECT ace.id, ace.tipo_reg, ace.item, ace.id_produto, ace.comprimento_volume, ace.qtd, ace.vlr_unitario, ace.vlr_total, '
                         + ' prod.nome, prod.referencia, prod.unidade FROM PEDIDO_ACE ace '
                         + ' inner join produto prod '
                         + ' on ace.id_produto = prod.id '
                         + ' WHERE ace.id = :ID_PEDIDO ';
      sds.ParamByName('ID_PEDIDO').AsInteger := fDMCadNotaFiscal.mPedAmbientesID_Pedido.AsInteger;
      sds.Open;
      while not sds.Eof do
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
        vID_CFOPAux  := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger;
        vID_Variacao := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger;
        vItemAux     := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;

        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger        := vItemAux;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := sds.FieldByName('ID_Produto').AsInteger;
        if (Tag = 95) then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo1.KeyValue;
          ffrmCadNotaFiscal_Itens.RxDBLookupCombo1.KeyValue       := RxDBLookupCombo1.KeyValue;
          ffrmCadNotaFiscal_Itens.RxDBLookupCombo1Exit(ffrmCadNotaFiscal_Itens);
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
        end
        else
        if (vTipo_RegPed = 'C') and (RxDBLookupCombo1.Text <> '') then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo1.KeyValue
        else
        if Tag = 11 then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.vID_CFOP;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
        end
        else
        if fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S' then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := vID_CFOPAux;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := vID_Variacao;
          fDMCadNotaFiscal.vID_Variacao                             := vID_Variacao;
        end
        else
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_VARIACAO.AsInteger;
          fDMCadNotaFiscal.vID_Variacao                             := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
        end;
        ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

        //fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := sds. fDMCadNotaFiscal.cdsPedidoUNIDADE.AsString;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.000000',sds.FieldByName('qtd').AsFloat));
        fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat     := 0;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := sds.FieldByName('Vlr_Unitario').AsFloat;
        if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
        else
          fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));

        if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat > 0 then
        begin
          if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
            vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100))
          else
            vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
          fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := sds.FieldByName('nome').AsString;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := sds.FieldByName('referencia').AsString;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
        fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := '';
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString        := '';
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString        := '';
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_TALAO.AsString        := '';
        fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_CLIENTE.AsInteger    := 0;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_PEDIDO.AsInteger      := 0;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensIMP_OC_NOTA.AsString      := '';
        fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString        := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString          := '';
        fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString    := 'S';

        ffrmCadNotaFiscal_Itens.vPedAmbiente := True;
        ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
        ffrmCadNotaFiscal_Itens.vPedAmbiente := False;

        if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

        sds.Next;
      end;

      fDMCadNotaFiscal.mPedAmbientes.Next;
    end;


  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmSel_Pedido.SMDBGrid1DblClick(Sender: TObject);
var
  vQtdAux: Real;
begin
  if not(fDMCadNotaFiscal.cdsPedido.Active) or (fDMCadNotaFiscal.cdsPedido.IsEmpty) then
    exit;

  if fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S' then
  begin
    frmInformar_Lote_Controle := TfrmInformar_Lote_Controle.Create(self);
    frmInformar_Lote_Controle.fDMCadNotaFiscal    := fDMCadNotaFiscal;
    frmInformar_Lote_Controle.vID_Produto         := fDMCadNotaFiscal.cdsPedidoID_PRODUTO.AsInteger;
    frmInformar_Lote_Controle.CurrencyEdit2.Value := fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat;
    frmInformar_Lote_Controle.ShowModal;
    FreeAndNil(frmInformar_Lote_Controle);
    if not fDMCadNotaFiscal.mLoteControle.IsEmpty then
    begin
      fDMCadNotaFiscal.mLoteControle.First;
      while not fDMCadNotaFiscal.mLoteControle.Eof do
      begin
        vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + fDMCadNotaFiscal.mLoteControleQtd.AsFloat));
        fDMCadNotaFiscal.mLoteControle.Next;
      end;
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat)) <> StrToFloat(FormatFloat('0.0000',vQtdAux)) then
      begin
        MessageDlg('*** Quantidade A Faturar diferente da informada nos Lotes!' +#13
                   + '*** O Sistema vai gravar a quantidade informada no Lote!', mtInformation, [mbOk], 0);
        fDMCadNotaFiscal.cdsPedido.Edit;
        fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.0000',vQtdAux));
        fDMCadNotaFiscal.cdsPedido.Post;
      end;
    end;
  end;
end;

procedure TfrmSel_Pedido.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmConsEstoque_Lote: TfrmConsEstoque_Lote;
begin
  if (Key = Vk_Return) and (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S') then
    SMDBGrid1DblClick(Sender)
  else
  if (Key = Vk_F2) then
  begin
    ffrmConsEstoque_Lote := TfrmConsEstoque_Lote.Create(Self);
    ffrmConsEstoque_Lote.vID_Produto_Lote := fDMCadNotaFiscal.cdsPedidoID_PRODUTO.AsInteger;
    ffrmConsEstoque_Lote.vID_Filial_Lote  := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
    ffrmConsEstoque_Lote.ShowModal;
    FreeAndNil(ffrmConsEstoque_Lote);
  end;
end;

procedure TfrmSel_Pedido.prc_Gerar_mLoteControle;
var
  vQtdPed: Real;
  vQtdAux: Real;
begin
  fDMCadNotaFiscal.mLoteControle.First;
  while not fDMCadNotaFiscal.mLoteControle.Eof do
    fDMCadNotaFiscal.mLoteControle.Delete;

  vQtdPed := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsPedidoQTD_AFATURAR.AsFloat));
  fDMCadNotaFiscal.cdsEstoqueLoteAux.Close;
  fDMCadNotaFiscal.sdsEstoqueLoteAux.ParamByName('ID_PRODUTO').AsInteger := fDMCadNotaFiscal.cdsPedidoID_PRODUTO.AsInteger;
  fDMCadNotaFiscal.sdsEstoqueLoteAux.ParamByName('FILIAL').AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMCadNotaFiscal.cdsEstoqueLoteAux.Open;
  fDMCadNotaFiscal.cdsEstoqueLoteAux.First;
  while not fDMCadNotaFiscal.cdsEstoqueLoteAux.Eof do
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsEstoqueLoteAuxQTD.AsFloat)) > StrToFloat(FormatFloat('0.0000',vQtdPed)) then
      vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdPed))
    else
      vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsEstoqueLoteAuxQTD.AsFloat));
    vQtdPed := StrToFloat(FormatFloat('0.0000',vQtdPed - vQtdAux));

    fDMCadNotaFiscal.mLoteControle.Insert;
    fDMCadNotaFiscal.mLoteControleID_Pedido.AsInteger        := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
    fDMCadNotaFiscal.mLoteControleItem_Pedido.AsInteger      := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
    fDMCadNotaFiscal.mLoteControleNum_Lote_Controle.AsString := fDMCadNotaFiscal.cdsEstoqueLoteAuxNUM_LOTE_CONTROLE.AsString;
    fDMCadNotaFiscal.mLoteControleQtd.AsFloat                := StrToFloat(FormatFloat('0.0000',vQtdAux));
    fDMCadNotaFiscal.mLoteControle.Post;
    if StrToFloat(FormatFloat('0.0000',vQtdPed)) <= 0 then
      fDMCadNotaFiscal.cdsEstoqueLoteAux.Last;

    fDMCadNotaFiscal.cdsEstoqueLoteAux.Next;
  end;

  if StrToFloat(FormatFloat('0.0000',vQtdPed)) > 0 then
  begin
    fDMCadNotaFiscal.cdsPedido.Edit;
    fDMCadNotaFiscal.cdsPedidoCOPIAR_SELECIONADO.AsString := 'N';
    fDMCadNotaFiscal.cdsPedido.Post;
  end;
end;

function TfrmSel_Pedido.fnc_Qtd_Pedidos(Tipo_Reg: String; ID_Cliente,
  Filial: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'Select COUNT(1) CONTADOR FROM PEDIDO PE '
                       + ' INNER JOIN PEDIDO_ITEM PI ON (PE.ID = PI.ID) '
                       + ' WHERE PI.qtd_restante > 0 '
                       + ' AND PI.TIPO_REG = :TIPO_REG AND PE.ID_CLIENTE = :ID_CLIENTE '
                       + ' and pe.filial <> :FILIAL ';
    sds.ParamByName('TIPO_REG').AsString    := Tipo_Reg;
    sds.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;
    sds.ParamByName('FILIAL').AsInteger     := Filial;
    sds.Open;

    Result := sds.FieldByName('CONTADOR').AsInteger;
    sds.Close;

  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmSel_Pedido.edtPedidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    btnPesquisarClick(Sender);
end;

end.
