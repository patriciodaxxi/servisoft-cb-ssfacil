unit UConsSaldo_FormaPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadFinanceiro,
  StdCtrls, Buttons, Mask, RxDBComb, CurrEdit, Grids, SMDBGrid, DBGrids,
  ToolEdit, RxLookup;

type
  TfrmConsSaldo_FormaPagto = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label15: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label18: TLabel;
    DateEdit1: TDateEdit;
    Label26: TLabel;
    DateEdit2: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadFinanceiro : TDMCadFinanceiro;

  public
    { Public declarations }

  end;

var
  frmConsSaldo_FormaPagto: TfrmConsSaldo_FormaPagto;

implementation

uses rsDBUtils, uUtilPadrao, UDMUtil, DmdDatabase;

{$R *.dfm}

procedure TfrmConsSaldo_FormaPagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadFinanceiro.cdsSaldo_FPgto.Close;
  Action := Cafree;
end;

procedure TfrmConsSaldo_FormaPagto.FormShow(Sender: TObject);
begin
  fDMCadFinanceiro := TDMCadFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFinanceiro);
  fDMCadFinanceiro.cdsSaldo_FPgto.Close;
end;

procedure TfrmConsSaldo_FormaPagto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;


procedure TfrmConsSaldo_FormaPagto.BitBtn1Click(Sender: TObject);
begin
  fDMCadFinanceiro.cdsSaldo_FPgto.Close;
  fDMCadFinanceiro.sdsSaldo_FPgto.CommandText := 'SELECT SUM(F.VLR_ENTRADA) VLR_ENTRADA, SUM(F.VLR_SAIDA) VLR_SAIDA, '
                                               + '(SUM(F.VLR_ENTRADA) - SUM(F.VLR_SAIDA)) VLR_SALDO, TC.NOME NOME_FORMAPGTO, F.ID_FORMA_PAGAMENTO '
                                               + 'FROM FINANCEIRO F '
                                               + 'LEFT JOIN TIPOCOBRANCA TC '
                                               + 'ON F.ID_FORMA_PAGAMENTO = TC.ID '
                                               + 'WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    fDMCadFinanceiro.sdsSaldo_FPgto.CommandText := fDMCadFinanceiro.sdsSaldo_FPgto.CommandText
                                                 + ' AND F.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if DateEdit1.Date > 10 then
    fDMCadFinanceiro.sdsSaldo_FPgto.CommandText := fDMCadFinanceiro.sdsSaldo_FPgto.CommandText
                        + ' AND F.DTMOVIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadFinanceiro.sdsSaldo_FPgto.CommandText := fDMCadFinanceiro.sdsSaldo_FPgto.CommandText
                        + ' AND F.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

  fDMCadFinanceiro.sdsSaldo_FPgto.CommandText := fDMCadFinanceiro.sdsSaldo_FPgto.CommandText
                                               + ' GROUP BY TC.NOME, F.ID_FORMA_PAGAMENTO ';
  fDMCadFinanceiro.cdsSaldo_FPgto.Open;
end;

end.
