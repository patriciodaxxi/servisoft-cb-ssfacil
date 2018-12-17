unit UCompactar_XML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZipMstr, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ExtCtrls,
  FMTBcd, DB, SqlExpr;

type
  TfrmCompactar_XML = class(TForm)
    Panel1: TPanel;
    ZipMaster1: TZipMaster;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosENDXMLNFE: TStringField;
    qParametrosENDPDFNFE: TStringField;
    qParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    qParametrosEMAIL_CONTADOR: TStringField;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialCNPJ_CPF: TStringField;
    qFilialPESSOA: TStringField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    qParametrosENDXMLNFSE: TStringField;
    qParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField;
    qFilial_Email: TSQLQuery;
    qFilial_EmailID_FILIAL: TIntegerField;
    qFilial_EmailID_CONFIG_EMAIL: TIntegerField;
    qFilial_EmailNOME_CONFIG: TStringField;
    qFilial_EmailREMETENTE_NOME: TStringField;
    qFilial_EmailREMETENTE_EMAIL: TStringField;
    qFilial_EmailSMTP_CLIENTE: TStringField;
    qFilial_EmailSMTP_PORTA: TIntegerField;
    qFilial_EmailSMTP_REQUER_SSL: TStringField;
    qFilial_EmailSMTP_USUARIO: TStringField;
    qFilial_EmailSMTP_SENHA: TStringField;
    qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField;
    qFilial_EmailBASE: TSmallintField;
    qFilial_EmailCNPJ_CPF_FILIAL: TStringField;
    qParametrosENDXMLNFCE: TStringField;
    qFilialLOCALSERVIDORNFE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vNomeZip : String;

    procedure prc_EfetuaBackup;
    procedure prc_Enviar_Email;
    
  public
    { Public declarations }
  end;

var
  frmCompactar_XML: TfrmCompactar_XML;

implementation

uses DateUtils, DmdDatabase, uUtilPadrao, uNFeComandos, uNFeConsts,
  nfe_v110;

{$R *.dfm}

procedure TfrmCompactar_XML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCompactar_XML.BitBtn1Click(Sender: TObject);
begin
  if ComboBox2.ItemIndex < 0 then
  begin
    MessageDlg('*** Mês não foi informado!', mtError, [mbOk], 0);
    exit;
  end;
  prc_EfetuaBackup;
end;

procedure TfrmCompactar_XML.prc_EfetuaBackup;
var
   tmp: String;
   Dir: string;
   CompZip: TZipMaster;
   Diretorio : String;
   vExtensao : String;
begin
  CompZip := TZipMaster.Create(nil);
  //Dir := GetCurrentDir;
  try
    vExtensao := '';
    case ComboBox1.ItemIndex of
      0,2,3 : vExtensao := 'XML';
      1   : vExtensao := 'PDF';
    end;

    CompZip.UseDirOnlyEntries := True;
    CompZip.Active := True;

    if ComboBox1.ItemIndex = 0 then
    begin                                                                                                 
      Diretorio := qParametrosENDXMLNFE.Value;
      if copy(Diretorio,Length(Diretorio),1) <> '\' then
        Diretorio := Diretorio + '\';
    end
    else
    if ComboBox1.ItemIndex = 1 then
    begin
      Diretorio := qParametrosENDPDFNFE.Value;
      if copy(Diretorio,Length(Diretorio),1) <> '\' then
        Diretorio := Diretorio + '\';
    end
    else
    if ComboBox1.ItemIndex = 2 then
    begin
      Diretorio := qParametrosENDXMLNFSE.Value;
      if copy(Diretorio,Length(Diretorio),1) <> '\' then
        Diretorio := Diretorio + '\';
    end
    else
    if ComboBox1.ItemIndex = 3 then
    begin
      Diretorio := qParametrosENDXMLNFCE.Value;
      if copy(Diretorio,Length(Diretorio),1) <> '\' then
        Diretorio := Diretorio + '\';
    end;
    CompZip.ZipFileName := Diretorio;
    //CompZip.ZipFileName := 'c:\a\bakup.zip'; // arquivo zip que será gerado
    if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1) then
      vNomeZip := vExtensao + 'NFe' + FormatFloat('0000',CurrencyEdit1.Value) + '_' + FormatFloat('00',ComboBox2.ItemIndex + 1)
    else
    if (ComboBox1.ItemIndex = 2) then
      vNomeZip := vExtensao + 'NFSe' + FormatFloat('0000',CurrencyEdit1.Value) + '_' + FormatFloat('00',ComboBox2.ItemIndex + 1)
    else
    if (ComboBox1.ItemIndex = 3) then
      vNomeZip := vExtensao + 'NFCe' + FormatFloat('0000',CurrencyEdit1.Value) + '_' + FormatFloat('00',ComboBox2.ItemIndex + 1);
    CompZip.ZipFileName := CompZip.ZipFileName + vNomeZip + '.Zip';
    vNomeZip            := CompZip.ZipFileName;
    Diretorio           := Diretorio + FormatFloat('0000',CurrencyEdit1.Value) + FormatFloat('00',ComboBox2.ItemIndex + 1) + '\';

    tmp := Diretorio;
    //tmp := 'c:\temp'; // diretório que se quer compactar

    CompZip.AppendSlash(tmp);
    Dir := tmp;
    SetCurrentDir(tmp);

    CompZip.AddOptions := [];
    CompZip.AddOptions := CompZip.AddOptions + [AddRecurseDirs];
    CompZip.AddOptions := CompZip.AddOptions + [AddDirNames];

    CompZip.WriteOptions := [];
    CompZip.WriteOptions := CompZip.WriteOptions + [zwoDiskSpan];

    CompZip.SpanOptions := [];
    CompZip.SpanOptions := CompZip.SpanOptions + [spAnyTime] ;

    CompZip.FSpecArgs.Clear;
    tmp := '*';
    CompZip.FSpecArgs.Text := tmp;
    CompZip.Add;

    //Dados para o envio de email
    if CheckBox1.Checked then
      prc_Enviar_Email;

    ShowMessage('Processo efetivado com sucesso!');

  finally
    SetCurrentDir(Dir);
    FreeAndNil(CompZip);
  end;
end;

procedure TfrmCompactar_XML.FormShow(Sender: TObject);
begin
  qParametros.Close;
  qParametros.Open;
  qFilial.Close;
  qFilial.Open;
  CurrencyEdit1.AsInteger := YearOf(Date);
  Edit1.Text := qParametrosEMAIL_CONTADOR.AsString;
end;

procedure TfrmCompactar_XML.prc_Enviar_Email;
var
  lista_Anexo : TStringList;
  vDadosCorpoEmail : WideString;
  texto : String;
  Assunto : String;
  vSenhaEmail : String;
  vLocalServidorNFe : String;
begin
  Lista_Anexo := TStringList.Create;
  try
    Assunto          := 'ARQUIVO ' + ComboBox1.Text;
    vDadosCorpoEmail := 'ARQUIVO ' + ComboBox1.Text + #13;
    vDadosCorpoEmail := vDadosCorpoEmail + #13;

    vDadosCorpoEmail := vDadosCorpoEmail  + #13 + 'Empresa: ' + qFilialNOME.AsString;
    if qFilialPESSOA.AsString = 'J' then
      vDadosCorpoEmail := vDadosCorpoEmail  + #13 + 'CNPJ: ' + qFilialCNPJ_CPF.AsString
    else
      vDadosCorpoEmail := vDadosCorpoEmail  + #13 + 'CPF: ' + qFilialCNPJ_CPF.AsString;
    if qFilialPESSOA.AsString = 'F' then
      texto := Monta_Texto(qFilialCNPJ_CPF.AsString,11)
    else
      texto := Monta_Texto(qFilialCNPJ_CPF.AsString,14);
    vLocalServidorNFe := qParametrosLOCALSERVIDORNFE.AsString;
    if (qFilialLOCALSERVIDORNFE.AsString) <> '' then
      vLocalServidorNFe := qFilialLOCALSERVIDORNFE.AsString;
    lista_Anexo.Clear;
    lista_Anexo.Add(vNomeZip);

    if qParametrosUSA_ENVIO_EMAIL_CATEGORIA.AsString = 'S' then
    begin
      qFilial_Email.Close;
      qFilial_Email.ParamByName('ID').AsInteger := qFilialID.AsInteger;
      qFilial_Email.Open;
      vSenhaEmail := Descriptografar( qFilial_EmailBASE.AsInteger
                                 , 'ssfacil'
                                 , qFilial_EmailSMTP_SENHA.AsString );

      EnviarEmail2(Trim(vLocalServidorNFe),
                   texto,
                   qFilial_EmailREMETENTE_EMAIL.AsString,
                   qFilial_EmailREMETENTE_NOME.AsString,
                   qFilial_EmailSMTP_CLIENTE.AsString,
                   qFilial_EmailSMTP_PORTA.AsString,
                   qFilial_EmailSMTP_REQUER_SSL.AsString,
                   qFilial_EmailSMTP_USUARIO.AsString,
                   vSenhaEmail,
                   qFilial_EmailSOLICITAR_CONFIRMACAO.AsString,
                   Edit1.Text,'',
                   Assunto,
                   vDadosCorpoEmail,
                   lista_Anexo);
    end
    else
    begin
      EnviarEmail( Trim(vLocalServidorNFe),
                   texto,
                   Edit1.Text,
                   '',
                   Assunto,
                   vDadosCorpoEmail,
                   lista_Anexo );
    end;
  finally
    FreeAndNil(Lista_Anexo);
  end;
end;

end.
