unit uUtilTabela;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, DateUtils, Variants,
  UDMCadNotaServico, uXMLClientDataSet_NFSe_CampoBom, uXMLClientDataSet, DBClient, DB;

var
  vCds: TClientDataSet;
  FCds: TClientDataSet;
  NFSeCB: TXMLClientDataset;
  Cobr: TDataSetField;
  obs: TDataSetField;
  NFSePoaEnvio: TXMLClientDataset;
  NFSePoaRet: TXMLClientDataset;

implementation

end.
