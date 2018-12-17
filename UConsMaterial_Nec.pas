unit UConsMaterial_Nec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, RxLookup, StdCtrls, Mask, ToolEdit, UDMConsMaterial_Nec,
  Grids, DBGrids, SMDBGrid, DB, RzPanel;

type
  TfrmConsMaterial_Nec = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    btnImprimir: TNxButton;
    Label6: TLabel;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    gbxVendedor: TRzGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    fDMConsMaterial_Nec: TDMConsMaterial_Nec;

    procedure prc_Consultar;
    procedure prc_Saldoprod;

  public
    { Public declarations }
  end;

var
  frmConsMaterial_Nec: TfrmConsMaterial_Nec;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfrmConsMaterial_Nec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMaterial_Nec.FormShow(Sender: TObject);
begin
  fDMConsMaterial_Nec := TDMConsMaterial_Nec.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsMaterial_Nec);
end;

procedure TfrmConsMaterial_Nec.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** Data Inicial e Final da Remessa são obrigatórias!',mtError, [mbOk], 0);
    exit;
  end;
  if (DateEdit3.Date <= 10) or (DateEdit4.Date <= 10) then
  begin
    MessageDlg('*** Data Inicial e Final do Pedido são obrigatórias!',mtError, [mbOk], 0);
    exit;
  end;

  fDMConsMaterial_Nec.cdsMaterial_Nec.IndexFieldNames := '';
  prc_Consultar;
  fDMConsMaterial_Nec.cdsMaterial_Nec.IndexFieldNames := 'MATERIAL;NOME_COR';
  prc_Saldoprod;

  Label10.Caption := FormatFloat('###,##0',fDMConsMaterial_Nec.qSaldoProdQTD_REMESSA.AsFloat);
  Label11.Caption := FormatFloat('###,##0',fDMConsMaterial_Nec.qSaldoProdQTD_PEDIDO.AsFloat);
end;

procedure TfrmConsMaterial_Nec.prc_Consultar;
var
  vComando : String;
  i : Integer;
begin
  vComando := fDMConsMaterial_Nec.ctMaterial_Nec;
  if fDMConsMaterial_Nec.qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S' then
    vComando := fDMConsMaterial_Nec.ctMaterial_Nec_CombMat;

  if RxDBLookupCombo1.Text <> '' then
  begin
    i := pos('/*1*/',vComando);
    vComando := copy(vComando,1,i-1) + ' AND POC.FILIAL = :FILIAL ' + copy(vComando,i+5,Length(vComando) - (i +4));

    i := pos('/*2*/',vComando);
    vComando := copy(vComando,1,i-1) + ' AND V.FILIAL = :FILIAL ' + copy(vComando,i+5,Length(vComando) - (i +4));
  end;
  fDMConsMaterial_Nec.cdsMaterial_Nec.Close;
  fDMConsMaterial_Nec.sdsMaterial_Nec.CommandText := vComando;
  if RxDBLookupCombo1.Text <> '' then
    fDMConsMaterial_Nec.sdsMaterial_Nec.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMConsMaterial_Nec.sdsMaterial_Nec.ParamByName('DTREMESSA1').AsDate := DateEdit1.Date;
  fDMConsMaterial_Nec.sdsMaterial_Nec.ParamByName('DTREMESSA2').AsDate := DateEdit2.Date;
  fDMConsMaterial_Nec.sdsMaterial_Nec.ParamByName('DTPEDIDO1').AsDate  := DateEdit3.Date;
  fDMConsMaterial_Nec.sdsMaterial_Nec.ParamByName('DTPEDIDO2').AsDate  := DateEdit4.Date;
  fDMConsMaterial_Nec.cdsMaterial_Nec.Open;
end;

procedure TfrmConsMaterial_Nec.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMConsMaterial_Nec.cdsMaterial_Nec.Active) or (fDMConsMaterial_Nec.cdsMaterial_Nec.IsEmpty) then
    exit;
  if StrToFloat(FormatFloat('0.00',fDMConsMaterial_Nec.cdsMaterial_NecQTD_SALDO.AsFloat)) <= StrToFloat(FormatFloat('0',0)) then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end
  else
  if StrToFloat(FormatFloat('0.00',fDMConsMaterial_Nec.cdsMaterial_NecQTD_SALDO.AsFloat)) <= StrToFloat(FormatFloat('0.00000',fDMConsMaterial_Nec.cdsMaterial_NecQTD_ESTOQUE_MIN.AsFloat)) then
  begin
    Background  := $008AB0FF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsMaterial_Nec.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsMaterial_Nec.cdsMaterial_Nec.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsMaterial_Nec.btnImprimirClick(Sender: TObject);
var
  vOpcaoImp : String;
  vArq : String;
begin
  if not(fDMConsMaterial_Nec.cdsMaterial_Nec.Active) or (fDMConsMaterial_Nec.cdsMaterial_Nec.IsEmpty) then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Material_Nec.fr3';
  if FileExists(vArq) then
    fDMConsMaterial_Nec.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;

  vOpcaoImp := '';
  if RxDBLookupCombo1.Text <> '' then
    vOpcaoImp := vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ' )';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
     vOpcaoImp := vOpcaoImp + ' (Remessas: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ' )';
  if (DateEdit3.Date > 10) and (DateEdit4.Date > 10) then
     vOpcaoImp := vOpcaoImp + ' (Pedidos: ' + DateEdit3.Text + ' a ' + DateEdit4.Text + ' )';
  vOpcaoImp := vOpcaoImp + ' (Qtd.Produto.Remessa: ' + Label10.Caption + ') ';
  vOpcaoImp := vOpcaoImp + ' (Qtd.Produto.Pedido: ' + Label11.Caption + ') ';

  fDMConsMaterial_Nec.frxReport1.variables['OpcaoImp'] := QuotedStr(vOpcaoImp);
  fDMConsMaterial_Nec.frxReport1.ShowReport;
end;

procedure TfrmConsMaterial_Nec.prc_Saldoprod;
var
  vComando : String;
begin
  vComando := fDMConsMaterial_Nec.ctqSaldoProd;
  if trim(RxDBLookupCombo1.Text) <> '' then
    vComando := vComando + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMConsMaterial_Nec.qSaldoProd.SQL.Text := vComando;
  fDMConsMaterial_Nec.qSaldoProd.ParamByName('DTREMESSA1').AsDate := DateEdit1.Date;
  fDMConsMaterial_Nec.qSaldoProd.ParamByName('DTREMESSA2').AsDate := DateEdit2.Date;
  fDMConsMaterial_Nec.qSaldoProd.ParamByName('DTPEDIDO1').AsDate  := DateEdit3.Date;
  fDMConsMaterial_Nec.qSaldoProd.ParamByName('DTPEDIDO2').AsDate  := DateEdit4.Date;
  fDMConsMaterial_Nec.qSaldoProd.Open;
end;

procedure TfrmConsMaterial_Nec.DateEdit1Exit(Sender: TObject);
begin
  if (DateEdit3.Date <= 10) and (DateEdit1.Date > 10) then
    DateEdit3.Date := DateEdit1.Date;
end;

procedure TfrmConsMaterial_Nec.DateEdit2Exit(Sender: TObject);
begin
  if (DateEdit4.Date <= 10) and (DateEdit2.Date > 10) then
    DateEdit4.Date := DateEdit2.Date;
end;

end.
