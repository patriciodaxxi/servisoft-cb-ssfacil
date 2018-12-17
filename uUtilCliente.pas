unit uUtilCliente;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, USenha, Messages,
  Controls, Graphics;

  procedure prc_Verifica_Limite(ID_Cliente, ID_Nota: Integer; Vlr_Limite_Credito: Real);
  function fnc_Limite_Credito(ID_Cliente, ID_Nota: Integer; Data: TDateTime): Real;
  function fnc_Controle_Financeiro(Vlr_Total, Vlr_Limite: Real; Usa_Limite_Credito, Senha_Credito: String; ID_Cliente: Integer): Boolean;
  procedure prc_Verifica_Limite_Compra(ID_Fornecedor, ID_Pedido: Integer; Vlr_Limite_Compra: Real; Data: TDateTime);
  function fnc_Limite_Compra_Usado(ID_Fornecedor, ID_Pedido: Integer; Data: TDateTime): Real;
  function fnc_Limite_Compra_Cadastrado(ID_Fornecedor: Integer): Real;
  function fnc_Primeiro_Pedido(ID_Cliente: Integer): Integer;

var
  vSenha_Cliente: String;
  vOBS_Primeiro_Pedido: WideString;

implementation

uses DateUtils, ComObj, DB;

procedure prc_Verifica_Limite(ID_Cliente, ID_Nota: Integer; Vlr_Limite_Credito: Real);
var
  sds_Vale: TSQLDataSet;
  sds_Param: TSQLDataSet;
  vMSGAlerta: String;
  vAux: Real;
begin
  vMSGAlerta := '';
  sds_Param  := TSQLDataSet.Create(nil);
  sds_Vale   := TSQLDataSet.Create(nil);
  try
    sds_Param.SQLConnection := dmDatabase.scoDados;
    sds_Param.NoMetadata  := True;
    sds_Param.GetMetadata := False;
    sds_Param.CommandText := 'SELECT USA_LIMITE_CREDITO, ALERTA_VALE, ALERTA_VLR_ATRASO FROM PARAMETROS';
    sds_Param.Open;
    if (sds_Param.FieldByName('USA_LIMITE_CREDITO').AsString = 'S') and (StrToFloat(FormatFloat('0.00',Vlr_Limite_Credito)) > 0) then
    begin
      vAux := fnc_Limite_Credito(ID_Cliente,ID_Nota,0);
      if StrToFloat(FormatFloat('0.00',Vlr_Limite_Credito)) <= StrToFloat(FormatFloat('0.00',vAux)) then
        vMSGAlerta := vMSGAlerta + #13 + '*** Valor do crédito já esta acima do permitido!';
    end;

    if (sds_Param.FieldByName('ALERTA_VALE').AsString = 'S') then
    begin
      sds_Vale.SQLConnection := dmDatabase.scoDados;
      sds_Vale.NoMetadata    := True;
      sds_Vale.GetMetadata   := False;
      sds_Vale.CommandText   := 'SELECT V.id, V.num_vale FROM VALE V '
                              + ' INNER JOIN VALE_ITENS VI  ON V.id = VI.id '
                              + ' WHERE VI.FATURADO = ' + QuotedStr('N')
                              + '   AND V.ID_CLIENTE = ' + IntToStr(ID_Cliente);
      sds_Vale.Open;
      if not sds_Vale.IsEmpty then
        vMSGAlerta := vMSGAlerta + #13 + '*** Existem VALES pendentes para esse cliente!';
    end;

    if (sds_Param.FieldByName('ALERTA_VLR_ATRASO').AsString = 'S') then
    begin
      vAux := fnc_Limite_Credito(ID_Cliente,0,Date);
      if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
        vMSGAlerta := vMSGAlerta + #13 + '*** Existem VALORES em atraso para esse cliente!';
    end;

  finally
    FreeAndNil(sds_Param);
    FreeAndNil(sds_Vale);
    if trim(vMSGAlerta) <> '' then
      MessageDlg(vMSGAlerta, mtInformation, [mbOk], 0);
  end;
end;

function fnc_Limite_Credito(ID_Cliente, ID_Nota: Integer; Data: TDateTime): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT SUM(D.VLR_RESTANTE) VLR_RESTANTE FROM DUPLICATA D '
                     + ' WHERE D.TIPO_ES = ' + QuotedStr('E')
                     + '   AND D.ID_PESSOA = ' + IntToStr(ID_Cliente);
    if ID_Nota > 0 then
      sds.CommandText := sds.CommandText + '   AND ((D.ID_NOTA <> ' + IntToStr(ID_Nota) + ') OR (D.ID_NOTA IS NULL))';
    if Data > 10 then
      sds.CommandText := sds.CommandText + '   AND (D.DTVENCIMENTO < ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Data)) + ')';
    sds.Open;
    Result := sds.FieldByName('VLR_RESTANTE').AsFloat;
  finally
    FreeAndNil(sds);
  end
end;

function fnc_Controle_Financeiro(Vlr_Total, Vlr_Limite: Real; Usa_Limite_Credito, Senha_Credito: String; ID_Cliente: Integer): Boolean;
var
  ffrmSenha: TfrmSenha;
  vAux: Real;
begin
  Result := True;
  if (USA_LIMITE_CREDITO <> 'S') then
  begin
    vAux := fnc_Limite_Credito(ID_Cliente,0,date);
    if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (trim(SENHA_CREDITO) = EmptyStr) then
    begin
      if MessageDlg('Cliente possui título em atraso, confirma a venda?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        Result := False;
        //exit;
    end
    else
    if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (trim(SENHA_CREDITO) <> '') then
    begin
      vSenha_Cliente    := '';
      ffrmSenha := TfrmSenha.Create(ffrmSenha);
      ffrmSenha.vControlaSenha := True;
      ffrmSenha.vSenha_Param   := SENHA_CREDITO;
      ffrmSenha.Label2.Caption := 'Valor em atraso: ' + FormatFloat('###,###,##0.00',vAux);
      ffrmSenha.Label3.Caption := '';
      ffrmSenha.Label4.Caption := '';
      ffrmSenha.ShowModal;
      FreeAndNil(ffrmSenha);
      if vSenha_Cliente <> SENHA_CREDITO then
        Result := False;
        //exit;
    end;
  end
  else
  if (USA_LIMITE_CREDITO = 'S') and (StrToFloat(FormatFloat('0.00',VLR_LIMITE)) > 0) then
  begin
    vAux := fnc_Limite_Credito(ID_CLIENTE,0,0);
    vAux := StrToFloat(FormatFloat('0.00',vAux + Vlr_Total));
    if StrToFloat(FormatFloat('0.00',VLR_LIMITE)) <= StrToFloat(FormatFloat('0.00',vAux)) then
    begin
      vSenha_Cliente    := '';
      ffrmSenha := TfrmSenha.Create(ffrmSenha);
      ffrmSenha.Label2.Caption := 'Limite de Crédito: ' + FormatFloat('###,###,##0.00',VLR_LIMITE);
      ffrmSenha.Label3.Caption := 'Limite Utilizado:' + FormatFloat('###,###,##0.00',vAux);
      vAux := StrToFloat(FormatFloat('0.00',VLR_LIMITE - vAux));
      ffrmSenha.Label4.Caption := 'Limite Disponível ==> ' + FormatFloat('###,###,##0.00',vAux);
      if vAux < StrToFloat(FormatFloat('0.00',0)) then
        ffrmSenha.Label4.Font.Color := clRed
      else
        ffrmSenha.Label4.Font.Color := clNavy;
      ffrmSenha.ShowModal;
      FreeAndNil(ffrmSenha);
      if vSenha_Cliente <> SENHA_CREDITO then
      begin
        Result := False;
        MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0);
        //exit;
      end;
    end;
  end;
  //*******************
end;

procedure prc_Verifica_Limite_Compra(ID_Fornecedor, ID_Pedido: Integer; Vlr_Limite_Compra: Real; Data: TDateTime);
var
  sds_Param: TSQLDataSet;
  vMSGAlerta: String;
  vAux: Real;
begin
  vMSGAlerta := '';
  sds_Param  := TSQLDataSet.Create(nil);
  try
    sds_Param.SQLConnection := dmDatabase.scoDados;
    sds_Param.NoMetadata  := True;
    sds_Param.GetMetadata := False;
    sds_Param.CommandText := 'SELECT USA_LIMITE_COMPRAS FROM PARAMETROS_FIN';
    sds_Param.Open;
    if (sds_Param.FieldByName('USA_LIMITE_COMPRAS').AsString = 'S') and (StrToFloat(FormatFloat('0.00',Vlr_Limite_Compra)) > 0) then
    begin
      vAux := fnc_Limite_Compra_Usado(ID_Fornecedor,ID_Pedido,Data);
      if StrToFloat(FormatFloat('0.00',Vlr_Limite_Compra)) <= StrToFloat(FormatFloat('0.00',vAux)) then
        vMSGAlerta := vMSGAlerta + #13 + '*** Valor de Compra já esta acima do permitido!';
    end;

  finally
    FreeAndNil(sds_Param);
    if trim(vMSGAlerta) <> '' then
      MessageDlg(vMSGAlerta, mtInformation, [mbOk], 0);
  end;
end;

function fnc_Limite_Compra_Usado(ID_Fornecedor, ID_Pedido: Integer; Data: TDateTime): Real;
var
  sds: TSQLDataSet;
  vData1, vData2: TDateTime;
  vID_Grupo: Integer;
begin
  vData1 := EncodeDate(YearOf(Data),MonthOf(Data),01);
  vData2 := EncodeDate(YearOf(Data),MonthOf(Data),DaysInMonth(Data));
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;

    sds.CommandText := ' SELECT id_Grupo FROM PESSOA CLI  '
                     + '   WHERE CLI.CODIGO = ' + IntToStr(ID_Fornecedor);
    sds.Open;
    vID_Grupo := sds.FieldByName('ID_GRUPO').AsInteger;

    sds.Close;
    sds.CommandText := ' SELECT SUM ( '
                     + '( SELECT SUM(P.VLR_TOTAL) VLR_TOTAL '
                     + ' FROM PEDIDO P '
                     + ' WHERE P.TIPO_REG = ' + QuotedStr('C')
                     + '   AND P.ID_CLIENTE = CLI.CODIGO '
                     + '   AND P.CANCELADO = ' + QuotedStr('N');
    if ID_PEDIDO > 0 then
      sds.CommandText := sds.CommandText + '   AND ((P.ID <> ' + IntToStr(ID_Pedido) + ') OR (P.ID IS NULL))';
    sds.CommandText := sds.CommandText + '   AND (P.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vData1))
                     + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vData2)) + ')) ) VLR_TOTAL '
                     + 'FROM PESSOA CLI ';
    if vID_Grupo > 0 then
      sds.CommandText := sds.CommandText + ' WHERE CLI.ID_GRUPO = ' + IntToStr(vID_Grupo)
    else
      sds.CommandText := sds.CommandText + ' WHERE CLI.codigo = ' + IntToStr(ID_Fornecedor);
    sds.Open;
    Result := sds.FieldByName('VLR_TOTAL').AsFloat;
  finally
    FreeAndNil(sds);
  end
end;

function fnc_Limite_Compra_Cadastrado(ID_Fornecedor: Integer): Real;
var
  sds: TSQLDataSet;
  vID_Grupo: Integer;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := ' SELECT id_Grupo FROM PESSOA CLI  '
                     + '   WHERE CLI.CODIGO = ' + IntToStr(ID_Fornecedor);
    sds.Open;
    vID_Grupo := sds.FieldByName('ID_GRUPO').AsInteger;
    
    sds.Close;
    sds.CommandText := 'SELECT sum(CLI.vlr_limite_compra) vlr_limite_compra FROM PESSOA CLI ';
    if vID_Grupo > 0 then
      sds.CommandText := sds.CommandText + ' WHERE CLI.ID_GRUPO = ' + IntToStr(vID_Grupo)
    else
      sds.CommandText := sds.CommandText + ' WHERE CLI.CODIGO = ' + IntToStr(ID_Fornecedor);
    sds.Open;

    Result := sds.FieldByName('vlr_limite_compra').AsFloat;
  finally
    FreeAndNil(sds);
  end
end;

function fnc_Primeiro_Pedido(ID_Cliente: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR_FAT, '
                     + '(SELECT COUNT(1) CONTADOR_NAO_FAT FROM PEDIDO P1 '
                     + '  WHERE P1.tipo_reg = ' + QuotedStr('P')
                     + '    AND P1.id_cliente = :ID_CLIENTE '
                     + '    AND P1.aprovado_ped = ' + QuotedStr('A')
                     + '    AND P1.CANCELADO = ' + QuotedStr('N')
                     + '    AND P1.qtd_restante > 0), '

                     + '(SELECT COUNT(1) CONTADOR_PEND_APROV FROM PEDIDO P2 '
                     + '  WHERE P2.tipo_reg = ' + QuotedStr('P')
                     + '    AND P2.id_cliente = :ID_CLIENTE '
                     + '    AND P2.CANCELADO = ' + QuotedStr('N')
                     + '    AND P2.aprovado_ped = ' + QuotedStr('P') + '),'

                     + ' (SELECT COUNT(1) CONTADOR_TIT_PEND_EM_ATRASO FROM DUPLICATA D1 '
                     + '   WHERE D1.tipo_es = ' + QuotedStr('E')
                     + '     AND D1.id_pessoa = :ID_CLIENTE '
                     + '     AND D1.vlr_restante > 0 '
                     + '     AND D1.dtvencimento < :DATA), '

                     + ' (SELECT COUNT(1) CONTADOR_TIT_PAGO_EM_ATRASO FROM DUPLICATA D2 '
                     + '   WHERE D2.tipo_es = ' + QuotedStr('E')
                     + '     AND D2.id_pessoa = :ID_CLIENTE '
                     + '     AND D2.vlr_restante <= 0 '
                     + '     AND D2.dtultpagamento > D2.dtvencimento), '

                     + ' (SELECT COUNT(1) CONTADOR_TIT_PEND FROM DUPLICATA D3 '
                     + '   WHERE D3.tipo_es = ' + QuotedStr('E')
                     + '     AND D3.id_pessoa = :ID_CLIENTE '
                     + '     AND D3.vlr_restante > 0), '

                     + ' (SELECT COUNT(1) CONTADOR_TIT_PAGO_EM_DIA FROM DUPLICATA D2 '
                     + '  WHERE D2.tipo_es = ' + QuotedStr('E')
                     + '    AND D2.id_pessoa = :ID_CLIENTE '
                     + '    AND D2.vlr_restante <= 0 '
                     + '    AND D2.dtultpagamento <= D2.dtvencimento) '

                     + ' FROM PEDIDO P '
                     + ' WHERE P.tipo_reg = ' + QuotedStr('P')
                     + '   AND P.id_cliente = :ID_CLIENTE '
                     + '   AND P.CANCELADO = ' + QuotedStr('N')
                     + '   AND P.aprovado_ped = ' + QuotedStr('A')
                     + '   AND P.qtd_restante <= 0 ';
    sds.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;
    sds.ParamByName('DATA').AsDate          := Date;
    sds.Open;
    vOBS_Primeiro_Pedido := '';
    vOBS_Primeiro_Pedido := 'Qtde. de Pedidos já Faturados: ' + sds.FieldByName('CONTADOR_FAT').AsString + #13 + #13;
    vOBS_Primeiro_Pedido := vOBS_Primeiro_Pedido + 'Qtde. de Pedidos aguardando Faturamento: ' + sds.FieldByName('CONTADOR_NAO_FAT').AsString + #13 + #13;
    vOBS_Primeiro_Pedido := vOBS_Primeiro_Pedido + 'Qtde. de Pedidos aguardando Aprovação: ' + sds.FieldByName('CONTADOR_PEND_APROV').AsString + #13 + #13;
    vOBS_Primeiro_Pedido := vOBS_Primeiro_Pedido + 'Qtde. de Títulos Aberto em Atraso: ' + sds.FieldByName('CONTADOR_TIT_PEND_EM_ATRASO').AsString + #13 + #13;
    vOBS_Primeiro_Pedido := vOBS_Primeiro_Pedido + 'Qtde. de Títulos Pagos em Atraso: ' + sds.FieldByName('CONTADOR_TIT_PAGO_EM_ATRASO').AsString + #13 + #13;
    vOBS_Primeiro_Pedido := vOBS_Primeiro_Pedido + 'Qtde. de Títulos Em Aberto: ' + sds.FieldByName('CONTADOR_TIT_PEND').AsString + #13 + #13;
    vOBS_Primeiro_Pedido := vOBS_Primeiro_Pedido + 'Qtde. de Títulos Pago em Dia: ' + sds.FieldByName('CONTADOR_TIT_PEND').AsString + #13 + #13;

    //1= Até 3 pedidos
    //2= Títulos em atraso
    if sds.FieldByName('CONTADOR_FAT').AsInteger <= 3 then
      Result := 1
    else
    if (sds.FieldByName('CONTADOR_TIT_PEND_EM_ATRASO').AsInteger > 0) and (sds.FieldByName('CONTADOR_FAT').AsInteger <= 10) then
      Result := 2;
  finally
    FreeAndNil(sds);
  end
end;


end.
