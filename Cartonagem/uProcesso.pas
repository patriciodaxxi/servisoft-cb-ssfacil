unit uProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmProcesso, Dialogs, StdCtrls, Buttons, db,
  ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb, RxLookup, Grids, DBGrids, SMDBGrid;

type
  TfProcesso = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_CadastraProcesso(vProcesso, vPosicao: String; vItem: Integer);
  public
    { Public declarations }
    fDmProcesso: TDmProcesso;
  end;

var
  fProcesso: TfProcesso;

implementation

{$R *.dfm}

procedure TfProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfProcesso.BitBtn1Click(Sender: TObject);
begin
//  fDmProcesso.cdsProcessoFACA.AsString := RxDBLookupCombo1.Text;
//  fDmProcesso.cdsProcessoFICHA_TECNICA.AsString := RxDBLookupCombo2.Text;
  fDmProcesso.cdsProcesso.Post;
  fDmProcesso.prc_Gravar;
  fDmProcesso.cdsProcesso.Close;
  fDmProcesso.sdsProcesso.Close;
  Close;
end;

procedure TfProcesso.BitBtn2Click(Sender: TObject);
begin
  fDmProcesso.cdsProcesso.Cancel;
  fDmProcesso.cdsProcesso.Close;
  fDmProcesso.sdsProcesso.Close;
  Close;
end;

procedure TfProcesso.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmProcesso);
  oDBUtils.OpenTables(True,Self);
end;

procedure TfProcesso.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmProcesso.cdsProcesso.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

procedure TfProcesso.BitBtn3Click(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  inc(i);
  prc_CadastraProcesso('CORTE BOBINA','',i);

  inc(i);
  prc_CadastraProcesso('CORTE GUILHOTINA','',i);

  inc(i);
  prc_CadastraProcesso('CORTE-VINCO','',i);

  inc(i);
  prc_CadastraProcesso('DESPENCA + PRENSA','',i);

  if not fDmProcesso.cdsProdutoCartoFDFECHAMENTO.IsNull then
    if fDmProcesso.cdsProdutoCartoFDFECHAMENTO.AsInteger > 0 then
    begin
      inc(i);
      case fDmProcesso.cdsProdutoCartoFDFECHAMENTO.AsInteger of
       1: prc_CadastraProcesso('COLADEIRA CONTACT','FD',i);
       2: prc_CadastraProcesso('COLADEIRA ABAS + COLADEIRA CONTACT','FD',i);
       3: prc_CadastraProcesso('COLADEIRA ABAS','FD',i);
       4, 5: prc_CadastraProcesso('COLAGEM MANUAL','FD',i);
      end;
    end;

  if not fDmProcesso.cdsProdutoCartoFDFECHAMENTO_CT.IsNull then
    if fDmProcesso.cdsProdutoCartoFDFECHAMENTO_CT.AsInteger > 0 then
    begin
      inc(i);
      if fDmProcesso.cdsProdutoCartoFDFECHAMENTO.AsInteger = 9 then
      else
        prc_CadastraProcesso('CARTUCHEIRA OU COLAGEM MANUAL','FD',i);
    end;

  if not fDmProcesso.cdsProdutoCartoTPFECHAMENTO.IsNull then
    if fDmProcesso.cdsProdutoCartoTPFECHAMENTO.AsInteger > 0 then
    begin
      inc(i);
      case fDmProcesso.cdsProdutoCartoTPFECHAMENTO.AsInteger of
       1: prc_CadastraProcesso('COLADEIRA CONTACT','TP',i);
       2: prc_CadastraProcesso('COLADEIRA ABAS + COLADEIRA CONTACT','TP',i);
       3: prc_CadastraProcesso('COLADEIRA ABAS','TP',i);
       4, 5: prc_CadastraProcesso('COLAGEM MANUAL','TP',i);
      end;
    end;

  if not fDmProcesso.cdsProdutoCartoSPFECHAMENTO.IsNull then
    if fDmProcesso.cdsProdutoCartoSPFECHAMENTO.AsInteger > 0 then
    begin
      inc(i);
      case fDmProcesso.cdsProdutoCartoSPFECHAMENTO.AsInteger of
       1: prc_CadastraProcesso('COLADEIRA CONTACT','SP',i);
       2: prc_CadastraProcesso('COLADEIRA ABAS + COLADEIRA CONTACT','SP',i);
       3: prc_CadastraProcesso('COLADEIRA ABAS','SP',i);
       4, 5: prc_CadastraProcesso('COLAGEM MANUAL','SP',i);
      end;
    end;
end;

procedure TfProcesso.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmProcesso.cdsProcessoItem.Delete;
    //fDmProcesso.cdsProcessoItem.ApplyUpdates(0);
  end;
end;

procedure TfProcesso.prc_CadastraProcesso(vProcesso, vPosicao: String; vItem: Integer);
begin
  fDmProcesso.cdsProcessoItem.Insert;
  fDmProcesso.cdsProcessoItemID.AsInteger     := fDmProcesso.cdsProcessoID.AsInteger;
  fDmProcesso.cdsProcessoItemiTEM.AsInteger   := vItem;
  fDmProcesso.cdsProcessoItemNOME.AsString    := vProcesso;
  fDmProcesso.cdsProcessoItemPOSICAO.AsString := vPosicao;
  fDmProcesso.cdsProcessoItem.Post;
end;

end.
