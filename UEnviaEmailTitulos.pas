unit UEnviaEmailTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls,
  UDMCob_Eletronica, NxCollection, ExtCtrls, DB, Mask, ToolEdit, RzTabs, ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase, NxEdit,
  uCobRemessa, RzPanel, Buttons;

type
  TfrmEnviaEmailTitulos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    btnEnviarEmail: TNxButton;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label5: TLabel;
    btnConsultar: TNxButton;
    RzPageControl5: TRzPageControl;
    TS_Atraso: TRzTabSheet;
    TS_AVencer: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    cbxFilial: TComboBox;
    Label7: TLabel;
    cbxVendedor: TComboBox;
    Shape2: TShape;
    gbxVencidos: TRzGroupBox;
    ckVendedor: TNxCheckBox;
    ckFilial: TNxCheckBox;
    ckCliente: TNxCheckBox;
    gbxAVencer: TRzGroupBox;
    ckCliente_AVencer: TNxCheckBox;
    TS_Vendedor: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    btnLimpar_Emails: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnLimpar_EmailsClick(Sender: TObject);
  private
    { Private declarations }
    ffCobRemessa: TfCobRemessa;
    vDadosCorpoEmail: WideString;
    vQtd_Sem_Email: Integer;
    vContador_Envio: Integer;
    vContador_Envio_Avencer: Integer;
    vNomeArq: String;
    F: TextFile;
    lista_Titulos: TStringList;

    procedure prc_Abrir_Filial(ID: Integer);
    procedure prc_Le_mEmail;
    procedure prc_Le_mEmail_AVencer;
    procedure prc_Monta_Corpo_Email;
    procedure prc_Monta_Corpo_Email_Agr;
    procedure prc_Monta_Corpo_Email_AVencer;
    procedure prc_Gerar_mEmail(ID_Filial: Integer);
    procedure prc_Gerar_mEmail_AVencer(ID_Filial: Integer);
    procedure prc_Abrir_Duplicata(ID: Integer);
    procedure prc_Gravar_AVencer;
    procedure prc_Gravar_mVendedor;

    //procedure prc_Criar_Arq_Temporario(Tipo: String); //F=Filial  V=Vendedor
    //procedure prc_Enviar_Email_Agr(Email,Tipo: String ; Filial, ID_Vendedor: Integer ; Email_Adicional, Nome: String); //F=Filial   V=Vendedor
    procedure prc_Criar_Arq_Temporario;
    procedure prc_Enviar_Email_Agr;

    procedure prc_Monta_Agrupados;

    procedure prc_Cab_Tit_Vend;
    procedure prc_Det_Tit_Vend;

  public
    { Public declarations }
    fDMCob_Eletronica: TDMCob_Eletronica;
  end;

var
  frmEnviaEmailTitulos: TfrmEnviaEmailTitulos;

implementation

uses uNFeComandos, uUtilPadrao, rsDBUtils, DateUtils;

{$R *.dfm}

procedure TfrmEnviaEmailTitulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmEnviaEmailTitulos.btnEnviarEmailClick(Sender: TObject);
begin
  if not(ckVendedor.Checked) and not(ckFilial.Checked) and not(ckCliente.Checked) and
     not(ckCliente_AVencer.Checked) then
  begin
    MessageDlg('*** Não foi selecionado nenhuma opção para o Envio!',mtInformation,[mbOK],0);
    exit;
  end;

  Label1.Caption := 'Aguarde,  enviando emails (títulos atrasados)...';
  Label1.Visible := True;
  Refresh;
  Label1.Refresh;
  if (ckVendedor.Checked) or (ckFilial.Checked) or (ckCliente.Checked) then
    prc_Le_mEmail;
  Label1.Caption := 'Aguarde, enviando emails (títulos a vencer)...';
  RzPageControl5.ActivePage := TS_AVencer;
  Label1.Refresh;
  Refresh;
  if ckCliente_AVencer.Checked then
    prc_Le_mEmail_AVencer;
  Label1.Visible := False;
  Label2.Visible := False;
  Label1.Refresh;

  if not fDMCob_Eletronica.cdsParametros_Fin.Active then
    fDMCob_Eletronica.cdsParametros_Fin.Open;
  if fDMCob_Eletronica.cdsParametros_FinDTENVIO_EMAIL_TITULOS.AsDateTime <> Date then
  begin
    fDMCob_Eletronica.cdsParametros_Fin.Edit;
    fDMCob_Eletronica.cdsParametros_FinDTENVIO_EMAIL_TITULOS.AsDateTime := Date;
    fDMCob_Eletronica.cdsParametros_Fin.Post;
    fDMCob_Eletronica.cdsParametros_Fin.ApplyUpdates(0);
  end;
end;

procedure TfrmEnviaEmailTitulos.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCob_Eletronica.mEmail.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmEnviaEmailTitulos.prc_Abrir_Filial(ID: Integer);
begin
  fDmCob_Eletronica.qFilial.Close;
  fDmCob_Eletronica.qFilial.ParamByName('ID').AsInteger := ID;
  fDmCob_Eletronica.qFilial.Open;

  fDmCob_Eletronica.qFilial_Email.Close;
  fDmCob_Eletronica.qFilial_Email.ParamByName('ID').AsInteger := ID;
  fDmCob_Eletronica.qFilial_Email.Open;
end;

procedure TfrmEnviaEmailTitulos.prc_Le_mEmail;
var
  vSenhaEmail: String;
  vCNPJ_Filial: String;
  vID_Filial: Integer;
  vLocalServidorNFe: String;
  vEmailAux: String;
  vEmailPrincipal: String;
  lista_Anexo: TStringList;
begin
  Lista_Anexo     := TStringList.Create;
  vID_Filial      := 0;
  vContador_Envio := 0;
  fDMCob_Eletronica.mEmail.IndexFieldNames := 'Filial;Nome';
  fDMCob_Eletronica.mEmail.First;
  while not fDMCob_Eletronica.mEmail.Eof do
  begin
    Refresh;
    lista_Anexo.Clear;
    if (trim(fDMCob_Eletronica.mEmailEmail.AsString) <> '') and (fDMCob_Eletronica.mEmailEmailEnviado.AsString <> 'S') then
    begin
      if vID_Filial = 0 then
        prc_Abrir_Filial(fDMCob_Eletronica.mEmailFilial.AsInteger)
      else
      if vID_Filial <> fDMCob_Eletronica.mEmailFilial.AsInteger then
        prc_Abrir_Filial(fDMCob_Eletronica.mEmailFilial.AsInteger);

      prc_Monta_Corpo_email;

      vSenhaEmail := Descriptografar( fDmCob_Eletronica.qFilial_EmailBASE.AsInteger
                                 , 'ssfacil'
                                 , fDmCob_Eletronica.qFilial_EmailSMTP_SENHA.AsString );
      vCNPJ_Filial :=Monta_Texto(fDmCob_Eletronica.qFilial_EmailCNPJ_CPF_FILIAL.AsString,14);
      vLocalServidorNFe := fDmCob_Eletronica.qParametrosLOCALSERVIDORNFE.AsString;

      //29/07/2016
      vEmailAux       := '';
      vEmailPrincipal := fDMCob_Eletronica.mEmailEmail.AsString;
      if (cbxFilial.ItemIndex = 1) and (trim(fDMCob_Eletronica.mEmailEmail_Filial.AsString) <> '') and not(fDMCob_Eletronica.mEmailEmail_Filial.IsNull)
        and (ckFilial.Checked) then
        vEmailAux := fDMCob_Eletronica.mEmailEmail_Filial.AsString;

      if (cbxVendedor.ItemIndex = 1) and (trim(fDMCob_Eletronica.mEmailEmail_Vendedor.AsString) <> '') and not(fDMCob_Eletronica.mEmailEmail_Vendedor.IsNull)
        and (ckVendedor.Checked) then
      begin
        if trim(vEmailAux) <> '' then
          vEmailAux := vEmailAux + ';' + fDMCob_Eletronica.mEmailEmail_Vendedor.AsString
        else
          vEmailAux := fDMCob_Eletronica.mEmailEmail_Vendedor.AsString;
      end;
      if not ckCliente.Checked then
      begin
        vEmailPrincipal := vEmailAux;
        vEmailAux       := '';
      end;
      //*****************
      if trim(vEmailPrincipal) <> '' then
      begin
        if trim(fDMCob_Eletronica.qFilial_EmailLOCALSERVIDORNFE.AsString) <> '' then
          vLocalServidorNFe := fDMCob_Eletronica.qFilial_EmailLOCALSERVIDORNFE.AsString;
        try
          EnviarEmail2(vLocalServidorNFe,vCNPJ_Filial,fDmCob_Eletronica.qFilial_EmailREMETENTE_EMAIL.AsString,
                       fDmCob_Eletronica.qFilial_EmailREMETENTE_NOME.AsString,fDmCob_Eletronica.qFilial_EmailSMTP_CLIENTE.AsString,
                       fDmCob_Eletronica.qFilial_EmailSMTP_PORTA.AsString,fDmCob_Eletronica.qFilial_EmailSMTP_REQUER_SSL.AsString,
                       fDmCob_Eletronica.qFilial_EmailSMTP_USUARIO.AsString,vSenhaEmail,fDmCob_Eletronica.qFilial_EmailSOLICITAR_CONFIRMACAO.AsString,
                       vEmailPrincipal,vEmailAux,
                       //fDmCob_Eletronica.mEmailEmail.AsString,'',
                       'Título(s) ' + fDMCob_Eletronica.qFilialNOME.AsString,
                       vDadosCorpoEmail,lista_Anexo);
          fDMCob_Eletronica.mEmail.Edit;
          fDMCob_Eletronica.mEmailEmailEnviado.AsString := 'S';
          fDMCob_Eletronica.mEmail.Post;
          vContador_Envio := vContador_Envio + 1;
        except
          MessageDlg('Erro ao enviar email!',mtWarning,[mbOK],0);
        end;
      end;
      vID_Filial := fDMCob_Eletronica.mEmailFilial.AsInteger;
    end;

    fDMCob_Eletronica.mEmail.Next;
  end;

  //30/07/2016   Agrupado por Filial
  if ((cbxFilial.ItemIndex = 0) and (ckFilial.Checked)) OR ((cbxVendedor.ItemIndex = 0) and (ckVendedor.Checked)) then
    prc_Monta_Agrupados;
  //************************

  //if vContador_Envio > 0 then
  //  MessageDlg('Emails enviados ' + IntToStr(vContador_Envio) + '!',mtConfirmation,[mbOK],0)
  //else
  //  MessageDlg('Nenhuim email enviado!',mtConfirmation,[mbOK],0);
  FreeAndNil(lista_Anexo);
end;

procedure TfrmEnviaEmailTitulos.prc_Monta_Corpo_Email;
begin
  vDadosCorpoEmail := '';
  vDadosCorpoEmail := 'Olá!';
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + #13;

  vDadosCorpoEmail := vDadosCorpoEmail + '***** AVISO DE TÍTULO VENCIDO **** ' + #13 + #13;;
  vDadosCorpoEmail := vDadosCorpoEmail + 'Caro(a) ' + fDMCob_Eletronica.mEmailNome.AsString + #13;
  vDadosCorpoEmail := vDadosCorpoEmail + 'Enviamos este aviso para lhe informar que nossos registros acusam o(s) ';
  vDadosCorpoEmail := vDadosCorpoEmail + 'título(s) vencido(s) conforme dados abaixo: ' + #13;
  vDadosCorpoEmail := vDadosCorpoEmail + fDMCob_Eletronica.mEmailObs.Value + #13 + #13;

  vDadosCorpoEmail := vDadosCorpoEmail + 'Favor entrar em contato através do email ' + fDMCob_Eletronica.qFilialEMAIL_FINANCEIRO.AsString
                    + ' para regularizar sua situação. ' + #13 + #13;

  vDadosCorpoEmail := vDadosCorpoEmail + 'Este email é automático, caso seu título encontre-se pago, favor retornar no email '
                    + fDMCob_Eletronica.qFilialEMAIL_FINANCEIRO.AsString + ' com o devido comprovante para regularizarmos sua liquidação.';

  vDadosCorpoEmail := vDadosCorpoEmail + #13 + #13 + ' A ' + fDMCob_Eletronica.qFilialNOME.AsString + ' AGRADECE SUA ATENÇÃO.';
end;

procedure TfrmEnviaEmailTitulos.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCob_Eletronica.mEmailEmailEnviado.AsString = 'S' then
    Background := $00FFFFB9;
end;

procedure TfrmEnviaEmailTitulos.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCob_Eletronica);
  //DateEdit1.Date := Date - 60;
  DateEdit2.Date := Date;
  btnConsultarClick(Sender);
end;

procedure TfrmEnviaEmailTitulos.prc_Gerar_mEmail(ID_Filial: Integer);
var
  vID_Pessoa: Integer;
  //vOBS: String;
  vOBS: TStringList;
  vTitulos: String;
  vDtAux: TDateTime;
  vTexto1: String;
begin
  vObs := TStringList.Create;
  vOBS.Clear;

  fDmCob_Eletronica.cdsTitulos_atr.Close;
  fDMCob_Eletronica.sdsTitulos_atr.CommandText := fDMCob_Eletronica.ctTitulos_Atr;
  if DateEdit1.Date > 10 then
  begin
    fDMCob_Eletronica.sdsTitulos_atr.CommandText := fDMCob_Eletronica.sdsTitulos_atr.CommandText + ' AND DTVENCIMENTO >= '
                                                  + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date));
  end;
  if DateEdit2.Date > 10 then
  begin
    fDMCob_Eletronica.sdsTitulos_atr.CommandText := fDMCob_Eletronica.sdsTitulos_atr.CommandText + ' AND DTVENCIMENTO < '
                                                  + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date));
  end;
  fDmCob_Eletronica.sdsTitulos_atr.ParamByName('FILIAL').AsInteger := ID_Filial;
  fDmCob_Eletronica.cdsTitulos_atr.Open;
  vID_Pessoa := 0;
  //vOBS       := '';
  vTitulos   := '';
  vDtAux     := 0;
  fDmCob_Eletronica.cdsTitulos_atr.First;
  while not fDmCob_Eletronica.cdsTitulos_atr.Eof do
  begin
    vDtAux := fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime;
    if DayOfWeek(vDtAux) = 1 then
      vDtAux := vDtAux + 1
    else
    if DayOfWeek(vDtAux) = 7 then
      vDtAux := vDtAux + 2;
    if vDtAux >= Date then
      prc_Gravar_AVencer
    else
    if vDtAux < Date then
    begin
      if vID_Pessoa <> fDmCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger then
      begin
        if fDmCob_Eletronica.mEmail.State in [dsEdit,dsInsert] then
        begin
          //fDmCob_Eletronica.mEmailObs.Value        := vOBS;
          fDmCob_Eletronica.mEmailObs.Value        := vOBS.Text;
          fDmCob_Eletronica.mEmailTitulos.AsString := vTitulos;
          fDmCob_Eletronica.mEmail.Post;
          //vOBS     := '';
          vOBS.Clear;
          vTitulos := '';
        end;
        fDmCob_Eletronica.mEmail.Insert;
        fDmCob_Eletronica.mEmailID_Cliente.AsInteger     := fDmCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger;
        fDmCob_Eletronica.mEmailNome.AsString            := fDmCob_Eletronica.cdsTitulos_atrNOME_CLIENTE.AsString;
        fDmCob_Eletronica.mEmailCNPJ_CPF.AsString        := fDmCob_Eletronica.cdsTitulos_atrCNPJ_CPF_CLIENTE.AsString;
        fDmCob_Eletronica.mEmailEmail.AsString           := fDmCob_Eletronica.cdsTitulos_atrEMAIL_PGTO.AsString;
        fDmCob_Eletronica.mEmailNome_Filial.AsString     := fDmCob_Eletronica.cdsTitulos_atrNOME_FILIAL.AsString;
        fDmCob_Eletronica.mEmailCNPJ_CPF_Filial.AsString := fDmCob_Eletronica.cdsTitulos_atrCNPJ_CPF_FILIAL.AsString;
        fDmCob_Eletronica.mEmailFilial.AsInteger         := fDmCob_Eletronica.cdsTitulos_atrFILIAL.AsInteger;
        fDmCob_Eletronica.mEmailQtd_Titulos.AsInteger    := 0;
        fDmCob_Eletronica.mEmailEmailEnviado.AsString    := 'N';
        fDmCob_Eletronica.mEmailTituloVencido.AsBoolean  := False;
        fDmCob_Eletronica.mEmailTituloNoDia.AsBoolean    := False;
        fDMCob_Eletronica.mEmailID_Vendedor.AsInteger    := fDMCob_Eletronica.cdsTitulos_atrID_VENDEDOR.AsInteger;
        fDMCob_Eletronica.mEmailNome_Vendedor.AsString   := fDMCob_Eletronica.cdsTitulos_atrNOME_VENDEDOR.AsString;
        fDMCob_Eletronica.mEmailEmail_Vendedor.AsString  := fDMCob_Eletronica.cdsTitulos_atrEMAIL_VENDEDOR.AsString;
        fDMCob_Eletronica.mEmailDtVencimento.AsDateTime  := fDMCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime;

        if (trim(fDMCob_Eletronica.cdsTitulos_atrEMAIL_FILIAL.AsString) <> '') and not(fDMCob_Eletronica.cdsTitulos_atrEMAIL_FILIAL.IsNull) then
        begin
          fDMCob_Eletronica.mEmailEmail_Filial.AsString := fDMCob_Eletronica.cdsTitulos_atrEMAIL_FILIAL.AsString;
        end
        else
          fDMCob_Eletronica.mEmailEmail_Filial.AsString := '';
        if trim(fDmCob_Eletronica.mEmailEmail.AsString) = '' then
          vQtd_Sem_Email := vQtd_Sem_Email + 1;
      end;
      fDmCob_Eletronica.mEmailQtd_Titulos.AsInteger := fDmCob_Eletronica.mEmailQtd_Titulos.AsInteger + 1;
      //vOBS := vOBS + #13 + '(Nº Titulo: ' + fDmCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + fDMCob_Eletronica.vSeparadorParc + fDmCob_Eletronica.cdsTitulos_atrPARCELA.AsString
      //      + '   Nosso Nº: ' + fDmCob_Eletronica.cdsTitulos_atrNOSSONUMERO.AsString
      //      + '   Dt.Vencimento: ' + fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsString
      //      + '  Vlr.: ' + FormatFloat('###,###,##0.00',fDmCob_Eletronica.cdsTitulos_atrVLR_PARCELA.AsFloat) + ')';
      vTexto1 := '(Nº Título: ' + fDmCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + fDMCob_Eletronica.vSeparadorParc +
                 fDmCob_Eletronica.cdsTitulos_atrPARCELA.AsString +
                 ' - Nosso Nº: ' + fDmCob_Eletronica.cdsTitulos_atrNOSSONUMERO.AsString +
                 ' - Dt.Vencimento: ' + fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsString +
                 ' - Vlr.: ' + FormatFloat('###,###,##0.00',fDmCob_Eletronica.cdsTitulos_atrVLR_PARCELA.AsFloat) + ')';
      if vOBS.Count <= 0 then
        vOBS.Add(fDMCob_Eletronica.cdsTitulos_atrNOME_CLIENTE.AsString + '......');
      vOBS.Add(vTexto1);
      if vTitulos = '' then
        vTitulos := fDmCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + fDMCob_Eletronica.vSeparadorParc + fDmCob_Eletronica.cdsTitulos_atrPARCELA.AsString
      else
        vTitulos := vTitulos + ', ' + fDmCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + fDMCob_Eletronica.vSeparadorParc + fDmCob_Eletronica.cdsTitulos_atrPARCELA.AsString;
      vID_Pessoa := fDmCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger;
      {vDtAux := fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime;
      if DayOfWeek(vDtAux) = 1 then
        vDtAux := vDtAux + 1
      else
      if DayOfWeek(vDtAux) = 7 then
        vDtAux := vDtAux + 2;
      if vDtAux = Date then
        fDmCob_Eletronica.mEmailTituloNoDia.AsBoolean := True
      else
      if fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime < Date then
        fDmCob_Eletronica.mEmailTituloVencido.AsBoolean := True;}
      if fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime = Date then
        fDmCob_Eletronica.mEmailTituloNoDia.AsBoolean := True;
      if fDMCob_Eletronica.mEmailDtVencimento.AsDateTime > fDMCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime then
        fDMCob_Eletronica.mEmailDtVencimento.AsDateTime := fDMCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime;

      prc_Gravar_mVendedor;        
    end;
    fDmCob_Eletronica.cdsTitulos_atr.Next;
  end;
  if fDmCob_Eletronica.mEmail.State in [dsEdit,dsInsert] then
  begin
    fDmCob_Eletronica.mEmailObs.Value := vOBS.Text;
    fDmCob_Eletronica.mEmailTitulos.AsString := vTitulos;
    fDmCob_Eletronica.mEmail.Post;
  end;
  FreeAndNil(vOBS);
end;

procedure TfrmEnviaEmailTitulos.btnConsultarClick(Sender: TObject);
begin
  Label1.Visible := False;
  Label1.Refresh;
  Refresh;
  vQtd_Sem_Email := 0;
  fDmCob_Eletronica.mEmail.EmptyDataSet;
  fDMCob_Eletronica.mEmail_AVencer.EmptyDataSet;
  if DateEdit2.Date <= 10 then
  begin
    MessageDlg('Data final é obrigatório informar!',mtInformation,[mbOK],0);
    exit;
  end;
  fDMCob_Eletronica.mVendedor.First;
  while not fDMCob_Eletronica.mVendedor.Eof do
  begin
    fDMCob_Eletronica.mVendedor_Tit.First;
    while not fDMCob_Eletronica.mVendedor_Tit.Eof do
      fDMCob_Eletronica.mVendedor_Tit.Delete;
    fDMCob_Eletronica.mVendedor.Delete;
  end;

  fDmCob_Eletronica.cdsFilial.First;
  while not fDmCob_Eletronica.cdsFilial.Eof do
  begin
    prc_Gerar_mEmail(fDmCob_Eletronica.cdsFilialID.AsInteger);
    fDmCob_Eletronica.cdsFilial.Next;
  end;
  Label2.Visible := (vQtd_Sem_Email > 0);
  //label1.Visible := True;
  //Label1.Refresh;
  if vQtd_Sem_Email > 0 then
    Label2.Caption := IntToStr(vQtd_Sem_Email) + '  Cliente(s) sem email';
  Refresh;

  //A Vencer
  fDmCob_Eletronica.cdsFilial.First;
  while not fDmCob_Eletronica.cdsFilial.Eof do
  begin
    prc_Gerar_mEmail_AVencer(fDmCob_Eletronica.cdsFilialID.AsInteger);
    fDmCob_Eletronica.cdsFilial.Next;
  end;
end;

procedure TfrmEnviaEmailTitulos.prc_Gerar_mEmail_AVencer(
  ID_Filial: Integer);
var
  vID_Pessoa: Integer;
  vOBS: String;
  vTitulos: String;
  vDtAux: TDateTime;
  vData1: TDateTime;
  vData2: TDateTime;
  vObs_Anexos: WideString;
  vObs_ID: WideString;
  vNomeArqAux: String;
  vNossoNumAux: String;
begin
  vData1 := DateEdit2.Date;
  vData2 := DateEdit2.Date + 1;
  if DayOfWeek(vData2) = 1 then
    vData2 := vData2 + 1
  else
  if DayOfWeek(vData2) = 7 then
    vData2 := vData2 + 2;
  fDmCob_Eletronica.cdsTitulos_atr.Close;
  fDMCob_Eletronica.sdsTitulos_atr.CommandText := fDMCob_Eletronica.ctTitulos_Atr;
  fDMCob_Eletronica.sdsTitulos_atr.CommandText := fDMCob_Eletronica.sdsTitulos_atr.CommandText + ' AND DTVENCIMENTO >= '
                                                + QuotedStr(FormatDateTime('MM/DD/YYYY',vData1));
  fDMCob_Eletronica.sdsTitulos_atr.CommandText := fDMCob_Eletronica.sdsTitulos_atr.CommandText + ' AND DTVENCIMENTO <= '
                                                + QuotedStr(FormatDateTime('MM/DD/YYYY',vData2));
  fDmCob_Eletronica.sdsTitulos_atr.ParamByName('FILIAL').AsInteger := ID_Filial;
  fDmCob_Eletronica.cdsTitulos_atr.Open;
  vID_Pessoa  := 0;
  vOBS        := '';
  vObs_Anexos := '';
  vObs_ID     := '';
  vTitulos    := '';
  vDtAux      := 0;

  fDmCob_Eletronica.cdsTitulos_atr.First;
  while not fDmCob_Eletronica.cdsTitulos_atr.Eof do
  begin
    prc_Gravar_AVencer;
    fDmCob_Eletronica.cdsTitulos_atr.Next;
  end;
end;

procedure TfrmEnviaEmailTitulos.prc_Monta_Corpo_Email_AVencer;
var
  vAux: String;
begin
  vDadosCorpoEmail := '';
  vDadosCorpoEmail := 'Olá!';
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + #13;

  vDadosCorpoEmail := vDadosCorpoEmail + '***** LEMBRETE DE VENCIMENTO **** ' + #13 + #13;
  vDadosCorpoEmail := vDadosCorpoEmail + 'Caro(a) ' + fDMCob_Eletronica.mEmail_AVencerNome.AsString + ' ' + #13;
  vDadosCorpoEmail := vDadosCorpoEmail + 'Enviamos este aviso para lhe informar o vencimento da sua fatura, conforme dados abaixo: ' + #13;

  vAux := 'Nº Título: ' + fDMCob_Eletronica.mEmail_AVencerNum_Duplicata.AsString + fDMCob_Eletronica.vSeparadorParc +
          fDMCob_Eletronica.mEmail_AVencerParcela.AsString +
          ' - Dt.Vencimento: ' + fDMCob_Eletronica.mEmail_AVencerDtVencimento.AsString +
          ' - Valor: ' + FormatFloat('###,###,##0.00',fDMCob_Eletronica.mEmail_AVencerValor.AsFloat) +
          ' - Nosso Número: ' + fDMCob_Eletronica.mEmail_AVencerNossoNumero.AsString;

  vDadosCorpoEmail := vDadosCorpoEmail + #13 + vAux + ' ' + #13 + #13;

  vDadosCorpoEmail := vDadosCorpoEmail + '. Caso não tenhas recebido o respectivo boleto, segue novamente em anexo. ' + #13;
  vDadosCorpoEmail := vDadosCorpoEmail + 'Se o mesmo já tenha sido quitado, favor retornar este email para ' + #13;
  vDadosCorpoEmail := vDadosCorpoEmail + fDMCob_Eletronica.qFilialEMAIL_FINANCEIRO.AsString + ' com o devido comprovante, afim de corrigirmos a cobrança.';

  vDadosCorpoEmail := vDadosCorpoEmail + #13 + #13 + ' A ' + fDMCob_Eletronica.qFilialNOME.AsString + ' AGRADECE SUA ATENÇÃO.';
end;

procedure TfrmEnviaEmailTitulos.prc_Le_mEmail_AVencer;
var
  vSenhaEmail: String;
  vCNPJ_Filial: String;
  vID_Filial: Integer;
  lista_Anexo: TStringList;
  vNomeArqAux: String;
  vFlag: Boolean;
  i: Integer;
  vTexto: String;
  vObsAux: String;
  vLocalServidorNFe: String;
begin
  vContador_Envio_Avencer := 0;
  Lista_Anexo := TStringList.Create;
  vID_Filial  := 0;
  vNomeArqAux := ExtractFilePath(Application.ExeName) + '..\Boleto\';
  if not DirectoryExists(vNomeArqAux) then
    CreateDir(vNomeArqAux);

  if CheckBox1.Checked then
  begin
    ffCobRemessa := TfCobRemessa.Create(Self);
    ffCobRemessa.fDmCob_Eletronica := fDMCob_Eletronica;
  end;

  fDMCob_Eletronica.mEmail_AVencer.IndexFieldNames := 'Filial;Nome';
  fDMCob_Eletronica.mEmail_AVencer.First;
  while not fDMCob_Eletronica.mEmail_AVencer.Eof do
  begin
    Refresh;
    lista_Anexo.Clear;
    if CheckBox1.Checked then
      ffCobRemessa.ACBrBoleto1.ListadeBoletos.Clear;
    if (trim(fDMCob_Eletronica.mEmail_AVencerEmail.AsString) <> '') and (fDMCob_Eletronica.mEmail_AVencerEmailEnviado.AsString <> 'S') then
    begin
      if vID_Filial = 0 then
        prc_Abrir_Filial(fDMCob_Eletronica.mEmail_AVencerFilial.AsInteger)
      else
      if vID_Filial <> fDMCob_Eletronica.mEmail_AVencerFilial.AsInteger then
        prc_Abrir_Filial(fDMCob_Eletronica.mEmail_AVencerFilial.AsInteger);

      if fDMCob_Eletronica.mEmail_AVencerFilial.AsInteger <> fDMCob_Eletronica.cdsFilialID.AsInteger then
        fDmCob_Eletronica.cdsFilial.Locate('ID',fDMCob_Eletronica.mEmail_AVencerFilial.AsInteger,[loCaseInsensitive]);
      if fDMCob_Eletronica.mEmail_AVencerID_Conta.AsInteger <> fDMCob_Eletronica.cdsContasID.AsInteger then
        fDmCob_Eletronica.cdsContas.Locate('ID',fDMCob_Eletronica.mEmail_AVencerID_Conta.AsInteger,[loCaseInsensitive]);
      fDMCob_Eletronica.prc_Abrir_Carteira(fDmCob_Eletronica.cdsContasID_BANCO.AsInteger);

      if CheckBox1.Checked then
      begin
        if trim(fDMCob_Eletronica.mEmail_AVencerNossoNumero.AsString) <> '' then
        begin
          prc_Abrir_Duplicata(fDMCob_Eletronica.mEmail_AVencerID_Duplicata.AsInteger);

          ffCobRemessa.ACBrBoleto1.ListadeBoletos.Clear;
          ffCobRemessa.prc_ConfiguraACBR;
          ffCobRemessa.geraCabecalhoAcbr;
          fDMCob_Eletronica.vMsgCarteira := '';
          vTexto := ffCobRemessa.geraRegistroAcbr;
          if trim(fDMCob_Eletronica.vMsgCarteira) <> '' then
            MessageDlg(fDMCob_Eletronica.vMsgCarteira,mtInformation,[mbOK],0)
          else
          begin
            ffCobRemessa.ACBrBoleto1.ACBrBoletoFC.NomeArquivo := vNomeArqAux + 'Boleto_' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString +
                                                                 '_'+ fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + '.pdf';
            ffCobRemessa.ACBrBoleto1.GerarPDF;
            lista_Anexo.Add(ffCobRemessa.ACBrBoleto1.ACBrBoletoFC.NomeArquivo);
          end;
        end;
      end;

      prc_Monta_Corpo_Email_AVencer;

      vSenhaEmail := Descriptografar( fDmCob_Eletronica.qFilial_EmailBASE.AsInteger
                                 , 'ssfacil'
                                 , fDmCob_Eletronica.qFilial_EmailSMTP_SENHA.AsString );
      vCNPJ_Filial :=Monta_Texto(fDmCob_Eletronica.qFilial_EmailCNPJ_CPF_FILIAL.AsString,14);
      vLocalServidorNFe := fDmCob_Eletronica.qParametrosLOCALSERVIDORNFE.AsString;
      if trim(fDMCob_Eletronica.qFilial_EmailLOCALSERVIDORNFE.AsString) <> '' then
        vLocalServidorNFe := fDMCob_Eletronica.qFilial_EmailLOCALSERVIDORNFE.AsString;
      try
        EnviarEmail2(vLocalServidorNFe,vCNPJ_Filial,fDmCob_Eletronica.qFilial_EmailREMETENTE_EMAIL.AsString,
                     fDmCob_Eletronica.qFilial_EmailREMETENTE_NOME.AsString,fDmCob_Eletronica.qFilial_EmailSMTP_CLIENTE.AsString,
                     fDmCob_Eletronica.qFilial_EmailSMTP_PORTA.AsString,fDmCob_Eletronica.qFilial_EmailSMTP_REQUER_SSL.AsString,
                     fDmCob_Eletronica.qFilial_EmailSMTP_USUARIO.AsString,vSenhaEmail,fDmCob_Eletronica.qFilial_EmailSOLICITAR_CONFIRMACAO.AsString,
                     fDmCob_Eletronica.mEmail_AVencerEmail.AsString,'',
                     'Título ' + fDMCob_Eletronica.mEmail_AVencerNum_Duplicata.AsString + fDMCob_Eletronica.vSeparadorParc +
                     fDMCob_Eletronica.mEmail_AVencerParcela.AsString,vDadosCorpoEmail,lista_Anexo);
        fDMCob_Eletronica.mEmail_AVencer.Edit;
        fDMCob_Eletronica.mEmail_AVencerEmailEnviado.AsString := 'S';
        fDMCob_Eletronica.mEmail_AVencer.Post;
        vContador_Envio_Avencer := vContador_Envio_Avencer + 1;
        if CheckBox1.Checked then
          DeleteFile(ffCobRemessa.ACBrBoleto1.ACBrBoletoFC.NomeArquivo);
      except
        MessageDlg('Erro ao enviar email!',mtWarning,[mbOK],0);
      end;
      vID_Filial := fDMCob_Eletronica.mEmail_AVencerFilial.AsInteger;
    end;

    fDMCob_Eletronica.mEmail_AVencer.Next;
  end;
  if (vContador_Envio > 0) or (vContador_Envio_Avencer > 0) then
    MessageDlg('Emails em atraso e vencendo no dia enviados: ' + IntToStr(vContador_Envio) + '!' + #13 +
               'Emails a vencer enviados: ' + IntToStr(vContador_Envio_Avencer),mtConfirmation,[mbOK],0)
  else
    MessageDlg('Nenhuim email enviado!',mtConfirmation,[mbOK],0);
  FreeAndNil(lista_Anexo);
  if CheckBox1.Checked then
    FreeAndNil(ffCobRemessa);
end;

procedure TfrmEnviaEmailTitulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    Label4.Visible      := True;
    DateEdit1.Visible   := True;
    Label5.Visible      := True;
    DateEdit2.Visible   := True;
    gbxVencidos.Visible := True;
    gbxAVencer.Visible  := True;
    btnLimpar_Emails.Visible := not(btnLimpar_Emails.Visible);
  end;
end;

procedure TfrmEnviaEmailTitulos.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCob_Eletronica.mEmail_AVencerEmailEnviado.AsString = 'S' then
    Background := $00FFFFB9;
end;

procedure TfrmEnviaEmailTitulos.prc_Abrir_Duplicata(ID: Integer);
begin
  fDMCob_Eletronica.cdsDuplicata.Close;
  fDMCob_Eletronica.sdsDuplicata.CommandText := fDMCob_Eletronica.ctDuplicata + ' WHERE DUP.ID = ' + IntToStr(ID);
  fDMCob_Eletronica.sdsDuplicata.ParamByName('DCOB1').AsDate := 0;
  fDMCob_Eletronica.sdsDuplicata.ParamByName('DCOB2').AsDate := 0;
  fDMCob_Eletronica.sdsDuplicata.ParamByName('ID_OCORRENCIA').AsInteger := 0;
  fDMCob_Eletronica.cdsDuplicata.Open;
end;

procedure TfrmEnviaEmailTitulos.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCob_Eletronica.mEmail_AVencer.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmEnviaEmailTitulos.prc_Gravar_AVencer;
begin
  fDmCob_Eletronica.mEmail_AVencer.Insert;
  fDmCob_Eletronica.mEmail_AVencerID_Cliente.AsInteger     := fDmCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger;
  fDmCob_Eletronica.mEmail_AVencerNome.AsString            := fDmCob_Eletronica.cdsTitulos_atrNOME_CLIENTE.AsString;
  fDmCob_Eletronica.mEmail_AVencerCNPJ_CPF.AsString        := fDmCob_Eletronica.cdsTitulos_atrCNPJ_CPF_CLIENTE.AsString;
  fDmCob_Eletronica.mEmail_AVencerEmail.AsString           := fDmCob_Eletronica.cdsTitulos_atrEMAIL_PGTO.AsString;
  fDmCob_Eletronica.mEmail_AVencerNome_Filial.AsString     := fDmCob_Eletronica.cdsTitulos_atrNOME_FILIAL.AsString;
  fDmCob_Eletronica.mEmail_AVencerCNPJ_CPF_Filial.AsString := fDmCob_Eletronica.cdsTitulos_atrCNPJ_CPF_FILIAL.AsString;
  fDmCob_Eletronica.mEmail_AVencerFilial.AsInteger         := fDmCob_Eletronica.cdsTitulos_atrFILIAL.AsInteger;
  fDmCob_Eletronica.mEmail_AVencerEmailEnviado.AsString    := 'N';
  fDMCob_Eletronica.mEmail_AVencerID_Vendedor.AsInteger    := fDMCob_Eletronica.cdsTitulos_atrID_VENDEDOR.AsInteger;
  fDMCob_Eletronica.mEmail_AVencerNome_Vendedor.AsString   := fDMCob_Eletronica.cdsTitulos_atrNOME_VENDEDOR.AsString;
  fDMCob_Eletronica.mEmail_AVencerEmail_Vendedor.AsString  := fDMCob_Eletronica.cdsTitulos_atrEMAIL_VENDEDOR.AsString;
  fDMCob_Eletronica.mEmail_AVencerDtVencimento.AsDateTime  := fDMCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime;
  if (trim(fDMCob_Eletronica.cdsTitulos_atrEMAIL_FILIAL.AsString) <> '') and not(fDMCob_Eletronica.cdsTitulos_atrEMAIL_FILIAL.IsNull) then
    fDMCob_Eletronica.mEmail_AVencerEmail_Filial.AsString := fDMCob_Eletronica.cdsTitulos_atrEMAIL_FILIAL.AsString
  else
    fDMCob_Eletronica.mEmail_AVencerEmail_Filial.AsString := '';
  if trim(fDmCob_Eletronica.mEmail_AVencerEmail.AsString) = '' then
    vQtd_Sem_Email := vQtd_Sem_Email + 1;
  fDMCob_Eletronica.mEmail_AVencerID_Conta.AsInteger     := fDMCob_Eletronica.cdsTitulos_atrID_CONTA_BOLETO.AsInteger;
  fDMCob_Eletronica.mEmail_AVencerID_Duplicata.AsInteger := fDMCob_Eletronica.cdsTitulos_atrID.AsInteger;
  fDMCob_Eletronica.mEmail_AVencerNum_Duplicata.AsString := fDMCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString;
  fDMCob_Eletronica.mEmail_AVencerParcela.AsString       := fDMCob_Eletronica.cdsTitulos_atrPARCELA.AsString;
  fDMCob_Eletronica.mEmail_AVencerValor.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.cdsTitulos_atrVLR_PARCELA.AsFloat));
  fDMCob_Eletronica.mEmail_AVencerNossoNumero.AsString   := fDMCob_Eletronica.cdsTitulos_atrNOSSONUMERO.AsString;
  fDMCob_Eletronica.mEmail_AVencer.Post;

  //prc_Gravar_mVendedor;
end;

procedure TfrmEnviaEmailTitulos.prc_Gravar_mVendedor;
begin
  if fDmCob_Eletronica.mVendedor.Locate('ID;Filial',VarArrayOf([fDMCob_Eletronica.cdsTitulos_atrID_VENDEDOR.AsInteger,fDMCob_Eletronica.cdsTitulos_atrFILIAL.AsInteger]),[locaseinsensitive]) then
    fDMCob_Eletronica.mVendedor.Edit
  else
  begin
    fDMCob_Eletronica.mVendedor.Insert;
    fDMCob_Eletronica.mVendedorID.AsInteger          := fDMCob_Eletronica.cdsTitulos_atrID_VENDEDOR.AsInteger;
    fDMCob_Eletronica.mVendedorFilial.AsInteger      := fDMCob_Eletronica.cdsTitulos_atrFILIAL.AsInteger;
    fDMCob_Eletronica.mVendedorNome.AsString         := fDMCob_Eletronica.cdsTitulos_atrNOME_VENDEDOR.AsString;
    fDMCob_Eletronica.mVendedorEmail.AsString        := fDMCob_Eletronica.cdsTitulos_atrEMAIL_VENDEDOR.AsString;
    fDMCob_Eletronica.mVendedorEmail_Filial.AsString := fDMCob_Eletronica.cdsTitulos_atrEMAIL_FILIAL.AsString;
    fDMCob_Eletronica.mVendedorQtd_Titulos.AsInteger := 0;
    fDMCob_Eletronica.mVendedorVlr_Total.AsFloat     := StrToFloat(FormatFloat('0.00',0));
    fDMCob_Eletronica.mVendedorEnviado.AsString      := 'N';
    fDMCob_Eletronica.mVendedorObs.Clear;
  end;
  fDMCob_Eletronica.mVendedorQtd_Titulos.AsInteger := fDMCob_Eletronica.mVendedorQtd_Titulos.AsInteger + 1;
  fDMCob_Eletronica.mVendedorVlr_Total.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.cdsTitulos_atrVLR_PARCELA.AsFloat));
  fDMCob_Eletronica.mVendedor.Post;

  fDMCob_Eletronica.mVendedor_Tit.Insert;
  fDMCob_Eletronica.mVendedor_TitID_Vendedor.AsInteger := fDMCob_Eletronica.cdsTitulos_atrID_VENDEDOR.AsInteger;
  fDMCob_Eletronica.mVendedor_TitNum_Titulo.AsString   := fDMCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + '/' + fDMCob_Eletronica.cdsTitulos_atrPARCELA.AsString;
  fDMCob_Eletronica.mVendedor_TitVlr_Titulo.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.cdsTitulos_atrVLR_PARCELA.AsFloat));
  fDMCob_Eletronica.mVendedor_TitDtVencimento.AsDateTime := fDMCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime;
  fDMCob_Eletronica.mVendedor_TitID_Cliente.AsInteger  := fDMCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger;
  fDMCob_Eletronica.mVendedor_TitNome_Cliente.AsString := fDMCob_Eletronica.cdsTitulos_atrNOME_CLIENTE.AsString;
  fDMCob_Eletronica.mVendedor_TitNossoNumero.AsString  := fDMCob_Eletronica.cdsTitulos_atrNOSSONUMERO.AsString;
  fDMCob_Eletronica.mVendedor_TitFilial.AsInteger      := fDMCob_Eletronica.cdsTitulos_atrFILIAL.AsInteger;
  fDMCob_Eletronica.mVendedor_Tit.Post;
end;

procedure TfrmEnviaEmailTitulos.prc_Monta_Corpo_Email_Agr;
begin
  vDadosCorpoEmail := '';
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + #13;
  vDadosCorpoEmail := vDadosCorpoEmail + '***** RELAÇÃO DOS TÍTULOS VENCIDOS **** ' + #13;
end;

//procedure TfrmEnviaEmailTitulos.prc_Criar_Arq_Temporario(Tipo: String); //F=Filial  V=Vendedor
procedure TfrmEnviaEmailTitulos.prc_Criar_Arq_Temporario;
begin
  vNomeArq := ExtractFilePath(Application.ExeName) + 'Temp';
  if not DirectoryExists(vNomeArq) then
    CreateDir(vNomeArq);

  //if Tipo = 'F' then
  //  vNomeArq := vNomeArq + '\Titulos_Vencidos_' + FormatDateTime('YYYYMMDD',Date)+ '.txt'
  //else
    vNomeArq := vNomeArq + '\Titulos_Vencidos_Rep_' + FormatDateTime('YYYYMMDD',Date)+ '.txt';
  if FileExists(vNomeArq) then
    DeleteFile(vNomeArq);
end;

//procedure TfrmEnviaEmailTitulos.prc_Enviar_Email_Agr(Email,Tipo: String ; Filial, ID_Vendedor: Integer ; Email_Adicional, Nome: String); //F=Filial   V=Vendedor
procedure TfrmEnviaEmailTitulos.prc_Enviar_Email_Agr;
var
  vSenhaEmail: String;
  vCNPJ_Filial: String;
  vLocalServidorNFe: String;
  lista_Anexo: TStringList;
  vTexto1: WideString;
  vID_Cliente_Ant: Integer;
  vEmail, vEmailAdicional: String;
begin
  prc_Criar_Arq_Temporario;

  AssignFile(F,vNomeArq);
  ReWrite(F);

  vLocalServidorNFe := fDmCob_Eletronica.qParametrosLOCALSERVIDORNFE.AsString;
  prc_Abrir_Filial(fDMCob_Eletronica.mVendedorFilial.AsInteger);
  if fDMCob_Eletronica.qFilialPESSOA.AsString = 'F' then
    vCNPJ_Filial := Monta_Texto(fDMCob_Eletronica.qFilialCNPJ_CPF.AsString,11)
  else
    vCNPJ_Filial := Monta_Texto(fDMCob_Eletronica.qFilialCNPJ_CPF.AsString,14);
  vSenhaEmail := Descriptografar(fDmCob_Eletronica.qFilial_EmailBASE.AsInteger,
                                 'ssfacil',fDmCob_Eletronica.qFilial_EmailSMTP_SENHA.AsString);

  vID_Cliente_Ant := 0;
  prc_Cab_Tit_Vend;
  fDMCob_Eletronica.mVendedor_Tit.First;
  while not fDMCob_Eletronica.mVendedor_Tit.Eof do
  begin
    if vID_Cliente_Ant <> fDMCob_Eletronica.mVendedor_TitID_Cliente.AsInteger then
    begin
      vTexto1 := '  *** Cliente: ' + fDMCob_Eletronica.mVendedor_TitNome_Cliente.AsString;
      Writeln(F,'');
      Writeln(F,vTexto1);
    end;
    prc_Det_Tit_Vend;
    vID_Cliente_Ant := fDMCob_Eletronica.mVendedor_TitID_Cliente.AsInteger;
    fDMCob_Eletronica.mVendedor_Tit.Next;
  end;
  CloseFile(F);
  vEmail          := '';
  vEmailAdicional := '';
  if (ckVendedor.Checked) and (cbxVendedor.ItemIndex = 0) then
    vEmail := fDMCob_Eletronica.mVendedorEmail.AsString;
  if (ckFilial.Checked) and (cbxFilial.ItemIndex = 0) then
    vEmailAdicional := fDMCob_Eletronica.mVendedorEmail_Filial.AsString;
  if trim(vEmail) = '' then
  begin
    vEmail          := vEmailAdicional;
    vEmailAdicional := '';
  end;

  lista_Titulos.Clear;
  lista_Titulos.Add(vNomeArq);
  if (lista_Titulos.Count > 0) then
  begin
    prc_Monta_Corpo_Email_Agr;
    EnviarEmail2(vLocalServidorNFe,vCNPJ_Filial,fDmCob_Eletronica.qFilial_EmailREMETENTE_EMAIL.AsString,
                 fDmCob_Eletronica.qFilial_EmailREMETENTE_NOME.AsString,fDmCob_Eletronica.qFilial_EmailSMTP_CLIENTE.AsString,
                 fDmCob_Eletronica.qFilial_EmailSMTP_PORTA.AsString,fDmCob_Eletronica.qFilial_EmailSMTP_REQUER_SSL.AsString,
                 fDmCob_Eletronica.qFilial_EmailSMTP_USUARIO.AsString,vSenhaEmail,fDmCob_Eletronica.qFilial_EmailSOLICITAR_CONFIRMACAO.AsString,
                 vEmail,vEmailAdicional,
                 'Título(s) Vencidos Representante: ' + fDMCob_Eletronica.mVendedorNome.AsString + ' - Empresa: ' + fDMCob_Eletronica.qFilialNOME.AsString,
                 vDadosCorpoEmail,lista_Titulos);
  end;
  DeleteFile(vNomeArq);
end;

procedure TfrmEnviaEmailTitulos.prc_Monta_Agrupados;
var
  vID_Filial: Integer;
begin
  RzPageControl5.ActivePage := TS_Vendedor;
  Refresh;

  //30/07/2016   Agrupado por Filial
  lista_Titulos := TStringList.Create;

  //Foi desativado 08/08/2016, vai mandar o mesmo do vendedor para a Michelle
  {if (cbxFilial.ItemIndex = 0) and (ckFilial.Checked) then
  begin
    try
      lista_Titulos.Clear;
      fDMCob_Eletronica.cdsFilial.First;
      while not fDMCob_Eletronica.cdsFilial.Eof do
      begin
        if trim(fDMCob_Eletronica.cdsFilialEMAIL_FINANCEIRO.AsString) <> '' then
          prc_Enviar_Email_Agr(fDMCob_Eletronica.cdsFilialEMAIL_FINANCEIRO.AsString,'F',fDMCob_Eletronica.cdsFilialID.AsInteger,0,'');
        fDMCob_Eletronica.cdsFilial.Next;
      end;
    finally
      fDMCob_Eletronica.mEmail.Filtered := False;
    end;
  end;}

  {if (cbxVendedor.ItemIndex = 0) and (ckVendedor.Checked) then
  begin
    try
      fDMCob_Eletronica.cdsFilial.IndexFieldNames := 'ID';
      fDMCob_Eletronica.cdsFilial.First;
      vID_Filial := fDMCob_Eletronica.cdsFilialID.AsInteger;
      lista_Titulos.Clear;
      fDMCob_Eletronica.mVendedor.First;
      while not fDMCob_Eletronica.mVendedor.Eof do
      begin
        if trim(fDMCob_Eletronica.mVendedorEmail.AsString) <> '' then
          prc_Enviar_Email_Agr(fDMCob_Eletronica.mVendedorEmail.AsString,'V',vID_Filial,
                               fDMCob_Eletronica.mVendedorID.AsInteger,fDMCob_Eletronica.cdsFilialEMAIL_FINANCEIRO.AsString,
                               fDMCob_Eletronica.mVendedorNome.AsString);
        fDMCob_Eletronica.mVendedor.Next;
      end;
    finally
      fDMCob_Eletronica.mEmail.Filtered := False;
    end;
  end;}

  if (cbxVendedor.ItemIndex = 0) and (ckVendedor.Checked) then
  begin
    try
      lista_Titulos.Clear;
      fDMCob_Eletronica.mVendedor.First;
      while not fDMCob_Eletronica.mVendedor.Eof do
      begin
        if (trim(fDMCob_Eletronica.mVendedorEmail.AsString) <> '') or (trim(fDMCob_Eletronica.mVendedorEmail_Filial.AsString) <> '') then
        begin
          prc_Enviar_Email_Agr;
          fDMCob_Eletronica.mVendedor.Edit;
          fDMCob_Eletronica.mVendedorEnviado.AsString := 'S';
          fDMCob_Eletronica.mVendedor.Post;
        end;

        fDMCob_Eletronica.mVendedor.Next;
      end;
    finally
      lista_Titulos.Clear;
    end;
  end;

  FreeAndNil(lista_Titulos);
end;

procedure TfrmEnviaEmailTitulos.prc_Cab_Tit_Vend;
begin
  writeln(F,'Representante: ' + fDMCob_Eletronica.mVendedorNome.AsString);
  writeln(F,'');
  writeln(F,'');

  //writeln(F,'           Título         Nosso Número         Dt.Vencimento Vlr.Vencimento Q.Dias Atraso');
  //writeln(F,'-----------------------------------------------------------------------------------------');
end;

procedure TfrmEnviaEmailTitulos.prc_Det_Tit_Vend;
var
  vTexto1: String;
  i: Integer;
begin
  vTexto1 := '';
  vTexto1 := vTexto1 + 'Nº Título: ' + fDMCob_Eletronica.mVendedor_TitNum_Titulo.AsString + '   ';

  vTexto1 := vTexto1 + 'Nosso Número: ' + fDMCob_Eletronica.mVendedor_TitNossoNumero.AsString + '  ';

  vTexto1 := vTexto1 + 'D.Vecto: ' +  fDMCob_Eletronica.mVendedor_TitDtVencimento.AsString + '  ';

  vTexto1 := vTexto1 + 'Valor: ' + FormatFloat('0.00',fDMCob_Eletronica.mVendedor_TitVlr_Titulo.AsFloat) + '   ';

  i := DaysBetween(Date,fDMCob_Eletronica.mVendedor_TitDtVencimento.AsDateTime);
  vTexto1 := vTexto1 + 'Dias em Atraso: ' + FormatFloat('####0',I);
  Writeln(F,vTexto1);
end;

procedure TfrmEnviaEmailTitulos.SMDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCob_Eletronica.mVendedorEnviado.AsString = 'S' then
    Background := $00FFFFB9;
end;

procedure TfrmEnviaEmailTitulos.btnLimpar_EmailsClick(Sender: TObject);
begin
  fDMCob_Eletronica.mEmail.First;
  while not fDMCob_Eletronica.mEmail.Eof do
  begin
    fDMCob_Eletronica.mEmail.Edit;
    fDMCob_Eletronica.mEmailEmail.AsString := '';
    fDMCob_Eletronica.mEmailEmail_Filial.AsString := '';
    fDMCob_Eletronica.mEmailEmail_Vendedor.AsString := '';
    fDMCob_Eletronica.mEmail.Post;
    fDMCob_Eletronica.mEmail.Next;
  end;

  fDMCob_Eletronica.mEmail_AVencer.First;
  while not fDMCob_Eletronica.mEmail_AVencer.Eof do
  begin
    fDMCob_Eletronica.mEmail_AVencer.Edit;
    fDMCob_Eletronica.mEmail_AVencerEmail.AsString := '';
    fDMCob_Eletronica.mEmail_AVencerEmail_Filial.AsString := '';
    fDMCob_Eletronica.mEmail_AVencerEmail_Vendedor.AsString := '';
    fDMCob_Eletronica.mEmail_AVencer.Post;
    fDMCob_Eletronica.mEmail_AVencer.Next;
  end;

  fDMCob_Eletronica.mVendedor.First;
  while not fDMCob_Eletronica.mVendedor.Eof do
  begin
    fDMCob_Eletronica.mVendedor.Edit;
    fDMCob_Eletronica.mVendedorEmail.AsString := '';
    fDMCob_Eletronica.mVendedorEmail_Filial.AsString := '';
    fDMCob_Eletronica.mVendedor.Post;
    fDMCob_Eletronica.mVendedor.Next;
  end;

  ShowMessage('Concluído!');
end;

end.
