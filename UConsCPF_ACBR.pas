unit UConsCPF_ACBR;

interface

uses
  JPEG, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, ACBrBase,
  ACBrSocket, ACBrConsultaCPF, GraphicEx;
  //ACBrBase, ACBrSocket, ACBrConsultaCNPJ, JPEG, Mask, UDMCadPessoa, DB, ;


type
  TfrmConsCPF_ACBR = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    EditRazaoSocial: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    EditCNPJ: TEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    EditSituacao: TEdit;
    EdtDigitoVerificador: TEdit;
    RzLabel1: TLabel;
    EdtCodCtrlControle: TEdit;
    RzLabel2: TLabel;
    EdtEmissao: TEdit;
    RzLabel3: TLabel;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    btnConsultar: TButton;
    Label2: TLabel;
    EditDtNasc: TEdit;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private

  public
  end;

var
  frmConsCPF_ACBR: TfrmConsCPF_ACBR;

implementation

{$R *.dfm}

procedure TfrmConsCPF_ACBR.btnConsultarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    //if ACBrConsultaCPF1.Consulta(EditCNPJ.Text,'',EditCaptcha.Text) then
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
      EditRazaoSocial.Text      := ACBrConsultaCPF1.Nome;
      EditSituacao.Text         := ACBrConsultaCPF1.Situacao;
      EdtEmissao.Text           := ACBrConsultaCPF1.Emissao;
      EdtCodCtrlControle.Text   := ACBrConsultaCPF1.CodCtrlControle;
      EdtDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TfrmConsCPF_ACBR.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  EditCaptcha.SetFocus;
end;

procedure TfrmConsCPF_ACBR.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
  Img: TPNGGraphic;
begin
  Stream := TMemoryStream.Create;
  Img:= TPNGGraphic.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    //ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    //Stream.SaveToFile( ImgArq );
    //Image1.Picture.LoadFromFile( ImgArq );

    Img.LoadFromStream(Stream);
    Image1.Picture.Assign(Img);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
    Img.Free;
  end;
end;

procedure TfrmConsCPF_ACBR.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCaptcha.SetFocus;
end;

end.
