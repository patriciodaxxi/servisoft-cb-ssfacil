unit UConsMaterial_Nec_Rem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, RxLookup, StdCtrls, Mask, ToolEdit, UDMConsMaterial_Nec,
  Grids, DBGrids, SMDBGrid, DB, RzPanel;

type
  TfrmConsMaterial_Nec_Rem = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    btnConsultar: TNxButton;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    btnImprimir: TNxButton;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsMaterial_Nec: TDMConsMaterial_Nec;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsMaterial_Nec_Rem: TfrmConsMaterial_Nec_Rem;

implementation

uses rsDBUtils, uUtilPadrao;


{$R *.dfm}

procedure TfrmConsMaterial_Nec_Rem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMaterial_Nec_Rem.FormShow(Sender: TObject);
begin
  fDMConsMaterial_Nec := TDMConsMaterial_Nec.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsMaterial_Nec);
  if fDMConsMaterial_Nec.qParametros_LoteUSA_REMESSA.AsString = 'S' then
    Label3.Caption := 'Nº OP:';
end;

procedure TfrmConsMaterial_Nec_Rem.btnConsultarClick(Sender: TObject);
begin
  if trim(Edit1.Text) = '' then
  begin
    MessageDlg('*** Remessa não foi informada!',mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmConsMaterial_Nec_Rem.prc_Consultar;
var
  vAux : String;
begin
  fDMConsMaterial_Nec.cdsMaterial_Rem.Close;
  if fDMConsMaterial_Nec.qParametros_LoteUSA_REMESSA.AsString = 'S' then
    fDMConsMaterial_Nec.sdsMaterial_Rem.ParamByName('NUM_REMESSA').AsString := Edit1.Text
  else
  begin
    vAux := Monta_Numero(Edit1.Text,1);
    fDMConsMaterial_Nec.sdsMaterial_Rem.ParamByName('NUM_ORDEM').AsInteger := StrToInt(Edit1.Text);
  end;
  fDMConsMaterial_Nec.cdsMaterial_Rem.Open;
end;

procedure TfrmConsMaterial_Nec_Rem.btnImprimirClick(Sender: TObject);
var
  vOpcaoImp : String;
  vArq : String;
begin
  if not(fDMConsMaterial_Nec.cdsMaterial_Rem.Active) or (fDMConsMaterial_Nec.cdsMaterial_Rem.IsEmpty) then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Material_Rem.fr3';
  if FileExists(vArq) then
    fDMConsMaterial_Nec.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;

  vOpcaoImp := '';
  //if RxDBLookupCombo1.Text <> '' then
  //  vOpcaoImp := vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ' )';
  vOpcaoImp := vOpcaoImp + 'Remessa: ' + Edit1.Text; 
  fDMConsMaterial_Nec.frxReport1.variables['OpcaoImp'] := QuotedStr(vOpcaoImp);
  fDMConsMaterial_Nec.frxReport1.ShowReport;
end;

end.
