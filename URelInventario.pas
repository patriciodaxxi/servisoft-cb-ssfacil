unit URelInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsEstoque, RLReport, UDMRel;

type
  TfRelInventario = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLMemo1: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
  end;

var
  fRelInventario: TfRelInventario;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfRelInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelInventario.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);
end;

procedure TfRelInventario.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel7.Caption := fDMConsEstoque.vDescOpcao_Rel;
  RLLabel1.Caption := 'RELATÓRIO DE INVENTÁRIO - ' + fDMConsEstoque.vOpcao_ProdMat;
end;

procedure TfRelInventario.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelInventario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelInventario.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vNomeAux : String;  
begin
  vNomeAux          := fDMConsEstoque.cdsEstoqueNOMEPRODUTO.AsString;
  if trim(fDMConsEstoque.cdsEstoqueNOME_COR.AsString) <> '' then
    vNomeAux := vNomeAux + ' ' + fDMConsEstoque.cdsEstoqueNOME_COR.AsString;
  RLMemo1.Lines.Text := vNomeAux;
end;

end.
