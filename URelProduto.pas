unit URelProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadProduto, UDMRel;

type
  TfRelProduto = class(TForm)
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
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand5: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand6: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw3: TRLDraw;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand7: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBText8: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;      
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    vImpPreco: Boolean;
    vImpPrecoCusto : Boolean;
    vImpEmbalagem : Boolean;
    vImpConsumo: Boolean;
    vSelecionados : Boolean;
  end;

var
  fRelProduto: TfRelProduto;

implementation

{$R *.dfm}

procedure TfRelProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProduto.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel7.Visible := vImpPrecoCusto;
  RLLabel8.Visible := vImpPreco;
  RLLabel13.Visible := vImpEmbalagem;
end;

procedure TfRelProduto.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText7.Visible := vImpPrecoCusto;
  RLDBText5.Visible := vImpPreco;
  RLDBText8.Visible := vImpEmbalagem;
  fDMCadProduto.cdsConsumo_Imp.Close;
  if vImpConsumo then
  begin
    fDMCadProduto.sdsConsumo_Imp.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
    fDMCadProduto.cdsConsumo_Imp.Open;
  end;
end;

procedure TfRelProduto.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelProduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelProduto.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMCadProduto.cdsConsumo_Imp.IsEmpty);
end;

procedure TfRelProduto.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vImpConsumo then
  begin
    fDMCadProduto.cdsConsumo_Imp_Tam.Close;
    fDMCadProduto.sdsConsumo_Imp_Tam.ParamByName('ID').AsInteger   := fDMCadProduto.cdsConsumo_ImpID.AsInteger;
    fDMCadProduto.sdsConsumo_Imp_Tam.ParamByName('ITEM').AsInteger := fDMCadProduto.cdsConsumo_ImpITEM.AsInteger;
    fDMCadProduto.cdsConsumo_Imp_Tam.Open;
  end;
end;

end.
