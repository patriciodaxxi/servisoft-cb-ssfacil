unit USel_Balanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLstBox, RzChkLst, NxCollection;

type
  TfrmSel_Balanco = class(TForm)
    RzCheckList1: TRzCheckList;
    RzCheckList2: TRzCheckList;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vTipo_Pesquisa : String;

  end;

var
  frmSel_Balanco: TfrmSel_Balanco;

implementation

uses
  uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Balanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Balanco.FormShow(Sender: TObject);
begin
  RzCheckList1.Enabled := (vTipo_Pesquisa = 'S');
  RzCheckList2.Enabled := (vTipo_Pesquisa = 'P');
  vSelPesquisa         := '';
end;

procedure TfrmSel_Balanco.NxButton1Click(Sender: TObject);
begin
  vSelPesquisa := '';
  if vTipo_Pesquisa = 'P' then
  begin
    if RzCheckList2.ItemChecked[1] then
      vSelPesquisa := QuotedStr('P');
    if (RzCheckList2.ItemChecked[2]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('M')
    else
    if (RzCheckList2.ItemChecked[2]) then
      vSelPesquisa := QuotedStr('M');
    if (RzCheckList2.ItemChecked[3]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('C')
    else
    if (RzCheckList2.ItemChecked[3]) then
      vSelPesquisa := QuotedStr('C');
    if (RzCheckList2.ItemChecked[4]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('S')
    else
    if (RzCheckList2.ItemChecked[4]) then
      vSelPesquisa := QuotedStr('S');
    if (RzCheckList2.ItemChecked[5]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('I')
    else
    if (RzCheckList2.ItemChecked[5]) then
      vSelPesquisa := QuotedStr('I');
  end;

  if vTipo_Pesquisa = 'S' then
  begin
    if RzCheckList1.ItemChecked[1] then
      vSelPesquisa := QuotedStr('00');
    if (RzCheckList1.ItemChecked[2]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('01')
    else
    if (RzCheckList1.ItemChecked[2]) then
      vSelPesquisa := QuotedStr('01');
    if (RzCheckList1.ItemChecked[3]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('02')
    else
    if (RzCheckList1.ItemChecked[3]) then
      vSelPesquisa := QuotedStr('02');
    if (RzCheckList1.ItemChecked[4]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('03')
    else
    if (RzCheckList1.ItemChecked[4]) then
      vSelPesquisa := QuotedStr('03');
    if (RzCheckList1.ItemChecked[5]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('04')
    else
    if (RzCheckList1.ItemChecked[5]) then
      vSelPesquisa := QuotedStr('04');
    if (RzCheckList1.ItemChecked[6]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('05')
    else
    if (RzCheckList1.ItemChecked[6]) then
      vSelPesquisa := QuotedStr('05');
    if (RzCheckList1.ItemChecked[7]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('06')
    else
    if (RzCheckList1.ItemChecked[7]) then
      vSelPesquisa := QuotedStr('06');
    if (RzCheckList1.ItemChecked[8]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('07')
    else
    if (RzCheckList1.ItemChecked[8]) then
      vSelPesquisa := QuotedStr('07');
    if (RzCheckList1.ItemChecked[9]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('08')
    else
    if (RzCheckList1.ItemChecked[9]) then
      vSelPesquisa := QuotedStr('08');
    if (RzCheckList1.ItemChecked[10]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('10')
    else
    if (RzCheckList1.ItemChecked[10]) then
      vSelPesquisa := QuotedStr('10');
    if (RzCheckList1.ItemChecked[11]) and (vSelPesquisa <> '') then
      vSelPesquisa := vSelPesquisa + ',' + QuotedStr('99')
    else
    if (RzCheckList1.ItemChecked[11]) then
      vSelPesquisa := QuotedStr('99');
  end;

  if vSelPesquisa = '' then
  begin
    MessageDlg('*** Nãop foi selecionado nenhum tipo!', mtInformation, [mbOk], 0);
    exit;
  end
  else
    Close;
end;

procedure TfrmSel_Balanco.NxButton2Click(Sender: TObject);
begin
  Close;
end;

end.
