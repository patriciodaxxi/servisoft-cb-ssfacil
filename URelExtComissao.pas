unit URelExtComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadExtComissao, UDMRel;

type
  TfRelExtComissao = class(TForm)
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
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
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
    RLLabel14: TRLLabel;
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
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLBand6: TRLBand;
    RLLabel19: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLDBText17: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
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
  fRelExtComissao: TfRelExtComissao;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, DB;

{$R *.dfm}

procedure TfRelExtComissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fDMCadExtComissao.cdsConsulta.Filtered := False;
  Action := Cafree;
end;

procedure TfRelExtComissao.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel1.Caption := vTitulo_Rel;
  if trim(vFilial_Nome) <> '' then
    RLLabel2.Caption := 'Empresa: ' + vFilial_Nome
  else
    RLLabel2.Caption := 'Empresa: Todas';
  RLLabel20.Visible := (fDMCadExtComissao.qParametros_ComMOSTRAR_PED.AsString = 'S');
  RLDBMemo1.Visible := (fDMCadExtComissao.qParametros_ComMOSTRAR_PED.AsString = 'S');
  if fDMCadExtComissao.qParametros_ComMOSTRAR_PED.AsString = 'S' then
    RLDBText17.Width := 217
  else
    RLDBText17.Width := 300;
end;

procedure TfRelExtComissao.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  fDMCadExtComissao.cdsConsulta.Filtered := False;
  fDMCadExtComissao.cdsConsulta.Filter   :=  'ID_VENDEDOR = ' + QuotedStr(fDMCadExtComissao.mImp_ReduzidoID_Vendedor.AsString);
  fDMCadExtComissao.cdsConsulta.Filtered := True;
end;

procedure TfRelExtComissao.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadExtComissao);
end;

procedure TfRelExtComissao.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Nota;
end;

procedure TfRelExtComissao.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Nota;
end;

procedure TfRelExtComissao.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLBand5.PageBreaking := pbNone;
  if (vImp_Nota) and (vImp_Separar_Vend) then
    RLBand5.PageBreaking := pbAfterPrint;
end;

procedure TfRelExtComissao.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := ((trim(fDMCadExtComissao.cdsConsultaOBS.AsString) <> '') and (vImp_Nota));
end;

procedure TfRelExtComissao.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelExtComissao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
