unit UCadNotaFiscal_Reboque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Grids, DBGrids, SMDBGrid;

type
  TfrmCadNotaFiscal_Reboque = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    SMDBGrid1: TSMDBGrid;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }

    procedure prc_Limpar_Variaveis;

    function fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

  end;

var
  frmCadNotaFiscal_Reboque: TfrmCadNotaFiscal_Reboque;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Reboque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Reboque.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Reboque.BitBtn1Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  try
    fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ReboqueITEM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_ReboqueID.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ReboqueITEM.AsInteger := vItemAux + 1;
    fDMCadNotaFiscal.cdsNotaFiscal_ReboquePLACA.AsString := Edit1.Text;
    fDMCadNotaFiscal.cdsNotaFiscal_ReboqueRNTC.AsString  := Edit2.Text;
    fDMCadNotaFiscal.cdsNotaFiscal_ReboqueUF.AsString    := RxDBLookupCombo3.Text;
    fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Post;

    prc_Limpar_Variaveis;
    RxDBLookupCombo3.SetFocus;

  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

function TfrmCadNotaFiscal_Reboque.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := False;
  vMsgErro := '';
  if RxDBLookupCombo3.Text = '' then
    vMsgErro := vMsgErro + #13 + '*** UF não informada!';
  if trim(Edit1.Text) = '' then
    vMsgErro := vMsgErro + #13 + '*** Placa não informada!';
  if trim(Edit2.Text) = '' then
    vMsgErro := vMsgErro + #13 + '*** RNTC não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := True;
end;

procedure TfrmCadNotaFiscal_Reboque.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_Reboque.prc_Limpar_Variaveis;
begin
  Edit1.Clear;
  Edit2.Clear;
  RxDBLookupCombo3.ClearValue;
end;

procedure TfrmCadNotaFiscal_Reboque.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Delete;
end;

end.
