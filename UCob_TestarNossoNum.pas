unit UCob_TestarNossoNum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, UDMCob_Eletronica, Grids, DBGrids, SMDBGrid, StdCtrls,
  Buttons, RxLookup, RLBoleto, CurrEdit, Mask, ToolEdit, ACBrBoleto, ACBrBase, ACBrBancoBanrisul, ACBrUtil;

type
  TfrmCob_TestarNossoNum = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DirectoryEdit2: TDirectoryEdit;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    { Private declarations }

    fDMCob_Eletronica : TDMCob_Eletronica;

  public
    function CalculaDigitosChaveASBACE(ChaveASBACESemDigito: string): string;
    { Public declarations }
  end;

var
  frmCob_TestarNossoNum: TfrmCob_TestarNossoNum;

implementation

uses rsDBUtils, DB, uUtilPadrao;

{$R *.dfm}

procedure TfrmCob_TestarNossoNum.FormCreate(Sender: TObject);
begin
  fDMCob_Eletronica := TDMCob_Eletronica.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCob_Eletronica);
end;

procedure TfrmCob_TestarNossoNum.BitBtn1Click(Sender: TObject);
var
  vArquivo : String;
  FR: TextFile;
  i : Integer;
  texto1 : String;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('Banco não foi informado!', mtError, [mbOk], 0);
    exit;
  end;
  vArquivo := DirectoryEdit2.Text;
  if copy(vArquivo,Length(vArquivo),1) <> '\' then
    vArquivo := vArquivo + '\';
  vArquivo := vArquivo + 'TesteNossoNum.txt';

  fDMCob_Eletronica.cdsContas.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
  if trim(fDMCob_Eletronica.cdsContasCNAB.AsString) = '' then
  begin
    MessageDlg('Banco não informado o Layout (CNAB)!', mtError, [mbOk], 0);
    exit;
  end;

  AssignFile(FR, vArquivo);
  Rewrite(FR);

  texto1 := 'Nosso Número ';
  Writeln(FR,texto1);

  fDMCob_Eletronica.vNumTeste := CurrencyEdit1.AsInteger;
  for i := 1 to CurrencyEdit2.AsInteger do
  begin
    fDMCob_Eletronica.prc_Nosso_Numero;
    fDMCob_Eletronica.vNumTeste := Random(900000);
    if fDMCob_Eletronica.vNumTeste = 0 then
      fDMCob_Eletronica.vNumTeste := 1
    else
    if (i = 2) then
      fDMCob_Eletronica.vNumTeste := 2
    else
    if (i = 10) or (i = 70) then
      fDMCob_Eletronica.vNumTeste := i
    else
    if (i = 99) then
      fDMCob_Eletronica.vNumTeste := 1910;
    texto1 := Copy(fDMCob_Eletronica.vNossoNumero,1,8) + '.' + Copy(fDMCob_Eletronica.vNossoNumero,9,2);
    Writeln(FR,texto1);
  end;
  fDMCob_Eletronica.vNumTeste := 0;
  CloseFile(FR);

  ShowMessage('Arquivo ' + vArquivo + ', gerado!');
end;

procedure TfrmCob_TestarNossoNum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

function TfrmCob_TestarNossoNum.CalculaDigitosChaveASBACE(
  ChaveASBACESemDigito: string): string;
var
  Digito1, Digito2: integer;

  function CalcularDigito1(ChaveASBACESemDigito: string): integer;
   {
    Calcula o primeiro dígito.
    O cálculo é parecido com o da rotina Modulo10. Porém, não faz diferença o
    número de dígitos de cada subproduto.
    Se o resultado da operação for 0 (ZERO) o dígito será 0 (ZERO). Caso contrário,
    o dígito será igual a 10 - Resultado.
   }
  var
    Auxiliar, Soma, Contador, Peso, Digito1: integer;
  begin
    Soma:=0;
    Peso:=2;
    for Contador:=Length(ChaveASBACESemDigito)downto 1 do
    begin
      Auxiliar:=(StrToInt(ChaveASBACESemDigito[Contador])*Peso);
      if Auxiliar>9 then
        Auxiliar:=Auxiliar-9;
      Soma:=Soma+Auxiliar;
      if Peso=1 then
        Peso:=2
      else
        Peso:=1;
    end;

    Digito1:=Soma mod 10;
    if (Digito1=0) then
      Result:=Digito1
    else
      Result:=10-Digito1;
  end;

  function CalcularDigito2(ChaveASBACESemDigito: string; var Digito1: integer):
      integer;
   {Calcula o segundo dígito}
  var
    Digito2: integer;
    ChaveASBACEComDigito1: string;
  begin
    ChaveASBACEComDigito1:=ChaveASBACESemDigito+IntToStr(Digito1);
    Digito2:=StrToInt(Modulo11(ChaveASBACEComDigito1, 7, true));
    {Se dígito2 = 1, deve-se incrementar o dígito1 e recalcular o dígito2}
    if Digito2=1 then
    begin
      Digito1:=Digito1+1;
         {Se, após incrementar o dígito1, ele ficar maior que 9, deve-se
          substituí-lo por 0}
      if Digito1>9 then
        Digito1:=0;
      Digito2:=CalcularDigito2(ChaveASBACESemDigito, Digito1);
    end
    else if Digito2>1 then
    begin
      Digito2:=11-Digito2;
    end;

    Result:=Digito2;
  end;

begin
  Digito1:=CalcularDigito1(ChaveASBACESemDigito);
  Digito2:=CalcularDigito2(ChaveASBACESemDigito, Digito1);

  Result:=IntToStr(Digito1)+IntToStr(Digito2);
end;

end.
