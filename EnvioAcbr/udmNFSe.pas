unit udmNFSe;

interface

uses
  SysUtils, Classes, ACBrNFSeDANFSeClass, ACBrNFSeDANFSeRLClass, ACBrBase,
  ACBrDFe, ACBrNFSe, DBTables, pcnConversao, Forms, DB, RxQuery, pnfsConversao, DateUtils, dialogs,
  ACBrIntegrador, ACBrMail, ACBrDFeReport, FMTBcd, SqlExpr, UDMCadNotaServico;

type
  TdmNFSe = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure sqlNOTASERVICO_COMUNICACAOBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    fNumeroLote, fID_NOTA: Integer;
    //Isql_Tomador, isql_Emitente, isqlParametro, IsqlDadosNota: TQuery;
    NumNFSe:String;
    OffLine:Boolean;
    procedure GerarNFSe;
    function GetAliquotaCad_Servico: Currency;
    function GetCodigoMunicipio(Estado, Cidade: string): string;
    procedure AbrirDadosNota;
    function Caracter_XML_Invalido(Dados: string): string;
    function GetMontaDescricaoImpressao: string;
    function GetNotaCancelada: Boolean;
    procedure ImprimirNfse;
    procedure ConsultaNfse;

    procedure SetID_NOTA(Value: Integer);
    procedure GravarCancelamento;
    function GetNFSE_NUMERO_Enviada: String;
    function GetNotaEnviada: Boolean;
    procedure prc_Gravar_Retorno(Caminho : String);
  public
    { Public declarations }
    fDMCadNotaServico: TDMCadNotaServico;
    
    procedure Enviar;
    procedure Enviar_Nfse;

    procedure EnviarEmailNfse;
    procedure prc_Abrir_NotaServico_Comunicacao(ID : Integer);
    function fnc_monta_discriminacao : String;
    procedure ConfigurarComponente;
    procedure Cancelar_Nfse;

    procedure TestarCertificado;
    class procedure Gerar(pID_NOTA: Integer);
    class procedure Cancelar(pID_NOTA: Integer);
    class procedure Consultar(pID_NOTA: Integer);
    class procedure GerarOffline(pID_NOTA: Integer);
    class procedure EnviarEmail(pID_NOTA: Integer);
  end;

var
  dmNFSe: TdmNFSe;

implementation

//uses UnitLibrary, DataModulo, pnfsNFSe;

uses pnfsNFSe, DmdDatabase, uUtilPadrao, ACBrNFSeWebServices;

{$R *.dfm}

function TdmNFSe.GetNFSE_NUMERO_Enviada: String;
begin
  //sqlNOTASERVICO_COMUNICACAO.Locate('TIPO', '1', []);
  //result := sqlNOTASERVICO_COMUNICACAONFSE_NUMERO.AsString;
end;


procedure TdmNFSe.ImprimirNfse;
begin
end;

function TdmNFSe.GetNotaCancelada: Boolean;
begin
end;

function TdmNFSe.GetNotaEnviada: Boolean;
begin
end;

procedure TdmNFSe.ConfigurarComponente;
begin
end;

class procedure TdmNFSe.Consultar(pID_NOTA: Integer);
begin
end;

function TdmNFSe.GetAliquotaCad_Servico: Currency;
begin
  result := 0;
end;

procedure TdmNFSe.GerarNFSe;
begin
end;

function TdmNFSe.Caracter_XML_Invalido(Dados: string): string;
begin
end;

function TdmNFSe.GetMontaDescricaoImpressao: string;
begin
end;

function TdmNFSe.GetCodigoMunicipio(Estado,
  Cidade: string): string;
begin
end;


procedure TdmNFSe.Enviar;
begin

end;

procedure TdmNFSe.TestarCertificado;
begin

end;

procedure TdmNFSe.DataModuleCreate(Sender: TObject);
begin
//  ConfigurarComponente;
end;

procedure TdmNFSe.AbrirDadosNota;
begin
//
end;

procedure TdmNFSe.Enviar_Nfse;
begin
  inherited;
end;

procedure TdmNFSe.ConsultaNfse;
begin
end;


class procedure TdmNFSe.Gerar(pID_NOTA: Integer);
begin
end;

procedure TdmNFSe.SetID_NOTA(Value: Integer);
begin
end;

class procedure TdmNFSe.Cancelar(pID_NOTA: Integer);
begin
end;

procedure TdmNFSe.GravarCancelamento;
begin
end;

procedure TdmNFSe.Cancelar_Nfse;
begin

end;

procedure TdmNFSe.sqlNOTASERVICO_COMUNICACAOBeforePost(DataSet: TDataSet);
begin
  //if sqlNOTASERVICO_COMUNICACAOID.Value = 0 then
  //begin
  //  sqlNOTASERVICO_COMUNICACAOID.Value := ExecSql(' SELECT MAX(ID) AS ID FROM NOTASERVICO_COMUNICACAO ').FieldByName('ID').AsInteger + 1;
  //end;
end;

class procedure TdmNFSe.GerarOffLine(pID_NOTA: Integer);
begin
end;

class procedure TdmNFSe.EnviarEmail(pID_NOTA: Integer);
begin
end;

procedure TdmNFSe.EnviarEmailNfse;
begin
end;

function TdmNFSe.fnc_monta_discriminacao: String;
begin

end;

procedure TdmNFSe.prc_Abrir_NotaServico_Comunicacao(ID: Integer);
begin
end;

procedure TdmNFSe.prc_Gravar_Retorno(Caminho : string);
begin
end;

end.
