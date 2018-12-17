unit uDmParametros;

interface

uses
  Windows, SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, ACBrBase, ACBrECF, StrUtils, ACBrGAV, iniFiles, Messages,
  Printers;

type
  TdmParametros = class(TDataModule)
    sdsParametros: TSQLDataSet;
    sdsParametrosID: TIntegerField;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    cdsParametrosID: TIntegerField;
    dsParametros: TDataSource;
    sdsParametrosIMPRESSORA_FISCAL: TStringField;
    cdsParametrosIMPRESSORA_FISCAL: TStringField;
    sdsCupomParametros: TSQLDataSet;
    dspCupomParametros: TDataSetProvider;
    cdsCupomParametros: TClientDataSet;
    dsCupomParametros: TDataSource;
    sdsCupomParametrosID: TIntegerField;
    sdsCupomParametrosUSA_IPI: TStringField;
    sdsCupomParametrosSIT_TRIB_ID: TIntegerField;
    sdsCupomParametrosUSA_DESCONTO: TStringField;
    sdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField;
    sdsCupomParametrosACBR_MODELO: TStringField;
    cdsCupomParametrosID: TIntegerField;
    cdsCupomParametrosUSA_IPI: TStringField;
    cdsCupomParametrosSIT_TRIB_ID: TIntegerField;
    cdsCupomParametrosUSA_DESCONTO: TStringField;
    cdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField;
    cdsCupomParametrosACBR_MODELO: TStringField;
    ACBrGAV1: TACBrGAV;
    sdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField;
    cdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField;
    qCaixaAberto: TSQLQuery;
    sdsCupomParametrosTERMINAL_ID: TSmallintField;
    cdsCupomParametrosTERMINAL_ID: TSmallintField;
    qCaixaAbertoTIPO_FECHAMENTO: TStringField;
    sdsCupomParametrosABRIR_CUPOM: TStringField;
    cdsCupomParametrosABRIR_CUPOM: TStringField;
    sdsParametrosUSA_NFCE: TStringField;
    cdsParametrosUSA_NFCE: TStringField;
    sdsCupomParametrosTAMANHO_LINHA: TSmallintField;
    cdsCupomParametrosTAMANHO_LINHA: TSmallintField;
    qCaixaAbertoID: TIntegerField;
    qCaixaAbertoDATA: TDateField;
    sdsCupomParametrosBAIXAR_CONSUMO: TStringField;
    cdsCupomParametrosBAIXAR_CONSUMO: TStringField;
    ACBrECF1: TACBrECF;
    qCaixaAbertoDATA2: TDateField;
    sdsCupomParametrosFECHAMENTO: TStringField;
    cdsCupomParametrosFECHAMENTO: TStringField;
    sdsSequencial: TSQLDataSet;
    dspSequencial: TDataSetProvider;
    cdsSequencial: TClientDataSet;
    dsSequencial: TDataSource;
    sdsSequencialTABELA: TStringField;
    sdsSequencialFILIAL: TIntegerField;
    sdsSequencialNUMREGISTRO: TIntegerField;
    cdsSequencialTABELA: TStringField;
    cdsSequencialFILIAL: TIntegerField;
    cdsSequencialNUMREGISTRO: TIntegerField;
    sdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField;
    cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Le_Ini;
    procedure SetDefaultPrinter(PrinterName: String);
  end;

var
  dmParametros: TdmParametros;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TdmParametros }

procedure TdmParametros.Le_Ini;
var
  vImpressora, vTerm: String;
  ini: TIniFile;
begin
  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    vImpressora := '';
    vPorta      := '';
    vImpressora := ini.ReadString('IMPRESSORA','Impressora','');
    vPorta      := ini.ReadString('IMPRESSORA','Porta','');
    vVelocidade := ini.ReadString('IMPRESSORA','Boud','');
    if ini.ReadString('IMPRESSORA','Gaveta','') = 'N' then
      vUsaGaveta := False
    else
      vUsaGaveta := True;

    vLocalEstoque := 1;
    vTerminal     := 1;
    vFilial       := 1;

    if ini.ReadString('IMPRESSORA','IdEstoque','') <> '' then
      vLocalEstoque := StrToInt(ini.ReadString('IMPRESSORA','IdEstoque',''));
    vTerm := ini.ReadString('IMPRESSORA','Terminal','');
    if trim(vTerm) <> '' then
      vTerminal := StrToInt(vTerm);
    vTerm := ini.ReadString('IMPRESSORA','Filial','');
    if trim(vTerm) <> '' then
      vFilial := StrToInt(vTerm);

    vBalanca      := ini.ReadString('BALANCA','Balanca','');
    vPortaBalanca := ini.ReadString('BALANCA','Porta','');
  finally
    ini.Free;
  end;

//  ComboBox1.ItemIndex := StrToInt(vImpressora);
//  ComboBox2.ItemIndex := StrToInt(vPorta);
end;

procedure TdmParametros.DataModuleCreate(Sender: TObject);
begin
  Le_Ini;
end;

procedure TdmParametros.SetDefaultPrinter(PrinterName: String);
var
  I: Integer;
  Device: PChar;
  Driver: Pchar;
  Port: Pchar;
  HdeviceMode: Thandle;
  aPrinter: TPrinter;
begin
  Printer.PrinterIndex := -1;
  getmem(Device, 255);
  getmem(Driver, 255);
  getmem(Port, 255);
  aPrinter := TPrinter.create;
  for I := 0 to Printer.printers.Count-1 do
  begin
    if Printer.printers[i] = PrinterName then
    begin
      aPrinter.PrinterIndex := i;
      aPrinter.GetPrinter(Device,Driver,Port,HDeviceMode);
      StrCat(Device,',');
      StrCat(Device,Driver);
      StrCat(Device,Port);
      WriteProfileString('Windows','Device',Device);
      StrCopy(Device,'Windows');
      SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@Device));
    end;
  end;
  Freemem(Device, 255);
  Freemem(Driver, 255);
  Freemem(Port, 255);
  aPrinter.Free;
end;

end.
