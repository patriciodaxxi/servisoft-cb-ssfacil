unit UCadTabPreco_Copia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolEdit, RXDBCtrl, RzPanel, StdCtrls, Mask, CurrEdit,
  Buttons, DateUtils, UDMCadTab_Preco, UDMCopiaTabPreco, NxEdit, ComCtrls;

type
  TfrmCadTabPreco_Copia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    gbxVigencia: TRzGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    edtCorrecao: TCurrencyEdit;
    lblReajuste: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    vPercentual_Reajuste : Real;
    procedure prc_Abrir_Tab_Preco(ID : Integer);
    procedure prc_Copiar_Tab_Preco;
    procedure prc_Copiar_Tab_Preco_Item;
  public
    fDMCadTab_Preco: TDMCadTab_Preco;
    fDMCopiaCadPreco : TDMCopiaTabPreco;
    vNum_Lista_Preco : Integer;
    vData_Inicial, vData_Final : TDate;
    { Public declarations }
  end;

var
  frmCadTabPreco_Copia: TfrmCadTabPreco_Copia;

implementation

uses DB, Math;



{$R *.dfm}

procedure TfrmCadTabPreco_Copia.FormCreate(Sender: TObject);
begin
  fDMCopiaCadPreco := TDMCopiaTabPreco.Create(Self);
end;

procedure TfrmCadTabPreco_Copia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCadTabPreco_Copia.FormShow(Sender: TObject);
begin
  fDMCadTab_Preco.Tag := 0;
  CurrencyEdit1.AsInteger := vNum_Lista_Preco;
  NxDatePicker1.Date      := vData_Inicial;
  NxDatePicker2.Date      := vData_Final;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;

end;

procedure TfrmCadTabPreco_Copia.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    lblReajuste.Caption := 'Percentual Acréscimo:';
    edtCorrecao.Enabled := True;
  end;
  if RadioGroup1.ItemIndex = 1 then
  begin
    lblReajuste.Caption := 'Percentual Desconto';
    edtCorrecao.Enabled := True;
  end;
  if RadioGroup1.ItemIndex = 2 then
  begin
    lblReajuste.Caption := 'Sem Reajuste';
    edtCorrecao.Enabled := False;
  end;
end;

procedure TfrmCadTabPreco_Copia.BitBtn2Click(Sender: TObject);
begin
  fDMCadTab_Preco.Tag := 0;
  Close;
end;

procedure TfrmCadTabPreco_Copia.prc_Abrir_Tab_Preco(ID: Integer);
begin
  fDMCopiaCadPreco.cdsTab_Preco.Close;
  fDMCopiaCadPreco.sdsTab_Preco.ParamByName('ID').AsInteger := ID;
  fDMCopiaCadPreco.cdsTab_Preco.Open;

  fDMCopiaCadPreco.cdsTab_Preco_Itens.Close;
  fDMCopiaCadPreco.cdsTab_Preco_Itens.Open;
end;

procedure TfrmCadTabPreco_Copia.BitBtn1Click(Sender: TObject);
begin
  if fDMCadTab_Preco.cdsTab_Preco.IsEmpty then
  begin
    MessageDlg('*** Lista de Preço não encontrada!', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Abrir_Tab_Preco(CurrencyEdit1.AsInteger);
  if fDMCopiaCadPreco.cdsTab_Preco.IsEmpty then
  begin
    MessageDlg('*** Lista de Preço não encontrada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vPercentual_Reajuste := 0;
  if (RadioGroup1.ItemIndex = 0) then
    vPercentual_Reajuste := edtCorrecao.Value;
  if (RadioGroup1.ItemIndex = 1) then
    vPercentual_Reajuste := edtCorrecao.Value * -1;
  fDMCadTab_Preco.Tag := 1;
  prc_Copiar_Tab_Preco;
  prc_Copiar_Tab_Preco_Item;
  Close;
end;

procedure TfrmCadTabPreco_Copia.prc_Copiar_Tab_Preco;
var
  i : Integer;
begin
  fDMCadTab_Preco.prc_Inserir;
  for i := 0 to ( fDMCopiaCadPreco.cdsTab_Preco.FieldCount - 1) do
  begin
    if (fDMCopiaCadPreco.cdsTab_Preco.Fields[i].FieldName <> 'ID') then
      fDMCadTab_Preco.cdsTab_Preco.FieldByName(fDMCopiaCadPreco.cdsTab_Preco.Fields[i].FieldName).AsVariant := fDMCopiaCadPreco.cdsTab_Preco.Fields[i].Value;
  end;
end;

procedure TfrmCadTabPreco_Copia.prc_Copiar_Tab_Preco_Item;
var
  i : Integer;
  vAux : Real;
  vAux2 : Real;
  vAux3 : Real;
begin
  ProgressBar1.Max      := fDMCopiaCadPreco.cdsTab_Preco_Itens.RecordCount;
  ProgressBar1.Position := 0;
  fDMCopiaCadPreco.cdsTab_Preco_Itens.First;
  while not fDMCopiaCadPreco.cdsTab_Preco_Itens.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    fDMCadTab_Preco.prc_Inserir_Itens;
    for i := 0 to ( fDMCopiaCadPreco.cdsTab_Preco_Itens.FieldCount - 1) do
    begin
      if (fDMCopiaCadPreco.cdsTab_Preco_Itens.Fields[i].FieldName <> 'ID') then
        fDMCadTab_Preco.cdsTab_Preco_Itens.FieldByName(fDMCopiaCadPreco.cdsTab_Preco_Itens.Fields[i].FieldName).AsVariant := fDMCopiaCadPreco.cdsTab_Preco_Itens.Fields[i].Value;
    end;
    if vPercentual_Reajuste <> 0 then
    begin
      vAux := fDMCopiaCadPreco.cdsTab_Preco_ItensVLR_VENDA.AsFloat  + (fDMCopiaCadPreco.cdsTab_Preco_ItensVLR_VENDA.AsFloat * vPercentual_Reajuste / 100);
      if fDMCadTab_Preco.qParametros_FinARREDONDA_PRECO_TAB.AsString = 'S' then
        vAux := StrToCurr(FormatCurr('0',vAux));
      fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat := vAux;
    end;

    fDMCadTab_Preco.cdsTab_Preco_Itens.Post;
    fDMCopiaCadPreco.cdsTab_Preco_Itens.Next;
  end;
end;

end.
