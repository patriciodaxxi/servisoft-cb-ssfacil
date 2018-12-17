unit uUtilDaruma;

interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, Forms, ExtCtrls, ShellApi, Registry, UDMCupomFiscal;

  //Daruma
  function prc_Iniciar_Cupom_Daruma(vCpf, vNome, vEndereco: String): Integer;
  procedure prc_Imprimir_Item_Cupom_Daruma(Desconto: Boolean; fDmCupomFiscal: TDmCupomFiscal; vMultQtd: Integer);
  procedure prc_Encerrar_Cupom_Daruma(fDmCupomFiscal: TDmCupomFiscal);
  procedure prc_Imprimir_Item_Cancelado_Daruma(fDmCupomFiscal: TDmCupomFiscal);
  procedure prc_Abrir_Gaveta_Daruma;
  procedure prc_LeituraX_Daruma(Tipo: Integer);
  procedure prc_ReducaoZ_Daruma;
  procedure prc_Totalizar_Cupom_Daruma;
  procedure prc_Cancelar_Cupom_Daruma;
  function fnc_Busca_Ultimo_Cupom_Daruma: String;
  function fnc_Imp_Ligada_Daruma: Integer;
  procedure prc_Pgto_Cupom_Daruma(Forma, Condicao: String; Valor: Currency);
  //********

//var


implementation

uses DmdDatabase, uImpFiscal_Daruma;

procedure prc_Inserir_Cupom_Fiscal(fDmCupomFiscal: TDmCupomFiscal);
begin
end;

function prc_Iniciar_Cupom_Daruma(vCpf, vNome, vEndereco: String): Integer;
begin
  Int_Retorno := iCFAbrir_ECF_Daruma(vCpf, vNome, vEndereco);
end;

procedure prc_Imprimir_Item_Cupom_Daruma(Desconto: Boolean; fDmCupomFiscal: TDmCupomFiscal; vMultQtd: Integer);
var
  vQtdAux: Real;
begin
  if vMultQtd > 1 then
    vQtdAux := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat * vMultQtd))
  else
    vQtdAux := StrToFloat(FormatFloat('0.00',fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat));

  if Desconto then
  else
    Int_Retorno := iCFVender_ECF_Daruma( fDmCupomFiscal.cdsCupom_ItensSITTRIB.AsString,
                                         FormatFloat('0.00',vQtdAux),
                                         FormatFloat('0.00#',fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat),
                                         'D$',
                                         fDmCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsString,
                                         fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsString,
                                         fDmCupomFiscal.cdsCupom_ItensUNIDADE.AsString,
                                         Copy(fDmCupomFiscal.cdsCupom_ItensNOMEPRODUTO.AsString,1,25));

  if (Int_Retorno <> 1) and (Int_Retorno <> -12) then
    DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure prc_Encerrar_Cupom_Daruma(fDmCupomFiscal: TDmCupomFiscal);
var
  vNome, vEndereco, vCnpj: String;
begin
  Int_Retorno:=  iCFEncerrarConfigMsg_ECF_Daruma('Obrigado! Volte sempre!!!');
end;

procedure prc_Imprimir_Item_Cancelado_Daruma(fDmCupomFiscal: TDmCupomFiscal);
begin
  Int_Retorno:= iCFCancelarItem_ECF_Daruma(fDmCupomFiscal.cdsCupom_ItensITEM.AsString);
  if (Int_Retorno <> 1) and (Int_Retorno <> -12) then
    DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure prc_Abrir_Gaveta_Daruma;
begin
  Int_Retorno := eAbrirGaveta_ECF_Daruma();
  if (Int_Retorno <> 1) and (Int_Retorno <> -12) then
    DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure prc_LeituraX_Daruma(Tipo: Integer);
begin
  case Tipo of
    1: Int_Retorno := iLeituraX_ECF_Daruma();
    2: Int_Retorno := rLeituraX_ECF_Daruma();
  end;
  if Int_Retorno <> 1 then
    DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure prc_ReducaoZ_Daruma;
begin
  Int_Retorno:= iReducaoZ_ECF_Daruma(' ',' ');
  if Int_Retorno <> 1 then
    DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

function fnc_Busca_Ultimo_Cupom_Daruma: String;
var
  vNumCupomAux: String;
begin
  vNumCupomAux := '000000';
  SetLength(vNumCupomAux,6);
  Int_Retorno  := rRetornarInformacao_ECF_Daruma('26',vNumCupomAux);
  Result       := vNumCupomAux;
end;

function fnc_Imp_Ligada_Daruma: Integer;
var
  Int_Retorno: Integer;
begin
  Int_Retorno := eDefinirProduto_Daruma('ECF');
  Int_Retorno := regAlterarValor_Daruma('ECF\RetornarAvisoErro','1');
//  Result := Int_Retorno;
end;

{procedure DarumaFramework_Mostrar_Retorno(iRetorno:integer);
begin
   //Variaveis devem ser inicializadas
   Int_NumErro:= 0;
	 Int_NumAviso:= 0;
   Str_Msg_NumErro:=StringOFChar(' ',300);
   Str_Msg_NumAviso:=StringOFChar(' ',300);
   Str_Msg_RetMetodo:=StringOFChar(' ',300);

// Retorna o número de erro e aviso do último comando enviado
   Int_Retorno:=rStatusUltimoCMDInt_ECF_Daruma(Int_NumErro, Int_NumAviso);
// Retorno do método
   Int_Retorno:=eInterpretarRetorno_ECF_Daruma(iRetorno, Str_Msg_RetMetodo);
// Mensagem do erro
   Int_Retorno:=eInterpretarErro_ECF_Daruma(Int_NumErro, Str_Msg_NumErro);
// Mensagem aviso
   Int_Retorno:=eInterpretarAviso_ECF_Daruma(Int_NumAviso, Str_Msg_NumAviso);

  Str_Erro:=Str_Msg_NumErro;
  Str_Aviso:=Str_Msg_NumAviso;
  Str_Msg_Retorno_Metodo:=Str_Msg_RetMetodo;

   MessageDlg( Pchar('Retorno do Método = ' + pchar(Str_Msg_Retorno_Metodo) + #13 +
                                 'Número Erro = ' + pchar(Str_Erro) +  #13 +
                                 'Número Aviso = ' + pchar(Str_Aviso)), 'DarumaFramework Retorno do Método', mb_ok);
end;}

procedure prc_Totalizar_Cupom_Daruma;
var
  iAviso, iErro: Integer;
begin
  Int_Retorno:= iCFTotalizarCupomPadrao_ECF_Daruma();
  if (Int_Retorno <> 1) and (Int_Retorno <> -12) then
    DarumaFramework_Mostrar_Retorno(Int_Retorno)

  else
  begin
    rStatusUltimoCmdInt_ECF_Daruma(iErro,iAviso);
    if (Int_Retorno = -12) and (iAviso = 1) then
      DarumaFramework_Mostrar_Retorno(Int_Retorno)
  end;
end;

procedure prc_Cancelar_Cupom_Daruma;
begin
  Int_Retorno:= iCFCancelar_ECF_Daruma();
  if (Int_Retorno <> 1) then
    DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure prc_Pgto_Cupom_Daruma(Forma, Condicao: String; Valor: Currency);
var
  vForma, vCondicao, vValor: String;
begin
  vForma    := Forma;
  vCondicao := Condicao;
  vValor    := FormatFloat('0.00',Valor);

  if Forma = '' then
    Int_Retorno := iCFEfetuarPagamentoPadrao_ECF_Daruma()
  else
  if Condicao = '' then
    Int_Retorno := iCFEfetuarPagamentoFormatado_ECF_Daruma(vForma,vValor)
  else
    Int_Retorno := iCFEfetuarPagamento_ECF_Daruma(vForma,vValor,vCondicao);

  if (Int_Retorno <> 1) and (Int_Retorno <> -12) then
    DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
