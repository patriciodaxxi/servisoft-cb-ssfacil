unit USel_Comanda_CF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls,
  NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, DBCtrls, uDmCupomFiscal, RxLookup, rsDBUtils, dbXPress, SqlExpr, DB;

type
  TfrmSel_Comanda_CF = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    ceNumCartao: TCurrencyEdit;
    Label4: TLabel;
    btnInserir: TNxButton;
    Panel3: TPanel;
    Panel4: TPanel;
    brCancelar: TNxButton;
    NxButton1: TNxButton;
    btnCancelar: TNxButton;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brCancelarClick(Sender: TObject);
    procedure ceNumCartaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    ctCupomFiscal: String;
    procedure Monta_sqlCupom_Cons(ID: Integer);

  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  frmSel_Comanda_CF: TfrmSel_Comanda_CF;

implementation

uses uUtilPadrao, DmdDatabase, UCupomFiscal;

{$R *.dfm}

procedure TfrmSel_Comanda_CF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fdmCupomFiscal.cdsProduto.Close;
  fdmCupomFiscal.mCupom.Close;
  fdmCupomFiscal.mCupomItens.Close;

  Action := caFree;
end;

procedure TfrmSel_Comanda_CF.brCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Comanda_CF.ceNumCartaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if ceNumCartao.AsInteger > 0 then
    begin
      Monta_sqlCupom_Cons(ceNumCartao.AsInteger);
      if fdmCupomFiscal.cdsCupom_Cons.IsEmpty then
        ShowMessage('Comanda não localizada!')
      else
        btnInserirClick(Sender);
      ceNumCartao.SelectAll;
    end;
  end;
end;

procedure TfrmSel_Comanda_CF.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este cartão da conta?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    fDmCupomFiscal.mCupom.Delete;
end;

procedure TfrmSel_Comanda_CF.btnInserirClick(Sender: TObject);
begin
  Monta_sqlCupom_Cons(ceNumCartao.AsInteger);

  fDmCupomFiscal.mCupom.Insert;
  fDmCupomFiscal.mCupomCARTAO.AsInteger     := ceNumCartao.AsInteger;
  fDmCupomFiscal.mCupomID_CUPOM.AsInteger   := fDmCupomFiscal.cdsComandaRelID.AsInteger;
//  fDmCupomFiscal.mCupomVLR_TOTAL.AsCurrency := fDmCupomFiscal.cdsComandaRelVLR_TOTAL.AsCurrency;
  fDmCupomFiscal.mCupom.Post;
  fDmCupomFiscal.cdsCupom_Itens.First;
  while not fDmCupomFiscal.cdsComandaItem_Rel.Eof do
  begin
    fDmCupomFiscal.mCupomItens.Insert;
    fDmCupomFiscal.mCupomItensID_PRODUTO.AsInteger := fDmCupomFiscal.cdsComandaItem_RelID_PRODUTO.AsInteger;
    fDmCupomFiscal.mCupomItensCARTAO.AsInteger     := ceNumCartao.AsInteger;
    fDmCupomFiscal.mCupomItensNOME_PRODUTO.AsString := fDmCupomFiscal.cdsComandaItem_RelPRODUTO_NOME.AsString;
    fDmCupomFiscal.mCupomItensQTD.AsFloat       := fDmCupomFiscal.cdsComandaItem_RelQTD.AsFloat;
    fDmCupomFiscal.mCupomItensVLR_UNIT.AsFloat  := fDmCupomFiscal.cdsComandaItem_RelVLR_UNITARIO.AsCurrency;
    fDmCupomFiscal.mCupomItensVLR_TOTAL.AsFloat := fDmCupomFiscal.cdsComandaItem_RelVLR_TOTAL.AsCurrency;
    fDmCupomFiscal.mCupomItens.Post;
    fDmCupomFiscal.cdsComandaItem_Rel.Next;
  end;
  ceNumCartao.Clear;
  ceNumCartao.SetFocus;

  if vFilial <= 0 then
    vFilial := fDmCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
end;

procedure TfrmSel_Comanda_CF.Monta_sqlCupom_Cons(ID: Integer);
begin
  fDmCupomFiscal.cdsComandaRel.Close;
  fDmCupomFiscal.sdsComandaRel.CommandText := 'SELECT CF.ID, CF.NUMCUPOM, CF.DTEMISSAO, F.NOME_INTERNO FILIAL_NOME, F.ENDERECO || '', ''' +
                                              ' || F.NUM_END AS FILIAL_END, F.BAIRRO || '' - '' || F.CIDADE AS FILIAL_CIDADE_BAIRRO, ' +
                                              '''('' || F.DDD1 || '')'' || F.FONE1 AS FILIAL_FONE, F.HOMEPAGE, F.EMAIL ' +
                                              'FROM CUPOMFISCAL CF ' +
                                              'INNER JOIN FILIAL F ON (CF.FILIAL = F.ID) ' +
                                              'WHERE NUM_CARTAO = ' + IntToStr(ID) +
                                              ' AND ID_TIPOCOBRANCA IS NULL';
  fDmCupomFiscal.cdsComandaRel.Open;

  fDmCupomFiscal.cdsComandaItem_Rel.Close;
  fDmCupomFiscal.sdsComandaItem_Rel.ParamByName('ID').AsInteger := fDmCupomFiscal.CdsComandaRelID.AsInteger;
  fDmCupomFiscal.cdsComandaItem_Rel.Open;
end;

procedure TfrmSel_Comanda_CF.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  ctCupomFiscal := fDmCupomFiscal.sdsCupom_Cons.CommandText;
  if not fDmCupomFiscal.mCupom.Active then
  begin
    fDmCupomFiscal.mCupom.CreateDataSet;
    fDmCupomFiscal.mCupomItens.CreateDataSet;
    fDmCupomFiscal.mCupomItens.IndexFieldNames := 'CARTAO';
  end;
end;

procedure TfrmSel_Comanda_CF.NxButton1Click(Sender: TObject);
begin
  fDmCupomFiscal.mCupomItens.First;
  while not fDmCupomFiscal.mCupomItens.IsEmpty do
  begin
    fCupomFiscal.Edit1.Text := fDmCupomFiscal.mCupomItensID_PRODUTO.AsString;
    fCupomFiscal.Edit1Exit(Sender);
    fCupomFiscal.CurrencyEdit1.Value := fDmCupomFiscal.mCupomItensQTD.AsFloat;
    fCupomFiscal.CurrencyEdit1Exit(Sender);
    fCupomFiscal.CurrencyEdit2.Value := fDmCupomFiscal.mCupomItensVLR_UNIT.AsCurrency;
    fCupomFiscal.CurrencyEdit2Exit(Sender);
    fCupomFiscal.btConfirmarItClick(Sender);
    fDmCupomFiscal.mCupomItens.Delete;
  end;

  while not fDmCupomFiscal.mCupom.IsEmpty do
  begin
    if fDmCupomFiscal.cdsCupomFiscal.State in [dsBrowse] then
      fDmCupomFiscal.cdsCupomFiscal.Edit;
    fDmCupomFiscal.cdsCupomFiscalQTD_PESSOA.AsInteger := fDmCupomFiscal.cdsCupomFiscalQTD_PESSOA.AsInteger + 1;

    fDmCupomFiscal.SQLQuery1.SQL.Text := 'DELETE FROM CUPOMFISCAL_ITENS WHERE ID = ' + fDmCupomFiscal.mCupomID_CUPOM.AsString;
    fDmCupomFiscal.SQLQuery1.ExecSQL(True);
    fDmCupomFiscal.SQLQuery1.SQL.Text := 'DELETE FROM CUPOMFISCAL WHERE ID = ' + fDmCupomFiscal.mCupomID_CUPOM.AsString;
    fDmCupomFiscal.SQLQuery1.ExecSQL(True);
    fDmCupomFiscal.mCupom.Delete;
  end;

  Close;
end;

end.
