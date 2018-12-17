unit uUtilCobranca;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, UCobRemessa;//, UDMRel;

  procedure prc_Chama_CobRemessa(ID_Duplicaca, Filial, ID_Pessoa, ID_Conta: Integer; Num_Duplicata: String);
  procedure prc_Criar_DMRel(Tipo: Integer); //0 = Cria   1 = Destrói

implementation

uses DB;

procedure prc_Chama_CobRemessa(ID_Duplicaca, Filial, ID_Pessoa, ID_Conta: Integer; Num_Duplicata: String);
var
  ffCobRemessa: TfCobRemessa;
  //fDMRel: TDMRel;
  sds: TSQLDataSet;
  vAux: String;
begin
  vAux := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT EMAIL_PGTO FROM PESSOA WHERE CODIGO = ' + IntToStr(ID_Pessoa);
    sds.Open;
    vAux := sds.FieldByName('EMAIL_PGTO').AsString;
  finally
    FreeAndNil(sds);
  end;

  try
    //fDMRel := TDMRel.Create(DMRel);
    ffCobRemessa := TfCobRemessa.Create(fCobRemessa);
    ffCobRemessa.Tag := 99;
    ffCobRemessa.vID_Duplicata_Cob  := ID_Duplicaca;
    ffCobRemessa.vFilial_Cob        := Filial;
    ffCobRemessa.vNumDuplicata_Cob  := Num_Duplicata;
    ffCobRemessa.vEmail_Envio_Rem   := vAux;
    ffCobRemessa.vAssunto_Email_Rem := 'Boleto Nº ' + Num_Duplicata;
    ffCobRemessa.btnGerar_Remessa.Enabled := False;
    ffCobRemessa.btnImp_Remessa.Enabled   := False;
    ffCobRemessa.vID_Conta_Cob            := ID_Conta;
    ffCobRemessa.ShowModal;
  finally
    FreeAndNil(ffCobRemessa);
    //FreeAndNil(fDMRel);
  end;
end;

procedure prc_Criar_DMRel(Tipo: Integer); //0 = Cria   1 = Destrói
//var
  //fDMRel: TDMRel;
begin
  //if Tipo = 0 then
    //fDMRel := TDMRel.Create(DMRel)
  //else
    //FreeAndNil(fDMRel);
end;

end.
