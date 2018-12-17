unit URelExtComissao_Prev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadExtComissao, UDMRel;

type
  TfRelExtComissao_Prev = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLMemo1: TRLMemo;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand4: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDraw3: TRLDraw;
    RLDraw1: TRLDraw;
    RLBand5: TRLBand;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDBText17: TRLDBText;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLDraw10: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand7: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText24: TRLDBText;
    RLDraw11: TRLDraw;
    RLDBText25: TRLDBText;
    RLBand8: TRLBand;
    RLPanel2: TRLPanel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadExtComissao   : TDMCadExtComissao;
    vOpcaoImp : String;
    vTitulo_Rel : String;
    vNomeEmp : String;
    vImp_Nota : Boolean;
    vImp_Separar_Vend : Boolean;
  end;

var
  fRelExtComissao_Prev: TfRelExtComissao_Prev;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, DB;

{$R *.dfm}

procedure TfRelExtComissao_Prev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fDMCadExtComissao.cdsPrevisao.Filtered     := False;
  fDMCadExtComissao.cdsPrevisao_Ped.Filtered := False;
  Action := Cafree;
end;

procedure TfRelExtComissao_Prev.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel1.Caption := vTitulo_Rel;
  if trim(vFilial_Nome) <> '' then
    RLLabel2.Caption := 'Empresa: ' + vFilial_Nome
  else
    RLLabel2.Caption := 'Empresa: Todas';
end;

procedure TfRelExtComissao_Prev.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  fDMCadExtComissao.cdsPrevisao.Filtered := False;
  fDMCadExtComissao.cdsPrevisao.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mImp_ReduzidoID_Vendedor.AsString);
  fDMCadExtComissao.cdsPrevisao.Filtered := True;

  fDMCadExtComissao.cdsPrevisao_Ped.Filtered := False;
  fDMCadExtComissao.cdsPrevisao_Ped.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mImp_ReduzidoID_Vendedor.AsString);
  fDMCadExtComissao.cdsPrevisao_Ped.Filtered := True;
end;

procedure TfRelExtComissao_Prev.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
end;

procedure TfRelExtComissao_Prev.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Nota;
end;

procedure TfRelExtComissao_Prev.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Nota;
end;

procedure TfRelExtComissao_Prev.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLBand5.PageBreaking := pbNone;
  if (vImp_Nota) and (vImp_Separar_Vend) then
    RLBand5.PageBreaking := pbAfterPrint;

end;

procedure TfRelExtComissao_Prev.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelExtComissao_Prev.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
