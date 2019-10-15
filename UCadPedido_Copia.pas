unit UCadPedido_Copia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadPedido, UDMCopiaPedido, StdCtrls,
  Mask, ToolEdit, CurrEdit, Buttons, ExtCtrls, ComCtrls;

type
  TfrmCadPedido_Copia = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnCopiar: TBitBtn;
    btnCancelar: TBitBtn;
    ProgressBar1: TProgressBar;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vCodCFOP_COP: String;

    procedure prc_Abrir_Pedido(ID_Pedido: Integer);

    procedure prc_Copiar_Pedido;
    procedure prc_Copiar_Pedido_Itens;
    procedure prc_Inicio_Tela;
  public
    { Public declarations }
    fDMCopiaPedido: TDMCopiaPedido;
    fDMCadPedido: TDMCadPedido;
    vNum_Pedido: Integer;
    vFatorMultiplicador: Real;
    vPercentualAcrescimo: Real;

    procedure prc_Le_Aux;
  end;

var
  frmCadPedido_Copia: TfrmCadPedido_Copia;

implementation

uses DB, uUtilPadrao, uGrava_Pedido, classe.CalcularPeso;

{$R *.dfm}

procedure TfrmCadPedido_Copia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_Copia.prc_Abrir_Pedido(ID_Pedido: Integer);
begin
  fDMCopiaPedido.cdsPedido.Close;
  fDMCopiaPedido.sdsPedido.ParamByName('ID').AsInteger := ID_Pedido;
  fDMCopiaPedido.cdsPedido.Open;

  fDMCopiaPedido.cdsPedido_Itens.Close;
  fDMCopiaPedido.cdsPedido_Itens.Open;
  fDMCopiaPedido.cdsPedido_Item_Tipo.Close;
  fDMCopiaPedido.cdsPedido_Item_Tipo.Open;
  fDMCopiaPedido.cdsPedido_Item_Processo.Close;
  fDMCopiaPedido.cdsPedido_Item_Processo.Open;
end;

procedure TfrmCadPedido_Copia.btnCopiarClick(Sender: TObject);
var
  vIDAux: Integer;
  vNumNota: Integer;
begin
  if fDMCopiaPedido.cdsPedido.IsEmpty then
  begin
    MessageDlg('*** Pedido não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCopiaPedido.cdsPedidoCANCELADO.AsString = 'S' then
  begin
    MessageDlg('*** Pedido cancelado, não pode ser copiado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (CheckBox1.Checked) and (DateEdit1.Date <= 10) then
  begin
    MessageDlg('*** Data de entrega não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadPedido.Tag := 1;
  prc_Copiar_Pedido;
  prc_Copiar_Pedido_Itens;
  Close;
end;

procedure TfrmCadPedido_Copia.prc_Copiar_Pedido;
var
  i: Integer;
begin
  UGrava_Pedido.prc_Inserir_Ped(fDMCadPedido);
  for i := 0 to ( fDMCopiaPedido.cdsPedido.FieldCount - 1) do
  begin
    if (fDMCopiaPedido.cdsPedido.Fields[i].FieldName <> 'ID') and (fDMCopiaPedido.cdsPedido.Fields[i].FieldName <> 'DTEMISSAO') and
       (fDMCopiaPedido.cdsPedido.Fields[i].FieldName <> 'NUM_PEDIDO') and (fDMCopiaPedido.cdsPedido.Fields[i].FieldName <> 'PEDIDO_CLIENTE') and
       (fDMCopiaPedido.cdsPedido.Fields[i].FieldName <> 'GEROU_PRODUCAO') and (fDMCopiaPedido.cdsPedido.Fields[i].FieldName <> 'NUM_ORCAMENTO') and
       (fDMCopiaPedido.cdsPedido.Fields[i].FieldName <> 'APROVADO_ORC') then
      fDMCadPedido.cdsPedido.FieldByName(fDMCopiaPedido.cdsPedido.Fields[i].FieldName).AsVariant := fDMCopiaPedido.cdsPedido.Fields[i].Value;
  end;
  if CheckBox1.Checked then
    fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime := DateEdit1.Date;
end;

procedure TfrmCadPedido_Copia.prc_Copiar_Pedido_Itens;
var
  i: Integer;
begin
  ProgressBar1.Max      := fDMCopiaPedido.cdsPedido_Itens.RecordCount;
  ProgressBar1.Position := 0;
  fDMCopiaPedido.cdsPedido_Itens.First;
  while not fDMCopiaPedido.cdsPedido_Itens.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    fDMCadPedido.prc_Inserir_Itens;
    for i := 0 to ( fDMCopiaPedido.cdsPedido_Itens.FieldCount - 1) do
    begin
      if (fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName <> 'ID') and (fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName <> 'sdsPedido_Item_Tipo') then
        fDMCadPedido.cdsPedido_Itens.FieldByName(fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName).AsVariant := fDMCopiaPedido.cdsPedido_Itens.Fields[i].Value;
    end;
    fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsInteger := 0;
    fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsInteger  := 0;
    fDMCadPedido.cdsPedido_ItensQTD_FUT.AsInteger       := 0;
    fDMCadPedido.cdsPedido_ItensQTD_LIBERADA.AsInteger  := 0;
    fDMCadPedido.cdsPedido_ItensQTD_PECA.AsInteger      := 0;
    fDMCadPedido.cdsPedido_ItensQTD_PRODUZIDA.AsInteger := 0;
    fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat    := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    fDMCadPedido.cdsPedido_ItensID_MOVESTOQUE.AsInteger := 0;
    if CheckBox1.Checked then
      fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := DateEdit1.Date;
    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') and (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') then
      fDMCadPedido.cdsPedido_ItensAPROVADO_ITEM.AsString := 'P'
    else
    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'C') and (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') then
      fDMCadPedido.cdsPedido_ItensAPROVADO_ITEM.AsString := 'P';
    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'O') then
      fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString := 'P';
    fDMCadPedido.cdsPedido_ItensMOTIVO_NAO_APROV.Clear;
    fDMCadPedido.cdsPedido_ItensDTAPROVADO_NAO.Clear;
    fDMCadPedido.cdsPedido_Itens.Post;

    //26/09/2016
    fDMCopiaPedido.cdsPedido_Item_Tipo.First;
    while not fDMCopiaPedido.cdsPedido_Item_Tipo.Eof do
    begin
      fDMCadPedido.cdsPedido_Item_Tipo.Insert;
      fDMCadPedido.cdsPedido_Item_TipoID.AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
      fDMCadPedido.cdsPedido_Item_TipoITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
      for i := 0 to ( fDMCopiaPedido.cdsPedido_Item_Tipo.FieldCount - 1) do
      begin
        if (fDMCopiaPedido.cdsPedido_Item_Tipo.Fields[i].FieldName <> 'ID') then
          fDMCadPedido.cdsPedido_Item_Tipo.FieldByName(fDMCopiaPedido.cdsPedido_Item_Tipo.Fields[i].FieldName).AsVariant := fDMCopiaPedido.cdsPedido_Item_Tipo.Fields[i].Value;
      end;
      fDMCadPedido.cdsPedido_Item_Tipo.Post;
      fDMCopiaPedido.cdsPedido_Item_Tipo.Next;
    end;
    //****************

    fDMCopiaPedido.cdsPedido_Itens.Next;
  end;

  fDMCopiaPedido.cdsPedido_Desconto.First;
  while not fDMCopiaPedido.cdsPedido_Desconto.Eof do
  begin
    fDMCadPedido.cdsPedido_Desconto.Insert;
    fDMCadPedido.cdsPedido_DescontoID.AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
    for i := 0 to ( fDMCopiaPedido.cdsPedido_Desconto.FieldCount - 1) do
    begin
      if (fDMCopiaPedido.cdsPedido_Desconto.Fields[i].FieldName <> 'ID') then
        fDMCadPedido.cdsPedido_Desconto.FieldByName(fDMCopiaPedido.cdsPedido_Desconto.Fields[i].FieldName).AsVariant := fDMCopiaPedido.cdsPedido_Desconto.Fields[i].Value;
    end;
    fDMCadPedido.cdsPedido_Desconto.Post;

    fDMCopiaPedido.cdsPedido_Desconto.Next;
  end;
end;

procedure TfrmCadPedido_Copia.btnCancelarClick(Sender: TObject);
begin
  fDMCadPedido.Tag := 0;
  Close;
end;

procedure TfrmCadPedido_Copia.prc_Inicio_Tela;
begin
  //26/09/2016
  //CurrencyEdit1.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  //************
  prc_Abrir_Pedido(fDMCadPedido.cdsPedido_ConsultaID.AsInteger);
end;

procedure TfrmCadPedido_Copia.FormShow(Sender: TObject);
begin
  fDMCadPedido.Tag := 0;
  CurrencyEdit1.AsInteger := vNum_Pedido;
  prc_Abrir_Pedido(fDMCadPedido.cdsPedido_ConsultaID.AsInteger);
  //prc_Inicio_Tela;
end;

procedure TfrmCadPedido_Copia.CheckBox1Click(Sender: TObject);
begin
  Label3.Visible    := CheckBox1.Checked;
  DateEdit1.Visible := CheckBox1.Checked;
end;

procedure TfrmCadPedido_Copia.FormCreate(Sender: TObject);
begin
  fDMCopiaPedido := TDMCopiaPedido.Create(Self);
end;

procedure TfrmCadPedido_Copia.prc_Le_Aux;
var
  vID_Ant: Integer;
  vItem_Aux: Integer;
  i: Integer;
  vCalcular: TCalcluar_Peso;
begin
  vID_Ant := 0;
  fDMCopiaPedido.mAux.First;
  while not fDMCopiaPedido.mAux.Eof do
  begin
    if vID_Ant <> fDMCopiaPedido.mAuxID_Pedido.AsInteger then
      prc_Abrir_Pedido(fDMCopiaPedido.mAuxID_Pedido.AsInteger);

    if fDMCopiaPedido.cdsPedido_Itens.Locate('ITEM',fDMCopiaPedido.mAuxItem_Pedido.AsInteger,[loCaseInsensitive]) then
    begin
      fDMCadPedido.prc_Inserir_Itens;
      for i := 0 to ( fDMCopiaPedido.cdsPedido_Itens.FieldCount - 1) do
      begin
        if (fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName <> 'ID') and (fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName <> 'sdsPedido_Item_Tipo') and
           (fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName <> 'ITEM') then
          fDMCadPedido.cdsPedido_Itens.FieldByName(fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName).AsVariant := fDMCopiaPedido.cdsPedido_Itens.Fields[i].Value;
      end;
      fDMCadPedido.cdsPedido_ItensDTENTREGA.Clear;
      if vFatorMultiplicador > 0 then
        fDMCadPedido.cdsPedido_ItensQTD.AsFloat := vFatorMultiplicador * fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
      if vFatorMultiplicador > 1 then
        fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat + (fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * (vFatorMultiplicador / 100));
      fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat;
      fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsInteger := 0;
      fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsInteger  := 0;
      fDMCadPedido.cdsPedido_ItensQTD_FUT.AsInteger       := 0;
      fDMCadPedido.cdsPedido_ItensQTD_LIBERADA.AsInteger  := 0;
      fDMCadPedido.cdsPedido_ItensQTD_PECA.AsInteger      := 0;
      fDMCadPedido.cdsPedido_ItensQTD_PRODUZIDA.AsInteger := 0;
      fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat    := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
      fdmcadpedido.cdsPedido_ItensITEM_ORIGINAL.AsInteger := fdmcadpedido.cdsPedido_ItensITEM.AsInteger;
      fDMCadPedido.cdsPedido_Itens.Post;
      
      if (fDMCadPedido.qParametros_PedUSA_PROCESSO_SIMPLES.AsString = 'S') and (fDMCopiaPedido.cdsPedido_Item_Processo.RecordCount > 0) then
      begin
        fDMCopiaPedido.cdsPedido_Item_Processo.First;
        while not fDMCopiaPedido.cdsPedido_Item_Processo.Eof do
        begin
          fDMCadPedido.cdsPedido_Item_Processo.Insert;
          for i := 0 to ( fDMCopiaPedido.cdsPedido_Item_Processo.FieldCount - 1) do
          begin
            if (fDMCopiaPedido.cdsPedido_Item_Processo.Fields[i].FieldName <> 'ID') and (fDMCopiaPedido.cdsPedido_Item_Processo.Fields[i].FieldName <> 'ITEM') then
              fDMCadPedido.cdsPedido_Itens.FieldByName(fDMCopiaPedido.cdsPedido_Itens.Fields[i].FieldName).AsVariant := fDMCopiaPedido.cdsPedido_Itens.Fields[i].Value;
          end;
          fDMCadPedido.cdsPedido_Item_ProcessoID.AsInteger   := fDMCadPedido.cdsPedidoID.AsInteger;
          fDMCadPedido.cdsPedido_Item_ProcessoITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
          fDMCadPedido.cdsPedido_Item_ProcessoQTD.AsFloat    := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
          fDMCadPedido.cdsPedido_Item_ProcessoDTBAIXA.Clear;
          fDMCadPedido.cdsPedido_Item_ProcessoDTENTRADA.Clear;
          fDMCadPedido.cdsPedido_Item_ProcessoHRENTRADA.Clear;
          fDMCadPedido.cdsPedido_Item_ProcessoHRSAIDA.Clear;
          fDMCadPedido.cdsPedido_Item_Processo.Post;
          fDMCopiaPedido.cdsPedido_Item_Processo.Next;
        end;
      end;
      //26/09/2016
      fDMCopiaPedido.cdsPedido_Item_Tipo.First;
      while not fDMCopiaPedido.cdsPedido_Item_Tipo.Eof do
      begin
        fDMCadPedido.cdsPedido_Item_Tipo.Insert;
        fDMCadPedido.cdsPedido_Item_TipoID.AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
        fDMCadPedido.cdsPedido_Item_TipoITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
        for i := 0 to ( fDMCopiaPedido.cdsPedido_Item_Tipo.FieldCount - 1) do
        begin
          if (fDMCopiaPedido.cdsPedido_Item_Tipo.Fields[i].FieldName <> 'ID') and (fDMCopiaPedido.cdsPedido_Item_Tipo.Fields[i].FieldName <> 'ITEM') then
            fDMCadPedido.cdsPedido_Item_Tipo.FieldByName(fDMCopiaPedido.cdsPedido_Item_Tipo.Fields[i].FieldName).AsVariant := fDMCopiaPedido.cdsPedido_Item_Tipo.Fields[i].Value;
        end;

        fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat := fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat * vFatorMultiplicador;
        fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat := fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat + (fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat * (vPercentualAcrescimo / 100));
        vCalcular := TCalcluar_Peso.Create;
        try
          vCalcular.Espessura    := fDMCadPedido.cdsPedido_Item_TipoESPESSURA.AsFloat;
          vCalcular.Largura      := fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat;
          vCalcular.Comprimento  := fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat;
          vCalcular.FatorCalculo := fDMCadPedido.cdsPedido_Item_TipoFATOR_CALCULO.AsFloat;
          vCalcular.CalcularPeso;
          fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat := vCalcular.Peso;

          vCalcular.ValorDobra   := fDMCadPedido.cdsPedido_Item_TipoVLR_DOBRA.AsFloat;
          vCalcular.PrecoKG      := fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat;
          vCalcular.Quantidade   := fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat;

          vCalcular.CalcularVlrUnitario;
          vCalcular.CalcularVlrTotal;
          fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := vCalcular.ValorUnitario;

          fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat    := vCalcular.ValorTotal;

        finally
          vCalcular.Free;
        end;

        fDMCadPedido.cdsPedido_Item_Tipo.Post;
        fDMCopiaPedido.cdsPedido_Item_Tipo.Next;
      end;
      //****************
    end;

    fDMCopiaPedido.mAux.Next;
  end;
end;

end.
