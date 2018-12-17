unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls, ImgList, Menus, SpeedBar,
  ExtCtrls, ActnList, jpeg, RLConsts;

type
  TfMenu = class(TForm)
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Usurios1: TMenuItem;
    Logoff1: TMenuItem;                                                                                          
    Cadastrar1: TMenuItem;
    N1: TMenuItem;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedItem1: TSpeedItem;
    SpeedItem2: TSpeedItem;
    SpeedItem4: TSpeedItem;
    SpeedItem5: TSpeedItem;
    SpeedItem6: TSpeedItem;
    SpeedItem7: TSpeedItem;
    SpeedItem8: TSpeedItem;
    ActionList1: TActionList;
    SpeedItem3: TSpeedItem;
    DespFixas: TSpeedItem;
    Image1: TImage;
    Manuteno1: TMenuItem;
    Posiesdeacabamento1: TMenuItem;
    Acabamentos1: TMenuItem;
    Cores1: TMenuItem;
    G1: TMenuItem;
    procedure SpeedItem1Click(Sender: TObject);
    procedure SpeedItem2Click(Sender: TObject);
    procedure SpeedItem6Click(Sender: TObject);
    procedure SpeedItem8Click(Sender: TObject);
    procedure SpeedItem4Click(Sender: TObject);
    procedure SpeedItem7Click(Sender: TObject);
    procedure SpeedItem5Click(Sender: TObject);
    procedure SpeedItem3Click(Sender: TObject);
    procedure DespFixasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Posiesdeacabamento1Click(Sender: TObject);
    procedure Acabamentos1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
  private
    { Private declarations }
    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState);
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses uDmDatabase, uFacaC, uAcabadoC, uFichaTecnicaC, uOrcamentoC, uMaquinaC, uPastaC, uOPC, uEtiqueta, uCartoOrcamentoC,
  uAcabPosicaoC, uAcabamentoC, uCorC, uGrupoC;

{$R *.dfm}

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState);
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;

  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass,existe);
    existe.FormStyle := fsMDIChild;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenu.SpeedItem1Click(Sender: TObject);
begin
  fFacaC := TfFacaC.Create(Self);
  fFacaC.ShowModal;
end;

procedure TfMenu.SpeedItem2Click(Sender: TObject);
begin
  OpenForm(TfFichaTecnicaC,wsMaximized);
{  fFichaTecnicaC := TfFichaTecnicaC.Create(Self);
  fFichaTecnicaC.ShowModal;
  fFichaTecnicaC.Free;}
end;

procedure TfMenu.SpeedItem6Click(Sender: TObject);
begin
  OpenForm(TfCartoOrcamentoC,wsMaximized);
end;

procedure TfMenu.SpeedItem8Click(Sender: TObject);
begin
  OpenForm(TfMaquinaC,wsMaximized);
end;

procedure TfMenu.SpeedItem4Click(Sender: TObject);
begin
  OpenForm(TfPastaC,wsMaximized);
end;

procedure TfMenu.SpeedItem7Click(Sender: TObject);
begin
  OpenForm(TfOPC,wsMaximized);
end;

procedure TfMenu.SpeedItem5Click(Sender: TObject);
begin
  OpenForm(TfAcabadoC,wsMaximized);
end;

procedure TfMenu.SpeedItem3Click(Sender: TObject);
begin
  fEtiqueta := TfEtiqueta.Create(Self);
  fEtiqueta.ShowModal;
end;

procedure TfMenu.DespFixasClick(Sender: TObject);
begin
//  OpenForm(TfCadContaOrc,wsMaximized);
end;

procedure TfMenu.FormShow(Sender: TObject);
begin
  Image1.Left := Screen.Width - Image1.Width - 10;
  Image1.Top  := Screen.height - Image1.Height - 80;
end;

procedure TfMenu.Posiesdeacabamento1Click(Sender: TObject);
begin
  OpenForm(TfAcabPosicaoC,wsMaximized);
end;

procedure TfMenu.Acabamentos1Click(Sender: TObject);
begin
  OpenForm(TfAcabamentoC,wsMaximized);
end;

procedure TfMenu.Cores1Click(Sender: TObject);
begin
  OpenForm(TfCorC,wsMaximized);
end;

procedure TfMenu.G1Click(Sender: TObject);
begin
  OpenForm(TfGrupoC,wsMaximized);
end;

initialization
  RLConsts.SetVersion(3,72,'B');

end.
