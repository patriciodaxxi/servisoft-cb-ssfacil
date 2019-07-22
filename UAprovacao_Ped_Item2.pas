unit UAprovacao_Ped_Item2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMAprovacao_Ped, StdCtrls, ExtCtrls, Mask, ToolEdit,
  NxCollection, dbXPress, SqlExpr;

type
  TfrmAprovacao_Ped_Item2 = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Labe5: TLabel;
    Label6: TLabel;
    lblFuncionario: TLabel;
    lblUsuario: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMAprovacao_Ped: TDMAprovacao_Ped;
    
  end;

var
  frmAprovacao_Ped_Item2: TfrmAprovacao_Ped_Item2;

implementation

uses rsDBUtils, DB, DmdDatabase;

{$R *.dfm}

procedure TfrmAprovacao_Ped_Item2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAprovacao_Ped_Item2.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMAprovacao_Ped);
  lblFuncionario.Caption := fDMAprovacao_Ped.qFuncionarioNOME.AsString;
end;

procedure TfrmAprovacao_Ped_Item2.NxButton1Click(Sender: TObject);
var
  vItem : Integer;
  vTipo : String;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  if RadioGroup1.ItemIndex < 0 then
  begin
    MessageDlg('*** Opção (Aprovado/Não Aprovado)!', mtError, [mbOk], 0);
    exit;
  end;
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data não informada !', mtError, [mbOk], 0);
    exit;
  end;
  if (RadioGroup1.ItemIndex = 1) and (trim(Edit1.Text) = '' ) then
  begin
    MessageDlg('*** Motivo não aprovado, não informado!', mtError, [mbOk], 0);
    exit;
  end;

  if (RadioGroup1.ItemIndex = 1) and (fDMAprovacao_Ped.cdsPedido_Item_Aprov.RecordCount > 0) then
  begin
    MessageDlg('*** Já existe registro de aprovado neste item, não pode ser reprovado!' + #13 +
               '    Para reprovar é preciso excluir a primeira aprovação!', mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try

    fDMAprovacao_Ped.cdsPedido_Item_Aprov.Last;
    vItem := fDMAprovacao_Ped.cdsPedido_Item_AprovITEM_APROV.AsInteger;

    fDMAprovacao_Ped.cdsPedido_Item_Aprov.Insert;
    fDMAprovacao_Ped.cdsPedido_Item_AprovID.AsInteger         := fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger;
    fDMAprovacao_Ped.cdsPedido_Item_AprovITEM.AsInteger       := fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger;
    fDMAprovacao_Ped.cdsPedido_Item_AprovITEM_APROV.AsInteger := vItem + 1;
    fDMAprovacao_Ped.cdsPedido_Item_AprovDATA.AsDateTime      := DateEdit1.Date;
    fDMAprovacao_Ped.cdsPedido_Item_AprovUSUARIO.AsString     := lblUsuario.Caption;
    fDMAprovacao_Ped.cdsPedido_Item_AprovDTUSUARIO.AsDateTime := Date;
    fDMAprovacao_Ped.cdsPedido_Item_AprovHRUSUARIO.AsDateTime := Now;
    fDMAprovacao_Ped.cdsPedido_Item_AprovID_FUNCIONARIO.AsInteger := fDMAprovacao_Ped.qFuncionarioCODIGO.AsInteger;
    fDMAprovacao_Ped.cdsPedido_Item_AprovMOTIVO_NAO_APROV.Clear;
    if RadioGroup1.ItemIndex = 0 then
    begin
      if fDMAprovacao_Ped.fnc_Verifica_Aprov(fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger,fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger,'1') then
        fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString := 'S'
      else
        fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString := '1';
    end
    else
    begin
      fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString         := 'N';
      fDMAprovacao_Ped.cdsPedido_Item_AprovMOTIVO_NAO_APROV.AsString := Edit1.Text;
    end;
    fDMAprovacao_Ped.cdsPedido_Item_AprovNOME_FUNCIONARIO.AsString := lblFuncionario.Caption;
    vTipo := fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString;
    fDMAprovacao_Ped.cdsPedido_Item_Aprov.Post;
    fDMAprovacao_Ped.cdsPedido_Item_Aprov.ApplyUpdates(0);

    fDMAprovacao_Ped.cdsPedido_Item.Edit;
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := vTipo;
    fDMAprovacao_Ped.cdsPedido_Item.Post;
    fDMAprovacao_Ped.cdsPedido_Item.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

  fDMAprovacao_Ped.sdsPrc_Atualiza_Aprov_Ped.Close;
  fDMAprovacao_Ped.sdsPrc_Atualiza_Aprov_Ped.ParamByName('P_ID').AsInteger := fDMAprovacao_Ped.mPedidoAuxID_Pedido.AsInteger;
  fDMAprovacao_Ped.sdsPrc_Atualiza_Aprov_Ped.ExecSQL;

  Close;
end;

procedure TfrmAprovacao_Ped_Item2.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAprovacao_Ped_Item2.RadioGroup1Click(Sender: TObject);
begin
  Edit1.ReadOnly := (RadioGroup1.ItemIndex = 0);
  Edit1.TabStop  := (RadioGroup1.ItemIndex = 1);
  if Edit1.ReadOnly then
    Edit1.Color := clSilver
  else
    Edit1.Color := clWindow;
end;

end.
