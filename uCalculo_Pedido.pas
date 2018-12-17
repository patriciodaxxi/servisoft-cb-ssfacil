unit uCalculo_Pedido;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, Messages, Controls, Graphics, UDMCadPedido, Variants, DB;
                                                      
  procedure prc_Monta_Itens_Imp(fDMCadPedido: TDMCadPedido; Rotulo: Boolean = False);
  procedure prc_Calcular_Desconto_Novo(fDMCadPedido: TDMCadPedido; Repetir: Boolean);
  procedure prc_Calculo_GeralItem(fDMCadPedido: TDMCadPedido; Qtd,VlrUnitario,DescontoItem,PercDescontoItem,VlrTotal: Real);
  procedure prc_Calcular_ICMS_Novo(fDMCadPedido: TDMCadPedido; VlrTotal, VlrDesconto, VlrIPI, PercIcms: Real; CodSitTrib: Integer);
  procedure prc_Calcular_ICMSSimples_Novo(fDMCadPedido: TDMCadPedido; VlrTotal: Real; CodSitTrib: Integer);
  function fnc_Calcular_IPI_Novo(fDMCadPedido: TDMCadPedido; VlrTotal, VlrDesconto, PercIPI: Real): Real;
  procedure prc_Calcular_Trilhos(fDMCadPedido: TDMCadPedido);
  procedure prc_Calcular_Roldanas(fDMCadPedido: TDMCadPedido);
  procedure prc_Gravar_Pedido_Parc(fDMCadPedido: TDMCadPedido; Parcela, ID_TipoCobranca, ID_Conta: Integer; Data: TDateTime; Valor: Real);
  function fnc_Gerar_Pedido_Parc(fDMCadPedido: TDMCadPedido): Boolean;
  procedure prc_Calcular_SubstTributaria_ICMS(fDMCadPedido: TDMCadPedido);
  procedure prc_Gravar_mEmbalagem(fDMCadPedido: TDMCadPedido; ID_Pedido: Integer);
  procedure prc_Calcula_Perc_Comissao(fDMCadPedido: TDMCadPedido);
  procedure prc_Calcular_ICMS_UF_Dest(fDMCadPedido: TDMCadPedido);     
  function fnc_busca_icm(fDMCadPedido: TDMCadPedido): Real;
  function fnc_Proximo_Num_Pedido(Tipo_Reg, Usa_Filial: String; vNum_Proximo: Integer): Integer;
  procedure prc_Gerar_Consumo(fDMCadPedido: TDMCadPedido);
  function fnc_Busca_Embalagem(ID_Produto: Integer): Integer;
  function fnc_Num_Pedido_Vend(ID_Vendedor : Integer) : String;
  procedure prc_Calcular_Diferencial_ICMS(fDMCadPedido: TDMCadPedido);

  procedure prc_Calcular_Frete_Novo(fDMCadPedido: TDMCadPedido);

  procedure prc_Calcular_Lucratividade(fDMCadPedido: TDMCadPedido; Tipo :String); //C= Calcula    V=Verifica

  procedure prc_Posicionar_Regra_Empresa(fDMCadPedido: TDMCadPedido; ID_Operacao: Integer; Finalidade: String);

  function fnc_Calcula_Ace_Roldana(fDMCadPedido: TDMCadPedido): Real;

  procedure prc_Inf_Lucratividade(fDMCadPedido: TDMCadPedido);

  //procedure prc_Abrir_qNCM_UF(fDMCadPedido: TDMCadPedido; ID_NCM: Integer; UF, Importado_Nacional: String);
  //procedure prc_Abrir_qProduto_UF(fDMCadPedido: TDMCadPedido; ID_NCM: Integer; UF: String);

implementation

uses uUtilPadrao, DateUtils, SysConst;

var
  vCalcFrete, vCalcTotalNota: Real;
  vContadorOutros: Integer;

procedure prc_Monta_Itens_Imp(fDMCadPedido: TDMCadPedido; Rotulo: Boolean = False);
var
  vItem: Integer;
  vNumOS: String;
  vID_Comb: Integer;
  vOpcao_RelAux: String;
  vCarimbo, vCarimboAux: String;
  vMatAux, vMatAux1, vMatAux2: String;
  vCorAux1, vCorAux2: String;
  i, i2: Integer;
  vItem_Imp: Integer;
  vQtd_Caixa: Integer;
  vItem_Rot: Integer;
  vMSGAux: WideString;
  vQtdAux: Integer;
  vItem_Tam: Integer;
  vQtdTotal: Integer;
  vDtEntrega: TDateTime;
  vVlr_Unitario: Real;
  vNum_Folha_Rot: Integer;
  vID_Atelier_Ant: Integer;
  vReferencia_Ant, vNomeProduto_Ant: String;
  vID_Produto_Ant: Integer;
  vNome_Atelier_Ant: String;
  vItem_Original_Ant: Integer;

   procedure prc_Gravar_mItensImp_Rot(Item_Rot, Qtd: Integer);
   var
     vNumAux: Integer;
   begin
     if fDMCadPedido.mItensImp_Rot.Locate('Item;Item_Rot',VarArrayOf([fDMCadPedido.mItensImpItem.AsInteger,Item_Rot]),[locaseinsensitive]) then
       fDMCadPedido.mItensImp_Rot.Edit
     else
     begin
       fDMCadPedido.mItensImp_Rot.Insert;
       fDMCadPedido.mItensImp_RotItem.AsInteger     := fDMCadPedido.mItensImpItem.AsInteger;
       fDMCadPedido.mItensImp_RotItem_Rot.AsInteger := Item_Rot;
       //aqui 05/05/2016
       vNumAux := Item_Rot div 10;
       if Item_Rot  mod 10 > 0 then
         vNumAux := vNumAux + 1;
       fDMCadPedido.mItensImp_RotNum_Folha.AsInteger := vNumAux;
     end;
     fDMCadPedido.mItensImp_Rot.FieldByName('Qtd'+IntToStr(vItem_Tam)).AsInteger := Qtd;
     fDMCadPedido.mItensImp_RotQtdTotal.AsInteger := fDMCadPedido.mItensImp_RotQtdTotal.AsInteger + Qtd;
     //aqui foi tirado 28/04/2016 porque não vai ser usado o total na linha dos rótulos
     //fDMCadPedido.mItensImp_Rot.FieldByName('Qtd'+IntToStr(fDMCadPedido.mItensImp_Tam.RecordCount + 1)).AsInteger := fDMCadPedido.mItensImp_RotQtdTotal.AsInteger;
     fDMCadPedido.mItensImp_Rot.Post;
   end;

begin
  if not Rotulo then
  begin
    fDMCadPedido.mItensImp.First;
    while not fDMCadPedido.mItensImp.Eof do
    begin
      fDMCadPedido.mItensImp_Tam.First;
      while not fDMCadPedido.mItensImp_Tam.Eof do
        fDMCadPedido.mItensImp_Tam.Delete;
      fDMCadPedido.mItensImp_Mat.First;
      while not fDMCadPedido.mItensImp_Mat.Eof do
        fDMCadPedido.mItensImp_Mat.Delete;
      fDMCadPedido.mItensImp_Rot.First;
      while not fDMCadPedido.mItensImp_Rot.Eof do
        fDMCadPedido.mItensImp_Rot.Delete;
      fDMCadPedido.mItensImp.Delete;
    end;
    vItem := 0;
  end
  else
    vItem := fDMCadPedido.vItem_Rotulo;
  vOpcao_RelAux := 'P';
  if (fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString <> 'S') and (fDMCadPedido.cdsParametrosOPCAO_REL_PED_AGRUPADO.AsString = 'I') then
    vOpcao_RelAux := 'I';
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString <> 'S' then
    vOpcao_RelAux := 'I';

  fDMCadPedido.mItensImp.IndexFieldNames := 'Item';
  vItem_Imp := 0;
  vID_Atelier_Ant := 0;
  i := 0;
  fDMCadPedido.cdsPedidoImp_Itens.First;
  while not fDMCadPedido.cdsPedidoImp_Itens.Eof do
  begin
    if fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
      vDtEntrega := fDMCadPedido.cdsPedidoImpDTENTREGA.AsDateTime
    else
      vDtEntrega := fDMCadPedido.cdsPedidoImp_ItensDTENTREGA.AsDateTime;
    if vDtEntrega <= 10 then
      vDtEntrega := fDMCadPedido.cdsPedidoImpDTEMISSAO.AsDateTime;
    vVlr_Unitario := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat));

    vID_Comb := 0;
    if fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger > 0 then
      vID_Comb := fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger;
    if trim(fDMCadPedido.cdsPedidoImp_ItensCARIMBO.AsString) <> '' then
    begin
      vCarimbo    := fDMCadPedido.cdsPedidoImp_ItensCARIMBO.AsString;
      vCarimboAux := TirarAcento(trim(vCarimbo));
    end
    else
    begin
      vCarimbo    := '';
      vCarimboAux := '';
    end;

    if (vOpcao_RelAux = 'I') and (fDMCadPedido.mItensImp.Locate('Item_Original',fDMCadPedido.cdsPedidoImp_ItensITEM_ORIGINAL.AsInteger,([Locaseinsensitive]))) then
      fDMCadPedido.mItensImp.Edit
    else
    if (fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString <> 'S') and (vOpcao_RelAux <> 'I') and
       (fDMCadPedido.mItensImp.Locate('ID_PRODUTO;NumOS;ID_Combinacao;CarimboAux;DtEntrega',VarArrayOf([fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedidoImp_ItensNUMOS.AsString,vID_Comb,vCarimboAux,vDtEntrega]),[locaseinsensitive])) then
      fDMCadPedido.mItensImp.Edit
    else
    begin
      if (fDMCadPedido.vImpPedTerceiro) and (fDMCadPedido.cdsPedidoImp_ItensID_ATELIER.AsInteger <> vID_Atelier_Ant) then
      begin
        i := 3 - i;
        for i2 := 1 to i do
        begin
          vItem := vItem + 1;
          fDMCadPedido.mItensImp.Insert;
          fDMCadPedido.mItensImpItem.AsInteger          := vItem;
          fDMCadPedido.mItensImpItem_Imp.AsInteger      := vItem_Imp;
          fDMCadPedido.mItensImpItem_Original.AsInteger := vItem_Original_Ant;
          fDMCadPedido.mItensImpID_Produto.AsInteger    := vID_Produto_Ant;
          fDMCadPedido.mItensImpNome_Produto.AsString   := vNomeProduto_Ant;
          fDMCadPedido.mItensImpNome_Atelier.AsString   := vNome_Atelier_Ant;
          fDMCadPedido.mItensImpReferencia.AsString     := vReferencia_Ant;
          fDMCadPedido.mItensImpNaoImprimir.AsString    := 'S';
          fDMCadPedido.mItensImp.Post;
        end;
        i := 0;

        //fDMCadPedido.cdsPedidoImp_Itens.Next;
        //continue;
      end;


      vID_Atelier_Ant    := fDMCadPedido.cdsPedidoImp_ItensID_ATELIER.AsInteger;
      vID_Produto_Ant    := fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger;
      vNomeProduto_Ant   := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
      vReferencia_Ant    := fDMCadPedido.cdsPedidoImp_ItensREFERENCIA.AsString;
      vNome_Atelier_Ant  := fDMCadPedido.cdsPedidoImp_ItensNOME_ATELIER.AsString;
      vItem_Original_Ant := fDMCadPedido.cdsPedidoImp_ItensITEM_ORIGINAL.AsInteger;

      if (i = 0) or (i > 2) then
      begin
        vItem_Imp := vItem_Imp + 1;
        i := 0;
      end;
      i := i + 1;
      vItem := vItem + 1;
      if Rotulo then
        fDMCadPedido.vItem_Rotulo := vItem;
      fDMCadPedido.mItensImp.Insert;
      fDMCadPedido.mItensImpItem.AsInteger          := vItem;
      fDMCadPedido.mItensImpItem_Imp.AsInteger      := vItem_Imp;
      fDMCadPedido.mItensImpItem_Original.AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM_ORIGINAL.AsInteger;
      fDMCadPedido.mItensImpID_Produto.AsInteger    := fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger;
      fDMCadPedido.mItensImpNumOS.AsString          := fDMCadPedido.cdsPedidoImp_ItensNUMOS.AsString;
      fDMCadPedido.mItensImpCarimbo.AsString        := vCarimbo;
      fDMCadPedido.mItensImpCarimboAux.AsString     := vCarimboAux;
      fDMCadPedido.mItensImpFilial.AsInteger        := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;
      fDMCadPedido.mItensImpID_Combinacao.AsInteger := vID_Comb;
      if fDMCadPedido.mItensImpID_Combinacao.AsInteger > 0 then
        fDMCadPedido.mItensImpNome_Combinacao.AsString := fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString
      else
        fDMCadPedido.mItensImpNome_Combinacao.AsString := '';
      fDMCadPedido.mItensImpDtEntrega.AsDateTime := vDtEntrega;
      if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
        fDMCadPedido.prc_Abrir_ProdutoLoja(fdmcadpedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger,'','')
      else
        fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
      if fDMCadPedido.cdsProdutoID_GRADE.AsInteger > 0 then
        fDMCadPedido.mItensImpNome_Produto.AsString := fDMCadPedido.cdsProdutoNOME.AsString
      else
        fDMCadPedido.mItensImpNome_Produto.AsString := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
      fDMCadPedido.mItensImpNome_Produto2.AsString := fDMCadPedido.mItensImpNome_Produto.AsString; 
      if fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger > 0 then
        fDMCadPedido.mItensImpNome_Produto.AsString := fDMCadPedido.mItensImpNome_Produto.AsString + ' ' +
                                                       fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString;

      fDMCadPedido.mItensImpReferencia.AsString   := fDMCadPedido.cdsPedidoImp_ItensREFERENCIA.AsString;
      fDMCadPedido.mItensImpVlr_Unitario.AsFloat  := fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat;
      fDMCadPedido.mItensImpOBS.Clear;
      fDMCadPedido.mItensImpUnidade.AsString := fDMCadPedido.cdsPedidoImp_ItensUNIDADE.AsString;
      //Material
      if (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S') and not(Rotulo) then
      begin
        fDMCadPedido.cdsPedidoImp_Mat.Close;
        fDMCadPedido.sdsPedidoImp_Mat.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
        fDMCadPedido.sdsPedidoImp_Mat.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
        fDMCadPedido.cdsPedidoImp_Mat.Open;
        fDMCadPedido.cdsPedidoImp_Mat.First;
        while not fDMCadPedido.cdsPedidoImp_Mat.Eof do
        begin
          if fDMCadPedido.mItensImp_Mat.Locate('ID_Material',fDMCadPedido.cdsPedidoImp_MatID_PRODUTO.AsInteger,([Locaseinsensitive])) then
            fDMCadPedido.mItensImp_Mat.Edit
          else
          begin
            fDMCadPedido.mItensImp_Mat.Insert;
            fDMCadPedido.mItensImp_MatItem.AsInteger         := vItem;
            fDMCadPedido.mItensImp_MatID_Material.AsInteger  := fDMCadPedido.cdsPedidoImp_MatID_PRODUTO.AsInteger;
            fDMCadPedido.mItensImp_MatNome_Material.AsString := fDMCadPedido.cdsPedidoImp_MatNOME_MATERIAL.AsString;
            fDMCadPedido.mItensImp_MatVlr_Unitario.AsFloat   := fDMCadPedido.cdsPedidoImp_MatVLR_UNITARIO.AsFloat;
          end;
          fDMCadPedido.mItensImp_MatQtd_Consumo.AsFloat       := fDMCadPedido.mItensImp_MatQtd_Consumo.AsFloat + fDMCadPedido.cdsPedidoImp_MatQTD_CONSUMO.AsFloat;
          fDMCadPedido.mItensImp_MatQtd_Consumo_Total.AsFloat := fDMCadPedido.mItensImp_MatQtd_Consumo_Total.AsFloat + fDMCadPedido.cdsPedidoImp_MatQTD_CONSUMO_TOTAL.AsFloat;
          fDMCadPedido.mItensImp_MatQtd_Peca.AsFloat          := fDMCadPedido.mItensImp_MatQtd_Peca.AsFloat + fDMCadPedido.cdsPedidoImp_MatQTD_PECA.AsFloat;
          fDMCadPedido.mItensImp_MatVlr_Total.AsFloat         := fDMCadPedido.mItensImp_MatVlr_Total.AsFloat + fDMCadPedido.cdsPedidoImp_MatVLR_TOTAL.AsFloat;
          fDMCadPedido.mItensImp_Mat.Post;
          fDMCadPedido.cdsPedidoImp_Mat.Next;
        end;
      end;
      //Gravar o material que esta marcado para imprimir no rótulo no item do pedido (Perfil vai usar)  14/04/2016
      fDMCadPedido.mItensImpNome_Material.AsString := '';
      if (fDMCadPedido.vTipo_Rel_Ped = 'P') or (fDMCadPedido.vTipo_Rel_Ped = 'R') or (fDMCadPedido.vTipo_Rel_Ped = 'ROT') then
      //aqui quando for rotulo por tamanho
      begin
        fDMCadPedido.qConsumo.Close;
        if  fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger > 0 then
          fDMCadPedido.qConsumo.ParamByName('ID_COMBINACAO').AsInteger := fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger
        else
          fDMCadPedido.qConsumo.ParamByName('ID_COMBINACAO').AsInteger := 0;
        fDMCadPedido.qConsumo.ParamByName('ID_PRODUTO').AsInteger := fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger;
        fDMCadPedido.qConsumo.Open;
        vMatAux  := '';
        vMatAux1 := '';
        vMatAux2 := '';
        vCorAux1 := '';
        vCorAux2 := '';
        while not fDMCadPedido.qConsumo.Eof do
        begin
          if trim(vMatAux) <> '' then
            vMatAux := vMatAux + ', ';
          vMatAux := vMatAux + fDMCadPedido.qConsumoNOME_MATERIAL.AsString;
          if trim(fDMCadPedido.qConsumoNOME_COR.AsString) <> '' then
            vMatAux := vMatAux + ' ' + fDMCadPedido.qConsumoNOME_COR.AsString;
          if vMatAux1 = '' then
          begin
            vMatAux1 := fDMCadPedido.qConsumoNOME_MATERIAL.AsString;
            vCorAux1 := fDMCadPedido.qConsumoNOME_COR.AsString;
          end
          else
          if vMatAux2 = '' then
          begin
            vMatAux2 := fDMCadPedido.qConsumoNOME_MATERIAL.AsString;
            vCorAux2 := fDMCadPedido.qConsumoNOME_COR.AsString;
          end;
          fDMCadPedido.qConsumo.Next;
        end;
        fDMCadPedido.mItensImpNome_Material.AsString  := vMatAux;
        fDMCadPedido.mItensImpNome_Material1.AsString := vMatAux1;
        fDMCadPedido.mItensImpCor_Mat1.AsString       := vCorAux1;
        fDMCadPedido.mItensImpNome_Material2.AsString := vMatAux2;
        fDMCadPedido.mItensImpCor_Mat2.AsString       := vCorAux2;
      end;
    end;
    fDMCadPedido.mItensImpQtd.AsFloat       := fDMCadPedido.mItensImpQtd.AsFloat + fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
    fDMCadPedido.mItensImpVlr_Ipi.AsFloat   := fDMCadPedido.mItensImpVlr_Ipi.AsFloat + fDMCadPedido.cdsPedidoImp_ItensVLR_IPI.AsFloat;
    fDMCadPedido.mItensImpVlr_Total.AsFloat := fDMCadPedido.mItensImpVlr_Total.AsFloat + fDMCadPedido.cdsPedidoImp_ItensVLR_TOTAL.AsFloat;
    if trim(fDMCadPedido.cdsPedidoImp_ItensOBS.Value) <> '' then
      fDMCadPedido.mItensImpOBS.Value       := fDMCadPedido.cdsPedidoImp_ItensOBS.Value;
    if fDMCadPedido.cdsPedidoImp_ItensFOTO.AsString <> '' then
      fDMCadPedido.mItensImpFoto_End.AsString := fDMCadPedido.cdsPedidoImp_ItensFOTO.AsString
    else
      fDMCadPedido.mItensImpFoto_End.AsString := fDMCadPedido.cdsPedidoImp_ItensFOTO_1.AsString;
    if trim(fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString) <> '' then
    begin
      if fDMCadPedido.mItensImp_Tam.Locate('Item;Tamanho',VarArrayOf([fDMCadPedido.mItensImpItem.AsInteger,fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString]),[locaseinsensitive]) then
        fDMCadPedido.mItensImp_Tam.Edit
      else
      begin
        fDMCadPedido.mItensImp_Tam.Insert;
        fDMCadPedido.mItensImp_TamItem.AsInteger      := fDMCadPedido.mItensImpItem.AsInteger;
        fDMCadPedido.mItensImp_TamTamanho.AsString    := fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString;
        fDMCadPedido.mItensImp_TamTam_Matriz.AsString := fDMCadPedido.cdsPedidoImp_ItensTAM_MATRIZ.AsString;
      end;
      fDMCadPedido.mItensImp_TamQtd.AsFloat        := fDMCadPedido.mItensImp_TamQtd.AsFloat + fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
      fDMCadPedido.mItensImp_TamQtd_Rotulo.AsFloat := fDMCadPedido.mItensImp_TamQtd.AsFloat;
      fDMCadPedido.mItensImp_Tam.Post;
    end;
    if (fDMCadPedido.vTipo_Rel_Ped = 'P') and (fDMCadPedido.mItensImp_Tam.RecordCount > 14)  then
      fDMCadPedido.mItensImpImp_Continua.AsString := 'S'
    else
    if (fDMCadPedido.vTipo_Rel_Ped = 'R') and (fDMCadPedido.mItensImp_Tam.RecordCount > 12)  then
      fDMCadPedido.mItensImpImp_Continua.AsString := 'S';
    if (fDMCadPedido.mItensImpItem.AsInteger = 1) or (fDMCadPedido.mItensImpItem.AsInteger = 4)  or (fDMCadPedido.mItensImpItem.AsInteger = 7) then
      fDMCadPedido.mItensImpImp_Cabecalho.AsString := 'S';
    fDMCadPedido.mItensImpID_Atelier.AsInteger  := fDMCadPedido.cdsPedidoImp_ItensID_ATELIER.AsInteger;
    fDMCadPedido.mItensImpNome_Atelier.AsString := fDMCadPedido.cdsPedidoImp_ItensNOME_ATELIER.AsString;
    fDMCadPedido.mItensImpImp_Rotulo.AsString   := fDMCadPedido.cdsPedidoImp_ItensIMP_ROTULO_PROD.AsString;
    fDMCadPedido.mItensImp.Post;

    fDMCadPedido.cdsPedidoImp_Itens.Next;
  end;
  fDMCadPedido.mAuxImp.EmptyDataSet;
  fDMCadPedido.mAuxImp.Insert;
  fDMCadPedido.mAuxImpID_Pedido.AsInteger     := fDMCadPedido.cdsPedidoImpID.AsInteger;
  fDMCadPedido.mAuxImpTotalItens.AsInteger    := fDMCadPedido.mItensImp.RecordCount;
  fDMCadPedido.mAuxImpNum_Pedido.AsInteger    := fDMCadPedido.cdsPedidoImpNUM_PEDIDO.AsInteger;
  fDMCadPedido.mAuxImpEndLogo_Rotulo.AsString := fDMCadPedido.cdsFilialENDLOGO_ROTULO.AsString;
  fDMCadPedido.mAuxImpRotulo_Imp.AsString     := fDMCadPedido.cdsPedidoImpROTULO_IMP.AsString;
  fDMCadPedido.mAuxImp.Post;
  fDMCadPedido.mConsumo_Mat.EmptyDataSet;
  fDMCadPedido.mItensImp_Rot.EmptyDataSet;
  if (fDMCadPedido.vTipo_Rel_Ped = 'P') or (fDMCadPedido.vTipo_Rel_Ped = 'R') then
  begin
    vMSGAux := '';
    fDMCadPedido.mItensImp.First;
    while not fDMCadPedido.mItensImp.Eof do
    begin
      vNum_Folha_Rot := 0;
      if (fDMCadPedido.vTipo_Rel_Ped = 'P') then
        prc_Gerar_Consumo(fDMCadPedido)
      else
      begin
        //Alterado para gerar 10 itens dos rótulos vázio  03/06/2016
        for i := 1 to 10 do
        begin
          fDMCadPedido.mItensImp_Rot.Insert;
          fDMCadPedido.mItensImp_RotItem.AsInteger     := fDMCadPedido.mItensImpItem.AsInteger;
          fDMCadPedido.mItensImp_RotItem_Rot.AsInteger := i;
          fDMCadPedido.mItensImp_Rot.Post;
        end;

        //Feito para gerar os talões nos romaneios - Perfil  26/04/2016
        //Tirado a pedido da Cristina em 03/06/2016 conforme solicitação em 31/05/2016
        {vQtd_Caixa := fnc_Busca_Embalagem(fDMCadPedido.mItensImpID_Produto.AsInteger);
        if vQtd_Caixa <= 0 then
          vMSGAux := vMSGAux + #13 + 'Produto: ' + fDMCadPedido.mItensImpReferencia.AsString + ' sem embalagem cadastrado!'
        else
        begin
          vItem_Tam := 0;
          fDMCadPedido.mItensImp_Tam.First;
          while not fDMCadPedido.mItensImp_Tam.Eof do
          begin
            vItem_Tam := vItem_Tam + 1;
            vQtdTotal := fDMCadPedido.mItensImp_TamQtd.AsInteger;
            vQtdAux   := fDMCadPedido.mItensImp_TamQtd.AsInteger div vQtd_Caixa;
            if fDMCadPedido.mItensImp_TamQtd.AsInteger mod vQtd_Caixa > 0 then
              vQtdAux := vQtdAux + 1;
            for i := 1 to vQtdAux do
            begin
              if vQtdTotal > vQtd_Caixa then
                prc_Gravar_mItensImp_Rot(i,vQtd_Caixa)
              else
                prc_Gravar_mItensImp_Rot(i,vQtdTotal);
              vQtdTotal := vQtdTotal - vQtd_Caixa;
            end;
            fDMCadPedido.mItensImp_Tam.Next;
          end;
        end;}
      end;
      //Tirado a pedido da Cristina em 03/06/2016 conforme solicitação em 31/05/2016
      {vQtdAux := fDMCadPedido.mItensImp_Rot.RecordCount div 10;
      if fDMCadPedido.mItensImp_Rot.RecordCount mod 10 > 0 then
      begin
        vQtdAux := vQtdAux + 1;
        vQtdAux := vQtdAux * 10;
        vQtdAux := vQtdAux - fDMCadPedido.mItensImp_Rot.RecordCount;
        i2 := fDMCadPedido.mItensImp_Rot.RecordCount;
        for i := 1 to vQtdAux do
        begin
          i2 := i2 + 1;
          prc_Gravar_mItensImp_Rot(i2,0);
        end;
      end;}

      fDMCadPedido.mItensImp.Next;
    end;

    if trim(vMSGAux) <> '' then
      MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
  end;
end;

procedure prc_Calcular_Desconto_Novo(fDMCadPedido: TDMCadPedido; Repetir: Boolean);
var
  vDesconto: Real;
  vDescAux: Real;
  vVlrAux: Real;
  vContador: Integer;
  vVlrTotalItens: Real;
  vDescontoItem: Real;
  vVlrDuplicata, vVlrDuplicata_Outros: Real;
  vPesoBruto, vPesoLiquido: Real;
begin
  fDMCadPedido.cdsPedido_Itens.First;
  if (fDMCadPedido.cdsPedido_Itens.RecordCount < 1) or (fDMCadPedido.cdsPedido_Itens.IsEmpty) then
  begin
    fDMCadPedido.cdsPedidoBASE_ICMS.AsFloat        := 0;
    fDMCadPedido.cdsPedidoBASE_ICMSSIMPLES.AsFloat := 0;
    fDMCadPedido.cdsPedidoBASE_ICMSSUBST.AsFloat   := 0;
    fDMCadPedido.cdsPedidoBASE_ICMSTRANSF.AsFloat  := 0;
    fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := 0;
    fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat        := 0;
    fDMCadPedido.cdsPedidoVLR_ICMS.AsFloat         := 0;
    fDMCadPedido.cdsPedidoVLR_ICMSSIMPLES.AsFloat  := 0;
    fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat    := 0;
    fDMCadPedido.cdsPedidoBASE_IPI.AsFloat         := 0;
    fDMCadPedido.cdsPedidoVLR_IPI.AsFloat          := 0;
    fDMCadPedido.cdsPedidoVLR_ITENS.AsFloat        := 0;
    fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat        := 0;
    fDMCadPedido.cdsPedidoVLR_TRANSF.AsFloat       := 0;
    fDMCadPedido.cdsPedidoQTD.AsFloat              := 0;
    fDMCadPedido.cdsPedidoVLR_MAO_OBRA.AsFloat     := 0;
    //22/02/2016
    fDMCadPedido.cdsPedidoVLR_ICMS_FCP.AsFloat      := 0;
    fDMCadPedido.cdsPedidoVLR_ICMS_UF_DEST.AsFloat  := 0;
    fDMCadPedido.cdsPedidoVLR_ICMS_UF_REMET.AsFloat := 0;
    //*************
    //17/06/2016
    fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat     := 0;
    //*************

    if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
      vVlrDuplicata := fnc_Calcula_Ace_Roldana(fDMCadPedido);
      
    exit;
  end;

  if not Repetir then
  begin
    vContador       := fDMCadPedido.cdsPedido_Itens.RecordCount;
    vContadorOutros := fDMCadPedido.cdsPedido_Itens.RecordCount;
    vPesoBruto      := 0;
    vPesoLiquido    := 0;

    vCalcFrete     := fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat;
    vCalcTotalNota := fDMCadPedido.cdsPedidoVLR_ITENS.AsFloat;

    fDMCadPedido.cdsPedidoBASE_ICMSSIMPLES.AsFloat := 0;
    fDMCadPedido.cdsPedidoVLR_ICMSSIMPLES.AsFloat  := 0;
    fDMCadPedido.cdsPedidoVLR_ITENS.AsFloat        := 0;
    fDMCadPedido.cdsPedidoVLR_SERVICO.AsFloat      := 0;
    fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat        := 0;
    fDMCadPedido.cdsPedidoBASE_ICMS.AsFloat        := 0;
    fDMCadPedido.cdsPedidoVLR_ICMS.AsFloat         := 0;
    fDMCadPedido.cdsPedidoBASE_IPI.AsFloat         := 0;
    fDMCadPedido.cdsPedidoVLR_IPI.AsFloat          := 0;
    fDMCadPedido.cdsPedidoQTD.AsFloat              := 0;
    fDMCadPedido.cdsPedidoBASE_ICMSSUBST.AsFloat   := 0;
    fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat    := 0;
    //22/02/2016
    fDMCadPedido.cdsPedidoVLR_ICMS_FCP.AsFloat      := 0;
    fDMCadPedido.cdsPedidoVLR_ICMS_UF_DEST.AsFloat  := 0;
    fDMCadPedido.cdsPedidoVLR_ICMS_UF_REMET.AsFloat := 0;
    //*************
    //17/06/2016
    fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat     := 0;
    //*************

    if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
      fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);

    if fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString = 'N' then
      vDesconto := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat))
    else
    begin
      vDesconto := StrToFloat(FormatFloat('0.00',0));
      vContador := 0;
      fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat := 0;
    end;
    vDescAux      := 0;
    vVlrDuplicata := 0;
    vVlrDuplicata_Outros := 0;
    fDMCadPedido.cdsPedido_Itens.First;
    while not fDMCadPedido.cdsPedido_Itens.Eof do
    begin
      if fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat))
      else
        vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
      if fDMCadPedido.cdsPedido_ItensGERAR_DUPLICATA.AsString = 'S' then
        vVlrDuplicata := vVlrDuplicata + StrToFloat(FormatFloat('0.00',vVlrAux))
      else
        vVlrDuplicata_Outros := vVlrDuplicata_Outros + StrToFloat(FormatFloat('0.00',vVlrAux));
      fDMCadPedido.cdsPedido_Itens.Next;
    end;

    fDMCadPedido.cdsPedidoServico.First;
    while not fDMCadPedido.cdsPedidoServico.Eof do
    begin
      if fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedidoServicoQTD.AsFloat * fDMCadPedido.cdsPedidoServicoVLR_UNITARIO.AsFloat))
      else
        vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoServicoQTD.AsFloat * fDMCadPedido.cdsPedidoServicoVLR_UNITARIO.AsFloat));
      vVlrDuplicata := vVlrDuplicata + StrToFloat(FormatFloat('0.00',vVlrAux));
      fDMCadPedido.cdsPedidoVLR_SERVICO.AsCurrency := fDMCadPedido.cdsPedidoVLR_SERVICO.AsCurrency + vVlrAux;
      fDMCadPedido.cdsPedidoServico.Next;
    end;
  end;

  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    vVlrDuplicata := vVlrDuplicata + StrToFloat(FormatFloat('0.00',fnc_Calcula_Ace_Roldana(fDMCadPedido)));

  fDMCadPedido.cdsPedido_Itens.First;
  while not fDMCadPedido.cdsPedido_Itens.Eof do
  begin
    vDescontoItem  := 0;
    vVlrTotalItens := 0;

    if fDMCadPedido.cdsCFOPID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger then
      fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,([Locaseinsensitive]));

    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
       fDMCadPedido.prc_Abrir_ProdutoLoja(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,'','')
    else
    begin
      if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
        fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));
    end;

    if not Repetir then
    begin
      fDMCadPedido.cdsPedido_Itens.Edit;

      fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat     := 0;
      //17/06/2016
      fDMCadPedido.cdsPedido_ItensVLR_DUPLICATA.AsFloat := 0;
      //********************

      vVlrTotalItens := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));

      if fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString = 'I' then
        vDesconto := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat       := 0;
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat := 0;
    end;
    vDescAux  := 0;
    vContador := vContador - 1;
    if Repetir then
      fDMCadPedido.cdsPedido_Itens.Edit;

    if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0) then
    begin
      if (vContador <= 0) or (fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString = 'I') then
        vDescAux := StrToFloat(FormatFloat('0.00',vDesconto))
      else
      begin
        //17/06/2016
        //vDescAux := StrToFloat(FormatFloat('0.00',(vVlrTotalItens / vVlrDuplicata) * 100))
        if (StrToFloat(FormatFloat('0.00',vVlrDuplicata)) > 0) and (fDMCadPedido.cdsPedido_ItensGERAR_DUPLICATA.AsString = 'S') then
          vDescAux := StrToFloat(FormatFloat('0.00',(vVlrTotalItens / vVlrDuplicata) * 100))
        else
        if (StrToFloat(FormatFloat('0.00',vVlrDuplicata)) <= 0) and (StrToFloat(FormatFloat('0.00',vVlrDuplicata_Outros)) > 0) then
          vDescAux := StrToFloat(FormatFloat('0.00',(vVlrTotalItens / vVlrDuplicata_Outros) * 100));
        //******************
        vDescAux := StrToFloat(FormatFloat('0.00',(vDescAux * fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat) / 100));
        if StrToFloat(FormatFloat('0.00',vDescAux)) > StrToFloat(FormatFloat('0.00',vDesconto)) then
          vDescAux := StrToFloat(FormatFloat('0.00',vDesconto));
      end;
      vDesconto     := StrToFloat(FormatFloat('0.00',vDesconto - vDescAux));
      vDescontoItem := StrToFloat(FormatFloat('0.00',vDescAux));
    end;

    if fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString = 'I' then
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat + vDescAux
    else
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat := fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat + vDescAux;

    vDescAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));

    //21/11/2018 foi colocado aqui o cálculo do Frete
    if not(Repetir) then
      prc_Calcular_Frete_Novo(fDMCadPedido);
    //***********

    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat) - vDescAux));
    fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat   := uCalculo_Pedido.fnc_Calcular_IPI_Novo(fDMCadPedido,fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat,vDescAux,fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat);

    //17/06/2016
    if fDMCadPedido.cdsPedido_ItensGERAR_DUPLICATA.AsString = 'S' then
      fDMCadPedido.cdsPedido_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat))
    else
      fDMCadPedido.cdsPedido_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',0));
    //**********
    //08/02/2017
    //if not(Repetir) then
    //  prc_Calcular_Frete_Novo(fDMCadPedido);
    //***************

    uCalculo_Pedido.prc_Calcular_ICMS_Novo(fDMCadPedido,fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat,vDescAux,fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat,fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger);

    uCalculo_Pedido.prc_Calcular_ICMSSimples_Novo(fDMCadPedido,fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat,fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger);

    //22/02/2016
    prc_Calcular_ICMS_UF_Dest(fDMCadPedido);
    //****************

    //30/06/2017  calcula a ST quando for Suframa
    if fDMCadPedido.cdsTab_NCMID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger then
      fDMCadPedido.cdsTab_NCM.Locate('ID',fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger,([Locaseinsensitive]));

    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') or (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'O') then
    begin
      if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) and (fDMCadPedido.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S') then
        uCalculo_Pedido.prc_Calcular_SubstTributaria_ICMS(fDMCadPedido)
      else //30/06/2017
      if (fDMCadPedido.cdsTab_NCMGERAR_ST.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensCOD_CST.AsString = '10')
         and ((fDMCadPedido.cdsCFOPCODCFOP.AsString = '6109') or (fDMCadPedido.cdsCFOPCODCFOP.AsString = '6110')) and
         (fDMCadPedido.cdsClienteTIPO_CONSUMIDOR.AsInteger = 0) then
        prc_Calcular_SubstTributaria_ICMS(fDMCadPedido)
      else
      begin
        fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat  := 0;
        fDMCadPedido.cdsPedido_ItensBASE_ICMSSUBST.AsFloat := 0;
        if fDMCadPedido.cdsPedido_ItensDIFERENCA_ICMS.AsString = 'S' then
           prc_Calcular_Diferencial_ICMS(fDMCadPedido);
      end;
    end;

    fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency     := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency + vVlrTotalItens - vDescontoItem));
    fDMCadPedido.cdsPedidoQTD.AsCurrency           := fDMCadPedido.cdsPedidoQTD.AsCurrency + fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    //17/06/2016
    fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_DUPLICATA.AsFloat));
    //***************

    if fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString = 'I' then
      fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat + vDescontoItem));

    //15/09/2016
    //fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency + vVlrTotalItens - vDescontoItem));
    fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency + vVlrTotalItens));
    //**********

    fDMCadPedido.cdsPedidoBASE_ICMS.AsCurrency   := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoBASE_ICMS.AsCurrency + fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsCurrency));
    fDMCadPedido.cdsPedidoVLR_ICMS.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ICMS.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsCurrency));
    //21/11/2018
    fDMCadPedido.cdsPedidoBASE_IPI.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoBASE_IPI.AsCurrency + fDMCadPedido.cdsPedido_ItensBASE_IPI.AsCurrency));                                                                                                                              
    fDMCadPedido.cdsPedidoVLR_IPI.AsCurrency     := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_IPI.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_IPI.AsCurrency));
    fDMCadPedido.cdsPedidoBASE_ICMSSUBST.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoBASE_ICMSSUBST.AsFloat + fDMCadPedido.cdsPedido_ItensBASE_ICMSSUBST.AsFloat));
    fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat));

    //22/02/2016
    if copy(fDMCadPedido.cdsCFOPCODCFOP.AsString,1,1) <> '7' then
    begin
      fDMCadPedido.cdsPedidoVLR_ICMS_FCP.AsFloat      := fDMCadPedido.cdsPedidoVLR_ICMS_FCP.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMS_FCP.AsFloat;
      fDMCadPedido.cdsPedidoVLR_ICMS_UF_DEST.AsFloat  := fDMCadPedido.cdsPedidoVLR_ICMS_UF_DEST.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMS_UF_DEST.AsFloat;
      fDMCadPedido.cdsPedidoVLR_ICMS_UF_REMET.AsFloat := fDMCadPedido.cdsPedidoVLR_ICMS_UF_REMET.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMS_UF_REMET.AsFloat;
    end;
    //*****************

    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO_CALC.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));

    if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
      fDMCadPedido.cdsPedido_Itens.Post;

    if Repetir then
      fDMCadPedido.cdsPedido_Itens.Last;

    if not repetir then
    begin
      if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsProdutoPESOBRUTO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) > 0) then
      begin
        if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
          vVlrAux := fDMCadPedido.cdsProdutoPESOBRUTO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsFloat
        else
          vVlrAux := fDMCadPedido.cdsProdutoPESOBRUTO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
        vPesoBruto := StrToFloat(FormatFloat('0.00000',vPesoBruto + vVlrAux));
      end;
      if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsProdutoPESOLIQUIDO.AsFloat)) > 0)  and (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) > 0) then
      begin
        if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
          vVlrAux := fDMCadPedido.cdsProdutoPESOLIQUIDO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsFloat
        else
          vVlrAux := fDMCadPedido.cdsProdutoPESOLIQUIDO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
        vPesoLiquido := StrToFloat(FormatFloat('0.00000',vPesoLiquido + vVlrAux));
      end;
    end;
    fDMCadPedido.cdsPedido_Itens.Next;
  end;

  if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0) then
    uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,True);

  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_IPI.AsFloat +
                                fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat + fDMCadPedido.cdsPedidoVLR_SERVICO.AsFloat;
  //17/06/2016
  fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat := fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat + fDMCadPedido.cdsPedidoVLR_IPI.AsFloat +
                                                 fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat + fDMCadPedido.cdsPedidoVLR_SERVICO.AsFloat;
  //**************

  if fDMCadPedido.cdsPedidoFRETE_SOMAR.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat;
    //17/06/2016
    fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat := fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat + fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat;
    //***********
  end;

  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_MAO_OBRA.AsFloat;
  fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_MAO_OBRA.AsFloat;

  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat)) <= 0 then
    fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := '';
  fDMCadPedido.cdsPedidoPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.0000',0));
  if StrToFloat(FormatFloat('0.00000',vPesoBruto)) > 0 then
    fDMCadPedido.cdsPedidoPESOBRUTO.AsFloat := StrToFloat(FormatFloat('0.00000',vPesoBruto));
  if StrToFloat(FormatFloat('0.00000',vPesoLiquido)) > 0 then
    fDMCadPedido.cdsPedidoPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.00000',vPesoLiquido));
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
    uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
  end;
end;

procedure prc_Calculo_GeralItem(fDMCadPedido: TDMCadPedido; Qtd,VlrUnitario,DescontoItem,PercDescontoItem,VlrTotal: Real);
var
  vVlrTotalItem: Real;
  vVlrDescontoItem: Real;
  vVlrAux: Real;
  vVlrDescAux: Real;
  vVlrFreteAnt, vVlrSeguroAnt, vVlrOutrasDespAnt, vVlrPisAnt, vVlrCofinsAnt, vVlrIPIAnt: Real;
begin
  if (StrToCurr(FormatCurr('0.00',Qtd)) > 0) and (StrToCurr(FormatCurr('0.00',VlrUnitario)) > 0) then
    vVlrTotalItem  := StrToCurr(FormatCurr('0.00',Qtd * VlrUnitario))
  else
    vVlrTotalItem  := StrToCurr(FormatCurr('0.00',VlrTotal));

  vVlrDescontoItem := 0;
  vVlrFreteAnt     := 0;
  vVlrIPIAnt       := 0;
  //***************
  // buscar a quantidade de caixa pra calcular o peso, caso não tenha no pedido.
  if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
  begin
    if (fDMCadPedido.cdsProdutoQTD_EMBALAGEM.AsFloat <= 0) and (fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsFloat <= 0) then
      fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
  end;

  if (fDMCadPedido.cdsPedidoTIPO_REG.AsString <> 'C') and (fDMCadPedido.cdsPedidoTIPO_REG.AsString <> 'S') then
  begin
    fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,([Locaseinsensitive]));
    fDMCadPedido.cdsTab_CSTIcms.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger,([Locaseinsensitive]));
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,([Locaseinsensitive]));
  end;

  if fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString = 'N' then
  begin
    vVlrAux := StrToCurr(FormatCurr('0.00',vVlrTotalItem));
    if not fDMCadPedido.cdsPedido_Desconto.IsEmpty then
    begin
      fDMCadPedido.cdsPedido_Desconto.First;
      while not fDMCadPedido.cdsPedido_Desconto.Eof do
      begin
        vVlrDescAux      := StrToFloat(FormatFloat('0.00',(vVlrAux * fDMCadPedido.cdsPedido_DescontoPERC_DESCONTO.AsFloat) / 100));
        vVlrAux          := StrToFloat(FormatFloat('0.00',vVlrAux - vVlrDescAux));
        vVlrDescontoItem := StrToFloat(FormatFloat('0.00',vVlrDescontoItem + vVlrDescAux));
        fDMCadPedido.cdsPedido_Desconto.Next;
      end;
    end
    else
    if fDMCadPedido.cdsPedidoPERC_DESCONTO.AsFloat > 0 then
      vVlrDescontoItem := StrToFloat(FormatFloat('0.00',(vVlrAux * fDMCadPedido.cdsPedidoPERC_DESCONTO.AsFloat) / 100));
  end
  else
  if (fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString <> 'N') and (StrToFloat(FormatFloat('0.000',PercDescontoItem)) > 0) then
  begin
    vVlrDescontoItem := StrToCurr(FormatCurr('0.00',vVlrTotalItem * PercDescontoItem / 100));
    fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';
  end
  else
  if (fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString <> 'N') and (StrToFloat(FormatFloat('0.000',DescontoItem)) > 0) then
  begin
    vVlrDescontoItem := StrToCurr(FormatCurr('0.00',DescontoItem));
    fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';
  end;
  fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := StrToCurr(FormatCurr('0.00',vVlrDescontoItem));
  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vVlrTotalItem - vVlrDescontoItem));
  fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat := uCalculo_Pedido.fnc_Calcular_IPI_Novo(fDMCadPedido,fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat,vVlrDescontoItem,fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat);
  if fDMCadPedido.cdsPedido_ItensGERAR_DUPLICATA.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat))
  else
    fDMCadPedido.cdsPedido_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  //22/08/2014  Hidrosul pediu para incluir o icms nas Ordens de Compras
  if fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'C' then
    uCalculo_Pedido.prc_Calcular_ICMS_Novo(fDMCadPedido,vVlrTotalItem,vVlrDescontoItem,fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat,fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger)
  else
  if fDMCadPedido.cdsPedidoTIPO_REG.AsString <> 'C' then
  begin
    //04/01/2017
    //uCalculo_Pedido.prc_Calcular_ICMS_Novo(fDMCadPedido,vVlrTotalItem,vVlrDescontoItem,fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat,fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger);
    uCalculo_Pedido.prc_Calcular_ICMS_Novo(fDMCadPedido,fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat,vVlrDescontoItem,fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat,fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger);
    //******************
    uCalculo_Pedido.prc_Calcular_ICMSSimples_Novo(fDMCadPedido,fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat,fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger);
    //aqui
    if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) and (fDMCadPedido.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S') then
      uCalculo_Pedido.prc_Calcular_SubstTributaria_ICMS(fDMCadPedido)
    else
    if fDMCadPedido.cdsPedido_ItensDIFERENCA_ICMS.AsString = 'S' then
      prc_Calcular_Diferencial_ICMS(fDMCadPedido);
  end;
  if fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString = 'I' then
    fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));

  //22/02/2016
  prc_Calcular_ICMS_UF_Dest(fDMCadPedido);
  //****************

  //04/01/2017
  //fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat
  //                               + fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat - fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
  fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat
                                 + fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat));
  //**************************
  fDMCadPedido.cdsPedidoQTD.AsFloat          := fDMCadPedido.cdsPedidoQTD.AsFloat + fDMCadPedido.cdsPedido_ItensQTD.AsFloat;


  //04/01/2017
  //fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
  fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ITENS.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat));
  //****************

  fDMCadPedido.cdsPedidoBASE_ICMS.AsCurrency   := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoBASE_ICMS.AsCurrency + fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsCurrency));
  fDMCadPedido.cdsPedidoVLR_ICMS.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ICMS.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsCurrency));
  //21/11/2018
  fDMCadPedido.cdsPedidoBASE_IPI.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoBASE_IPI.AsCurrency + fDMCadPedido.cdsPedido_ItensBASE_IPI.AsCurrency));
  fDMCadPedido.cdsPedidoVLR_IPI.AsCurrency     := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_IPI.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_IPI.AsCurrency));
  fDMCadPedido.cdsPedidoBASE_ICMSSUBST.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoBASE_ICMSSUBST.AsFloat + fDMCadPedido.cdsPedido_ItensBASE_ICMSSUBST.AsFloat));
  fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ICMSSUBST.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat));

  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat  - vVlrIPIAnt;

  if StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsProdutoPESOBRUTO.AsFloat)) > 0 then
  begin
    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
       vVlrAux := fDMCadPedido.cdsProdutoPESOBRUTO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsFloat
    else
       vVlrAux := fDMCadPedido.cdsProdutoPESOBRUTO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    fDMCadPedido.cdsPedidoPESOBRUTO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedidoPESOBRUTO.AsFloat + vVlrAux));
  end;
  if StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsProdutoPESOLIQUIDO.AsFloat)) > 0 then
  begin
    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
       vVlrAux := fDMCadPedido.cdsProdutoPESOLIQUIDO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsFloat
    else
       vVlrAux := fDMCadPedido.cdsProdutoPESOLIQUIDO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    fDMCadPedido.cdsPedidoPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedidoPESOLIQUIDO.AsFloat + vVlrAux));
  end;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
    uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
  end;
  //08/12/2015
  fDMCadPedido.cdsPedidoVLR_ICMS_FCP.AsFloat      := fDMCadPedido.cdsPedidoVLR_ICMS_FCP.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMS_FCP.AsFloat;
  fDMCadPedido.cdsPedidoVLR_ICMS_UF_DEST.AsFloat  := fDMCadPedido.cdsPedidoVLR_ICMS_UF_DEST.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMS_UF_DEST.AsFloat;
  fDMCadPedido.cdsPedidoVLR_ICMS_UF_REMET.AsFloat := fDMCadPedido.cdsPedidoVLR_ICMS_UF_REMET.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMS_UF_REMET.AsFloat;
  //**************

  //17/06/2016
  fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_DUPLICATA.AsFloat));
  //**************
end;

procedure prc_Calcular_ICMS_Novo(fDMCadPedido: TDMCadPedido; VlrTotal, VlrDesconto, VlrIPI, PercIcms: Real; CodSitTrib: Integer);
var
  vSitTributaria: Real;
  vBaseAux, vVlrIcmsAux: Real;
  vPerc_Base_Red: Real;
begin
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
  begin
    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
      fDMCadPedido.prc_Abrir_ProdutoLoja(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,'','')
    else
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));
  end;
  if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,([Locaseinsensitive]));
  if StrToFloat(FormatFloat('0.00',PercIcms)) <= 0 then
  begin
    fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsFloat := 0;
    fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsFloat  := 0;
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0;
    exit;
  end;

  if fDMCadPedido.cdsParametrosAPLICARDESCONTONOICMS.AsString = 'S' then
    vBaseAux := VlrTotal
  else
    vBaseAux := StrToCurr(FormatCurr('0.00',VlrTotal + VlrDesconto));

  vPerc_Base_Red := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.qProduto_UF.Close;
  fDMCadPedido.qProduto_UF.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  fDMCadPedido.qProduto_UF.ParamByName('UF').AsString  := fDMCadPedido.cdsClienteUF.AsString;
  fDMCadPedido.qProduto_UF.Open;
  if not(fDMCadPedido.qProduto_UF.IsEmpty) then
    vPerc_Base_Red := StrToFloat(FormatFloat('0.00',fDMCadPedido.qProduto_UFPERC_REDUCAO_ICMS.AsFloat));
  if (StrToFloat(FormatFloat('0.00',vPerc_Base_Red)) <= 0) and (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) then
    vPerc_Base_Red := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat));
  if StrToFloat(FormatFloat('0.00',vPerc_Base_Red)) > 0 then
    vBaseAux := StrToFloat(FormatFloat('0.000',vBaseAux * (vPerc_Base_Red / 100)));
  if fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString = 'S' then
    vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux + VlrIPI));

  vSitTributaria := 0;
  if CodSitTrib > 0 then
  begin
    if StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat)) > 0 then
      vSitTributaria := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat))
    else
    if fDMCadPedido.cdsTab_CSTICMS.Locate('ID',CodSitTrib,([Locaseinsensitive])) then
      vSitTributaria := fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat
    else
      vSitTributaria := 100;
  end
  else
  if fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'C' then
    vSitTributaria := 100;

  if vSitTributaria > 0 then
    vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux * vSitTributaria  / 100))
  else
    vBaseAux := 0;

  if vBaseAux > 0 then
    vVlrIcmsAux := StrToCurr(FormatCurr('0.00',vBaseAux * PercIcms / 100))
  else
    vVlrIcmsAux := 0;

  fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsFloat := vBaseAux;
  fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsFloat  := vVlrIcmsAux;

  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_ICMSFRETE.AsFloat)) > 0 then
  begin
    fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsFloat := fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat;
    fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsFloat  := fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMSFRETE.AsFloat;
  end;
end;

procedure prc_Calcular_ICMSSimples_Novo(fDMCadPedido: TDMCadPedido; VlrTotal: Real; CodSitTrib: Integer);
var
  vSitTributaria: Real;
  vBaseAux, vVlrIcmsAux: Real;
begin
  fDMCadPedido.cdsPedido_ItensBASE_ICMSSIMPLES.AsFloat := 0;
  fDMCadPedido.cdsPedido_ItensVLR_ICMSSIMPLES.AsFloat  := 0;

  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'N' then
    exit;
  if fDMCadPedido.cdsCFOPGERAR_ICMS_SIMPLES.AsString = 'N' then
    exit;

  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoPERC_ICMSSIMPLES.AsFloat)) <= 0 then
    exit;

  vBaseAux := VlrTotal;
  vSitTributaria := 0;
  if CodSitTrib > 0 then
    vSitTributaria := fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat;

  if vSitTributaria > 0 then
     vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux * vSitTributaria  / 100))
  else
    vBaseAux := 0;
  vVlrIcmsAux := 0;

  //Calcula o valor do icms
  if vBaseAux > 0 then
    vVlrIcmsAux := StrToCurr(FormatCurr('0.00',vBaseAux * fDMCadPedido.cdsPedidoPERC_ICMSSIMPLES.AsFloat / 100));
  fDMCadPedido.cdsPedido_ItensBASE_ICMSSIMPLES.AsFloat := StrToCurr(FormatCurr('0.00',vBaseAux));
  fDMCadPedido.cdsPedido_ItensVLR_ICMSSIMPLES.AsFloat  := StrToCurr(FormatCurr('0.00',vVlrIcmsAux));

  fDMCadPedido.cdsPedidoBASE_ICMSSIMPLES.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedidoBASE_ICMSSIMPLES.AsCurrency + fDMCadPedido.cdsPedido_ItensBASE_ICMSSIMPLES.AsCurrency));
  fDMCadPedido.cdsPedidoVLR_ICMSSIMPLES.AsFloat  := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedidoVLR_ICMSSIMPLES.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_ICMSSIMPLES.AsCurrency));
end;

function fnc_Calcular_IPI_Novo(fDMCadPedido: TDMCadPedido; VlrTotal, VlrDesconto, PercIPI: Real): Real;
var
  vAux: Real;
begin
  fDMCadPedido.cdsPedido_ItensBASE_IPI.AsFloat := 0;
  Result := 0;
  if fDMCadPedido.qParametros_NFeSOMAR_FRETE_IPI.AsString = 'S' then
    VlrTotal := StrToFloat(FormatFloat('0.00',VlrTotal + fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat));
  if fDMCadPedido.cdsParametrosAPLICARDESCONTONOIPI.AsString = 'S' then
    vAux := StrToCurr(FormatCurr('0.00',VlrTotal))
  else
    vAux := StrToCurr(FormatCurr('0.00',VlrTotal + VlrDesconto));

  if (PercIPI > 0) then
  begin
    fDMCadPedido.cdsPedido_ItensBASE_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    Result := StrToCurr(FormatCurr('0.00',vAux * PercIPI / 100));
  end;
end;

procedure prc_Calcular_Trilhos(fDMCadPedido: TDMCadPedido);
var
  vVlrAux: Real;
begin
  vVlrAux := 0;
  fDMCadPedido.cdsPedido_Ace.First;
  while not fDMCadPedido.cdsPedido_Ace.Eof do
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + fDMCadPedido.cdsPedido_AceVLR_TOTAL.AsFloat));
    fDMCadPedido.cdsPedido_Ace.Next;
  end;
  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedidoVLR_TOTAL_TRILHOS.AsFloat));
  //17/06/2016
  fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat - fDMCadPedido.cdsPedidoVLR_TOTAL_TRILHOS.AsFloat)); 
  //************
  fDMCadPedido.cdsPedidoVLR_TOTAL_TRILHOS.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_TOTAL_TRILHOS.AsFloat));
  //17/06/2016
  fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat + fDMCadPedido.cdsPedidoVLR_TOTAL_TRILHOS.AsFloat));
  //***********
end;

procedure prc_Calcular_Roldanas(fDMCadPedido: TDMCadPedido);
var
  vVlrAux: Real;
begin
  vVlrAux := 0;
  fDMCadPedido.cdsPedido_Rol.First;
  while not fDMCadPedido.cdsPedido_Rol.Eof do
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + fDMCadPedido.cdsPedido_RolVLR_TOTAL.AsFloat));
    fDMCadPedido.cdsPedido_Rol.Next;
  end;
  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedidoVLR_TOTAL_ROLDANAS.AsFloat));
  //17/06/2016
  fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat - fDMCadPedido.cdsPedidoVLR_TOTAL_ROLDANAS.AsFloat));
  //*********
  fDMCadPedido.cdsPedidoVLR_TOTAL_ROLDANAS.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedidoVLR_TOTAL_ROLDANAS.AsFloat));
  //17/06/2016
  fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat + fDMCadPedido.cdsPedidoVLR_TOTAL_ROLDANAS.AsFloat));
  //***********
end;

procedure prc_Gravar_Pedido_Parc(fDMCadPedido: TDMCadPedido; Parcela, ID_TipoCobranca, ID_Conta: Integer; Data: TDateTime; Valor: Real);
begin
  fDMCadPedido.cdsPedido_Parc.Insert;
  fDMCadPedido.cdsPedido_ParcID.AsInteger            := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMCadPedido.cdsPedido_ParcITEM.AsInteger          := Parcela;
  fDMCadPedido.cdsPedido_ParcDTVENCIMENTO.AsDateTime := Data;
  fDMCadPedido.cdsPedido_ParcVLR_VENCIMENTO.AsFloat  := Valor;
  if ID_TipoCobranca > 0 then
    fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger := ID_TipoCobranca;
  if ID_Conta > 0 then
    fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger := ID_Conta;
  fDMCadPedido.cdsPedido_Parc.Post;
end;

function fnc_Gerar_Pedido_Parc(fDMCadPedido: TDMCadPedido): Boolean;
var
  vParcAux: Integer;
  vDataAux: TDateTime;
  vDataOri: TDateTime;
  vValorParc, vValorOri: Real;
  i: Integer;
  vQtdParc: Integer;
  vID_Tipo_Cobranca_Aux, vID_Conta_Aux: Integer;
begin
  Result := False;
  fDMCadPedido.cdsPedido_Parc.First;
  while not fDMCadPedido.cdsPedido_Parc.Eof do
    fDMCadPedido.cdsPedido_Parc.Delete;
  fDMCadPedido.vMsgErroParc := '';
  //10/11/2015  Gravar a parcela do adiantamento
  if (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat)) > 0) then
  begin
    //11/05/2016
    if fDMCadPedido.cdsPedidoGERA_ENTRADA_NO_PEDIDO.AsString = 'S' then
    begin
      vValorParc := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat));
      if fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger > 0 then
        vID_Tipo_Cobranca_Aux := fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger
      else
      if fDMCadPedido.cdsParametrosID_TIPO_COBRANCA_PADRAO_ADI.AsInteger > 0 then
        vID_Tipo_Cobranca_Aux := fDMCadPedido.cdsParametrosID_TIPO_COBRANCA_PADRAO_ADI.AsInteger;
      if fDMCadPedido.cdsPedidoID_CONTA.AsInteger > 0 then
        vID_Conta_Aux := fDMCadPedido.cdsPedidoID_CONTA.AsInteger
      else
      if fDMCadPedido.cdsParametrosID_CONTA_PADRAO_ADI.AsInteger > 0 then
        vID_Conta_Aux := fDMCadPedido.cdsParametrosID_CONTA_PADRAO_ADI.AsInteger;
      uCalculo_Pedido.prc_Gravar_Pedido_Parc(fDMCadPedido,0,vID_Tipo_Cobranca_Aux,vID_Conta_Aux,fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime,fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat);
    end;
    Result := True;
    exit;                                       
  end;
  //***************

  if (fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger <= 0) and (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString <> 'S') then
  begin
    Result := True;
    exit;
  end;
  if (fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString <> 'S') then
  begin
    Result := True;
    exit;
  end;

  if fDMCadPedido.cdsCondPgtoID.AsInteger <> fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger then
    fDMCadPedido.cdsCondPgto.Locate('ID',fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger,([Locaseinsensitive]));
  if (fDMCadPedido.cdsCondPgtoTIPO.AsString <> 'P') and (fDMCadPedido.cdsCondPgtoTIPO.AsString <> 'V') then
  begin
    Result := True;
    exit;
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat)) <= 0 then
    fDMCadPedido.vMsgErroParc :=  fDMCadPedido.vMsgErroParc + #13 + '*** Valor zerado!';
  if fDMCadPedido.vMsgErroParc <> '' then
    Exit;
  if (fDMCadPedido.cdsCondPgtoTIPO.AsString = 'P') then
  begin
    if (fDMCadPedido.cdsCondPgto_Dia.RecordCount <= 0) and (fDMCadPedido.cdsCondPgtoTIPO_CONDICAO.AsString <> 'F') then
      fDMCadPedido.vMsgErroParc := fDMCadPedido.vMsgErroParc + #13 + '*** Não existem dias informados no cadastro de condição de pagamento!';
    if (fDMCadPedido.cdsCondPgtoQTD_PARCELA.AsInteger <= 0) and (fDMCadPedido.cdsCondPgtoTIPO_CONDICAO.AsString = 'F') then
      fDMCadPedido.vMsgErroParc := fDMCadPedido.vMsgErroParc + #13 + '*** Não existe qtd. de parcelas no cadastro da condição de pagamento!';
  end;
  if fDMCadPedido.vMsgErroParc <> '' then
    Exit;

  if fDMCadPedido.cdsCondPgtoTIPO.AsString = 'V' then
    vDataOri := fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime
  else
  if (fDMCadPedido.cdsCondPgtoTIPO_CONDICAO.AsString = 'F') and (fDMCadPedido.cdsPedidoDTINICIO_DUPLICATA.AsDateTime > 10) then
    vDataOri := fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime
  else
  if fDMCadPedido.cdsPedidoDTINICIO_DUPLICATA.AsDateTime < fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime then
    vDataOri := fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime
  else
    vDataOri := fDMCadPedido.cdsPedidoDTINICIO_DUPLICATA.AsDateTime;

  if fDMCadPedido.cdsCondPgtoTIPO.AsString = 'V' then
    vQtdParc := 1
  else
  if fDMCadPedido.cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
    vQtdParc := fDMCadPedido.cdsCondPgtoQTD_PARCELA.AsInteger
  else
    vQtdParc   := fDMCadPedido.cdsCondPgto_Dia.RecordCount;
  if (fDMCadPedido.cdsCondPgtoENTRADA.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat)) <= 0) then
  begin
    i := vQtdParc + 1;
    vValorParc := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat / i));
    fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',vValorParc));
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat)) > 0 then
  begin
    vValorParc := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat));
    if fDMCadPedido.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger > 0 then
      vID_Tipo_Cobranca_Aux := fDMCadPedido.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger
    else
      vID_Tipo_Cobranca_Aux := fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger;
    if fDMCadPedido.cdsParametrosID_CONTA_PADRAO.AsInteger > 0 then
      vID_Conta_Aux := fDMCadPedido.cdsParametrosID_CONTA_PADRAO.AsInteger
    else
      vID_Conta_Aux := fDMCadPedido.cdsPedidoID_CONTA.AsInteger;
    uCalculo_Pedido.prc_Gravar_Pedido_Parc(fDMCadPedido,0,vID_Tipo_Cobranca_Aux,vID_Conta_Aux,vDataOri,fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat);
  end
  else
    vValorParc := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat));
  vValorOri  := StrToFloat(FormatFloat('0.00',vValorParc));
  vValorParc := StrToFloat(FormatFloat('0.00',vValorParc / vQtdParc));

  i := 0;
  if (fDMCadPedido.cdsCondPgtoTIPO_CONDICAO.AsString = 'F') or (fDMCadPedido.cdsCondPgtoTIPO.AsString = 'V') then
  begin
    if (fDMCadPedido.cdsCondPgtoTIPO.AsString = 'V') then
      vQtdParc := 1
    else
      vQtdParc := fDMCadPedido.cdsCondPgtoQTD_PARCELA.AsInteger;
    vDataAux := vDataOri;
    while vQtdParc > 0 do
    begin
      i := i + 1;
      if vQtdParc = 1 then
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
      vDataAux := IncMonth(vDataAux);
      if (fDMCadPedido.cdsCondPgtoTIPO.AsString = 'V') then
      begin
        i := 0;
        if fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger <= 0 then
          fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger := fDMCadPedido.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;
        if fDMCadPedido.cdsPedidoID_CONTA.AsInteger <= 0 then
          fDMCadPedido.cdsPedidoID_CONTA.AsInteger := fDMCadPedido.cdsParametrosID_CONTA_PADRAO.AsInteger;
      end;
      uCalculo_Pedido.prc_Gravar_Pedido_Parc(fDMCadPedido,i,fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger,fDMCadPedido.cdsPedidoID_CONTA.AsInteger,vDataAux,vValorParc);
      vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      vQtdParc := vQtdParc - 1;
    end;
  end
  else
  begin
    fDMCadPedido.cdsCondPgto_Dia.First;
    while not fDMCadPedido.cdsCondPgto_Dia.Eof do
    begin
      i := i + 1;
      if i = vQtdParc then
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
      vDataAux := vDataOri + fDMCadPedido.cdsCondPgto_DiaQTDDIAS.AsInteger;
      uCalculo_Pedido.prc_Gravar_Pedido_Parc(fDMCadPedido,i,fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger,fDMCadPedido.cdsPedidoID_CONTA.AsInteger,vDataAux,vValorParc);
      vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      fDMCadPedido.cdsCondPgto_Dia.Next;
    end;
  end;
  Result := True;
end;

procedure prc_Calcular_SubstTributaria_ICMS(fDMCadPedido: TDMCadPedido);
var
  vBaseSubst, vVlrSubst: Real;
  vIcmsAux: Real;
  vBaseICMAux: Real;
  vVICMS: Real;
  vMVA, vPercRedST: Real;
  vPerc_Interno: Real;
  vUF: String;
  vTotalProdAux: Real;
  vVlrAgregado: Real;
  vIcmsProprio: Real;
  vPerc_Proprio: Real;
  vImportado_Nacional: String;
  vTipo_Cliente: String;
  vVlrTotal: Real;
  vPerc_Red_MVA: Real;
  vPerc_MVA, vPerc_MVA2: Real;
  vID_NCM: Integer;
  vPerc_Reducao_Base: Real;
  vPerc_Proprio_Aux, vPerc_Interno_Aux: Real;
  vIcmsInterno: Real;

   procedure prc_Abrir_qProduto_UF(fDMCadPedido: TDMCadPedido; ID_NCM: Integer; UF: String);
   begin
     fDMCadPedido.qProduto_UF.Close;
     fDMCadPedido.qProduto_UF.ParamByName('ID').AsInteger := ID_NCM;
     fDMCadPedido.qProduto_UF.ParamByName('UF').AsString  := UF;
     fDMCadPedido.qProduto_UF.Open;
   end;

  procedure prc_Abrir_qNCM_UF(fDMCadPedido: TDMCadPedido; ID_NCM: Integer; UF,Importado_Nacional: String);
  begin
    fDMCadPedido.qNCM_UF.Close;
    fDMCadPedido.qNCM_UF.ParamByName('ID').AsInteger          := ID_NCM;
    fDMCadPedido.qNCM_UF.ParamByName('UF').AsString           := UF;
    fDMCadPedido.qNCM_UF.ParamByName('TIPO_PRODUTO').AsString := Importado_Nacional;
    fDMCadPedido.qNCM_UF.Open;
  end;

begin
  fDMCadPedido.cdsPedido_ItensBASE_ICMSSUBST.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
  begin
    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
      fDMCadPedido.prc_Abrir_ProdutoLoja(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,'','')
    else
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));
  end;
  //Alterado 26/09/2018
  //if (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString <> '0') then
  if (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '1')  or (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '2')
    or (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '3') or (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '8') then
    vImportado_Nacional := 'I'
  else
    vImportado_Nacional := 'N';
  if fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger > 0 then
    vID_NCM := fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger
  else
    vID_NCM := fDMCadPedido.cdsProdutoID_NCM.AsInteger;
  fDMCadPedido.cdsTab_NCM.Locate('ID',vID_NCM,([Locaseinsensitive]));
  if (fDMCadPedido.cdsFilialSIMPLES.AsString = 'S') and (fDMCadPedido.cdsTab_NCMUSAR_MVA_UF_DESTINO.AsString <> 'S') then
    vUF := fDMCadPedido.cdsFilialUF.AsString
  else
    vUF := fDMCadPedido.cdsClienteUF.AsString;
  if fDMCadPedido.cdsUFUF.AsString <> fDMCadPedido.cdsClienteUF.AsString then
    fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,([Locaseinsensitive]));
  //23/05/2014
  vTipo_Cliente := '';
  if fDMCadPedido.cdsClienteID_REGIME_TRIB.AsInteger > 0 then
  begin
    fDMCadPedido.qRegime_Trib.Close;
    fDMCadPedido.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadPedido.cdsClienteID_REGIME_TRIB.AsInteger;
    fDMCadPedido.qRegime_Trib.Open;
    if fDMCadPedido.qRegime_TribCODIGO.AsInteger < 3 then
      vTipo_Cliente := 'S'
    else
      vTipo_Cliente := 'G';
  end;
  //**************
  //Busca Redução ST
  vBaseSubst := 0;
  vVlrSubst  := 0;
  vPercRedST := 0;
  vPerc_Reducao_Base := StrToFloat(FormatFloat('0.00',0));
  prc_Abrir_qProduto_UF(fDMCadPedido,fDMCadPedido.cdsPedido_ItensID_Produto.AsInteger,vUF);
  if not(fDMCadPedido.qProduto_UF.IsEmpty) then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadPedido.qProduto_UFPERC_REDUCAO_ST.AsFloat)) > 0) then
      vPercRedST := StrToFloat(FormatFloat('0.00000',fDMCadPedido.qProduto_UFPERC_REDUCAO_ST.AsFloat));
    if (StrToFloat(FormatFloat('0.00',fDMCadPedido.qProduto_UFPERC_REDUCAO_ICMS.AsFloat)) > 0) then
      vPerc_Reducao_Base := StrToFloat(FormatFloat('0.00000',fDMCadPedido.qProduto_UFPERC_REDUCAO_ICMS.AsFloat));
  end;
  if (StrToFloat(FormatFloat('0.0000',vPerc_Reducao_Base)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) then
    vPerc_Reducao_Base := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat));
  //Busca Icms interno e o próprio no cadastro do produto
  if vUF <> fDMCadPedido.cdsClienteUF.AsString then
    prc_Abrir_qProduto_UF(fDMCadPedido,vID_NCM,fDMCadPedido.cdsClienteUF.AsString);
  if not(fDMCadPedido.qProduto_UF.IsEmpty) and (StrToFloat(FormatFloat('0.00',fDMCadPedido.qProduto_UFPERC_ICMS_INTERNO.AsFloat)) > 0) then
    vPerc_Interno := StrToFloat(FormatFloat('0.00',fDMCadPedido.qProduto_UFPERC_ICMS_INTERNO.AsFloat));
  if not(fDMCadPedido.qProduto_UF.IsEmpty) and (StrToFloat(FormatFloat('0.00',fDMCadPedido.qProduto_UFPERC_ICMS.AsFloat)) > 0) then
    vPerc_Proprio := StrToFloat(FormatFloat('0.00',fDMCadPedido.qProduto_UFPERC_ICMS.AsFloat));
  prc_Abrir_qNCM_UF(fDMCadPedido,vID_NCM,vUF,'A');
  if fDMCadPedido.qNCM_UF.IsEmpty then
  begin
    prc_Abrir_qNCM_UF(fDMCadPedido,vID_NCM,vUF,vImportado_Nacional);
    if fDMCadPedido.qNCM_UF.IsEmpty then
      exit;
  end;
  //16/10/2018
  if vTipo_Cliente = 'G' then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_BASE_ST.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
      vPercRedST :=  StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_BASE_ST.AsFloat))
  end
  else
  if (StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_BASE_ST_SIMPLES.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
    vPercRedST :=  StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_BASE_ST_SIMPLES.AsFloat));
  //**************
  if StrToFloat(FormatFloat('0.00',vPerc_Interno)) <= 0  then
    vPerc_Interno := fDMCadPedido.qNCM_UFPERC_ICMS_INTERNO.AsFloat;
  vBaseSubst   := 0;
  vVlrSubst    := 0;
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMSSUBST.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
    vPercRedST := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMSSUBST.AsFloat));
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.qNCM_UFPERC_RED_STRIB.AsFloat)) > 0)  and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
    vPercRedST := StrToFloat(FormatFloat('0.0000',fDMCadPedido.qNCM_UFPERC_RED_STRIB.AsFloat));
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.qNCM_UFPERC_RED_BASE_ST.AsFloat)) > 0)  and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
    vPercRedST := StrToFloat(FormatFloat('0.0000',fDMCadPedido.qNCM_UFPERC_RED_BASE_ST.AsFloat));

  vBaseICMAux := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat
               //+ fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_SEGURO.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_OUTRASDESPESAS.AsFloat));
               + fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat));
  vVlrTotal   := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat
               //+ fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_SEGURO.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_OUTRASDESPESAS.AsFloat));
               + fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat));
  //10/11/20/15
  if StrToFloat(FormatFloat('0.00000',vPerc_Reducao_Base)) > 0 then
  begin
    if fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrTotal := StrToCurr(FormatCurr('0.00',vVlrTotal * (vPerc_Reducao_Base / 100)))
    else
      vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal * (vPerc_Reducao_Base / 100)));
  end;
  //**************

  if fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString = 'S' then
    vVlrTotal   := StrToCurr(FormatCurr('0.00',vVlrTotal + fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat));
  if StrToFloat(FormatFloat('0.00',vPerc_Proprio)) <= 0 then
    vPerc_Proprio := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsUFPERC_ICMS.AsFloat));
  if StrToFloat(FormatFloat('0.00',vPerc_Interno)) <= 0 then
    vPerc_Interno := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsUFPERC_ICMS_INTERNO.AsFloat));

  if ((fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '1') or (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '2') or (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '3')
    or (fDMCadPedido.cdsProdutoORIGEM_PROD.AsString = '8')) and (fDMCadPedido.cdsClienteUF.AsString <> fDMCadPedido.cdsFilialUF.AsString) then
    vPerc_Proprio := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsFilialPERC_LISTA_CAMEX.AsFloat));

  if StrToFloat(FormatFloat('0.00',vPerc_Proprio)) > 0 then
  begin
    if fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vIcmsProprio := StrToCurr(FormatCurr('0.00',vVlrTotal * vPerc_Proprio / 100))
    else
      vIcmsProprio := StrToFloat(FormatFloat('0.00',vVlrTotal * vPerc_Proprio / 100));
  end;
  vBaseSubst := vBaseICMAux;
  //01/12/2015
  if StrToFloat(FormatFloat('0.00',vPercRedST)) > 0 then
  begin
    if fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vBaseSubst := StrToCurr(FormatCurr('0.00',(vBaseSubst * vPercRedST) / 100))
    else
      vBaseSubst := StrToFloat(FormatFloat('0.00',(vBaseSubst * vPercRedST) / 100));
  end;
  //*****************

  vPerc_MVA  := StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFMVAINTERNO.AsFloat));
  vPerc_MVA2 := StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFMVAINTERNO.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFMVAINTERNO.AsFloat)) > 0 then
  begin
    //28/05/2014
    vPerc_Red_MVA := 0;
    if (fDMCadPedido.cdsFilialSIMPLES.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA.AsFloat)) > 0) then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA.AsFloat))
    else
    if (fDMCadPedido.cdsFilialSIMPLES.AsString <> 'S') and (StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA_GERAL.AsFloat)) > 0) then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA_GERAL.AsFloat));
    //16/10/2018
    if (StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat)) > 0) and (vTipo_Cliente = 'G') then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat))
    else
    if (StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat)) > 0) and (vTipo_Cliente = 'S') then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat));
    //********************
    if StrToFloat(FormatFloat('0.0000',vPerc_Red_MVA)) > 0 then
      vPerc_MVA := StrToFloat(FormatFloat('0.00',vPerc_MVA - (vPerc_MVA * vPerc_Red_MVA / 100)));
    vPerc_MVA2 := StrToCurr(FormatCurr('0.000',vPerc_MVA));
  end;
  if (fDMCadPedido.qNCM_UFAJUSTAR_MVA.AsString = 'A') or (vTipo_Cliente = fDMCadPedido.qNCM_UFAJUSTAR_MVA.AsString) then
  begin
    vPerc_MVA         := StrToCurr(FormatCurr('0.0000',(vPerc_MVA / 100) + 1));
    vPerc_Proprio_Aux := StrToCurr(FormatCurr('0.00',(100 - vPerc_Proprio)));
    vPerc_Interno_Aux := StrToCurr(FormatCurr('0.00',(100 - vPerc_Interno)));
    vPerc_MVA         := StrToCurr(FormatCurr('0.00',((((vPerc_MVA * vPerc_Proprio_Aux) / vPerc_Interno_Aux) - 1) * 100)));
    vPerc_MVA2        := StrToCurr(FormatCurr('0.00',vPerc_MVA));
  end;
  //07/07/2014
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.qNCM_UFMVAINTERNO.AsFloat)) > 0 then
  begin
    if fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vBaseSubst := StrToCurr(FormatCurr('0.00',vBaseSubst + (vBaseSubst * vPerc_MVA / 100)))
    else
      vBaseSubst := StrToFloat(FormatFloat('0.00',vBaseSubst + (vBaseSubst * vPerc_MVA / 100)));
  end;
  if StrToFloat(FormatFloat('0.00',vPerc_Interno)) > 0 then
  begin
    vIcmsInterno := StrToCurr(FormatCurr('0.00',vBaseSubst * vPerc_Interno / 100));
    if fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrSubst := StrToCurr(FormatCurr('0.00',vBaseSubst * vPerc_Interno / 100)) - vIcmsProprio
    else
      vVlrSubst := StrToFloat(FormatFloat('0.00',vBaseSubst * vPerc_Interno / 100)) - vIcmsProprio;
  end;
  if StrToFloat(FormatFloat('0.00',vVlrSubst)) > 0 then
  begin
    fDMCadPedido.cdsPedido_ItensBASE_ICMSSUBST.AsFloat := vBaseSubst;
    fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat  := vVlrSubst;
  end;
  fDMCadPedido.qNCM_UF.Close;
  fDMCadPedido.qProduto_UF.Close;
  fDMCadPedido.qNCM_UF.Close;
end;

procedure prc_Gravar_mEmbalagem(fDMCadPedido: TDMCadPedido; ID_Pedido: Integer);
begin
  fDMCadPedido.mEmbalagem.EmptyDataSet;
  fDMCadPedido.qPedido_Emb.Close;
  fDMCadPedido.qPedido_Emb.ParamByName('ID').AsInteger := ID_Pedido;
  fDMCadPedido.qPedido_Emb.Open;
  while not fDMCadPedido.qPedido_Emb.Eof do
  begin
    if fDMCadPedido.mEmbalagem.Locate('ID_Material;Qtd_Capacidade',VarArrayOf([fDMCadPedido.qPedido_EmbID_EMBALAGEM.AsInteger,fDMCadPedido.qPedido_EmbQTD_CAPACIDADE.AsInteger]),[locaseinsensitive]) then
      fDMCadPedido.mEmbalagem.Edit
    else
    begin
      fDMCadPedido.mEmbalagem.Insert;
      fDMCadPedido.mEmbalagemID_Material.AsInteger := fDMCadPedido.qPedido_EmbID_EMBALAGEM.AsInteger;
      fDMCadPedido.qProduto.Close;
      fDMCadPedido.qProduto.ParamByName('ID').AsInteger := fDMCadPedido.qPedido_EmbID_EMBALAGEM.AsInteger;
      fDMCadPedido.qProduto.Open;
      fDMCadPedido.mEmbalagemNome_Material.AsString   := fDMCadPedido.qProdutoNOME.AsString;
      fDMCadPedido.mEmbalagemQtd_Capacidade.AsInteger := fDMCadPedido.qPedido_EmbQTD_CAPACIDADE.AsInteger;
      fDMCadPedido.mEmbalagemQtd_Produto.AsInteger    := 0;
    end;
    fDMCadPedido.mEmbalagemQtd_Produto.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadPedido.mEmbalagemQtd_Produto.AsFloat + fDMCadPedido.qPedido_EmbQTD_PEDIDO.AsFloat));

    fDMCadPedido.mEmbalagemQtd_Consumo.AsInteger := fDMCadPedido.mEmbalagemQtd_Produto.AsInteger div fDMCadPedido.mEmbalagemQtd_Capacidade.AsInteger;
    if fDMCadPedido.mEmbalagemQtd_Produto.AsInteger mod fDMCadPedido.mEmbalagemQtd_Capacidade.AsInteger > 0 then
      fDMCadPedido.mEmbalagemQtd_Consumo.AsInteger := fDMCadPedido.mEmbalagemQtd_Consumo.AsInteger + 1;
    fDMCadPedido.mEmbalagem.Post;
    fDMCadPedido.qPedido_Emb.Next;
  end;
end;

procedure prc_Calcula_Perc_Comissao(fDMCadPedido: TDMCadPedido);
var
  vComissaoAux: Real;
  vPercAux: Real;
  vVlrAux: Real;
begin
  fDMCadPedido.vPerc_Comissao_Rateio := 0;
  vComissaoAux          := 0;
  if ((fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S')) and (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I')
    and (fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0) then
  begin
    fDMCadPedido.cdsPedido_Itens.First;
    while not fDMCadPedido.cdsPedido_Itens.Eof do
    begin
      if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat)) > 0 then
        vPercAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat))
      else
        vPercAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat));
      vVlrAux := StrToFloat(FormatFloat('0.00',((fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat) + fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat) * vPercAux / 100));
      vComissaoAux := StrToFloat(FormatFloat('0.00',vComissaoAux + vVlrAux));
      fDMCadPedido.cdsPedido_Itens.Next;
    end;
    if StrToFloat(FormatFloat('0.00',vComissaoAux)) > 0 then
    begin
      fDMCadPedido.vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.00000',(vComissaoAux / fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat) * 100));
    end;
  end
  else
    fDMCadPedido.vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat));
  //*********************
end;

procedure prc_Calcular_ICMS_UF_Dest(fDMCadPedido: TDMCadPedido);
var
  vAux, vAux2: Real;
  vPerc_Partilha: Real;
  vVlr_ICMS_Int: Real;
  vVlr_ICMS_Ope: Real;
  vDifal: Real;
  vPerc_ICMS: Real;
  vBaseAux: Real;
begin
  fdmcadPedido.cdsPedido_ItensPERC_ICMS_FCP.AsFloat      := 0;
  fdmcadPedido.cdsPedido_ItensPERC_ICMS_UF_DEST.AsFloat  := 0;
  fdmcadPedido.cdsPedido_ItensPERC_ICMS_PARTILHA.AsFloat := 0;
  fdmcadPedido.cdsPedido_ItensVLR_ICMS_FCP.AsFloat       := 0;
  fdmcadPedido.cdsPedido_ItensVLR_ICMS_UF_DEST.AsFloat   := 0;
  fdmcadPedido.cdsPedido_ItensVLR_ICMS_UF_REMET.AsFloat  := 0;
  if fDMCadPedido.cdsFilialCALCULAR_DIFAL.AsString <> 'S' then
    exit;
  if YearOf(fdmcadPedido.cdsPedidoDTEMISSAO.AsDateTime) < 2016 then
    exit;
  if fdmcadPedido.cdsClienteUF.AsString = fdmcadPedido.cdsFilialUF.AsString then
    exit;
  if fdmcadPedido.cdsClienteTIPO_CONSUMIDOR.AsInteger <> 1 then
    exit;
  if fDMCadPedido.qParametros_NFeCALCULAR_DIFAL.AsString = 'C' then
  begin
    if fDMCadPedido.cdsClienteTIPO_CONTRIBUINTE.AsInteger <> 9 then
      exit;
  end
  else
  begin
    if (fDMCadPedido.cdsClienteTIPO_CONSUMIDOR.AsInteger <> 1) then
      exit;
  end;
  if fdmcadPedido.cdsCFOPGERAR_ICMS.AsString <> 'S' then
    exit;
  if fdmcadPedido.cdsClienteTIPO_CONTRIBUINTE.AsInteger <> 9 then
    exit;
  if fdmcadPedido.cdsFilialSIMPLES.AsString = 'S' then
  begin
    vBaseAux   := fdmcadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat;
    vPerc_ICMS := fnc_busca_icm(fdmcadPedido);
    fdmcadPedido.cdsPedido_ItensPERC_ICMS_INTER.AsFloat := vPerc_ICMS;
  end
  else
  begin
    vBaseAux   := StrToFloat(FormatFloat('0.00',fdmcadPedido.cdsPedido_ItensBASE_ICMS.AsFloat));
    vPerc_ICMS := fdmcadPedido.cdsPedido_ItensPERC_ICMS.AsFloat;
    fdmcadPedido.cdsPedido_ItensPERC_ICMS_INTER.AsFloat := vPerc_ICMS;
  end;
  vVlr_ICMS_Int := StrToFloat(FormatFloat('0.00',vBaseAux * vPerc_ICMS / 100));
  vVlr_ICMS_Ope := StrToFloat(FormatFloat('0.00',vBaseAux * fdmcadPedido.cdsUFPERC_ICMS_INTERNO.AsFloat / 100));
  vDifal        := vVlr_ICMS_Ope - vVlr_ICMS_Int;

  if fdmcadPedido.cdsUFPERC_CP.AsFloat > 0 then
  begin
    fdmcadPedido.cdsPedido_ItensPERC_ICMS_FCP.AsFloat := StrToFloat(FormatFloat('0.00',fdmcadPedido.cdsUFPERC_CP.AsFloat));
    fdmcadPedido.cdsPedido_ItensVLR_ICMS_FCP.AsFloat  := StrToFloat(FormatFloat('0.00',vBaseAux * fdmcadPedido.cdsUFPERC_CP.AsFloat / 100));
  end;
  fdmcadPedido.qIcmsPartilha.Close;
  fdmcadPedido.qIcmsPartilha.ParamByName('ANO').AsInteger := YearOf(fdmcadPedido.cdsPedidoDTEMISSAO.AsDateTime);
  fdmcadPedido.qIcmsPartilha.Open;
  vPerc_Partilha := StrToFloat(FormatFloat('0.00',fdmcadPedido.qIcmsPartilhaPERC_DESTINO.AsFloat));
  if (StrToFloat(FormatFloat('0.00',fdmcadPedido.qIcmsPartilhaPERC_DESTINO.AsFloat)) <= 0) and (YearOf(fdmcadPedido.cdsPedidoDTEMISSAO.AsDateTime) >= 2019) then
    vPerc_Partilha := StrToFloat(FormatFloat('0.00',100));
  if (StrToFloat(FormatFloat('0.00',vPerc_Partilha)) <= 0) and (YearOf(fdmcadPedido.cdsPedidoDTEMISSAO.AsDateTime) < 2019) then
    exit;
  fdmcadPedido.cdsPedido_ItensPERC_ICMS_PARTILHA.AsFloat := StrToFloat(FormatFloat('0.00',vPerc_Partilha));
  if (StrToFloat(FormatFloat('0.00',fdmcadPedido.cdsUFPERC_ICMS_INTERNO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPerc_Partilha)) > 0) then
  begin
    fdmcadPedido.cdsPedido_ItensPERC_ICMS_UF_DEST.AsFloat := StrToFloat(FormatFloat('0.00',fdmcadPedido.cdsUFPERC_ICMS_INTERNO.AsFloat));
    vAux := StrToFloat(FormatFloat('0.00',fdmcadPedido.cdsUFPERC_ICMS_INTERNO.AsFloat - vPerc_ICMS));
    if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
    begin
      if StrToFloat(FormatFloat('0.00',vPerc_Partilha)) = 100 then
        fdmcadPedido.cdsPedido_ItensVLR_ICMS_UF_DEST.AsFloat := StrToFloat(FormatFloat('0.00',vDifal))
      else
      begin
        fdmcadPedido.cdsPedido_ItensVLR_ICMS_UF_DEST.AsFloat  := StrToFloat(FormatFloat('0.00',vDifal * vPerc_Partilha / 100));
        if fdmcadPedido.cdsFilialSIMPLES.AsString = 'S' then
          fdmcadPedido.cdsPedido_ItensVLR_ICMS_UF_REMET.AsFloat := StrToFloat(FormatFloat('0.00',0))
        else
          fdmcadPedido.cdsPedido_ItensVLR_ICMS_UF_REMET.AsFloat := StrToFloat(FormatFloat('0.00',vDifal - fdmcadPedido.cdsPedido_ItensVLR_ICMS_UF_DEST.AsFloat));
      end;
    end;
  end;
end;

function fnc_busca_icm(fDMCadPedido: TDMCadPedido): Real;
begin
  Result := 0;
  if fdmcadPedido.cdsProdutoID.AsInteger <> fdmcadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
  begin
    if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
      fDMCadPedido.prc_Abrir_ProdutoLoja(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,'','')
    else
      fdmcadPedido.cdsProduto.Locate('ID',fdmcadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));
  end;
  if fdmcadPedido.cdsFilialID.AsInteger <> fdmcadPedido.cdsPedidoFILIAL.AsInteger then
    fdmcadPedido.cdsFilial.Locate('ID',fdmcadPedido.cdsPedidoFILIAL.AsInteger,([Locaseinsensitive]));
  if (fdmcadPedido.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString = 'S') and (fdmcadPedido.cdsParametrosUSA_PERC_ORGAO_PUBLICO_IMP.AsString <> 'S') then
    Result := StrToFloat(FormatFloat('0.00',fdmcadPedido.cdsFilialPERC_LISTA_CAMEX.AsFloat))
  else
    Result := StrToFloat(FormatFloat('0.00',fdmcadPedido.cdsUFPERC_ICMS.AsFloat));
end;

function fnc_Proximo_Num_Pedido(Tipo_Reg, Usa_Filial: String; vNum_Proximo: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds.Close;
  sds.CommandText := 'SELECT MAX(NUM_PEDIDO) NUM_PEDIDO, MAX(NUM_ORCAMENTO) NUM_ORCAMENTO, COUNT(1) QTD_REG '
                   + ' FROM PEDIDO '
                   + ' WHERE TIPO_REG = :TIPO_REG ';
  if Usa_Filial = 'S' then
  begin
    sds.CommandText := sds.CommandText + ' AND FILIAL = :FILIAL ';
    sds.ParamByName('FILIAL').AsInteger := vFilial;
  end;
  sds.ParamByName('TIPO_REG').AsString := Tipo_Reg;
  sds.Open;
  if sds.FieldByName('QTD_REG').AsInteger > 0 then
  begin
    if Tipo_Reg = 'O' then
      Result := sds.FieldByName('NUM_ORCAMENTO').AsInteger
    else
      Result := sds.FieldByName('NUM_PEDIDO').AsInteger;
  end
  else
    Result := vNum_Proximo;
  FreeAndNil(sds);
end;

procedure prc_Gerar_Consumo(fDMCadPedido: TDMCadPedido);
var
  vCarimbo: String;
  vTamanho: String;
  vID_Cor: Integer;
  vQtdAux: Real;
  vID_CorAnt, vID_MaterialAnt: Integer;

  procedure prc_Gravar_Lote_Mat(ID_Material, ID_Cor: Integer; Tamanho: String; Qtd_Consumo, Qtd_Produto: Real);
  begin
    if fDMCadPedido.mConsumo_Mat.Locate('ID_Material;ID_Cor;Tamanho',VarArrayOf([ID_Material,ID_Cor,Tamanho]),[locaseinsensitive]) then
      fDMCadPedido.mConsumo_Mat.Edit
    else
    begin
      fDMCadPedido.mConsumo_Mat.Insert;
      fDMCadPedido.mConsumo_MatID_Material.AsInteger  := ID_Material;
      fDMCadPedido.mConsumo_MatID_Cor.AsInteger       := ID_Cor;
      fDMCadPedido.mConsumo_MatTamanho.AsString       := Tamanho;
      fDMCadPedido.mConsumo_MatQtd_Consumo.AsFloat    := 0;
      fDMCadPedido.mConsumo_MatNome_Material.AsString := fDMCadPedido.cdsConsumoNOME_MATERIAL.AsString;
      fDMCadPedido.mConsumo_MatNome_Cor.AsString      := fDMCadPedido.cdsConsumoNOME_COR.AsString;
    end;
    Qtd_Consumo := StrToFloat(FormatFloat('0.0000',Qtd_Consumo * Qtd_Produto));
    fDMCadPedido.mConsumo_MatQtd_Consumo.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.mConsumo_MatQtd_Consumo.AsFloat + Qtd_Consumo));
    fDMCadPedido.mConsumo_Mat.Post;
  end;

begin
  fDMCadPedido.cdsConsumo.Close;
  fDMCadPedido.sdsConsumo.ParamByName('ID_COMBINACAO').AsInteger := fDMCadPedido.mItensImpID_Combinacao.AsInteger;
  fDMCadPedido.sdsConsumo.ParamByName('ID_PRODUTO').AsInteger    := fDMCadPedido.mItensImpID_Produto.AsInteger;
  fDMCadPedido.cdsConsumo.Open;
  if fDMCadPedido.cdsConsumo.IsEmpty then
    exit;

  vID_CorAnt      := 0;
  vID_MaterialAnt := 0;

  fDMCadPedido.cdsConsumo.First;
  while not fDMCadPedido.cdsConsumo.Eof do
  begin
    if fDMCadPedido.cdsConsumoID_COR_MAT.AsInteger <= 0 then
      vID_Cor := 0
    else
      vID_Cor := fDMCadPedido.cdsConsumoID_COR_MAT.AsInteger;
      
    vTamanho := '';
    vQtdAux  := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsConsumoQTD_CONSUMO.AsFloat));
    if (fDMCadPedido.cdsConsumoID_GRADE_MAT.AsInteger > 0) or (fDMCadPedido.cdsConsumoTIPO_CONSUMO.AsString = 'T') then
    begin
      fDMCadPedido.mItensImp_Tam.First;
      while not fDMCadPedido.mItensImp_Tam.Eof do
      begin
        if (fDMCadPedido.cdsConsumoTIPO_CONSUMO.AsString = 'T') then
        begin
          fDMCadPedido.qConsumo_Tam.Close;
          fDMCadPedido.qConsumo_Tam.ParamByName('ID').AsInteger     := fDMCadPedido.cdsConsumoID.AsInteger;
          fDMCadPedido.qConsumo_Tam.ParamByName('ITEM').AsInteger   := fDMCadPedido.cdsConsumoITEM_CONSUMO.AsInteger;
          fDMCadPedido.qConsumo_Tam.ParamByName('TAMANHO').AsString := fDMCadPedido.mItensImp_TamTamanho.AsString;
          fDMCadPedido.qConsumo_Tam.Open;
          vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadPedido.qConsumo_TamQTD_CONSUMO.AsFloat));
        end;
        if fDMCadPedido.cdsConsumoID_GRADE_MAT.AsInteger > 0 then
          vTamanho := fDMCadPedido.mItensImp_TamTamanho.AsString;
        prc_Gravar_Lote_Mat(fDMCadPedido.cdsConsumoID_MATERIAL.AsInteger,vID_Cor,vTamanho,vQtdAux,fDMCadPedido.mItensImp_TamQtd.AsFloat);
        fDMCadPedido.mItensImp_Tam.Next;
      end;
    end
    else
      prc_Gravar_Lote_Mat(fDMCadPedido.cdsConsumoID_MATERIAL.AsInteger,vID_Cor,vTamanho,vQtdAux,fDMCadPedido.mItensImpQtd.AsFloat);
    fDMCadPedido.cdsConsumo.Next;
  end;
end;

function fnc_Busca_Embalagem(ID_Produto: Integer): Integer;
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

procedure prc_Calcular_Frete_Novo(fDMCadPedido: TDMCadPedido);
var
  vAux: Real;
begin
  vContadorOutros := vContadorOutros - 1;
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcFrete))
  else
  if StrToFloat(FormatFloat('0.00',vCalcFrete)) > 0 then
  begin
    if  fDMCadPedido.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcFrete * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcFrete * vAux) / 100));
    end;
  end;
  fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcFrete := StrToFloat(FormatFloat('0.00',vCalcFrete - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcFrete)) <= 0 then
    vCalcFrete := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsPedido_ItensVLR_ICMSFRETE.AsFloat := 0;
  if (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoPERC_ICMS_FRETE.AsFloat)) > 0) then
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat)) > 0 then
      fDMCadPedido.cdsPedido_ItensVLR_ICMSFRETE.AsCurrency := StrToFloat(FormatCurr('0.00',(fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsCurrency * fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsCurrency) / 100))
    else
      fDMCadPedido.cdsPedido_ItensVLR_ICMSFRETE.AsCurrency := StrToFloat(FormatCurr('0.00',(fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsCurrency * fDMCadPedido.cdsPedidoPERC_ICMS_FRETE.AsCurrency) / 100));
    fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsCurrency     := StrToFloat(FormatCurr('0.00',fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsCurrency));
    fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsCurrency      := StrToFloat(FormatCurr('0.00',fDMCadPedido.cdsPedido_ItensVLR_ICMS.AsCurrency + fDMCadPedido.cdsPedido_ItensVLR_ICMSFRETE.AsCurrency));
  end;
end;

procedure prc_Posicionar_Regra_Empresa(fDMCadPedido: TDMCadPedido; ID_Operacao: Integer; Finalidade: String);
var
  vCodRegAux: Integer;
  vTipoAux: String;
  vUFClienteAux: String;
  vTipoEmpresa: String;
  vZonaAux: String;
  vSTAux: String;
  vTipoProd: String;
  vPessoa: String;
begin
  if fDMCadPedido.cdsClienteID_REGIME_TRIB.AsInteger > 0 then
    vCodRegAux := fDMCadPedido.cdsClienteID_REGIME_TRIB.AsInteger
  else
    vCodRegAux := 1;
  if fDMCadPedido.cdsClienteUF.AsString = fDMCadPedido.cdsFilialUF.AsString then
    vUFClienteAux := 'D'
  else
  if fDMCadPedido.cdsClienteID_PAIS.AsInteger > 1 then
    vUFClienteAux := 'E'
  else
    vUFClienteAux := 'F';
  if (trim(fDMCadPedido.cdsClienteINSC_SUFRAMA.AsString) <> '') and not(fDMCadPedido.cdsClienteINSC_SUFRAMA.IsNull) then
    vZonaAux := 'S'
  else
    vZonaAux := 'N';
  if fDMCadPedido.cdsTab_NCMID.AsInteger <> fDMCadPedido.cdsProdutoID_NCM.AsInteger then
    fDMCadPedido.cdsTab_NCM.Locate('ID',fDMCadPedido.cdsProdutoID_NCM.AsInteger,([Locaseinsensitive]));
  if fDMCadPedido.cdsTab_NCMGERAR_ST.AsString = 'S' then
    vSTAux := 'S'
  else
    vSTAux := 'N';

  if fDMCadPedido.cdsParametrosUSA_SPED.AsString = 'S' then
  begin
    if (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '00') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '01') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '02') then
      vTipoProd := 'R'
    else
    if (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '03') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '04') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '05')
      or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '06') then
      vTipoProd := 'V';
  end
  else
  begin
    if (fDMCadPedido.cdsProdutoTIPO_VENDA.AsString = 'R') or (fDMCadPedido.cdsProdutoTIPO_VENDA.AsString = 'C') then
      vTipoProd := 'R'
    else
      vTipoProd := 'V';
  end;

  fDMCadPedido.qRegime_Trib.Close;
  fDMCadPedido.qRegime_Trib.ParamByName('ID').AsInteger := vCodRegAux;
  fDMCadPedido.qRegime_Trib.Open;
  if fDMCadPedido.qRegime_TribCODIGO.AsInteger > 2 then
    vTipoAux := 'G'
  else
    vTipoAux := 'S';
  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    vTipoEmpresa := 'S'
  else
    vTipoEmpresa := 'G';

  //IF da pessoa foi incluido dia 26/06/2017, pois pessoa Física usa as mesmas regras da Pessoa Jurídica não contribuinte  
  if (fDMCadPedido.cdsClientePESSOA.AsString = 'J') and (fDMCadPedido.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 1) then
    vPessoa := 'J'
  else
    vPessoa := 'F';
  if trim(Finalidade) = '' then
    Finalidade := 'O';

  //fDMCadPedido.vID_CFOP := fnc_Regra_Empresa_CFOP(fDMCadPedido.cdsClientePESSOA.AsString,vZonaAux,vSTAux,vTipoProd,vTipoEmpresa,vTipoAux,vUFClienteAux,ID_Operacao);
  fDMCadPedido.vID_CFOP := fnc_Regra_Empresa_CFOP(vPessoa,vZonaAux,vSTAux,vTipoProd,vTipoEmpresa,vTipoAux,vUFClienteAux,ID_Operacao,Finalidade);
  fDMCadPedido.vID_Variacao := 0;
  if fDMCadPedido.vID_CFOP > 0 then
    fDMCadPedido.vUsarRegraEmpresa := True
  else
    fDMCadPedido.vUsarRegraEmpresa := False;
end;

function fnc_Calcula_Ace_Roldana(fDMCadPedido: TDMCadPedido): Real;
var
  vVlrDuplicata: Real;
begin
  Result := 0;
  vVlrDuplicata := 0;
  //12/08/2015
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedido_Ace.First;
    while not fDMCadPedido.cdsPedido_Ace.Eof do
    begin
      vVlrDuplicata := vVlrDuplicata + StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_AceVLR_TOTAL.AsFloat));
      fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedido_AceVLR_TOTAL.AsFloat;
      //17/06/2016
      fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat := fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat + fDMCadPedido.cdsPedido_AceVLR_TOTAL.AsFloat;
      //***************
      fDMCadPedido.cdsPedido_Ace.Next;
    end;

    fDMCadPedido.cdsPedido_Rol.First;
    while not fDMCadPedido.cdsPedido_Rol.Eof do
    begin
      vVlrDuplicata := vVlrDuplicata + StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_RolVLR_TOTAL.AsFloat));
      fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedido_RolVLR_TOTAL.AsFloat;
      //17/06/2016
      fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat := fDMCadPedido.cdsPedidoVLR_DUPLICATA.AsFloat + fDMCadPedido.cdsPedido_RolVLR_TOTAL.AsFloat;
      //***************

      fDMCadPedido.cdsPedido_Rol.Next;
    end;
  end;
  //******************
  Result := StrToFloat(FormatFloat('0.00',vVlrDuplicata));
end;

procedure prc_Calcular_Lucratividade(fDMCadPedido: TDMCadPedido; Tipo :String); //C= Calcula    V=Verifica
var
  vAux: Real;
  vPerc: Real;
begin
  if (fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive])) then
  begin
    if (fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat <> fDMCadPedido.cdsProdutoPRECO_CUSTO.AsFloat) and (fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S') then
     if MessageDlg('Custo desatualizado, deseja atualizar?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
       fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat := fDMCadPedido.cdsProdutoPRECO_CUSTO.AsFloat;
  end;

  if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat)) > 0 then
  begin
    if (Tipo = 'C')or (Tipo = 'V') then
    begin
      if not(fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
        fDMCadPedido.cdsPedido_Itens.Edit;
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat * fDMCadPedido.cdsPedido_ItensPERC_MARGEM.AsFloat) / 100));
      vAux := vAux + fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat;
      if StrToFloat(FormatFloat('0.0000',vAux)) <> StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) then
      begin
        //vAux := StrToFloat(FormatFloat('0.000###',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat - vAux));
        vAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat - fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat));
        vAux := StrToFloat(FormatFloat('0.000',(vAux / fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat) * 100));
        fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat := StrToFloat(FormatFloat('0.000',vAux));
      end
      else
        fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat := fDMCadPedido.cdsPedido_ItensPERC_MARGEM.AsFloat;
    end
    else
    if Tipo = 'M' then
    begin
      //if StrToFloat(FormatFloat('0.000###',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.OldValue)) <> StrToFloat(FormatFloat('0.000###',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.NewValue)) then
      //begin
      //  prc_Calcular_Lucratividade(fDMCadPedido,'C');
      //end
      //else
      //if StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.OldValue)) <> StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat)) then
      //begin
        if not(fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
          fDMCadPedido.cdsPedido_Itens.Edit;
        fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat + (fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat * fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat / 100)));
      //end;
    end;
  end;
end;

procedure prc_Inf_Lucratividade(fDMCadPedido: TDMCadPedido);
var
  sds: TSQLDataSet;
begin
  fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  if (fDMCadPedido.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString) <> '') then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.Close;
      sds.CommandText := 'SELECT P.ID, P.PRECO_CUSTO, P.PRECO_VENDA FROM PRODUTO_LOTE P '
                       + ' WHERE P.ID = :ID  AND P.NUM_LOTE_CONTROLE = :NUM_LOTE_CONTROLE ';
      sds.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
      sds.ParamByName('NUM_LOTE_CONTROLE').AsString := fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString;
      sds.Open;
      if StrToFloat(FormatFloat('0.0000',sds.FieldByName('PRECO_CUSTO').AsFloat)) > 0 then
        fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat  := StrToFloat(FormatFloat('0.0000',sds.FieldByName('PRECO_CUSTO').AsFloat));

      if fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat <= 0 then
      begin
        FreeAndNil(sds);
        sds.SQLConnection := dmDatabase.scoDados;
        sds.NoMetadata    := True;
        sds.GetMetadata   := False;
        sds.Close;
        sds.CommandText := 'SELECT P.ID, P.PRECO_VENDA FROM PRODUTO P '
                         + ' WHERE P.ID = :ID  ';
        sds.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
        sds.Open;
        if StrToFloat(FormatFloat('0.0000',sds.FieldByName('PRECO_CUSTO').AsFloat)) > 0 then
          fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat  := StrToFloat(FormatFloat('0.0000',sds.FieldByName('PRECO_CUSTO').AsFloat));
      end;

    finally
      FreeAndNil(sds);
    end;
  end;
  if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat)) <= 0 then
    fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat  := fDMCadPedido.cdsProdutoPRECO_CUSTO.AsFloat;
  fDMCadPedido.cdsPedido_ItensPERC_MARGEM.AsFloat  := fDMCadPedido.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
  fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat := fDMCadPedido.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
end;

function fnc_Num_Pedido_Vend(ID_Vendedor : Integer) : String;
var
  sds: TSQLDataSet;
begin
  vNum_Pedido_Vend := 0;
  Result := '';
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.Close;
  sds.CommandText := 'SELECT MAX(PED.NUM_PEDIDO_VEND) NUM_PEDIDO_VEND, VEND.COD_VENDEDOR FROM PEDIDO PED '
                   + ' LEFT JOIN pessoa_vend VEND ON PED.ID_VENDEDOR = VEND.CODIGO '
                   + ' WHERE PED.TIPO_REG = ' + QuotedStr('P');
  if ID_Vendedor > 0 then
    sds.CommandText := sds.CommandText + ' AND ID_VENDEDOR = ' + IntToStr(ID_Vendedor)
  else
    sds.CommandText := sds.CommandText + ' AND ID_VENDEDOR IS NULL ';
  sds.CommandText := sds.CommandText + ' GROUP BY VEND.COD_VENDEDOR ';
  sds.Open;
  vNum_Pedido_Vend := sds.FieldByName('NUM_PEDIDO_VEND').AsInteger;
  vNum_Pedido_Vend := vNum_Pedido_Vend + 1;
  if sds.FieldByName('COD_VENDEDOR').AsInteger > 0 then
    Result := FormatFloat('000',sds.FieldByName('COD_VENDEDOR').AsInteger) + '/' + FormatFloat('000000',vNum_Pedido_Vend)
  else
    Result := '999/' + FormatFloat('000000',vNum_Pedido_Vend);
  Result := Result + 'M';
end;

procedure prc_Calcular_Diferencial_ICMS(fDMCadPedido: TDMCadPedido);
var
  vPerc_Destino: Real;
  vPerc_Interno: Real;
  vPerc_Diferenca: Real;
  vVlr_Dif: Real;
  vBaseAux: Real;
begin
  fDMCadPedido.cdsPedido_ItensBASE_ICMSSUBST.AsFloat         := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat          := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsPedido_ItensPERC_MARGEM.AsFloat            := StrToFloat(FormatFloat('0.0',0));
  fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat           := StrToFloat(FormatFloat('0.0',0));

  if fDMCadPedido.cdsUFUF.AsString <> fDMCadPedido.cdsClienteUF.AsString then
    fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,([Locaseinsensitive]));
  vPerc_Destino := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;

  //fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsFilialUF.AsString,([Locaseinsensitive]));
  vPerc_Interno := fDMCadPedido.cdsUFPERC_ICMS_INTERNO.AsFloat;

  vPerc_Diferenca := StrToFloat(FormatFloat('0.000',vPerc_Interno - vPerc_Destino));
  if StrToFloat(FormatFloat('0.000',vPerc_Diferenca)) <= 0 then
    exit;

  vBaseAux := fDMCadPedido.cdsPedido_ItensBASE_ICMS.AsFloat;
  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    vBaseAux := StrToCurr(FormatCurr('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat
               //+ fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_SEGURO.AsFloat +
               + fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat));
               // + fDMCadPedido.cdsPedido_ItensVLR_OUTRASDESPESAS.AsFloat));
  vVlr_Dif := StrToFloat(FormatFloat('0.00',(vBaseAux * vPerc_Diferenca) / 100));

  fDMCadPedido.cdsPedido_ItensBASE_ICMSSUBST.AsFloat := vBaseAux;
  fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat  := vVlr_Dif;
end;

end.
