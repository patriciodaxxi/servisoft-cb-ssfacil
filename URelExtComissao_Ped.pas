unit URelExtComissao_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadExtComissao, UDMRel;

type
  TfRelExtComissao_Ped = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLMemo1: TRLMemo;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand4: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDraw3: TRLDraw;
    RLDraw1: TRLDraw;
    RLBand5: TRLBand;
    RLPanel1: TRLPanel;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDBText17: TRLDBText;
    RLLabel5: TRLLabel;
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
  fRelExtComissao_Ped: TfRelExtComissao_Ped;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, DB;

{$R *.dfm}

procedure TfRelExtComissao_Ped.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fDMCadExtComissao.cdsPedido_Vend.Filtered := False;
  Action := Cafree;
end;

procedure TfRelExtComissao_Ped.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel1.Caption := vTitulo_Rel;
  if trim(vFilial_Nome) <> '' then
    RLLabel2.Caption := 'Empresa: ' + vFilial_Nome
  else
    RLLabel2.Caption := 'Empresa: Todas';
end;

procedure TfRelExtComissao_Ped.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  fDMCadExtComissao.cdsPedido_Vend.Filtered := False;
  fDMCadExtComissao.cdsPedido_Vend.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mImp_ReduzidoID_Vendedor.AsString);
  fDMCadExtComissao.cdsPedido_Vend.Filtered := True;
end;

procedure TfRelExtComissao_Ped.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
end;

procedure TfRelExtComissao_Ped.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Nota;
end;

procedure TfRelExtComissao_Ped.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Nota;
end;

procedure TfRelExtComissao_Ped.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLBand5.PageBreaking := pbNone;
  if (vImp_Nota) and (vImp_Separar_Vend) then
    RLBand5.PageBreaking := pbAfterPrint;
end;

procedure TfRelExtComissao_Ped.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelExtComissao_Ped.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
