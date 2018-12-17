unit UConsCNPJ_ACBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  ACBrBase, ACBrSocket, ACBrConsultaCNPJ, JPEG, Mask, UDMCadPessoa, DB, GraphicEx; 

type
  TfrmConsCNPJ_ACBR = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditTipo: TEdit;
    EditRazaoSocial: TEdit;
    EditAbertura: TEdit;
    EditEndereco: TEdit;
    EditNumero: TEdit;
    EditComplemento: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    EditUF: TEdit;
    EditCEP: TEdit;
    EditSituacao: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    ButBuscar: TBitBtn;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    EditFantasia: TEdit;
    Label13: TLabel;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    EditCNPJ: TMaskEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    ckRemoverEspacosDuplos: TCheckBox;
    btnCopiar: TBitBtn;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure ButBuscarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;
    
  end;

var
  frmConsCNPJ_ACBR: TfrmConsCNPJ_ACBR;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsCNPJ_ACBR.ButBuscarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(
      EditCNPJ.Text,
      EditCaptcha.Text,
      ckRemoverEspacosDuplos.Checked
    ) then
    begin
      EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
      EditRazaoSocial.Text := ACBrConsultaCNPJ1.RazaoSocial;
      EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      EditFantasia.Text    := ACBrConsultaCNPJ1.Fantasia;
      EditEndereco.Text    := ACBrConsultaCNPJ1.Endereco;
      EditNumero.Text      := ACBrConsultaCNPJ1.Numero;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditBairro.Text      := ACBrConsultaCNPJ1.Bairro;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditCidade.Text      := ACBrConsultaCNPJ1.Cidade;
      EditUF.Text          := ACBrConsultaCNPJ1.UF;
      EditCEP.Text         := ACBrConsultaCNPJ1.CEP;
      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
      if EditSituacao.Text <> 'ATIVA' then
        Panel2.Color := $006A6AFF
      else
        Panel2.Color := clBtnFace;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TfrmConsCNPJ_ACBR.EditCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ButBuscarClick(ButBuscar);
end;

procedure TfrmConsCNPJ_ACBR.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  Timer1.Enabled:= True;
  btnCopiar.Enabled := (fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]);
end;

procedure TfrmConsCNPJ_ACBR.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  //Jpg: TJPEGImage;
  Img: TPNGGraphic;
begin
  {Stream:= TMemoryStream.Create;
  Jpg:= TJPEGImage.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
    Jpg.LoadFromStream(Stream);
    Image1.Picture.Assign(Jpg);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
    Jpg.Free;
  end;}
  Stream:= TMemoryStream.Create;
  Img:= TPNGGraphic.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
    Img.LoadFromStream(Stream);
    Image1.Picture.Assign(Img);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
    Img.Free;
  end;
end;

procedure TfrmConsCNPJ_ACBR.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCNPJ.SetFocus;
end;

procedure TfrmConsCNPJ_ACBR.btnCopiarClick(Sender: TObject);
begin
  if trim(EditRazaoSocial.Text) = '' then
    exit;
  if not(fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]) then
    exit;

  if EditSituacao.Text <> 'ATIVA' then
  begin
    if MessageDlg('Verificar se a empresa esta ativa, Deseja copiar assim mesmo o endereço?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  fDMCadPessoa.cdsPessoaNOME.AsString := EditRazaoSocial.Text;
  if copy(EditFantasia.Text,1,2) <> '**' then
    fDMCadPessoa.cdsPessoaFANTASIA.AsString := EditRazaoSocial.Text;
  fDMCadPessoa.cdsPessoaENDERECO.AsString := EditEndereco.Text;
  fDMCadPessoa.cdsPessoaNUM_END.AsString  := EditNumero.Text;
  fDMCadPessoa.cdsPessoaCOMPLEMENTO_END.AsString := EditComplemento.Text;
  fDMCadPessoa.cdsPessoaBAIRRO.AsString          := EditBairro.Text;
  fDMCadPessoa.cdsPessoaCEP.AsString             := EditCEP.Text;
  fDMCadPessoa.cdsPessoaUF.AsString              := EditUF.Text;

  fDMCadPessoa.prc_Abrir_Cidade(fDMCadPessoa.cdsPessoaUF.AsString);
  if fDMCadPessoa.cdsCidade.Locate('NOME',EditCidade.Text,([Locaseinsensitive])) then
  begin
    fDMCadPessoa.cdsPessoaID_CIDADE.AsInteger := fDMCadPessoa.cdsCidadeID.AsInteger;
    fDMCadPessoa.cdsPessoaCIDADE.AsString     := fDMCadPessoa.cdsCidadeNOME.AsString;
  end;
  fDMCadPessoa.cdsPessoaID_PAIS.AsInteger := 1;
  Close;
end;

end.
