unit UAprovacao_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids,
  SMDBGrid, NxCollection, UDMAprovacao_Ped, Mask, ToolEdit, RzPanel, SqlExpr, dbXPress, DB, CurrEdit;

type
  TfrmAprovacao_Ped = class(TForm)
    Panel1: TPanel;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    btnAprovarClientes: TNxButton;
    btnNaoAprovarClientes: TNxButton;
    Panel3: TPanel;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    btnConsultar: TNxButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    ComboBox1: TComboBox;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label7: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Shape7: TShape;
    Label14: TLabel;
    Shape8: TShape;
    Label5: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    Shape6: TShape;
    Label11: TLabel;
    Shape9: TShape;
    Label16: TLabel;
    Shape10: TShape;
    Label17: TLabel;
    Shape11: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAprovarClientesClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure btnNaoAprovarClientesClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ComboBox1Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMAprovacao_Ped: TDMAprovacao_Ped;
    vTotal_Pedido: Integer;
    vVlrTotal: Real;
    vData_Aprov: TDateTime;
    vMotivo_Aprov: WideString;
    
    procedure prc_Consultar;
    procedure prc_Le_mPedido(Tipo: String);
    procedure prc_Gravar_Pedido_Aprov(ID_Pedido: Integer; Tipo: String);
    procedure prc_Opcoes;
  public
    { Public declarations }
  end;

var
  frmAprovacao_Ped: TfrmAprovacao_Ped;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, UConsPessoa_Fin;

{$R *.dfm}

procedure TfrmAprovacao_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAprovacao_Ped.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmAprovacao_Ped.prc_Consultar;
var
  vComando, vComando2: String;
  vTexto1, vTexto2: String;
  i: Integer;
  vID_Cliente: Integer;
  vID_Pedido: Integer;
begin
  vID_Cliente := 0;
  vID_Pedido  := 0;
  if CurrencyEdit1.AsInteger > 0 then
  begin
    fDMAprovacao_Ped.qBuscaPed.Close;
    fDMAprovacao_Ped.qBuscaPed.ParamByName('NUM_PEDIDO').AsInteger := CurrencyEdit1.AsInteger;
    case ComboBox1.ItemIndex of
      0: fDMAprovacao_Ped.qBuscaPed.ParamByName('TIPO_REG').AsString := 'P';
      1: fDMAprovacao_Ped.qBuscaPed.ParamByName('TIPO_REG').AsString := 'C';
    end;
    fDMAprovacao_Ped.qBuscaPed.Open;
    if fDMAprovacao_Ped.qBuscaPedCANCELADO.AsString = 'S' then
    begin
      MessageDlg('*** Pedido informado está cancelado!', mtInformation, [mbOk], 0);
      exit;
    end
    else
    if fDMAprovacao_Ped.qBuscaPedAPROVADO_PED.AsString = 'N' then
    begin
      MessageDlg('*** Pedido não foi aprovado!', mtInformation, [mbOk], 0);
      exit;
    end
    else
    if fDMAprovacao_Ped.qBuscaPedAPROVADO_PED.AsString = 'A' then
    begin
      MessageDlg('*** Pedido já foi aprovado!', mtInformation, [mbOk], 0);
      exit;
    end;
    vID_Cliente := fDMAprovacao_Ped.qBuscaPedID_CLIENTE.AsInteger;
    vID_Pedido  := fDMAprovacao_Ped.qBuscaPedID.AsInteger;
  end;                                     

  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  SMDBGrid2.UnSelectAllClick(SMDBGrid2);
  fDMAprovacao_Ped.cdsCliente_Pend.Close;
  if ComboBox1.ItemIndex = 0 then
  begin
    fDMAprovacao_Ped.sdsCliente_Pend.CommandText := fDMAprovacao_Ped.ctCliente_Pend;
    if vID_Cliente > 0 then
    begin
      fDMAprovacao_Ped.sdsCliente_Pend.CommandText := fDMAprovacao_Ped.sdsCliente_Pend.CommandText
                                                    + ' AND CLI.CODIGO = :COD_CLIENTE';
      fDMAprovacao_Ped.sdsCliente_Pend.ParamByName('COD_CLIENTE').AsInteger := vID_Cliente;
    end;
  end
  else
  if ComboBox1.ItemIndex = 1 then
  begin
    fDMAprovacao_Ped.sdsCliente_Pend.CommandText := fDMAprovacao_Ped.ctFornecedor_Pend;
    if vID_Cliente > 0 then
    begin
      fDMAprovacao_Ped.sdsCliente_Pend.CommandText := fDMAprovacao_Ped.sdsCliente_Pend.CommandText
                                                    + ' AND CLI.CODIGO = :COD_CLIENTE';
      fDMAprovacao_Ped.sdsCliente_Pend.ParamByName('COD_CLIENTE').AsInteger := vID_Cliente;
    end;
  end;
  fDMAprovacao_Ped.sdsCliente_Pend.ParamByName('DTVENCIMENTO').AsDate := Date;
  fDMAprovacao_Ped.cdsCliente_Pend.Open;
  fDMAprovacao_Ped.cdsPedido_Pend.Close;
  fDMAprovacao_Ped.sdsPedido_Pend.CommandText := fDMAprovacao_Ped.ctPedido_Pend;
  case ComboBox1.ItemIndex of
    0: fDMAprovacao_Ped.sdsPedido_Pend.CommandText := fDMAprovacao_Ped.sdsPedido_Pend.CommandText + ' AND PED.TIPO_REG = ' + QuotedStr('P');
    1: fDMAprovacao_Ped.sdsPedido_Pend.CommandText := fDMAprovacao_Ped.sdsPedido_Pend.CommandText + ' AND PED.TIPO_REG = ' + QuotedStr('C');
  end;
  if vID_Cliente > 0 then
    fDMAprovacao_Ped.sdsPedido_Pend.CommandText := fDMAprovacao_Ped.sdsPedido_Pend.CommandText + ' AND PED.ID_CLIENTE = ' + IntToStr(vID_Cliente);
  fDMAprovacao_Ped.cdsPedido_Pend.Open;

  vTotal_Pedido := 0;
  vVlrTotal     := 0;

  fDMAprovacao_Ped.mPedidoAux.MasterSource := nil;
  fDMAprovacao_Ped.mPedidoAux.MasterFields := '';
  fDMAprovacao_Ped.mPedidoAux.EmptyDataSet;

  fDMAprovacao_Ped.cdsPedido_Pend.First;
  while not fDMAprovacao_Ped.cdsPedido_Pend.Eof do
  begin
    fDMAprovacao_Ped.mPedidoAux.Insert;
    fDMAprovacao_Ped.mPedidoAuxID_Cliente.AsInteger    := fDMAprovacao_Ped.cdsPedido_PendID_CLIENTE.AsInteger;
    fDMAprovacao_Ped.mPedidoAuxID_Pedido.AsInteger     := fDMAprovacao_Ped.cdsPedido_PendID_PEDIDO.AsInteger;
    fDMAprovacao_Ped.mPedidoAuxNum_Pedido.AsInteger    := fDMAprovacao_Ped.cdsPedido_PendNUM_PEDIDO.AsInteger;
    fDMAprovacao_Ped.mPedidoAuxPedido_Cliente.AsString := fDMAprovacao_Ped.cdsPedido_PendPEDIDO_CLIENTE.AsString;
    fDMAprovacao_Ped.mPedidoAuxVlr_Total.AsFloat       := fDMAprovacao_Ped.cdsPedido_PendVLR_TOTAL.AsFloat;
    fDMAprovacao_Ped.mPedidoAuxDtEmissao.AsDateTime    := fDMAprovacao_Ped.cdsPedido_PendDTEMISSAO.AsDateTime;
    fDMAprovacao_Ped.mPedidoAuxVlr_Entrada.AsFloat     := fDMAprovacao_Ped.cdsPedido_PendVLR_ADIANTAMENTO.AsFloat;
    if fDMAprovacao_Ped.cdsPedido_PendID_CONDPGTO.AsInteger > 0 then
    begin
      fDMAprovacao_Ped.qCondPgto.Close;
      fDMAprovacao_Ped.qCondPgto.ParamByName('ID').AsInteger := fDMAprovacao_Ped.cdsPedido_PendID_CONDPGTO.AsInteger;
      fDMAprovacao_Ped.qCondPgto.Open;
      fDMAprovacao_Ped.mPedidoAuxNome_CondPgto.AsString := fDMAprovacao_Ped.qCondPgtoNOME.AsString;
    end
    else
      fDMAprovacao_Ped.mPedidoAuxNome_CondPgto.AsString  := '';
    fDMAprovacao_Ped.mPedidoAux.Post;
    vTotal_Pedido := vTotal_Pedido + 1;
    vVlrTotal     := vVlrTotal + fDMAprovacao_Ped.cdsPedido_PendVLR_TOTAL.AsFloat;
    if (vID_Pedido > 0) and (fDMAprovacao_Ped.cdsPedido_PendID_PEDIDO.AsInteger = vID_Pedido) then
      SMDBGrid2.SelectedRows.CurrentRowSelected := True;
    fDMAprovacao_Ped.cdsPedido_Pend.Next;
  end;

  fDMAprovacao_Ped.mPedidoAux.MasterSource := fDMAprovacao_Ped.dsCliente_Pend;
  fDMAprovacao_Ped.mPedidoAux.MasterFields := 'CODIGO';
  fDMAprovacao_Ped.mPedidoAux.IndexFieldNames := 'ID_Cliente';

  Label2.Caption := FormatFloat('###,###,##0',vTotal_Pedido);
  Label4.Caption := FormatFloat('###,###,##0.00',vVlrTotal);
end;

procedure TfrmAprovacao_Ped.FormShow(Sender: TObject);
begin
  fDMAprovacao_Ped := TDMAprovacao_Ped.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMAprovacao_Ped);
end;

procedure TfrmAprovacao_Ped.btnAprovarClientesClick(Sender: TObject);
begin
  if MessageDlg('Deseja confirmar a aprovação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  vMotivo_Aprov := '';

  vData_Aprov := Date;
  fDMAprovacao_Ped.cdsCliente_Pend.First;
  while not fDMAprovacao_Ped.cdsCliente_Pend.Eof do
  begin
    SMDBGrid2.SelectAllClick(SMDBGrid2);
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      prc_Le_mPedido('A');
    fDMAprovacao_Ped.cdsCliente_Pend.Next;
  end;
  CurrencyEdit1.Clear;
  btnConsultarClick(Sender);
end;

procedure TfrmAprovacao_Ped.prc_Le_mPedido(Tipo: String);
begin
  fDMAprovacao_Ped.mPedidoAux.First;
  while not fDMAprovacao_Ped.mPedidoAux.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      prc_Gravar_Pedido_Aprov(fDMAprovacao_Ped.mPedidoAuxID_Pedido.AsInteger,Tipo);
    fDMAprovacao_Ped.mPedidoAux.Next;
  end;
end;

procedure TfrmAprovacao_Ped.prc_Gravar_Pedido_Aprov(ID_Pedido: Integer; Tipo: String);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' +
                       ' WHERE TABELA = ' + QuotedStr('PEDIDO');
    sds.ExecSQL();

    fDMAprovacao_Ped.cdsPedido.Close;
    fDMAprovacao_Ped.sdsPedido.ParamByName('ID').AsInteger := ID_Pedido;
    fDMAprovacao_Ped.cdsPedido.Open;
    if not fDMAprovacao_Ped.cdsPedido.IsEmpty then
    begin
      fDMAprovacao_Ped.cdsPedido.Edit;
      fDMAprovacao_Ped.cdsPedidoAPROVADO_PED.AsString := Tipo;
      fDMAprovacao_Ped.cdsPedido.Post;
      fDMAprovacao_Ped.cdsPedido.ApplyUpdates(0);
    end;

    fDMAprovacao_Ped.cdsPedido_Aprov.Close;
    fDMAprovacao_Ped.sdsPedido_Aprov.ParamByName('ID').AsInteger := ID_Pedido;
    fDMAprovacao_Ped.cdsPedido_Aprov.Open;
    if not fDMAprovacao_Ped.cdsPedido_Aprov.IsEmpty then
      fDMAprovacao_Ped.cdsPedido_Aprov.Edit
    else
    if fDMAprovacao_Ped.cdsPedido_Aprov.IsEmpty then
    begin
      fDMAprovacao_Ped.cdsPedido_Aprov.Insert;
      fDMAprovacao_Ped.cdsPedido_AprovID.AsInteger := fDMAprovacao_Ped.mPedidoAuxID_Pedido.AsInteger;
    end;
    fDMAprovacao_Ped.cdsPedido_AprovAPROVADO.AsString := Tipo;
    fDMAprovacao_Ped.cdsPedido_AprovDATA.AsDateTime   := vData_Aprov;
    if Tipo = 'N' then
      fDMAprovacao_Ped.cdsPedido_AprovMOTIVO_NAO_APROV.Value := vMotivo_Aprov;
    fDMAprovacao_Ped.cdsPedido_AprovUSUARIO.AsString := vUsuario;
    fDMAprovacao_Ped.cdsPedido_AprovDTUSUARIO.AsDateTime := Date;
    fDMAprovacao_Ped.cdsPedido_AprovHRUSUARIO.AsDateTime := Now;
    fDMAprovacao_Ped.cdsPedido_AprovAPROVADO_PELO_LIMITE.AsString := 'N';
    fDMAprovacao_Ped.cdsPedido_Aprov.Post;
    fDMAprovacao_Ped.cdsPedido_Aprov.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o estoque: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(sds);
end;

procedure TfrmAprovacao_Ped.NxButton3Click(Sender: TObject);
begin
  if MessageDlg('Deseja confirmar a aprovação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  vData_Aprov := Date;
  prc_Le_mPedido('A');
  if CurrencyEdit1.AsInteger > 0 then
  begin
    CurrencyEdit1.Clear;
    fDMAprovacao_Ped.cdsCliente_Pend.Close;
    fDMAprovacao_Ped.mPedidoAux.EmptyDataSet;
  end
  else
    btnConsultarClick(Sender);
end;

procedure TfrmAprovacao_Ped.btnNaoAprovarClientesClick(Sender: TObject);
begin
  if MessageDlg('Não Aprovar os pedidos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  vMotivo_Aprov := '';
  while trim(vMotivo_Aprov) = '' do
    vMotivo_Aprov := InputBox('Informar o motivo','Motivo: ', '');
  vData_Aprov := Date;

  fDMAprovacao_Ped.cdsCliente_Pend.First;
  while not fDMAprovacao_Ped.cdsCliente_Pend.Eof do
  begin
    SMDBGrid2.SelectAllClick(SMDBGrid2);
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      prc_Le_mPedido('N');
    fDMAprovacao_Ped.cdsCliente_Pend.Next;
  end;
  CurrencyEdit1.Clear;
  btnConsultarClick(Sender);
end;

procedure TfrmAprovacao_Ped.NxButton4Click(Sender: TObject);
begin
  if MessageDlg('Não Aprovar os pedidos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  vMotivo_Aprov := '';
  while trim(vMotivo_Aprov) = '' do
    vMotivo_Aprov := InputBox('Informar o motivo','Motivo: ', '');
  vData_Aprov := Date;
  prc_Le_mPedido('N');
  CurrencyEdit1.Clear;
  btnConsultarClick(Sender);
end;

procedure TfrmAprovacao_Ped.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMAprovacao_Ped.cdsCliente_Pend.Active) and not(fDMAprovacao_Ped.cdsCliente_Pend.IsEmpty) then
  begin
    if ComboBox1.ItemIndex = 0 then
    begin
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger < 11) and (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED_NAO_APROV.AsInteger > 0 ) then
      begin
        Background  := clGray;
        AFont.Color := clWhite;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger > 10) and (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED_NAO_APROV.AsInteger > 0 ) then
      begin
        Background  := clGray;
        AFont.Color := clSilver;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger < 4) and (StrToFloat(FormatFloat('0.00',fDMAprovacao_Ped.cdsCliente_PendVLR_ATRASADO.AsFloat)) > 0 ) then
      begin
        Background  := clYellow;
        AFont.Color := clBlack;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger < 11) and (StrToFloat(FormatFloat('0.00',fDMAprovacao_Ped.cdsCliente_PendVLR_ATRASADO.AsFloat)) > 0 ) then
      begin
        Background  := $004080FF;
        AFont.Color := clWhite;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger >= 10) and (StrToFloat(FormatFloat('0.00',fDMAprovacao_Ped.cdsCliente_PendVLR_ATRASADO.AsFloat)) > 0 ) then
      begin
        Background  := clOlive;
        AFont.Color := clWhite;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger < 4) and (fDMAprovacao_Ped.cdsCliente_PendQTD_TITULOS_PAGOS_EM_ATRASO.AsInteger <= 0 ) then
      begin
        Background  := $003C3CFF;
        AFont.Color := clWhite;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger < 4) and (fDMAprovacao_Ped.cdsCliente_PendQTD_TITULOS_PAGOS_EM_ATRASO.AsInteger > 0 ) then
      begin
        Background  := $000000B3;
        AFont.Color := clWhite;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger < 11) and (fDMAprovacao_Ped.cdsCliente_PendQTD_TITULOS_PAGOS_EM_ATRASO.AsInteger <= 0 ) then
      begin
        Background  := $00A4FFA4;
        AFont.Color := clBlack;
      end
      else
      if (fDMAprovacao_Ped.cdsCliente_PendCONTADOR_PED.AsInteger < 11) and (fDMAprovacao_Ped.cdsCliente_PendQTD_TITULOS_PAGOS_EM_ATRASO.AsInteger > 0 ) then
      begin
        Background  := $00FFFF80;
        AFont.Color := clBlack;
      end;
    end
    else
    if (StrToFloat(FormatFloat('0.00',fDMAprovacao_Ped.cdsCliente_PendVLR_ATRASADO.AsFloat)) > 0 ) then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TfrmAprovacao_Ped.ComboBox1Click(Sender: TObject);
begin
  fDMAprovacao_Ped.cdsCliente_Pend.Close;
  fDMAprovacao_Ped.mPedidoAux.EmptyDataSet;
  prc_Opcoes;
end;

procedure TfrmAprovacao_Ped.prc_Opcoes;
var
  i: Integer;
begin
  Label13.Visible := (ComboBox1.ItemIndex = 0);
  Label14.Visible := (ComboBox1.ItemIndex = 0);
  Label5.Visible  := (ComboBox1.ItemIndex = 0);
  Label10.Visible := (ComboBox1.ItemIndex = 0);
  Label8.Visible  := (ComboBox1.ItemIndex = 0);
  Label15.Visible := (ComboBox1.ItemIndex = 0);
  Label16.Visible := (ComboBox1.ItemIndex = 0);
  Label17.Visible := (ComboBox1.ItemIndex = 0);
  Shape7.Visible  := (ComboBox1.ItemIndex = 0);
  Shape8.Visible  := (ComboBox1.ItemIndex = 0);
  Shape2.Visible  := (ComboBox1.ItemIndex = 0);
  Shape4.Visible  := (ComboBox1.ItemIndex = 0);
  Shape5.Visible  := (ComboBox1.ItemIndex = 0);
  Shape3.Visible  := (ComboBox1.ItemIndex = 0);
  Shape10.Visible := (ComboBox1.ItemIndex = 0);
  Shape11.Visible := (ComboBox1.ItemIndex = 0);
  if ComboBox1.ItemIndex = 0 then
  begin
    btnAprovarClientes.Caption    := 'Aprovar Pedido dos Clientes Selecionados';
    btnNaoAprovarClientes.Caption := 'Não Aprovar Pedido dos Clientes Selecionados';
    RzGroupBox2.Caption           := ' Clientes ';
    RzGroupBox1.Caption           := ' Pedidos do Cliente ';
    label12.Caption               := 'Possui títulos em atraso Qtd. Ped: menos de 4';
  end
  else
  begin
    btnAprovarClientes.Caption    := 'Aprovar OC dos Fornecedores Selecionados';
    btnNaoAprovarClientes.Caption := 'Não Aprovar OC dos Fornecedores Selecionados';
    RzGroupBox2.Caption           := ' Fornecedores ';
    RzGroupBox1.Caption           := ' OCs do Fornecedor ';
    label12.Caption               := 'Possui título(s) em atraso';
  end;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'CODIGO') then
    begin
      case ComboBox1.ItemIndex of
        0: SMDBGrid1.Columns[i].Title.Caption := 'Cód. Cliente';
        1: SMDBGrid1.Columns[i].Title.Caption := 'Cód. Fornec.';
      end;
    end;
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_CLIENTE') then
    begin
      case ComboBox1.ItemIndex of
        0: SMDBGrid1.Columns[i].Title.Caption := 'Nome Cliente';
        1: SMDBGrid1.Columns[i].Title.Caption := 'Nome Fornecedor';
      end;
    end;
    if (SMDBGrid1.Columns[i].FieldName = 'VLR_TOTAL_PED') then
    begin
      case ComboBox1.ItemIndex of
        0: SMDBGrid1.Columns[i].Title.Caption := 'Vlr. Pedidos Não Faturados';
        1: SMDBGrid1.Columns[i].Title.Caption := 'Vlr. OC Não Entregues';
      end;
    end;
    if (SMDBGrid1.Columns[i].FieldName = 'CONTADOR_PED') OR (SMDBGrid1.Columns[i].FieldName = 'CONTADOR_PED_CANC') OR
       (SMDBGrid1.Columns[i].FieldName = 'CONTADOR_PED_NAO_APROV') then
      SMDBGrid1.Columns[i].Visible := (ComboBox1.ItemIndex = 0);
  end;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'Pedido_Cliente') then
      SMDBGrid2.Columns[i].Visible := (ComboBox1.ItemIndex = 0)
    else
    if (SMDBGrid2.Columns[i].FieldName = 'Vlr_Entrada') then
      SMDBGrid2.Columns[i].Visible := (ComboBox1.ItemIndex = 0);
  end;                                     
end;

procedure TfrmAprovacao_Ped.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit1.AsInteger > 0) then
    btnConsultarClick(Sender);
end;

procedure TfrmAprovacao_Ped.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ffrmConsPessoa_Fin: TfrmConsPessoa_Fin;
begin
  if (Key = Vk_F5) and (fDMAprovacao_Ped.cdsCliente_Pend.Active) and (fDMAprovacao_Ped.cdsCliente_PendCODIGO.AsInteger > 0) then
  begin
    ffrmConsPessoa_Fin := TfrmConsPessoa_Fin.Create(self);
    ffrmConsPessoa_Fin.vID_Pessoa_Cons := fDMAprovacao_Ped.cdsCliente_PendCODIGO.AsInteger;
    ffrmConsPessoa_Fin.Label2.Caption  := fDMAprovacao_Ped.cdsCliente_PendNOME_CLIENTE.AsString;
    ffrmConsPessoa_Fin.ShowModal;
    FreeAndNil(ffrmConsPessoa_Fin);
  end;
end;

procedure TfrmAprovacao_Ped.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    btnAprovarClientes.Enabled    := not(btnAprovarClientes.Enabled);
    btnNaoAprovarClientes.Enabled := not(btnNaoAprovarClientes.Enabled);
  end;
end;

end.
