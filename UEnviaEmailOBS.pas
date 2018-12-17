unit UEnviaEmailOBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, UDMEmail,
  NxCollection, ExtCtrls, DB, Mask, ToolEdit, RzTabs, ACBrBoleto,
  ACBrBoletoFCFortesFr, ACBrBase, uCobRemessa, NxEdit, RzPanel, RxLookup;

type
  TfrmEnviaEmailOBS = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    btnEnviarEmail: TNxButton;
    btnConsultar: TNxButton;
    RzPageControl5: TRzPageControl;
    TS_Email: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Label6: TLabel;
    cbxOpcao: TComboBox;
    TS_Sem_Email: TRzTabSheet;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SMDBGrid2: TSMDBGrid;
    Label5: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    fDMEmail : TDMEmail;
    
    vDadosCorpoEmail: WideString;
    vQtd_Sem_Email : Integer;
    vContador_Envio: Integer;
    vContador_Envio_Avencer: Integer;
    vNomeArq : String;
    F: TextFile;
    lista_Titulos: TStringList;

    procedure prc_Abrir_Filial(ID : Integer);

    procedure prc_Le_mAuxiliar;

    procedure prc_Consultar;
    procedure prc_Monta_Corpo_Email;

  public
    { Public declarations }
  end;

var
  frmEnviaEmailOBS: TfrmEnviaEmailOBS;

implementation

uses uNFeComandos, uUtilPadrao, rsDBUtils, DateUtils;

{$R *.dfm}

procedure TfrmEnviaEmailOBS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmEnviaEmailOBS.btnEnviarEmailClick(Sender: TObject);
begin
  if fDMEmail.mAuxiliar.IsEmpty then
  begin
    MessageDlg('*** Não existe cadastro para o envio!',mtInformation,[mbOK],0);
    exit;
  end;

  Label2.Caption := 'Aguarde,  enviando emails...';
  Label2.Visible := True;
  Refresh;
  Label2.Refresh;

  prc_Le_mAuxiliar;
end;

procedure TfrmEnviaEmailOBS.prc_Abrir_Filial(ID: Integer);
begin
  fDMEmail.cdsFilial.Locate('ID',ID,[loCaseInsensitive]);

  fDMEmail.qFilial_Email.Close;
  fDMEmail.qFilial_Email.ParamByName('ID').AsInteger := ID;
  fDMEmail.qFilial_Email.Open;
end;

procedure TfrmEnviaEmailOBS.prc_Le_mAuxiliar;
var
  vSenhaEmail: String;
  vCNPJ_Filial: String;
  vID_Filial : Integer;
  vLocalServidorNFe : String;
  vEmailAux : String;
  vEmailPrincipal : String;
  lista_Anexo: TStringList;
  vContadorAux : Integer;
begin
  Lista_Anexo     := TStringList.Create;
  vID_Filial      := RxDBLookupCombo1.KeyValue;
  vContador_Envio := 0;
  vContadorAux    := 0;
  fDMEmail.mAuxiliar.IndexFieldNames := 'Filial;Nome';
  fDMEmail.mAuxiliar.First;
  while not fDMEmail.mAuxiliar.Eof do
  begin
    Refresh;
    lista_Anexo.Clear;
    if (trim(fDMEmail.mAuxiliarEmail.AsString) <> '') and (fDMEmail.mAuxiliarEnviado.AsString <> 'S') then
    begin
      vContadorAux := vContadorAux + 1;
      if vContadorAux > 50 then
      begin
        Sleep(11000);
        vContadorAux := 0;
      end;
      prc_Monta_Corpo_email;

      vSenhaEmail := Descriptografar( fDMEmail.qFilial_EmailBASE.AsInteger
                                 , 'ssfacil'
                                 , fDMEmail.qFilial_EmailSMTP_SENHA.AsString );
      vCNPJ_Filial :=Monta_Texto(fDMEmail.qFilial_EmailCNPJ_CPF_FILIAL.AsString,14);
      vLocalServidorNFe := fDMEmail.qParametrosLOCALSERVIDORNFE.AsString;

      //29/07/2016
      vEmailAux       := '';
      vEmailPrincipal := fDMEmail.mAuxiliarEmail.AsString;
      //*****************
      if trim(vEmailPrincipal) <> '' then
      begin
        if trim(fDMEmail.qFilial_EmailLOCALSERVIDORNFE.AsString) <> '' then
          vLocalServidorNFe := fDMEmail.qFilial_EmailLOCALSERVIDORNFE.AsString;
        try
          EnviarEmail2(vLocalServidorNFe,vCNPJ_Filial,fDMEmail.qFilial_EmailREMETENTE_EMAIL.AsString,
                       fDMEmail.qFilial_EmailREMETENTE_NOME.AsString,fDMEmail.qFilial_EmailSMTP_CLIENTE.AsString,
                       fDMEmail.qFilial_EmailSMTP_PORTA.AsString,fDMEmail.qFilial_EmailSMTP_REQUER_SSL.AsString,
                       fDMEmail.qFilial_EmailSMTP_USUARIO.AsString,vSenhaEmail,fDMEmail.qFilial_EmailSOLICITAR_CONFIRMACAO.AsString,
                       vEmailPrincipal,vEmailAux,Edit1.Text,
                       vDadosCorpoEmail,lista_Anexo);
          fDMEmail.mAuxiliar.Edit;
          fDMEmail.mAuxiliarEnviado.AsString := 'S';
          fDMEmail.mAuxiliar.Post;
          vContador_Envio := vContador_Envio + 1;
        except
          MessageDlg('Erro ao enviar email!',mtWarning,[mbOK],0);
        end;
      end;
    end;
    fDMEmail.mAuxiliar.Next;
  end;
  FreeAndNil(lista_Anexo);
end;

procedure TfrmEnviaEmailOBS.prc_Monta_Corpo_Email;
begin
  vDadosCorpoEmail := '';
  vDadosCorpoEmail := Memo1.Lines.Text;
end;

procedure TfrmEnviaEmailOBS.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMEmail.mAuxiliarEnviado.AsString = 'S' then
    Background := $00FFFFB9;
end;

procedure TfrmEnviaEmailOBS.FormShow(Sender: TObject);
begin
  fDmEmail := TDmEmail.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmEmail);
  if fDMEmail.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMEmail.cdsFilialID.AsInteger;
end;

procedure TfrmEnviaEmailOBS.btnConsultarClick(Sender: TObject);
var
  vAux : String;
  vEmailAux : String;
begin
  Label2.Visible := False;
  if cbxOpcao.ItemIndex < 0 then
  begin
    MessageDlg('*** Opção "Enviar Email Para" não informado!',mtInformation,[mbOK],0);
    cbxOpcao.SetFocus;
    exit;
  end;
  if trim(Memo1.Lines.Text) = '' then
  begin
    MessageDlg('*** Mensagem do corpo do email não informada!',mtInformation,[mbOK],0);
    Memo1.SetFocus;
    exit;
  end;
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Filial não informada!',mtInformation,[mbOK],0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if trim(Edit1.Text) = '' then
  begin
    MessageDlg('*** Assunto não informado!',mtInformation,[mbOK],0);
    Edit1.SetFocus;
    exit;
  end;

  prc_Abrir_Filial(RxDBLookupCombo1.KeyValue);

  Label2.Visible := False;
  prc_Consultar;
  fDMEmail.mAuxiliar.EmptyDataSet;
  fDMEmail.mSemEmail.EmptyDataSet;
  fDMEmail.cdsPessoa.First;
  while not fDMEmail.cdsPessoa.Eof do
  begin
    if Pos('@',fDMEmail.cdsPessoaEMAIL_PGTO.AsString) > 0 then
      vEmailAux := fDMEmail.cdsPessoaEMAIL_PGTO.AsString
    else
      vEmailAux := '';

    //if (trim(fDMEmail.cdsPessoaEMAIL_PGTO.AsString) = '') or (fDMEmail.cdsPessoaEMAIL_PGTO.IsNull) then
    if (trim(vEmailAux) = '') then
    begin
      fDMEmail.mSemEmail.Insert;
      fDMEmail.mSemEmailCodigo.AsInteger  := fDMEmail.cdsPessoaCODIGO.AsInteger;
      fDMEmail.mSemEmailNome.AsString     := fDMEmail.cdsPessoaNOME.AsString;
      fDMEmail.mSemEmailEmail.AsString    := fDMEmail.cdsPessoaEMAIL_PGTO.AsString;
      fDMEmail.mSemEmailCidade.AsString   := fDMEmail.cdsPessoaCIDADE.AsString;
      fDMEmail.mSemEmailUF.AsString       := fDMEmail.cdsPessoaUF.AsString;
      fDMEmail.mSemEmailCnpj_Cpf.AsString := fDMEmail.cdsPessoaCNPJ_CPF.AsString;
      fDMEmail.mSemEmailEmail_Filial.AsString := fDMEmail.cdsFilialEMAIL_FINANCEIRO.AsString;
      fDMEmail.mSemEmail.Post;
    end
    else
    begin
      fDMEmail.mAuxiliar.Insert;
      fDMEmail.mAuxiliarCodigo.AsInteger  := fDMEmail.cdsPessoaCODIGO.AsInteger;
      fDMEmail.mAuxiliarNome.AsString     := fDMEmail.cdsPessoaNOME.AsString;
      fDMEmail.mAuxiliarEmail.AsString    := fDMEmail.cdsPessoaEMAIL_PGTO.AsString;
      fDMEmail.mAuxiliarCidade.AsString   := fDMEmail.cdsPessoaCIDADE.AsString;
      fDMEmail.mAuxiliarUF.AsString       := fDMEmail.cdsPessoaUF.AsString;
      fDMEmail.mAuxiliarCnpj_Cpf.AsString := fDMEmail.cdsPessoaCNPJ_CPF.AsString;
      fDMEmail.mAuxiliarEmail_Filial.AsString := fDMEmail.cdsFilialEMAIL_FINANCEIRO.AsString;
      fDMEmail.mAuxiliarEnviado.AsString      := 'N';
      fDMEmail.mAuxiliar.Post;
    end; 
    fDMEmail.cdsPessoa.Next;
  end;

  if fDMEmail.mSemEmail.RecordCount > 0 then
    MessageDlg('*** Existe cadastro sem email, Qtd: ' + IntToStr(fDMEmail.mSemEmail.RecordCount) ,mtInformation,[mbOK],0);
end;

procedure TfrmEnviaEmailOBS.prc_Consultar;
begin
  fDMEmail.cdsPessoa.Close;
  fDMEmail.sdsPessoa.CommandText := fDMEmail.ctPessoa;
  case cbxOpcao.ItemIndex of
    0 : fDMEmail.sdsPessoa.CommandText := fDMEmail.sdsPessoa.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S');
    1 : fDMEmail.sdsPessoa.CommandText := fDMEmail.sdsPessoa.CommandText + ' AND TP_FORNECEDOR = ' + QuotedStr('S');
    2 : fDMEmail.sdsPessoa.CommandText := fDMEmail.sdsPessoa.CommandText + ' AND TP_VENDEDOR = ' + QuotedStr('S');
  end;
  fDMEmail.cdsPessoa.Open;
end;


end.
