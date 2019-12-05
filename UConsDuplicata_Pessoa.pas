unit UConsDuplicata_Pessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLstBox, RzChkLst, NxEdit, NxCollection, ExtCtrls,
  RxLookup, UDMConsDuplicata, Grids, DBGrids, SMDBGrid;

type
  TfrmConsDuplicata_Pessoa = class(TForm)
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxDatePicker3: TNxDatePicker;
    NxDatePicker4: TNxDatePicker;
    Panel3: TPanel;
    RadioGroup2: TRadioGroup;
    Label48: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsDuplicata: TDMConsDuplicata;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsDuplicata_Pessoa: TfrmConsDuplicata_Pessoa;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsDuplicata_Pessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsDuplicata_Pessoa.FormShow(Sender: TObject);
begin
  fDMConsDuplicata := TDMConsDuplicata.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsDuplicata);
  //23/11/2015
  if (fDMConsDuplicata.qParametros_FinCONTROLAR_DUP_USUARIO.AsString = 'S') then
  begin
    if (fDMConsDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'R') or (fDMConsDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'A')  then
      RadioGroup2.ItemIndex := 0
    else if fDMConsDuplicata.qParametros_UsuarioMOSTRAR_DUP_REC_PAG.AsString = 'P' then
      RadioGroup2.ItemIndex := 1
    else
      RadioGroup2.ItemIndex := -1;
    if RadioGroup2.ItemIndex < 2 then
      RadioGroup2.Enabled := False;
  end
  else
    RadioGroup2.Enabled := True;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
  NxDatePicker3.Clear;
  NxDatePicker4.Clear;
end;

procedure TfrmConsDuplicata_Pessoa.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsDuplicata_Pessoa.prc_Consultar;
var
  vComando : String;
begin
  fDMConsDuplicata.cdsSaldo_Pessoa.Close;
  vComando := 'select sum(DUP.vlr_restante) VLR_RESTANTE, DUP.id_pessoa, p.nome nome_pessoa, '
            + 'SUM(DUP.vlr_parcela) VLR_PARCELA, SUM(DUP.vlr_pago) VLR_PAGO '
            + 'from duplicata DUP '
            + 'inner join pessoa p on DUP.id_pessoa = p.codigo ';
  case RadioGroup2.ItemIndex of
    0: vComando := vComando + ' WHERE ((DUP.TIPO_ES = ' + QuotedStr('E') + ') OR (DUP.TIPO_MOV = ' + QuotedStr('H') + '))';
    1: vComando := vComando + ' WHERE DUP.TIPO_ES = ' + QuotedStr('S');
  end;
  case RadioGroup1.ItemIndex of
    0: vComando := vComando + ' AND DUP.VLR_RESTANTE > 0 ';
    1: vComando := vComando + ' AND DUP.VLR_RESTANTE <= 0 ';
  end;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo10.Text <> '' then
    vComando := vComando + ' AND DUP.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo10.KeyValue);

  if NxDatePicker1.Text <> '' then
    vComando := vComando + ' AND DUP.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker1.date));
  if NxDatePicker2.Text <> '' then
    vComando := vComando + ' AND DUP.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker2.date));
  if NxDatePicker3.Text <> '' then
    vComando := vComando + ' AND DUP.DTVENCIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker3.date));
  if NxDatePicker4.Text <> '' then
    vComando := vComando + ' AND DUP.DTVENCIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker4.date));
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND P.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  fDMConsDuplicata.sdsSaldo_Pessoa.CommandText := vComando + 'GROUP BY d.id_pessoa, p.nome';
  fDMConsDuplicata.cdsSaldo_Pessoa.Open;
end;

end.
