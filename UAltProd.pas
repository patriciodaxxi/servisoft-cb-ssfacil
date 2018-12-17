unit uAltProd;

interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, SqlExpr, DmdDatabase, UDMCadProduto, USenha2;

function fnc_Custo(ID : Integer ; fDMCadProduto: TDMCadProduto) : Boolean;

implementation

uses
  DateUtils, uUtilPadrao;

function fnc_Custo(ID : Integer ; fDMCadProduto: TDMCadProduto) : Boolean;
var
  ffrmSenha2: TfrmSenha2;
begin
  if (trim(fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.AsString) = '') or (fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.IsNull) then
  begin
    Result := False;
    exit;
  end;
  fDMCadProduto.vMSGAltProd := '';
  Result  := True;
  fDMCadProduto.qCustoNV.Close;
  fDMCadProduto.qCustoNV.ParamByName('ID_PRODUTO').AsInteger := ID;
  fDMCadProduto.qCustoNV.Open;
  if fDMCadProduto.qCustoNVCONTADOR.AsInteger <= 0 then
  begin
    Result := False;
    fDMCadProduto.qCustoNV.Close;
    exit;
  end
  else
    fDMCadProduto.vMSGAltProd := fDMCadProduto.vMSGAltProd + #13 + '*** Existe Cálculo do Custo já lançado!';

  fDMCadProduto.qTalaoAux.Close;
  fDMCadProduto.qTalaoAux.ParamByName('ID_PRODUTO').AsInteger := ID;
  fDMCadProduto.qTalaoAux.Open;
  while not fDMCadProduto.qTalaoAux.Eof do
  begin
    if (fDMCadProduto.qTalaoAuxCONTADOR.AsInteger > 0) then
    begin
      if fDMCadProduto.qTalaoAuxTIPO.AsString = 'TALAO' then
        fDMCadProduto.vMSGAltProd := fDMCadProduto.vMSGAltProd + #13 + '*** Existe Lote/Talão em aberto!'
      else
        fDMCadProduto.vMSGAltProd := fDMCadProduto.vMSGAltProd + #13 + '*** Existe Lotes já lançados!';
    end;
    fDMCadProduto.qTalaoAux.Next;
  end;

  //if (trim(fDMCadProduto.vMSGAltProd) <> '') then
  //  MessageDlg(fDMCadProduto.vMSGAltProd + #13 + #13 , mtInformation, [mbOk], 0);

  ffrmSenha2 := TfrmSenha2.Create(frmSenha2);
  ffrmSenha2.Memo1.Lines.Text := fDMCadProduto.vMSGAltProd;
  ffrmSenha2.vSenha_Param := fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.AsString;
  ffrmSenha2.ShowModal;
  FreeAndNil(ffrmSenha2);
  if vSenha <>  fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.AsString then
    MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0)
  else
    Result := False;
  fDMCadProduto.qCustoNV.Close;
end;


{function fnc_Verifica_Nota_Ramiro(fDMCadNotaFiscal: TDMCadNotaFiscal): Boolean;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger = fDMCadNotaFiscal.cdsFilialNUM_NOTA_RAMIRO.AsInteger) then
  begin
    MessageDlg('Numeracao das notas está no limite, contate a Servisoft', mtError, [mbOk]);
    Result := True;
  end;

end;}

end.

