unit uCupomFiscalCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, Buttons, ExtCtrls, DB,  
  UDMCupomFiscal, rsDBUtils, Mask, Grids, ValEdit, FMTBcd, SqlExpr, ToolEdit, CurrEdit, NxCollection;

type
  TfCupomFiscalCli = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    ValueListEditor1: TValueListEditor;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn4: TBitBtn;
    btConfirmar: TNxButton;
    brCancelar: TNxButton;
    NxButton1: TNxButton;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ValueListEditor1DblClick(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure ValueListEditor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure brCancelarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    vCancelar: Boolean;
    vPessoa: String;
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  fCupomFiscalCli: TfCupomFiscalCli;

implementation

uses uCupomFiscalC, uUtilPadrao, UConsPessoa_Fin, DmdDatabase;

{$R *.dfm}

procedure TfCupomFiscalCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomFiscalCli.FormShow(Sender: TObject);
begin
  vCancelar := False;
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  fDmCupomFiscal.cdsPessoa.Open;
  if not fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.IsNull then
    CurrencyEdit1.Value := fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger;
end;

procedure TfCupomFiscalCli.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := (fDmCupomFiscal.vClienteId > 0) or vCancelar;
  if (not CanClose) then
    ShowMessage('É obrigatório informar o cliente!');
end;

procedure TfCupomFiscalCli.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'Nome';
end;

procedure TfCupomFiscalCli.MaskEdit1Exit(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: if (MaskEdit1.Text <> '   .   .   -  ') and (not ValidaCPF(MaskEdit1.Text)) then
       begin
         ShowMessage('CPF incorreto!');
         MaskEdit1.SetFocus;
         Exit;
       end;
    1: if (MaskEdit1.Text <> '  .   .   /    -  ') and (not ValidaCNPJ(MaskEdit1.Text)) then
       begin
         ShowMessage('CNPJ incorreto!');
         MaskEdit1.SetFocus;
         Exit;
       end;
  end;
  fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CNPJ_CPF';
  if ((MaskEdit1.Text <> '000.000.000-00') and (MaskEdit1.Text <> '00.000.000/0000-00')) and (fDmCupomFiscal.cdsPessoa.FindKey([MaskEdit1.Text])) then
  begin
    CurrencyEdit1.Value := fDmCupomFiscal.cdsPessoaCODIGO.AsInteger;
    CurrencyEdit1Exit(Sender);
  end
  else
    ShowMessage('CPF/CNPJ não localizado!');
end;

procedure TfCupomFiscalCli.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    BitBtn4Click(Sender);
  end;
end;

procedure TfCupomFiscalCli.ValueListEditor1DblClick(Sender: TObject);
begin
  CurrencyEdit1.AsInteger := StrToInt(ValueListEditor1.Strings.Names[ValueListEditor1.Row - 1]);
  CurrencyEdit1Exit(Sender);
end;

procedure TfCupomFiscalCli.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
  begin
    fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CODIGO';
    fDmCupomFiscal.cdsPessoa.FindKey([CurrencyEdit1.AsInteger]);
    Edit1.Text     := fDmCupomFiscal.cdsPessoaNOME.AsString;
    if fDmCupomFiscal.cdsPessoaPESSOA.AsString = 'F' then
      ComboBox1.ItemIndex := 0
    else
      ComboBox1.ItemIndex := 1;
    ComboBox1Change(Sender);
    MaskEdit1.Text := fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString;
    fDmCupomFiscal.vClienteID := CurrencyEdit1.AsInteger;
  end;
end;

procedure TfCupomFiscalCli.ValueListEditor1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    CurrencyEdit1.AsInteger := StrToInt(ValueListEditor1.Strings.Names[ValueListEditor1.Row - 1]);
    CurrencyEdit1Exit(Sender);
  end;
end;

procedure TfCupomFiscalCli.CurrencyEdit1Enter(Sender: TObject);
begin
  CurrencyEdit1.SelectAll;
end;

procedure TfCupomFiscalCli.BitBtn4Click(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if trim(Edit1.Text) = '' then
  begin
    ValueListEditor1.Strings.Clear;
    Exit;
  end;
  ValueListEditor1.BringToFront;
  ValueListEditor1.Visible := True;
  ValueListEditor1.Strings.Clear;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT CODIGO, NOME FROM PESSOA ';
    sds.CommandText   := sds.CommandText + 'WHERE NOME LIKE ''%' + Edit1.Text + '%'' ';
    sds.CommandText   := sds.CommandText + 'ORDER BY NOME';
    sds.Open;
    while not sds.Eof do
    begin
      ValueListEditor1.InsertRow(sds.FieldByName('CODIGO').AsString,sds.FieldByName('NOME').AsString,True);
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;

  ValueListEditor1.SetFocus;
end;

procedure TfCupomFiscalCli.btConfirmarClick(Sender: TObject);
begin
  fDmCupomFiscal.vClienteId := CurrencyEdit1.AsInteger;
  Close;
end;

procedure TfCupomFiscalCli.brCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfCupomFiscalCli.NxButton1Click(Sender: TObject);
begin
  frmConsPessoa_Fin := TfrmConsPessoa_Fin.Create(self);
  frmConsPessoa_Fin.vID_Pessoa_Cons := fDmCupomFiscal.cdsPessoaCODIGO.AsInteger;
  frmConsPessoa_Fin.Label2.Caption  := fDmCupomFiscal.cdsPessoaNOME.AsString;
  frmConsPessoa_Fin.ShowModal;
end;

procedure TfCupomFiscalCli.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: begin
         MaskEdit1.EditMask := '000.000.000-00';
         MaskEdit1.Text := '   .   .   -  ';
       end;
    1: begin
         MaskEdit1.EditMask := '00.000.000/0000-00';
         MaskEdit1.Text := '  .   .   /    -  ';
       end;
  end;
end;

end.
