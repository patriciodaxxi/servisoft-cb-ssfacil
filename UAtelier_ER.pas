unit UAtelier_ER;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMCadAtelier_Mov, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  dbXPress, CurrEdit, DBCtrls;

type
  TfrmAtelier_ER = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit3: TDateEdit;
    Label9: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label7: TLabel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    btnConfBaixa: TBitBtn;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    Label8: TLabel;
    DBText5: TDBText;
    Label10: TLabel;
    DBText6: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadAtelier_Mov: TDMCadAtelier_Mov;

  end;

var
  frmAtelier_ER: TfrmAtelier_ER;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, UConsAtelier_Mov ;

{$R *.dfm}

procedure TfrmAtelier_ER.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAtelier_ER.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadAtelier_Mov);

  DateEdit1.Visible := ((fDMCadAtelier_Mov.vTipo_ER = 'E') or (fDMCadAtelier_Mov.vOpcao = 'I'));
  Label5.Visible    := ((fDMCadAtelier_Mov.vTipo_ER = 'E') or (fDMCadAtelier_Mov.vOpcao = 'I'));
  DateEdit3.Visible := ((fDMCadAtelier_Mov.vTipo_ER = 'R') or (fDMCadAtelier_Mov.vOpcao = 'I'));
  Label7.Visible    := ((fDMCadAtelier_Mov.vTipo_ER = 'R') or (fDMCadAtelier_Mov.vOpcao = 'I'));

  Label1.Visible        := (fDMCadAtelier_Mov.vOpcao = 'I');
  CurrencyEdit1.Visible := (fDMCadAtelier_Mov.vOpcao = 'I');
  Panel3.Visible        := (fDMCadAtelier_Mov.vOpcao = 'I');
  if fDMCadAtelier_Mov.vID_Atelier > 0 then
    RxDBLookupCombo3.KeyValue := fDMCadAtelier_Mov.vID_Atelier;
end;

procedure TfrmAtelier_ER.btnConfBaixaClick(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    fDMCadAtelier_Mov.vID_Atelier := RxDBLookupCombo3.KeyValue;
  fDMCadAtelier_Mov.vDtEnvio     := DateEdit1.Date;
  fDMCadAtelier_Mov.vDtRetorno   := DateEdit3.Date;
  fDMCadAtelier_Mov.vVlrUnitario := CurrencyEdit1.Value;
  fDMCadAtelier_Mov.vCancelar    := False;

  if fDMCadAtelier_Mov.vOpcao <> 'I' then
  begin
    if (fDMCadAtelier_Mov.vTipo_ER = 'E') and (DateEdit1.Date < 10) then
    begin
      MessageDlg('Data de envio não foi informada!', mtError, [mbOk], 0);
      exit;
    end;
    if (fDMCadAtelier_Mov.vTipo_ER = 'R') and (DateEdit3.Date < 10) then
    begin
      MessageDlg('Data de retorno não foi informada!', mtError, [mbOk], 0);
      exit;
    end;
  end;
  Close;
end;

procedure TfrmAtelier_ER.BitBtn1Click(Sender: TObject);
begin
  fDMCadAtelier_Mov.vCancelar := True;
  Close;
end;

end.
