unit uUtilCupom;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, USenha, Messages,
  Controls, Graphics, UDMCupomFiscal, UDMParametros;

  function fnc_Inicio_Cupom(fDMCupomFiscal: TDMCupomFiscal ; fDMParametros: TDMParametros) : Boolean;

implementation

function fnc_Inicio_Cupom(fDMCupomFiscal: TDMCupomFiscal ; fDMParametros: TDMParametros) : Boolean;
begin
  {Result := True;
  if fDmCupomFiscal.cdsCupomParametrosEXIGE_CAIXA_ABERTO.AsString = 'S' then
  begin
    fDmParametros.qCaixaAberto.Close;
    fDmParametros.qCaixaAberto.ParamByName('T1').AsInteger := vTerminal;
    fDmParametros.qCaixaAberto.ParamByName('D1').AsDate    := Date;
    fDmParametros.qCaixaAberto.Open;
    if fDmParametros.qCaixaAberto.IsEmpty then
    begin
      ShowMessage('Não existe caixa aberto para efeturar venda!');
      fDmParametros.qCaixaAberto.Close;
      Result := False;
    end;
  end;

  if Result then
  begin
    fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CODIGO';
    if not fDmCupomFiscal.cdsPessoa.FindKey([fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger]) then
    begin
      ShowMessage('Não existe Cliente Consumidor código ' + fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsString + '!');
      Result := False;
    end;
  end;

  if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'S') and (trim(fDmCupomFiscal.cdsFilialSERIE_NFCE.AsString) = '') then
  begin
    ShowMessage('Série da NFCe não informada na Filial!');
    Result := False;
  end;}
end;

end.
