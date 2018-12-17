unit UCadNotaFiscal_MObra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, RzPanel, UCadNotaFiscal_Itens, USel_Pedido,
  Grids, DBGrids, SMDBGrid, UDMCadNotaFiscal, USel_NotaEntrada,
  NxCollection;

type
  TfrmCadNotaFiscal_MObra = class(TForm)
    gbxPedidos: TRzGroupBox;
    gbxNotas: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    btnSelecionar_Ped: TNxButton;
    btnExcluir_Ped: TNxButton;
    Panel3: TPanel;
    btnSelecionar_Nota: TNxButton;
    btnExcluir_Nota: TNxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnSelecionar_PedClick(Sender: TObject);
    procedure btnSelecionar_NotaClick(Sender: TObject);
    procedure btnExcluir_PedClick(Sender: TObject);
    procedure btnExcluir_NotaClick(Sender: TObject);
  private
    { Private declarations }
    ffrmSel_Pedido: TfrmSel_Pedido;
    ffrmSel_NotaEntrada: TfrmSel_NotaEntrada;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
    procedure prc_Gravar_ItensNota;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
  end;

var
  frmCadNotaFiscal_MObra: TfrmCadNotaFiscal_MObra;

implementation

{$R *.dfm}

procedure TfrmCadNotaFiscal_MObra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_MObra.BitBtn2Click(Sender: TObject);
var
  vGravar: Boolean;
  vID_CFOP_Aux: Integer;
begin
  if (fDMCadNotaFiscal.mMObra_Ped.IsEmpty) or (fDMCadNotaFiscal.mMObra_Nota.IsEmpty) then
    exit;
  vGravar := True;
  fDMCadNotaFiscal.mMObra_Ped.First;
  while not fDMCadNotaFiscal.mMObra_Ped.Eof do
  begin
    if fDMCadNotaFiscal.mMObra_PedID_CFOP.AsInteger <= 0 then
      vGravar := False;
    fDMCadNotaFiscal.mMObra_Ped.Next;
  end;
  if not vGravar then
    exit;
  vID_CFOP_Aux := 0;  
  fDMCadNotaFiscal.mMObra_Nota.First;
  while not fDMCadNotaFiscal.mMObra_Nota.Eof do
  begin
    if (fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger <= 0) or ((vID_CFOP_Aux > 0) and (vID_CFOP_Aux <> fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger)) then
      vGravar := False;
    fDMCadNotaFiscal.mMObra_Nota.Next;
  end;
  if not vGravar then
    exit;
  prc_Gravar_ItensNota;
  fDMCadNotaFiscal.prc_Excluir_Auxiliar_Retorno;
end;

procedure TfrmCadNotaFiscal_MObra.prc_Gravar_ItensNota;
begin
  //Nota
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmSel_NotaEntrada := TfrmSel_NotaEntrada.Create(self);
  ffrmSel_NotaEntrada.Tag := 95;
  ffrmSel_NotaEntrada.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_NotaEntrada.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  fDMCadNotaFiscal.mMObra_Nota.First;
  ffrmSel_NotaEntrada.RxDBLookupCombo3.KeyValue := fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger;
  fDMCadNotaFiscal.mMObra_Nota.First;
  while not fDMCadNotaFiscal.mMObra_Nota.Eof do
  begin
    if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger;
    ffrmSel_NotaEntrada.BitBtn2Click(ffrmSel_NotaEntrada);
    fDMCadNotaFiscal.mMObra_Nota.Next;
  end;
  FreeAndNil(ffrmSel_NotaEntrada);

  //Pedido
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmSel_Pedido := TfrmSel_Pedido.Create(self);
  ffrmSel_Pedido.Tag          := 95;
  ffrmSel_Pedido.vTipo        := 'NTS';  //para distinguir do vale 'VAL'
  ffrmSel_Pedido.vTipo_RegPed := 'P';
  ffrmSel_Pedido.vCodCliente  := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  ffrmSel_Pedido.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_Pedido.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  fDMCadNotaFiscal.mMObra_Ped.First;
  while not fDMCadNotaFiscal.mMObra_Ped.Eof do
  begin
    ffrmSel_Pedido.btnImportarClick(ffrmSel_Pedido);
    fDMCadNotaFiscal.mMObra_Ped.Next;
  end;
  FreeAndNil(ffrmSel_Pedido);
  FreeAndNil(ffrmCadNotaFiscal_Itens);
  Close;
end;

procedure TfrmCadNotaFiscal_MObra.btnSelecionar_PedClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_Pedido := TfrmSel_Pedido.Create(self);
  ffrmSel_Pedido.vTipo        := 'MO';
  ffrmSel_Pedido.vTipo_RegPed := 'P';
  ffrmSel_Pedido.vCodCliente  := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  ffrmSel_Pedido.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_Pedido.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  ffrmSel_Pedido.ShowModal;

  FreeAndNil(ffrmSel_Pedido);
  FreeAndNil(ffrmCadNotaFiscal_Itens);
end;

procedure TfrmCadNotaFiscal_MObra.btnSelecionar_NotaClick(Sender: TObject);
var
  vID_CFOP_Aux: Integer;
  vID_CFOP_Ped: Integer;
  vCODCFOP_Ped: String;
  vTexto: String;
begin
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmSel_NotaEntrada := TfrmSel_NotaEntrada.Create(self);
  ffrmSel_NotaEntrada.Tag := 99;
  ffrmSel_NotaEntrada.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_NotaEntrada.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  ffrmSel_NotaEntrada.ShowModal;
  FreeAndNil(ffrmSel_NotaEntrada);
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  vID_CFOP_Aux := 0;
  vID_CFOP_Ped := 0;
  vCODCFOP_Ped := '';
  vTexto       := '';
  if not fDMCadNotaFiscal.mMObra_Nota.IsEmpty then
  begin
    fDMCadNotaFiscal.mMObra_Nota.First;
    while not fDMCadNotaFiscal.mMObra_Nota.Eof do
    begin
      if fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger <= 0 then
        vTexto := '*** CFOP não informado no <De Para>'
      else
      if (vID_CFOP_Aux > 0) and (vID_CFOP_Aux <> fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger)  then
        vTexto := '*** CFOP diferente nas notas selecionadas'
      else
      begin
        vID_CFOP_Aux := fDMCadNotaFiscal.mMObra_NotaID_CFOP.AsInteger;
        vID_CFOP_Ped := fDMCadNotaFiscal.mMObra_NotaID_CFOP_Ped.AsInteger;
        vCODCFOP_Ped := fDMCadNotaFiscal.mMObra_NotaCODCFOP_Ped.AsString;
      end;
      if trim(vTexto) <> '' then
      begin
        MessageDlg(vTexto, mtError, [mbOk], 0);
        fDMCadNotaFiscal.mMObra_Nota.Last;
        vID_CFOP_Aux := 0;
      end;
      fDMCadNotaFiscal.mMObra_Nota.Next;
    end;
  end;
  if vID_CFOP_Aux  <= 0 then
    exit;
  fDMCadNotaFiscal.mMObra_Ped.First;
  while not fDMCadNotaFiscal.mMObra_Ped.Eof do
  begin
    fDMCadNotaFiscal.mMObra_Ped.Edit;
    fDMCadNotaFiscal.mMObra_PedID_CFOP.AsInteger := vID_CFOP_Ped;
    fDMCadNotaFiscal.mMObra_PedCODCFOP.AsString  := vCODCFOP_Ped;
    fDMCadNotaFiscal.mMObra_Ped.Post;
    fDMCadNotaFiscal.mMObra_Ped.Next;
  end;

end;

procedure TfrmCadNotaFiscal_MObra.btnExcluir_PedClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.mMObra_Ped.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o pedido selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadNotaFiscal.mMObra_Ped.Delete;
end;

procedure TfrmCadNotaFiscal_MObra.btnExcluir_NotaClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.mMObra_Nota.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a nota selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadNotaFiscal.mMObra_Nota.Delete;
end;

end.
