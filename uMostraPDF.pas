unit uMostraPDF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, itfPDFImage, StdCtrls, Math, frxClass, Buttons;

type
  TfrmMostraPDF = class(TForm)
    pnlImagem: TPanel;
    pnlControler: TPanel;
    lblCount: TLabel;
    btnPrev: TButton;
    edPage: TEdit;
    btnNext: TButton;
    edtCaminhoPDF: TEdit;
    Label1: TLabel;
    btnZoomIn: TButton;
    btnZoomOut: TButton;
    frxReport1: TfrxReport;
    BitBtn1: TBitBtn;
    ScrollBox1: TScrollBox;
    Image: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnZoomInClick(Sender: TObject);
    procedure btnZoomOutClick(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure CheckState;
  public
    vCaminhoPDF : String;
    { Public declarations }
  end;

var
  frmMostraPDF: TfrmMostraPDF;

implementation

{$R *.dfm}

procedure TfrmMostraPDF.FormShow(Sender: TObject);
begin
  if FileExists(vCaminhoPDF) then
  begin
    Image.Picture.LoadFromFile(vCaminhoPDF);
    CheckState;
//  edPageFrom.Text:='1';
//  edPageTo.Text:=IntToStr(TPDFImage(Image.Picture.Graphic).PageCount);
  end
  else
  begin
    ModalResult := mrCancel;
    Close;
  end;
end;

procedure TfrmMostraPDF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMostraPDF.CheckState;
begin
  btnPrev.Enabled:=Assigned(Image.Picture.Graphic) and (Image.Picture.Graphic is TPDFImage) and (TPDFImage(Image.Picture.Graphic).PageCount > 0) and (TPDFImage(Image.Picture.Graphic).CurrentPage > 1);
  btnNext.Enabled:=Assigned(Image.Picture.Graphic) and (Image.Picture.Graphic is TPDFImage) and (TPDFImage(Image.Picture.Graphic).PageCount > 0) and (TPDFImage(Image.Picture.Graphic).CurrentPage < TPDFImage(Image.Picture.Graphic).PageCount);
  btnZoomIn.Enabled:=Assigned(Image.Picture.Graphic) and (Image.Picture.Graphic is TPDFImage) and (TPDFImage(Image.Picture.Graphic).PageCount > 0);
  btnZoomOut.Enabled:=Assigned(Image.Picture.Graphic) and (Image.Picture.Graphic is TPDFImage) and (TPDFImage(Image.Picture.Graphic).PageCount > 0);
  edPage.Enabled:=Assigned(Image.Picture.Graphic) and (Image.Picture.Graphic is TPDFImage) and (TPDFImage(Image.Picture.Graphic).PageCount > 0);
//  btnClear.Enabled:=Assigned(Image.Picture.Graphic) and (Image.Picture.Graphic is TPDFImage) and (TPDFImage(Image.Picture.Graphic).PageCount > 0);
//  btnPrint.Enabled:=Assigned(Image.Picture.Graphic) and (Image.Picture.Graphic is TPDFImage) and (TPDFImage(Image.Picture.Graphic).PageCount > 0);

  if Assigned(Image.Picture.Graphic) then
  begin
    Image.Width:=Image.Picture.Graphic.Width;
    Image.Height:=Image.Picture.Graphic.Height;
    edPage.Text:=IntToStr(TPDFImage(Image.Picture.Graphic).CurrentPage);
    lblCount.Caption:='of ' + IntToStr(TPDFImage(Image.Picture.Graphic).PageCount);
  end;

//  btnSave.Enabled:=Assigned(Image.Picture.Graphic);
//  edPageFrom.Enabled:=Assigned(Image.Picture.Graphic);
//  edPageTo.Enabled:=Assigned(Image.Picture.Graphic);

  {$ifndef USESYNPDF}
//  edPageFrom.Enabled:=FALSE;
//  edPageTo.Enabled:=FALSE;
  {$endif}

end;

procedure TfrmMostraPDF.btnZoomInClick(Sender: TObject);
begin
  TPDFImage(Image.Picture.Graphic).Zoom:=Min(300,TPDFImage(Image.Picture.Graphic).Zoom + 10);
  CheckState;
end;

procedure TfrmMostraPDF.btnZoomOutClick(Sender: TObject);
begin
  TPDFImage(Image.Picture.Graphic).Zoom:=Max(25,TPDFImage(Image.Picture.Graphic).Zoom - 10);
  CheckState;
end;

procedure TfrmMostraPDF.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  if frxReport1.FindComponent('Picture1')<> nil then
    TfrxPictureView(frxReport1.FindComponent('Picture1')).Picture.LoadFromFile(vCaminhoPDF) ;

end;

procedure TfrmMostraPDF.BitBtn1Click(Sender: TObject);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\teste.fr3';
  if FileExists(vArq) then
    frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  frxReport1.ShowReport;
end;

procedure TfrmMostraPDF.btnNextClick(Sender: TObject);
begin
  TPDFImage(Image.Picture.Graphic).NextPage;
  CheckState;
end;

procedure TfrmMostraPDF.btnPrevClick(Sender: TObject);
begin
  TPDFImage(Image.Picture.Graphic).PreviousPage;
  CheckState;
end;

procedure TfrmMostraPDF.FormDestroy(Sender: TObject);
begin
//  FreeAndNil(Self);
end;

end.
