unit UAprovacao_Ped_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMAprovacao_Ped, Grids, DBGrids, SMDBGrid, ExtCtrls, RzPanel,
  StdCtrls, DB, NxCollection, Mask, ToolEdit;

type
  TfrmAprovacao_Ped_Item = class(TForm)
    RzGroupBox1: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Shape5: TShape;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape7: TShape;
    Label32: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_scroll(DataSet: TDataSet);

  public
    { Public declarations }
    fDMAprovacao_Ped: TDMAprovacao_Ped;
    
  end;

var
  frmAprovacao_Ped_Item: TfrmAprovacao_Ped_Item;

implementation

uses rsDBUtils, UAprovacao_Ped_Item2;

{$R *.dfm}

procedure TfrmAprovacao_Ped_Item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAprovacao_Ped_Item.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMAprovacao_Ped);
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.AFTERSCROLL := prc_scroll;
  fDMAprovacao_Ped.cdsPedido_Item.Last;
  fDMAprovacao_Ped.cdsPedido_Item.First;
end;

procedure TfrmAprovacao_Ped_Item.prc_scroll(DataSet: TDataSet);
begin
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Close;
  fDMAprovacao_Ped.sdsPedido_Item_Aprov.ParamByName('ID').AsInteger   := fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger;
  fDMAprovacao_Ped.sdsPedido_Item_Aprov.ParamByName('ITEM').AsInteger := fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Open;
end;

procedure TfrmAprovacao_Ped_Item.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMAprovacao_Ped.cdsPedido_ItemCANCELADO.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString = 'N' then
    Background  := $00AAAAFF
  else
  if fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString = '1' then
    Background  := $00FFFFA8
  else
  if fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString = 'S' then
    Background  := clMoneyGreen;
end;

procedure TfrmAprovacao_Ped_Item.SMDBGrid2DblClick(Sender: TObject);
begin
  if fDMAprovacao_Ped.fnc_Verifica_Aprov(fDMAprovacao_Ped.cdsPedido_ItemID.AsInteger,fDMAprovacao_Ped.cdsPedido_ItemITEM.AsInteger,'S') then
  begin
    MessageDlg('*** Item já esta aprovado!', mtInformation, [mbOk], 0);
    exit;
  end;

  frmAprovacao_Ped_Item2 := TfrmAprovacao_Ped_Item2.Create(self);
  frmAprovacao_Ped_Item2.fDMAprovacao_Ped := fDMAprovacao_Ped;
  frmAprovacao_Ped_Item2.ShowModal;
  FreeAndNil(frmAprovacao_Ped_Item2);
end;

procedure TfrmAprovacao_Ped_Item.NxButton1Click(Sender: TObject);
begin
  if fDMAprovacao_Ped.cdsPedido_Item_Aprov.RecordCount <= 0 then
    exit;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Last;
  if MessageDlg('Deseja Excluir o registro selecionado abaixo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Delete;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.ApplyUpdates(0);

  fDMAprovacao_Ped.cdsPedido_Item.Edit;
  fDMAprovacao_Ped.cdsPedido_Item_Aprov.Last;
  if fDMAprovacao_Ped.cdsPedido_Item_Aprov.IsEmpty then
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := 'P'
  else
  if fDMAprovacao_Ped.cdsPedido_Item_AprovAPROVADO.AsString = '1' then
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := '1'
  else
    fDMAprovacao_Ped.cdsPedido_ItemAPROVADO_ITEM.AsString := 'N';
  fDMAprovacao_Ped.cdsPedido_Item.Post;
  fDMAprovacao_Ped.cdsPedido_Item.ApplyUpdates(0);
end;

end.
