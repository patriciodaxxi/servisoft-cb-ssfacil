unit UEtiqueta;

interface

Uses
  UDMConsPedido, SysUtils, Messages, Dialogs, uUtilPadrao;

  procedure prc_Etiq_Adesiva_Argox_Ramys(fDMConsPedido: TDMConsPedido);
  procedure prc_Etiq_Tag_Argox_Ramys(fDMConsPedido: TDMConsPedido);

  procedure prc_Etiq_Adesiva_Picotec(fDMConsPedido: TDMConsPedido);
  procedure prc_Etiq_Adesiva_EllaStore(fDMConsPedido: TDMConsPedido; Qtd_Parcela: Integer);

  procedure prc_Etiq_Adesiva_Argox_RCStore(fDMConsPedido: TDMConsPedido);

implementation

uses DB, MaskUtils;

procedure prc_Etiq_Adesiva_Argox_Ramys(fDMConsPedido: TDMConsPedido);
var
  F: TextFile;
  vTexto: String;
  vCod: array[1..2] of Integer;
  vNome: array[1..2] of String;
  vPreco: array[1..2] of Real;
  i: Integer;

  procedure Imprimir;
  begin
    //Cabeçalho
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'n');
      Writeln(F,'M0500');
      Writeln(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Writeln(F,'V0');
      Writeln(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Writeln(F,'D');
      Writeln(F,'L');
      Writeln(F,'R0000');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Writeln(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Writeln(F,'C0010');
      Writeln(F,'D11');
      Writeln(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Writeln(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Writeln(F,'A2');
    end
    else
    begin
      Write(F,'n');
      Write(F,'M0500');
      Write(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Write(F,'V0');
      Write(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Write(F,'D');
      Write(F,'L');
      Write(F,'R0000');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Write(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Write(F,'C0010');
      Write(F,'D11');
      Write(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Write(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Write(F,'A2');
    end;

    //Detalhe
    Writeln(F,'1e4201500320000C'+IntToStr(vCod[1]));
    Writeln(F,'1911A0600220000'+IntToStr(vCod[1]));
    Writeln(F,'1911A1000320100R$');
    Writeln(F,'1911A1000320122'+FormatFloat('###,###,##0.00',vPreco[1]));

    Writeln(F,'1911A0800110000'+copy(vNome[1],1,25));
    vTexto := copy(vNome[1],26,Length(vNome[1])-25);
    Writeln(F,'1911A0800000000'+copy(vTexto,1,25));

    Writeln(F,'1e4201500320190C'+IntToStr(vCod[2]));
    Writeln(F,'1911A0600220190'+IntToStr(vCod[2]));
    Writeln(F,'1911A1000320289R$');
    Writeln(F,'1911A1000320311'+FormatFloat('###,###,##0.00',vPreco[2]));
    Writeln(F,'1911A0800110190'+copy(vNome[2],1,25));
    Writeln(F,'1911A0800000190'+copy(vNome[2],26,Length(vNome[1])-25));

    //Encerramento
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'Q0001'); //Quantidade de impressão
      Writeln(F,'E');
    end
    else
    begin
      Write(F,'Q0001'); //Quantidade de impressão
      Write(F,'E');
    end;
  end;

  procedure prc_Limpa_Var;
  var
    i2: Integer;
  begin
    for i2 := 1 to 2 do
    begin
      vCod[i2]   := 0;
      vNome[i2]  := '';
      vPreco[i2] := 0;
    end;
  end;

begin
  fDMConsPedido.qParametros_Etiq.Close;
  fDMConsPedido.qParametros_Etiq.Open;

  if trim(fDMConsPedido.qParametros_EtiqENDERECO.AsString) = '' then
  begin
    MessageDlg('*** Endereço da impressora não informado!', mtError, [mbOk], 0);
    exit;
  end;

  AssignFile(F,fDMConsPedido.qParametros_EtiqENDERECO.AsString);
  ReWrite(F);

  prc_Limpa_Var;

  i := 0;
  fDMConsPedido.mEtiq_Individual.First;
  while not fDMConsPedido.mEtiq_Individual.Eof do
  begin
    i := i + 1;
    if i > 2 then
    begin
      Imprimir;
      prc_Limpa_Var;
      i := 1;
    end;
    vCod[i]   := fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger;
    vNome[i]  := fDMConsPedido.mEtiq_IndividualNome_Produto.AsString;
    vPreco[i] := fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat;
    fDMConsPedido.mEtiq_Individual.Next;
  end;

  if i > 0 then
    Imprimir;

  CloseFile(F);
end;

procedure prc_Etiq_Tag_Argox_Ramys(fDMConsPedido: TDMConsPedido);
var
  F: TextFile;
  vTexto: String;
  vCod: array[1..2] of Integer;
  vNome_Prod: array[1..2] of String;
  vNome_Fil: array[1..2] of String;
  vPreco: array[1..2] of Real;
  i: Integer;

  procedure Imprimir;
  begin
    //Cabeçalho
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'n');
      Writeln(F,'M0720');
      Writeln(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Writeln(F,'V0');
      Writeln(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Writeln(F,'D');
      Writeln(F,'L');
      Writeln(F,'R0001'); 
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Writeln(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Writeln(F,'C0005');
      Writeln(F,'D11');
      Writeln(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Writeln(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Writeln(F,'A2');
    end
    else
    begin
      Write(F,'n');
      Write(F,'M0720');
      Write(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Write(F,'V0');
      Write(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Write(F,'D');
      Write(F,'L');
      Write(F,'R0001');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Write(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Write(F,'C0005');
      Write(F,'D11');
      Write(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Write(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Write(F,'A2');
    end;

    //Detalhe
    Writeln(F,'1911A1402020000'+copy(vNome_Fil[1],1,15));
    Writeln(F,'1911A1001730000'+copy(vNome_Prod[1],1,20));
    vTexto := copy(vNome_Prod[1],21,Length(vNome_Prod[1])-20);
    Writeln(F,'1911A1001600000'+copy(vTexto,1,20));
    //06/11/2018 foi incluido o parâmetros com o IF
    if trim(fDMConsPedido.cdsParametros_EtiqNAO_IMP_MSG_TROCA.AsString) = 'S' then
    begin
      Writeln(F,'111100001220000');
      Writeln(F,'111100001120000');
    end
    else
    begin
      Writeln(F,'111100001220000EM CASO DE TROCA MANTER ESTA');
      Writeln(F,'111100001120000ETIQUETA AFIXADA NA MERCADORIA');
    end;
    Writeln(F,'1911A0801410000REF:');
    Writeln(F,'1911A0801410029'+IntToStr(vCod[1]));
    Writeln(F,'1911A1000870000'+copy(vNome_Prod[1],1,20));
    vTexto := copy(vNome_Prod[1],21,Length(vNome_Prod[1])-20);
    Writeln(F,'1911A1000750000'+copy(vTexto,1,20));
    Writeln(F,'121100000510000R$:');
    Writeln(F,'122200000510023'+FormatFloat('###,###,##0.00',vPreco[1]));
    Writeln(F,'1E6303200020019C'+IntToStr(vCod[1]));
    Writeln(F,'1911A1402020197'+copy(vNome_Fil[2],1,15));
    Writeln(F,'1911A1001730197'+copy(vNome_Prod[2],1,20));
    vTexto := copy(vNome_Prod[2],21,Length(vNome_Prod[2])-20);
    Writeln(F,'1911A1001600197'+Copy(vTexto,1,20));
    //06/11/2018 foi colocado o IF com o parâmetros
    if trim(fDMConsPedido.cdsParametros_EtiqNAO_IMP_MSG_TROCA.AsString) = 'S' then
    begin
      Writeln(F,'111100001220197');
      Writeln(F,'111100001120197');
    end
    else
    begin
      Writeln(F,'111100001220197EM CASO DE TROCA MANTER ESTA');
      Writeln(F,'111100001120197ETIQUETA AFIXADA NA MERCADORIA');
    end;
    Writeln(F,'1911A0801410197REF:');
    Writeln(F,'1911A0801410226'+IntToStr(vCod[i]));
    Writeln(F,'1911A1000870197'+copy(vNome_Prod[2],1,20));
    vTexto := copy(vNome_Prod[2],21,Length(vNome_Prod[2])-20);
    Writeln(F,'1911A1000750197'+Copy(vTexto,1,20));
    Writeln(F,'121100000510197R$:');
    Writeln(F,'122200000510220'+FormatFloat('###,###,##0.00',vPreco[2]));
    Writeln(F,'1E6303200020216C'+IntToStr(vCod[2]));
    Writeln(F,'Q0001');
    Writeln(F,'E');
  end;

  procedure Imprimir_Novo;
  begin
    //Cabeçalho
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'n');
      Writeln(F,'M0720');         
      Writeln(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Writeln(F,'V0');
      Writeln(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Writeln(F,'D');
      Writeln(F,'L');
      Writeln(F,'R0001'); 
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Writeln(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Writeln(F,'C0005');
      Writeln(F,'D11');
      Writeln(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Writeln(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Writeln(F,'A2');
    end
    else
    begin
      Write(F,'n');
      Write(F,'M0720');
      Write(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Write(F,'V0');
      Write(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Write(F,'D');
      Write(F,'L');
      Write(F,'R0001');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Write(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Write(F,'C0005');
      Write(F,'D11');
      Write(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Write(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Write(F,'A2');
    end;

    //Detalhe
    Writeln(F,'1911A1402020000'+copy(vNome_Fil[1],1,15));
    Writeln(F,'1911A1001730000'+copy(vNome_Prod[1],1,20));
    vTexto := copy(vNome_Prod[1],21,Length(vNome_Prod[1])-20);
    Writeln(F,'1911A1001600000'+copy(vTexto,1,20));
    //06/11/2018 foi colocado o IF com o parâmetros
    if trim(fDMConsPedido.cdsParametros_EtiqNAO_IMP_MSG_TROCA.AsString) = 'S' then
    begin
      Writeln(F,'111100001220000');
      Writeln(F,'111100001120000');
    end
    else
    begin
      Writeln(F,'111100001220000EM CASO DE TROCA MANTER ESTA');
      Writeln(F,'111100001120000ETIQUETA AFIXADA NA MERCADORIA');
    end;
    Writeln(F,'1911A0801410000REF:');
    Writeln(F,'1911A0801410029'+IntToStr(vCod[1]));
    //Writeln(F,'1911A1000870000'+copy(vNome_Prod[1],1,20));
    Writeln(F,'1911A0800670000'+copy(vNome_Prod[1],1,20));
    vTexto := copy(vNome_Prod[1],21,Length(vNome_Prod[1])-20);
    //Writeln(F,'1911A1000750000'+copy(vTexto,1,20));
    Writeln(F,'1911A0800550000'+copy(vTexto,1,20));
    //Writeln(F,'121100000510000R$:');
    Writeln(F,'121100000380000R$:');
    //Writeln(F,'122200000510023'+FormatFloat('###,###,##0.00',vPreco[1]));
    Writeln(F,'131100000360023'+FormatFloat('###,###,##0.00',vPreco[1]));
    //Writeln(F,'1E6303200020019C'+IntToStr(vCod[1]));
    Writeln(F,'1E6302000020019C'+IntToStr(vCod[1]));
    Writeln(F,'1911A1402020197'+copy(vNome_Fil[2],1,15));
    Writeln(F,'1911A1001730197'+copy(vNome_Prod[2],1,20));
    vTexto := copy(vNome_Prod[2],21,Length(vNome_Prod[2])-20);
    Writeln(F,'1911A1001600197'+Copy(vTexto,1,20));
    //06/11/2018 foi colocado o IF com o parâmetros
    if trim(fDMConsPedido.cdsParametros_EtiqNAO_IMP_MSG_TROCA.AsString) = 'S' then
    begin
      Writeln(F,'111100001220197');
      Writeln(F,'111100001120197');
    end
    else
    begin
      Writeln(F,'111100001220197EM CASO DE TROCA MANTER ESTA');
      Writeln(F,'111100001120197ETIQUETA AFIXADA NA MERCADORIA');
    end;
    Writeln(F,'1911A0801410197REF:');
    Writeln(F,'1911A0801410226'+IntToStr(vCod[i]));
    //Writeln(F,'1911A1000870197'+copy(vNome_Prod[2],1,20));
    Writeln(F,'1911A0800670197'+copy(vNome_Prod[2],1,20));
    vTexto := copy(vNome_Prod[2],21,Length(vNome_Prod[2])-20);
    //Writeln(F,'1911A1000750197'+Copy(vTexto,1,20));
    Writeln(F,'1911A0800550197'+Copy(vTexto,1,20));
    //Writeln(F,'121100000510197R$:');
    Writeln(F,'121100000380197R$:');
    //Writeln(F,'122200000510220'+FormatFloat('###,###,##0.00',vPreco[2]));
    Writeln(F,'131100000360220'+FormatFloat('###,###,##0.00',vPreco[2]));
    //Writeln(F,'1E6303200020216C'+IntToStr(vCod[2]));
    Writeln(F,'1E6302000020216C'+IntToStr(vCod[2]));
    Writeln(F,'Q0001');
    Writeln(F,'E');
  end;

  procedure prc_Limpa_Var;
  var
    i2: Integer;
  begin
    for i2 := 1 to 2 do
    begin
      vCod[i2]       := 0;
      vNome_Prod[i2] := '';
      vNome_Fil[i2]  := '';
      vPreco[i2]     := 0;
    end;
  end;

begin          
  fDMConsPedido.qParametros_Etiq.Close;
  fDMConsPedido.qParametros_Etiq.Open;

  //Cabeçalho
  if trim(fDMConsPedido.qParametros_EtiqENDERECO.AsString) = '' then
  begin
    MessageDlg('*** Endereço da impressora não informado!', mtError, [mbOk], 0);
    exit;
  end;

  if trim(fDMConsPedido.cdsFilialNOME_ETIQUETA.AsString) = '' then
  begin
    MessageDlg('*** Não foi informado o nome da Empresa que vai na etiqueta!', mtError, [mbOk], 0);
    exit;
  end;

  AssignFile(F,fDMConsPedido.qParametros_EtiqENDERECO.AsString);
  ReWrite(F);

  prc_Limpa_Var;

  i := 0;
  fDMConsPedido.mEtiq_Individual.First;
  while not fDMConsPedido.mEtiq_Individual.Eof do
  begin
    i := i + 1;
    if i > 2 then
    begin
      if fDMConsPedido.qParametros_EtiqETIQ_TAG_NOVO_LAYOUT.AsString = 'S' then
        Imprimir_Novo
      else
        Imprimir;
      prc_Limpa_Var;
      i := 1;
    end;
    vCod[i]       := fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger;
    vNome_Fil[i]  := fDMConsPedido.cdsFilialNOME_ETIQUETA.AsString;
    vNome_Prod[i] := fDMConsPedido.mEtiq_IndividualNome_Produto.AsString;
    vPreco[i]     := fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat;
    fDMConsPedido.mEtiq_Individual.Next;
  end;
  if i > 0 then
  begin
    if fDMConsPedido.qParametros_EtiqETIQ_TAG_NOVO_LAYOUT.AsString = 'S' then
      Imprimir_Novo
    else
      Imprimir;
  end;

  CloseFile(F);
end;

procedure prc_Etiq_Adesiva_Picotec(fDMConsPedido: TDMConsPedido);
var
  F: TextFile;
  vTexto: String;
  vCod: array[1..3] of String;
  vRef: array[1..3] of String;
  vNome: array[1..3] of String;
  vPreco: array[1..3] of Real;
  i: Integer;

  procedure Imprimir_Argox;
  begin
    //Cabeçalho
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'n');
      Writeln(F,'M0500');
      Writeln(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Writeln(F,'V0');
      Writeln(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Writeln(F,'D');
      Writeln(F,'L');
      Writeln(F,'R0003');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Writeln(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Writeln(F,'C0007');
      Writeln(F,'D11');
      Writeln(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Writeln(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Writeln(F,'A2');
    end
    else
    begin
      Write(F,'n');
      Write(F,'M0500');
      Write(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Write(F,'V0');
      Write(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Write(F,'D');
      Write(F,'L');
      Write(F,'R0003');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Write(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Write(F,'C0007');
      Write(F,'D11');
      Write(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Write(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Write(F,'A2');
    end;

    //Detalhe
    //writeln(F,'1e4201600610000C'+IntToStr(vCod[1]));
    writeln(F,'1e4201600610000C'+vCod[1]);
    writeln(F,'1911A0600500000'+vRef[1]);
    if vImpPreco_Etiqueta then
    begin
      writeln(F,'1911A1000310000R$');
      writeln(F,'1911A1000310022'+FormatFloat('###,###,##0.00',vPreco[1]))
    end
    else
    begin
      writeln(F,'1911A1000310000');
      writeln(F,'1911A1000310022');
    end;
    writeln(F,'1911A0600190000'+copy(vNome[1],1,22));
    vTexto := copy(vNome[1],23,Length(vNome[1])-22);
    writeln(F,'1911A0600100000'+copy(vTexto,1,22));
    vTexto := copy(vNome[1],45,Length(vNome[1])-22);
    writeln(F,'1911A0600000000'+copy(vTexto,1,22));

    //writeln(F,'1e4201600610139C'+IntToStr(vCod[2]));
    writeln(F,'1e4201600610139C'+vCod[2]);
    writeln(F,'1911A0600500139'+vRef[2]);
    if vImpPreco_Etiqueta then
    begin
      writeln(F,'1911A1000310139R$');
      writeln(F,'1911A1000310161'+FormatFloat('###,###,##0.00',vPreco[2]))
    end
    else
    begin
      writeln(F,'1911A1000310139');
      writeln(F,'1911A1000310022');
    end;
    writeln(F,'1911A0600190139'+copy(vNome[2],1,22));
    vTexto := copy(vNome[2],23,Length(vNome[2])-22);
    writeln(F,'1911A0600100139'+copy(vTexto,1,22));
    vTexto := copy(vNome[2],45,Length(vNome[2])-22);
    writeln(F,'1911A0600000139'+copy(vTexto,1,22));

    //writeln(F,'1e4201600610278C'+IntToStr(vCod[3]));
    writeln(F,'1e4201600610278C'+vCod[3]);
    writeln(F,'1911A0600500278'+vRef[3]);
    if vImpPreco_Etiqueta then
    begin
      writeln(F,'1911A1000310278R$');
      writeln(F,'1911A1000310299'+FormatFloat('###,###,##0.00',vPreco[3]))
    end
    else
    begin
      writeln(F,'1911A1000310278');
      writeln(F,'1911A1000310022');
    end;
    writeln(F,'1911A0600190278'+copy(vNome[3],1,22));
    vTexto := copy(vNome[3],23,Length(vNome[3])-22);
    writeln(F,'1911A0600100278'+copy(vTexto,1,22));
    vTexto := copy(vNome[3],45,Length(vNome[3])-22);
    writeln(F,'1911A0600000278'+copy(vTexto,1,22));

    //Encerramento
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'Q0001'); //Quantidade de impressão
      Writeln(F,'E');
    end
    else
    begin
      Write(F,'Q0001'); //Quantidade de impressão
      Write(F,'E');
    end;
  end;

  procedure Imprimir_Honeyweel;
  begin
    //Cabeçalho
    writeln(F,'^XA');
    writeln(F,'^MUD');
    writeln(F,'^MNY');
    writeln(F,'^MTT');
    writeln(F,'^MMT');
    writeln(F,'^PW832');
    if trim(fDMConsPedido.qParametros_EtiqDESLOCAMENTO_LATERAL.AsString) = '' then
      writeln(F,'^LH0,0')
    else
      writeln(F,'^LH'+fDMConsPedido.qParametros_EtiqDESLOCAMENTO_LATERAL.AsString+',0');
    writeln(F,'~SD'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
    writeln(F,'^PR'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString+','+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString+','+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);

    //Detalhe
    //writeln(F,'^FO0,10^BY2^BCN,32,N,N^FD>;'+IntToStr(vCod[1])+'^FS');
    writeln(F,'^FO0,10^BY2^BCN,32,N,N^FD>;'+vCod[1]+'^FS');
    writeln(F,'^FT0,57^A0N,17,23^FD'+vRef[1]+'^FS');
    if vImpPreco_Etiqueta then
    begin
      writeln(F,'^FT0,94^A0N,28,38^FDR$^FS');
      writeln(F,'^FT44,94^A0N,28,38^FD'+FormatFloat('###,###,##0.00',vPreco[1])+'^FS')
    end
    else
    begin
      writeln(F,'^FT0,94^A0N,28,38^FD^FS');
      writeln(F,'^FT44,94^A0N,28,38^FD'+'^FS');
    end;
   writeln(F,'^FT0,122^A0N,18,21^FD'+copy(vNome[1],1,22)+'^FS');
    vTexto := copy(vNome[1],23,Length(vNome[1])-22);
    writeln(F,'^FT0,141^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');
    vTexto := copy(vNome[1],45,Length(vNome[1])-22);
    writeln(F,'^FT0,160^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');

    //writeln(F,'^FO278,10^BCN,32,N,N^FD>;'+IntToStr(vCod[2])+'^FS');
    writeln(F,'^FO278,10^BCN,32,N,N^FD>;'+vCod[2]+'^FS');
    writeln(F,'^FT278,57^A0N,17,23^FD'+vRef[2]+'^FS');
    if vImpPreco_Etiqueta then
    begin
      writeln(F,'^FT278,94^A0N,28,38^FDR$^FS');
      writeln(F,'^FT322,94^A0N,28,38^FD'+FormatFloat('###,###,##0.00',vPreco[2])+'^FS')
    end
    else
    begin
      writeln(F,'^FT278,94^A0N,28,38^FD^FS');
      writeln(F,'^FT44,94^A0N,28,38^FD'+'^FS');
    end;

    writeln(F,'^FT278,122^A0N,18,21^FD'+copy(vNome[2],1,22)+'^FS');
    vTexto := copy(vNome[2],23,Length(vNome[2])-22);
    writeln(F,'^FT278,141^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');
    vTexto := copy(vNome[2],45,Length(vNome[2])-22);
    writeln(F,'^FT278,160^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');

    //writeln(F,'^FO560,10^BCN,32,N,N^FD>;'+IntToStr(vCod[3])+'^FS');
    writeln(F,'^FO560,10^BCN,32,N,N^FD>;'+vCod[3]+'^FS');
    writeln(F,'^FT560,57^A0N,17,23^FD'+vRef[3]+'^FS');
    if vImpPreco_Etiqueta then
    begin
      writeln(F,'^FT560,94^A0N,28,38^FDR$^FS');
      writeln(F,'^FT604,94^A0N,28,38^FD'+FormatFloat('###,###,##0.00',vPreco[3])+'^FS')
    end
    else
    begin
      writeln(F,'^FT560,94^A0N,28,38^FD^FS');
      writeln(F,'^FT44,94^A0N,28,38^FD'+'^FS');
    end;
    writeln(F,'^FT560,122^A0N,18,21^FD'+copy(vNome[3],1,22)+'^FS');
    vTexto := copy(vNome[3],23,Length(vNome[3])-22);
    writeln(F,'^FT560,141^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');
    vTexto := copy(vNome[3],45,Length(vNome[3])-22);
    writeln(F,'^FT560,160^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');

    //Encerramento
    writeln(F,'^PQ1,0,1,Y');
    writeln(F,'^XZ');
  end;

  procedure prc_Limpa_Var;
  var
    i2: Integer;
  begin
    for i2 := 1 to 3 do
    begin
      vCod[i2]   := '0';
      vRef[i2]   := '';
      vNome[i2]  := '';
      vPreco[i2] := 0;
    end;
  end;

begin
  fDMConsPedido.qParametros_Etiq.Close;
  fDMConsPedido.qParametros_Etiq.Open;

  if trim(fDMConsPedido.qParametros_EtiqENDERECO.AsString) = '' then
  begin
    MessageDlg('*** Endereço da impressora não informado!', mtError, [mbOk], 0);
    exit;
  end;

  AssignFile(F,fDMConsPedido.qParametros_EtiqENDERECO.AsString);
  ReWrite(F);

  prc_Limpa_Var;

  i := 0;
  fDMConsPedido.mEtiq_Individual.First;
  while not fDMConsPedido.mEtiq_Individual.Eof do
  begin
    i := i + 1;
    if i > 3 then
    begin
      if fDMConsPedido.qParametros_EtiqTIPO_IMPRESSORA.AsString = 'ARGOX' then
        Imprimir_Argox
      else
        Imprimir_Honeyweel;
      prc_Limpa_Var;
      i := 1;
    end;
    vCod[i]   := '2'+ FormatFloat('000000000',fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger);
    vNome[i]  := fDMConsPedido.mEtiq_IndividualNome_Produto.AsString + ' - ' + fDMConsPedido.mEtiq_IndividualReferencia.AsString;
    vPreco[i] := fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat;
    vRef[i]   := fDMConsPedido.mEtiq_IndividualID_Produto.AsString;
    fDMConsPedido.mEtiq_Individual.Next;
  end;

  if i > 0 then
  begin
    if fDMConsPedido.qParametros_EtiqTIPO_IMPRESSORA.AsString = 'ARGOX' then
      Imprimir_Argox
    else
      Imprimir_Honeyweel;
  end;

  CloseFile(F);
end;

procedure prc_Etiq_Adesiva_Argox_RCStore(fDMConsPedido: TDMConsPedido);
var
  F: TextFile;
  vTexto: String;
  vCod: array[1..2] of Integer;
  vNome: array[1..2] of String;
  vPreco: array[1..2] of Real;
  vTam: array[1..2] of String;
  i: Integer;

  procedure Imprimir;
  begin
    //Cabeçalho
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'n');
      Writeln(F,'M0500');
      Writeln(F,'KI71');
      Writeln(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Writeln(F,'V0');
      Writeln(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Writeln(F,'c0000');
      Writeln(F,'e');
      Writeln(F,'D');
      Writeln(F,'L');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Writeln(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Writeln(F,'C0005');
      Writeln(F,'R0000');
      Writeln(F,'D11');
      Writeln(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Writeln(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Writeln(F,'A2');
    end
    else
    begin
      Write(F,'n');
      Write(F,'M0500');
      Write(F,'KI71');
      Write(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Write(F,'V0');
      Write(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Write(F,'c0000');
      Write(F,'e');
      Write(F,'D');
      Write(F,'L');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Write(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Write(F,'C0005');
      Write(F,'R0000');
      Write(F,'D11');
      Write(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Write(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Write(F,'A2');
    end;

    //Detalhe
    Writeln(F,'1912A1800880006'+vTam[1]);
    //aqui verificar se é write ou writeln
    if Length(trim(vTam[1])) = 3 then
      Write(F,'1X1100000910000B069053001001')
    else
    if Length(trim(vTam[1])) = 2 then
      Write(F,'1X1100000910000B050053001001')
    else
      Write(F,'1X1100000910000B032053001001');
    //*************
    Writeln(F,'1Y1100000900077LOGO');
    Writeln(F,'1e6302000650000C'+FormatFloat('000000',vCod[1]));
    Writeln(F,'1911A0600550000'+IntToStr(vCod[1]));
    Writeln(F,'1911A0600440000'+copy(vNome[1],1,25));
    vTexto := copy(vNome[1],26,Length(vNome[1])-25);
    Writeln(F,'1911A0600340000'+copy(vTexto,1,25));
    vTexto := copy(vNome[1],49,Length(vNome[1])-25);
    Writeln(F,'1911A0600240000'+copy(vTexto,1,25));
    Writeln(F,'1911A1400000000R$ '+FormatFloat('###,###,##0.00',vPreco[1]));
    Writeln(F,'1912A1800880168'+vTam[2]);
    //aqui verificar se é write ou writeln
    if Length(trim(vTam[2])) = 3 then
      Write(F,'1X1100000910162B069053001001')
    else
    if Length(trim(vTam[2])) = 2 then
      Write(F,'1X1100000910162B050053001001')
    else
      Write(F,'1X1100000910162B032053001001');
    //*************
    Writeln(F,'1Y1100000900239LOGO');
    Writeln(F,'1e6302000650162C'+FormatFloat('000000',vCod[2]));
    Writeln(F,'1911A0600550162'+IntToStr(vCod[2]));
    Writeln(F,'1911A0600440162'+copy(vNome[2],1,25));
    vTexto := copy(vNome[1],26,Length(vNome[2])-25);
    Writeln(F,'1911A0600340162'+copy(vTexto,2,25));
    vTexto := copy(vNome[1],49,Length(vNome[2])-25);
    Writeln(F,'1911A0600240162'+copy(vTexto,2,25));
    Writeln(F,'1911A1400000162R$ '+FormatFloat('###,###,##0.00',vPreco[2]));
    //Encerramento
    Writeln(F,'Q0001'); //Quantidade de impressão
    Writeln(F,'E');
  end;

  procedure prc_Limpa_Var;
  var
    i2: Integer;
  begin
    for i2 := 1 to 2 do
    begin
      vCod[i2]   := 0;
      vNome[i2]  := '';
      vPreco[i2] := 0;
      vTam[i2]   := '';
    end;
  end;

begin
  fDMConsPedido.qParametros_Etiq.Close;
  fDMConsPedido.qParametros_Etiq.Open;

  if trim(fDMConsPedido.qParametros_EtiqENDERECO.AsString) = '' then
  begin
    MessageDlg('*** Endereço da impressora não informado!', mtError, [mbOk], 0);
    exit;
  end;

  AssignFile(F,fDMConsPedido.qParametros_EtiqENDERECO.AsString);
  ReWrite(F);

  prc_Limpa_Var;

  i := 0;
  fDMConsPedido.mEtiq_Individual.First;
  while not fDMConsPedido.mEtiq_Individual.Eof do
  begin
    i := i + 1;
    if i > 2 then
    begin
      Imprimir;
      prc_Limpa_Var;
      i := 1;
    end;
    vCod[i]   := fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger;
    vNome[i]  := fDMConsPedido.mEtiq_IndividualNome_Produto.AsString;
    vTam[i]   := fDMConsPedido.mEtiq_IndividualTamanho.AsString;
    vPreco[i] := fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat;
    fDMConsPedido.mEtiq_Individual.Next;
  end;

  if i > 0 then
    Imprimir;

  CloseFile(F);
end;

procedure prc_Etiq_Adesiva_EllaStore(fDMConsPedido: TDMConsPedido; Qtd_Parcela: Integer);
var
  F: TextFile;
  vTexto: String;
  vCod: array[1..3] of String;
  vRef: array[1..3] of String;
  vNome: array[1..3] of String;
  vPreco: array[1..3] of Real;
  vTotal: array[1..3] of Real;
  i: Integer;
  i2: Integer;
  vVlr_Parc: Real;

  {procedure Imprimir_Argox;  Anterior
  begin
    //Cabeçalho
    Write(F,'n');
    Write(F,'M0500');
    Write(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
    Write(F,'V0');
    Write(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
    Write(F,'D');
    Write(F,'L');
    Write(F,'R0003');
    Write(F,'C0007');
    Write(F,'D11');
    Write(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
    Write(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
    Write(F,'A2');

    //Detalhe
    //writeln(F,'1e4201600610000C'+IntToStr(vCod[1]));
    writeln(F,'1e4201600610000C'+vCod[1]);
    writeln(F,'1911A0600500000'+vRef[1]);
    if Qtd_Parcela <= 0 then
      writeln(F,'1911A1000310000'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[1]))
    else
      writeln(F,'1911A1000310000' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[1]));
    writeln(F,'1911A0600190000'+copy(vNome[1],1,22));
    vTexto := copy(vNome[1],23,Length(vNome[1])-22);
    writeln(F,'1911A0600100000'+copy(vTexto,1,22));
    vTexto := copy(vNome[1],45,Length(vNome[1])-22);
    writeln(F,'1911A0600000000'+copy(vTexto,1,22));

    //writeln(F,'1e4201600610139C'+IntToStr(vCod[2]));
    writeln(F,'1e4201600610139C'+vCod[2]);
    writeln(F,'1911A0600500139'+vRef[2]);
    if Qtd_Parcela <= 0 then
      writeln(F,'1911A1000310139'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[2]))
    else
      writeln(F,'1911A1000310139' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[2]));
    writeln(F,'1911A0600190139'+copy(vNome[2],1,22));
    vTexto := copy(vNome[2],23,Length(vNome[2])-22);
    writeln(F,'1911A0600100139'+copy(vTexto,1,22));
    vTexto := copy(vNome[2],45,Length(vNome[2])-22);
    writeln(F,'1911A0600000139'+copy(vTexto,1,22));

    writeln(F,'1e4201600610278C'+vCod[3]);
    writeln(F,'1911A0600500278'+vRef[3]);
    if Qtd_Parcela <= 0 then
      writeln(F,'1911A1000310278'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[3]))
    else
      writeln(F,'1911A1000310278' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[3]));
    writeln(F,'1911A0600190278'+copy(vNome[3],1,22));
    vTexto := copy(vNome[3],23,Length(vNome[3])-22);
    writeln(F,'1911A0600100278'+copy(vTexto,1,22));
    vTexto := copy(vNome[3],45,Length(vNome[3])-22);
    writeln(F,'1911A0600000278'+copy(vTexto,1,22));

    //Encerramento
    Write(F,'Q0001'); //Quantidade de impressão
    Write(F,'E');
  end;}

  procedure Imprimir_Argox;
  begin
    //Cabeçalho
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'n');
      Writeln(F,'M0500');
      Writeln(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Writeln(F,'V0');
      Writeln(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Writeln(F,'D');
      Writeln(F,'L');
      Writeln(F,'R0003');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Writeln(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Writeln(F,'C0007');
      Writeln(F,'D11');
      Writeln(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Writeln(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Writeln(F,'A2');
    end
    else
    begin
      Write(F,'n');
      Write(F,'M0500');
      Write(F,'O'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqOFFSET_BORDA.AsInteger));
      Write(F,'V0');
      Write(F,'f'+FormatFloat('000',fDMConsPedido.qParametros_EtiqBACKFEED.AsInteger));
      Write(F,'D');
      Write(F,'L');
      Write(F,'R0003');
      if fDMConsPedido.qParametros_EtiqMARGEM.AsInteger > 0 then
        Write(F,'C'+FormatFloat('0000',fDMConsPedido.qParametros_EtiqMARGEM.AsInteger))
      else
        Write(F,'C0007');
      Write(F,'D11');
      Write(F,'H'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
      Write(F,'P'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);
      Write(F,'A2');
    end;

    //Detalhe
    //writeln(F,'1e4201600610000C'+IntToStr(vCod[1]));
    writeln(F,'1e4201600610000C'+vCod[1]);
    writeln(F,'1911A0600500000'+vRef[1]);
    if Qtd_Parcela <= 0 then
      writeln(F,'1911A1000350000'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[1]))
    else
      writeln(F,'1911A1000350000' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[1]));
    writeln(F,'1911A0600260000'+'Total: R$ ' + FormatFloat('###,###,##0.00',vTotal[1]));
    writeln(F,'1911A0600160000'+copy(vNome[1],1,22));
    vTexto := copy(vNome[1],23,Length(vNome[1])-22);
    writeln(F,'1911A0600080000'+copy(vTexto,1,22));
    vTexto := copy(vNome[1],45,Length(vNome[1])-22);
    writeln(F,'1911A0600000000'+copy(vTexto,1,22));


    //writeln(F,'1e4201600610139C'+IntToStr(vCod[2]));
    writeln(F,'1e4201600610139C'+vCod[2]);
    writeln(F,'1911A0600500139'+vRef[2]);
    if Qtd_Parcela <= 0 then
      writeln(F,'1911A1000350139'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[2]))
    else
      writeln(F,'1911A1000350139' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[2]));
    writeln(F,'1911A0600260139'+'Total: R$ ' + FormatFloat('###,###,##0.00',vTotal[2]));
    writeln(F,'1911A0600160139'+copy(vNome[2],1,22));
    vTexto := copy(vNome[2],23,Length(vNome[2])-22);
    writeln(F,'1911A0600080139'+copy(vTexto,1,22));
    vTexto := copy(vNome[2],45,Length(vNome[2])-22);
    writeln(F,'1911A0600000139'+copy(vTexto,1,22));

    writeln(F,'1e4201600610278C'+vCod[3]);
    writeln(F,'1911A0600500278'+vRef[3]);
    if Qtd_Parcela <= 0 then
      writeln(F,'1911A1000350278'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[3]))
    else
      writeln(F,'1911A1000350278' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[3]));
    writeln(F,'1911A0600260278'+'Total: R$ ' + FormatFloat('###,###,##0.00',vTotal[3]));
    writeln(F,'1911A0600160278'+copy(vNome[3],1,22));
    vTexto := copy(vNome[3],23,Length(vNome[3])-22);
    writeln(F,'1911A0600080278'+copy(vTexto,1,22));
    vTexto := copy(vNome[3],45,Length(vNome[3])-22);
    writeln(F,'1911A0600000278'+copy(vTexto,1,22));

    //Encerramento
    if fDMConsPedido.qParametros_EtiqINF_ENTER.AsString = 'S' then
    begin
      Writeln(F,'Q0001'); //Quantidade de impressão
      Writeln(F,'E');
    end
    else
    begin
      Write(F,'Q0001'); //Quantidade de impressão
      Write(F,'E');
    end

  end;


  procedure Imprimir_Honeyweel;
  begin
    //Cabeçalho
    writeln(F,'^XA');
    writeln(F,'^MUD');
    writeln(F,'^MNY');
    writeln(F,'^MTT');
    writeln(F,'^MMT');
    writeln(F,'^PW832');
    if trim(fDMConsPedido.qParametros_EtiqDESLOCAMENTO_LATERAL.AsString) = '' then
      writeln(F,'^LH0,0')
    else
      writeln(F,'^LH'+fDMConsPedido.qParametros_EtiqDESLOCAMENTO_LATERAL.AsString+',0');
    writeln(F,'~SD'+fDMConsPedido.qParametros_EtiqTEMPERATURA.AsString);
    writeln(F,'^PR'+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString+','+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString+','+fDMConsPedido.qParametros_EtiqVELOCIDADE.AsString);

    //Detalhe
    //writeln(F,'^FO0,10^BY2^BCN,32,N,N^FD>;'+IntToStr(vCod[1])+'^FS');
    writeln(F,'^FO0,10^BY2^BCN,32,N,N^FD>;'+vCod[1]+'^FS');
    writeln(F,'^FT0,57^A0N,17,23^FD'+vRef[1]+'^FS');
    if Qtd_Parcela <= 0 then
      writeln(F,'^FT0,94^A0N,28,35^FD'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[1])+'^FS')
    else
      writeln(F,'^FT0,94^A0N,28,35^FD' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[1])+'^FS');
    writeln(F,'^FT0,122^A0N,18,21^FD'+copy(vNome[1],1,22)+'^FS');
    vTexto := copy(vNome[1],23,Length(vNome[1])-22);
    writeln(F,'^FT0,141^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');
    vTexto := copy(vNome[1],45,Length(vNome[1])-22);
    writeln(F,'^FT0,160^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');

    //writeln(F,'^FO278,10^BCN,32,N,N^FD>;'+IntToStr(vCod[2])+'^FS');
    writeln(F,'^FO278,10^BCN,32,N,N^FD>;'+vCod[2]+'^FS');
    writeln(F,'^FT278,57^A0N,17,23^FD'+vRef[2]+'^FS');
    if Qtd_Parcela <= 0 then
      writeln(F,'^FT278,94^A0N,28,35^FD'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[2])+'^FS')
    else
      writeln(F,'^FT278,94^A0N,28,35^FD' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[2])+'^FS');
    writeln(F,'^FT278,122^A0N,18,21^FD'+copy(vNome[2],1,22)+'^FS');
    vTexto := copy(vNome[2],23,Length(vNome[2])-22);
    writeln(F,'^FT278,141^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');
    vTexto := copy(vNome[2],45,Length(vNome[2])-22);
    writeln(F,'^FT278,160^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');

    //writeln(F,'^FO560,10^BCN,32,N,N^FD>;'+IntToStr(vCod[3])+'^FS');
    writeln(F,'^FO560,10^BCN,32,N,N^FD>;'+vCod[3]+'^FS');
    writeln(F,'^FT560,57^A0N,17,23^FD'+vRef[3]+'^FS');
    if Qtd_Parcela <= 0 then
      writeln(F,'^FT560,94^A0N,28,35^FD'+'R$ ' + FormatFloat('###,###,##0.00',vPreco[2])+'^FS')
    else
      writeln(F,'^FT560,94^A0N,28,35^FD' + FormatFloat('00',Qtd_Parcela) + ' X  R$ ' + FormatFloat('###,###,##0.00',vPreco[2])+'^FS');

    writeln(F,'^FT560,122^A0N,18,21^FD'+copy(vNome[3],1,22)+'^FS');
    vTexto := copy(vNome[3],23,Length(vNome[3])-22);
    writeln(F,'^FT560,141^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');
    vTexto := copy(vNome[3],45,Length(vNome[3])-22);
    writeln(F,'^FT560,160^A0N,18,21^FD'+copy(vTexto,1,22)+'^FS');

    //Encerramento
    writeln(F,'^PQ1,0,1,Y');
    writeln(F,'^XZ');
  end;

  procedure prc_Limpa_Var;
  var
    i2: Integer;
  begin
    for i2 := 1 to 3 do
    begin
      vCod[i2]   := '0';
      vRef[i2]   := '';
      vNome[i2]  := '';
      vPreco[i2] := 0;
      vTotal[i2] := 0;
    end;
  end;

begin
  fDMConsPedido.qParametros_Etiq.Close;
  fDMConsPedido.qParametros_Etiq.Open;

  if trim(fDMConsPedido.qParametros_EtiqENDERECO.AsString) = '' then
  begin
    MessageDlg('*** Endereço da impressora não informado!', mtError, [mbOk], 0);
    exit;
  end;

  AssignFile(F,fDMConsPedido.qParametros_EtiqENDERECO.AsString);
  ReWrite(F);

  prc_Limpa_Var;

  i := 0;
  fDMConsPedido.mEtiq_Individual.First;
  while not fDMConsPedido.mEtiq_Individual.Eof do
  begin
    i := i + 1;
    if i > 3 then
    begin
      if fDMConsPedido.qParametros_EtiqTIPO_IMPRESSORA.AsString = 'ARGOX' then
        Imprimir_Argox
      else
        Imprimir_Honeyweel;
      prc_Limpa_Var;
      i := 1;
    end;
    //15/11/2017  Foi alterado conforme a Shala.
    //vCod[i]   := FormatFloat('0000000000',fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger);
    vCod[I]   := copy(fDMConsPedido.mEtiq_IndividualCodBarra.AsString,1,10);
    //for i2 := 1 to 10 - Length(vCod[I]) do  //ver com a Shala se precisa.
    //  vCod[i] := '0' + vCod[i];
    //***************
    vNome[i]  := fDMConsPedido.mEtiq_IndividualNome_Produto.AsString;
    vPreco[i] := fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat;
    vTotal[i] := fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat;
    if (Qtd_Parcela > 0) and (StrToFloat(FormatFloat('0.00',fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat)) > 0) then
      vPreco[i] := StrToCurr(FormatCurr('0.00',fDMConsPedido.mEtiq_IndividualPreco_Produto.AsFloat / Qtd_Parcela));
    //vRef[i]   := fDMConsPedido.mEtiq_IndividualID_Produto.AsString;
    vRef[i]   := copy(fDMConsPedido.mEtiq_IndividualCodBarra.AsString,1,10);

    fDMConsPedido.mEtiq_Individual.Next;
  end;

  if i > 0 then
  begin
    if fDMConsPedido.qParametros_EtiqTIPO_IMPRESSORA.AsString = 'ARGOX' then
      Imprimir_Argox
    else
      Imprimir_Honeyweel;
  end;

  CloseFile(F);
end;

end.
