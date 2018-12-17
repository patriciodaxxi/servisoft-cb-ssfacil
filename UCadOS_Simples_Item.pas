unit UCadOS_Simples_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls,
  StdCtrls, Mask, DBCtrls, Buttons, DB, RxLookup;

type
  TfrmCadOS_Simples_Item = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    vExecutando: Boolean;
  end;

var
  frmCadOS_Simples_Item: TfrmCadOS_Simples_Item;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadOS_Simples_Item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Simples.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOS_Simples_Item.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadOrdemServico);
end;

procedure TfrmCadOS_Simples_Item.BitBtn1Click(Sender: TObject);
begin
  fDMCadOrdemServico.vMsgOS := '';
  if fDMCadOrdemServico.cdsOrdemServico_SimplesID_SERVICO.IsNull then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Serviço não selecionado!';

  if fDMCadOrdemServico.cdsOrdemServicoTP_ORCAMENTO.AsString = '1' then
  begin
    if fDMCadOrdemServico.cdsOrdemServico_SimplesQTD.IsNull then
      fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Quantidade não preenchida!';
    if fDMCadOrdemServico.cdsOrdemServico_SimplesVLR_TOTAL.IsNull then
      fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Valor total não preenchido!';
  end;

  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    Exit;
  end;
  try
    fDMCadOrdemServico.cdsOrdemServico_Simples.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadOS_Simples_Item.BitBtn2Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_Simples.Cancel;

  Close;
end;

procedure TfrmCadOS_Simples_Item.DBEdit4Exit(Sender: TObject);
begin
  if (DBEdit1.Text <> '') and (DBEdit4.Text <> '') then
    fDMCadOrdemServico.cdsOrdemServico_SimplesVLR_TOTAL.AsCurrency := fDMCadOrdemServico.cdsOrdemServico_SimplesQTD.AsCurrency *
                                                                      fDMCadOrdemServico.cdsOrdemServico_SimplesVLR_UNITARIO.AsCurrency; 
end;

procedure TfrmCadOS_Simples_Item.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsServico_IntVLR_UNITARIO.AsCurrency > 0 then
    fDMCadOrdemServico.cdsOrdemServico_SimplesVLR_UNITARIO.AsCurrency := fDMCadOrdemServico.cdsServico_IntVLR_UNITARIO.AsCurrency;
end;

procedure TfrmCadOS_Simples_Item.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadOrdemServico.cdsServico_Int.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOS_Simples_Item.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDMCadOrdemServico.cdsServico_Int.Close;
    fDMCadOrdemServico.cdsServico_Int.Open;
  end;
end;

end.
