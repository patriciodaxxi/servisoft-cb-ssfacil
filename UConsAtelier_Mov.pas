unit UConsAtelier_Mov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMCadAtelier_Mov, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  dbXPress, UAtelier_ER, CurrEdit;

type
  TfrmConsAtelier_Mov = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Panel2: TPanel;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    btnEnvio: TBitBtn;
    btnConsultar: TBitBtn;
    Label9: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label10: TLabel;
    Label11: TLabel;
    DateEdit6: TDateEdit;
    DateEdit7: TDateEdit;
    Label12: TLabel;
    DateEdit8: TDateEdit;
    Label13: TLabel;
    DateEdit9: TDateEdit;
    Label16: TLabel;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    btnRetorno: TBitBtn;
    Shape1: TShape;
    Label4: TLabel;
    Panel3: TPanel;
    Label17: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label18: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn2: TBitBtn;
    btnRecalcular: TBitBtn;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnEnvioClick(Sender: TObject);
    procedure btnRetornoClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnRecalcularClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    ffrmAtelier_ER: TfrmAtelier_ER;
    fDMCadAtelier_Mov: TDMCadAtelier_Mov;

    ColunaOrdenada: String;
    vContador : Integer;

    procedure prc_Consultar;
    procedure prc_Controlar_Gravacao;

    procedure prc_Gravar_Mov;
    procedure prc_Le_Consulta;

  public
    { Public declarations }


  end;

var
  frmConsAtelier_Mov: TfrmConsAtelier_Mov;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, URelMovAtelier;

{$R *.dfm}

procedure TfrmConsAtelier_Mov.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
  btnRecalcularClick(Sender);
end;

procedure TfrmConsAtelier_Mov.prc_Consultar;
var
  vComando : String;
  vOpcaoDtEntrega : String;
begin
  fDMCadAtelier_Mov.cdsConsulta.Close;
  fDMCadAtelier_Mov.sdsConsulta.CommandText := fDMCadAtelier_Mov.ctConsulta;
  vComando := '';
  if RxDBLookupCombo1.Text <> '' then
    vComando := ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND ITE.ID_ATELIER = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMCadAtelier_Mov.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'PED.DTENTREGA'
  else
    vOpcaoDtEntrega := 'ITE.DTENTREGA';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if DateEdit6.Date > 10 then
    vComando := vComando + ' AND ITE.DT_ENVIO_ATELIER >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  if DateEdit7.Date > 10 then
    vComando := vComando + ' AND ITE.DT_ENVIO_ATELIER <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit7.date));
  if DateEdit8.Date > 10 then
    vComando := vComando + ' AND ITE.DT_RETORNO_ATELIER >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit8.date));
  if DateEdit9.Date > 10 then
    vComando := vComando + ' AND ITE.DT_RETORNO_ATELIER <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit9.date));
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  case RadioGroup1.ItemIndex of
    0 : vComando := vComando + ' AND ITE.QTD_RESTANTE > 0 ';
    1 : vComando := vComando + ' AND ITE.QTD_FATURADO > 0 ';
  end;
  case ComboBox1.ItemIndex of
    0 : vComando := vComando + ' AND ITE.DT_ENVIO_ATELIER IS NULL ';
    1 : vComando := vComando + ' AND (ITE.DT_ENVIO_ATELIER IS NOT NULL) AND (ITE.DT_RETORNO_ATELIER IS NULL) ';
    2 : vComando := vComando + ' AND (ITE.DT_ENVIO_ATELIER IS NOT NULL) AND (ITE.DT_RETORNO_ATELIER IS NOT NULL) ';
  end;
  fDMCadAtelier_Mov.sdsConsulta.CommandText := fDMCadAtelier_Mov.sdsConsulta.CommandText + vComando;
  fDMCadAtelier_Mov.cdsConsulta.Open;
  fDMCadAtelier_Mov.cdsConsulta.IndexFieldNames := 'PEDIDO_CLIENTE;DTEMISSAO';
end;

procedure TfrmConsAtelier_Mov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsAtelier_Mov.FormShow(Sender: TObject);
begin
  fDMCadAtelier_Mov := TDMCadAtelier_Mov.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadAtelier_Mov);
  fDMCadAtelier_Mov.cdsFilial.First;
  if (fDMCadAtelier_Mov.cdsFilial.RecordCount < 2) and (fDMCadAtelier_Mov.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMCadAtelier_Mov.cdsFilialID.AsInteger;
end;

procedure TfrmConsAtelier_Mov.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadAtelier_Mov.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsAtelier_Mov.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadAtelier_Mov.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmConsAtelier_Mov.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadAtelier_Mov.cdsConsultaDT_RETORNO_ATELIER.AsDateTime > 10 then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end
  else
  if fDMCadAtelier_Mov.cdsConsultaDT_ENVIO_ATELIER.AsDateTime > 10 then
    Background  := clAqua;


  {if (StrToFloat(FormatFloat('0.0000',fDMCadAtelier_Mov.cdsConsultaQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMCadAtelier_Mov.cdsConsultaQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadAtelier_Mov.cdsConsultaQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua;

  if (Field = fDMCadAtelier_Mov.cdsConsultaQTD_AFATURAR) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMCadAtelier_Mov.cdsConsultaQTD_RESTANTE) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;}
end;

procedure TfrmConsAtelier_Mov.btnEnvioClick(Sender: TObject);
begin
  fDMCadAtelier_Mov.vCancelar := False;
  ffrmAtelier_ER := TfrmAtelier_ER.Create(self);
  ffrmAtelier_ER.fDMCadAtelier_Mov := fDMCadAtelier_Mov;
  fDMCadAtelier_Mov.vTipo_ER      := 'E';
  fDMCadAtelier_Mov.vOpcao        := 'S';
  ffrmAtelier_ER.ShowModal;

  FreeAndNil(ffrmAtelier_ER);

  if not fDMCadAtelier_Mov.vCancelar then
    prc_Controlar_Gravacao;
  fDMCadAtelier_Mov.vID_Atelier := 0;

  btnConsultarClick(Sender);

end;

procedure TfrmConsAtelier_Mov.btnRetornoClick(Sender: TObject);
begin
  fDMCadAtelier_Mov.vCancelar := False;
  ffrmAtelier_ER := TfrmAtelier_ER.Create(self);
  ffrmAtelier_ER.fDMCadAtelier_Mov := fDMCadAtelier_Mov;
  fDMCadAtelier_Mov.vTipo_ER      := 'R';
  fDMCadAtelier_Mov.vOpcao        := 'S';
  ffrmAtelier_ER.ShowModal;

  FreeAndNil(ffrmAtelier_ER);

  if not fDMCadAtelier_Mov.vCancelar then
    prc_Controlar_Gravacao;
  fDMCadAtelier_Mov.vID_Atelier := 0;

  btnConsultarClick(Sender);
end;

procedure TfrmConsAtelier_Mov.SMDBGrid1DblClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  if not(fDMCadAtelier_Mov.cdsConsulta.Active) or (fDMCadAtelier_Mov.cdsConsulta.IsEmpty) then
    exit;
  if fDMCadAtelier_Mov.cdsConsultaID.AsInteger <= 0 then
    exit;

  vIDAux := fDMCadAtelier_Mov.cdsConsultaID.AsInteger;

  ffrmAtelier_ER := TfrmAtelier_ER.Create(self);
  ffrmAtelier_ER.fDMCadAtelier_Mov := fDMCadAtelier_Mov;
  fDMCadAtelier_Mov.vTipo_ER      := '';
  fDMCadAtelier_Mov.vOpcao        := 'I';

  ffrmAtelier_ER.DateEdit1.Date      := fDMCadAtelier_Mov.cdsConsultaDT_ENVIO_ATELIER.AsDateTime;
  ffrmAtelier_ER.DateEdit3.Date      := fDMCadAtelier_Mov.cdsConsultaDT_RETORNO_ATELIER.AsDateTime;
  fDMCadAtelier_Mov.vID_Atelier      := fDMCadAtelier_Mov.cdsConsultaID_ATELIER.AsInteger;
  ffrmAtelier_ER.CurrencyEdit1.Value := fDMCadAtelier_Mov.cdsConsultaVLR_UNITARIO_ATELIER.AsFloat;

  ffrmAtelier_ER.ShowModal;

  prc_Controlar_Gravacao;

  FreeAndNil(ffrmAtelier_ER);

  btnConsultarClick(Sender);

  fDMCadAtelier_Mov.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmConsAtelier_Mov.btnRecalcularClick(Sender: TObject);
var
  vTotalComRet, vTotalSemRet : Real;
begin
  vTotalComRet := 0;
  vTotalSemRet := 0;
  SMDBGrid1.DisableScroll;
  fDMCadAtelier_Mov.cdsConsulta.First;
  while not fDMCadAtelier_Mov.cdsConsulta.Eof do
  begin
    if fDMCadAtelier_Mov.cdsConsultaDT_RETORNO_ATELIER.AsDateTime > 10 then
      vTotalComRet := vTotalComRet + fDMCadAtelier_Mov.cdsConsultaVLR_TOTAL_ATELIER.AsFloat
    else
      vTotalSemRet := vTotalSemRet + fDMCadAtelier_Mov.cdsConsultaVLR_TOTAL_ATELIER.AsFloat;
    fDMCadAtelier_Mov.cdsConsulta.Next;
  end;
  SMDBGrid1.EnableScroll;

  CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',vTotalComRet));
  CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',vTotalSemRet));
end;

procedure TfrmConsAtelier_Mov.BitBtn2Click(Sender: TObject);
var
  vOpcaoImp : String;
begin
  if not(fDMCadAtelier_Mov.cdsConsulta.Active) or (fDMCadAtelier_Mov.cdsConsulta.IsEmpty) then
    exit;

  fDMCadAtelier_Mov.cdsConsulta.IndexFieldNames := 'NOME_ATELIER;DT_RETORNO_ATELIER';

  SMDBGrid1.DisableScroll;
  fRelMovAtelier := TfRelMovAtelier.Create(Self);
  fRelMovAtelier.fDMCadAtelier_Mov := fDMCadAtelier_Mov;
  fRelMovAtelier.vImpObs       := CheckBox1.Checked;
  fRelMovAtelier.vImpCliente   := CheckBox2.Checked;

  vOpcaoImp  := '';
  case ComboBox1.ItemIndex of
    0 : vOpcaoImp := vOpcaoImp + '(Não enviado ao Atelier)';
    1 : vOpcaoImp := vOpcaoImp + '(Atelier não retornou)';
    2 : vOpcaoImp := vOpcaoImp + '(Atelier Retornou)';
  end;
  if RxDBLookupCombo2.Text <> '' then
    vOpcaoImp := vOpcaoImp + '(Cliente: ' + RxDBLookupCombo2.Text + ')';
  if trim(Edit1.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Pedido O.C.: ' + Edit1.Text + ')';

  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Emissão Ini: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Emissão Final: ' + DateEdit2.Text + ')';

  if (DateEdit3.Date > 10) and (DateEdit4.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Entrega: ' + DateEdit3.Text + ' a ' + DateEdit4.Text + ')'
  else
  if (DateEdit3.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Entrega Ini: ' + DateEdit3.Text + ')'
  else
  if (DateEdit4.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Entrega Final: ' + DateEdit4.Text + ')';

  if (DateEdit6.Date > 10) and (DateEdit7.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Envio: ' + DateEdit6.Text + ' a ' + DateEdit7.Text + ')'
  else
  if (DateEdit6.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Envio Ini: ' + DateEdit6.Text + ')'
  else
  if (DateEdit7.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Envio Final: ' + DateEdit7.Text + ')';

  if (DateEdit8.Date > 10) and (DateEdit9.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Retorno: ' + DateEdit8.Text + ' a ' + DateEdit9.Text + ')'
  else
  if (DateEdit8.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Retorno Ini: ' + DateEdit8.Text + ')'
  else
  if (DateEdit9.Date > 10) then
    vOpcaoImp := vOpcaoImp + '(Dt.Retorno Final: ' + DateEdit9.Text + ')';
  fRelMovAtelier.vOpcaoImp := vOpcaoImp;
  if RxDBLookupCombo1.Text <> '' then
    fRelMovAtelier.vOpcaoForn := RxDBLookupCombo1.Text;
  fRelMovAtelier.RLReport1.PreviewModal;
  fRelMovAtelier.RLReport1.Free;
  FreeAndNil(fRelMovAtelier);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsAtelier_Mov.prc_Gravar_Mov;
var
  ID: TTransactionDesc;
  vAux : Real;
begin
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    fDMCadAtelier_Mov.cdsPedido_Item.Close;
    fDMCadAtelier_Mov.sdsPedido_Item.ParamByName('ID').AsInteger   := fDMCadAtelier_Mov.cdsConsultaID.AsInteger;
    fDMCadAtelier_Mov.sdsPedido_Item.ParamByName('ITEM').AsInteger := fDMCadAtelier_Mov.cdsConsultaITEM.AsInteger;
    fDMCadAtelier_Mov.cdsPedido_Item.Open;
    if not fDMCadAtelier_Mov.cdsPedido_Item.IsEmpty then
    begin
      fDMCadAtelier_Mov.cdsPedido_Item.Edit;
      if fDMCadAtelier_Mov.vOpcao = 'I' then
      begin
        if (fDMCadAtelier_Mov.vID_Atelier > 0) and ((fDMCadAtelier_Mov.cdsConsultaID_ATELIER.AsInteger <= 0) or (fDMCadAtelier_Mov.cdsConsultaID_ATELIER.IsNull)) then
          fDMCadAtelier_Mov.cdsPedido_ItemID_ATELIER.AsInteger := fDMCadAtelier_Mov.vID_Atelier
        else
        if fDMCadAtelier_Mov.vID_Atelier <= 0 then
          fDMCadAtelier_Mov.cdsPedido_ItemID_ATELIER.Clear;
        fDMCadAtelier_Mov.cdsPedido_ItemVLR_UNITARIO_ATELIER.AsFloat  := fDMCadAtelier_Mov.vVlrUnitario;
        vAux := 0;
        if StrToFloat(FormatFloat('0.00',fDMCadAtelier_Mov.vVlrUnitario)) >= 0 then
          vAux := StrToFloat(FormatFloat('0.00',fDMCadAtelier_Mov.cdsPedido_ItemVLR_UNITARIO_ATELIER.AsFloat * fDMCadAtelier_Mov.cdsPedido_ItemQTD.AsFloat));
        fDMCadAtelier_Mov.cdsPedido_ItemVLR_TOTAL_ATELIER.AsFloat  := StrToFloat(FormatFloat('0.00',vAux));
      end;
      if (fDMCadAtelier_Mov.vID_Atelier > 0) and ((fDMCadAtelier_Mov.cdsConsultaID_ATELIER.AsInteger <= 0) or (fDMCadAtelier_Mov.cdsConsultaID_ATELIER.IsNull)) then
        fDMCadAtelier_Mov.cdsPedido_ItemID_ATELIER.AsInteger := fDMCadAtelier_Mov.vID_Atelier;
      if (fDMCadAtelier_Mov.vTipo_ER = 'E') or (fDMCadAtelier_Mov.vOpcao = 'I') then
      begin
        if fDMCadAtelier_Mov.vDtEnvio > 10 then
          fDMCadAtelier_Mov.cdsPedido_ItemDT_ENVIO_ATELIER.AsDateTime := fDMCadAtelier_Mov.vDtEnvio
        else
          fDMCadAtelier_Mov.cdsPedido_ItemDT_ENVIO_ATELIER.Clear;
      end;
      if (fDMCadAtelier_Mov.vTipo_ER = 'R') or (fDMCadAtelier_Mov.vOpcao = 'I') then
      begin
        if fDMCadAtelier_Mov.vDtRetorno > 10 then
          fDMCadAtelier_Mov.cdsPedido_ItemDT_RETORNO_ATELIER.AsDateTime := fDMCadAtelier_Mov.vDtRetorno
        else
          fDMCadAtelier_Mov.cdsPedido_ItemDT_RETORNO_ATELIER.Clear;
      end;

      fDMCadAtelier_Mov.cdsPedido_Item.Post;
      fDMCadAtelier_Mov.cdsPedido_Item.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);

      vContador := vContador + 1;
    end;

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

end;

procedure TfrmConsAtelier_Mov.prc_Le_Consulta;
begin
 vContador := 0;
  fDMCadAtelier_Mov.cdsConsulta.First;
  while not fDMCadAtelier_Mov.cdsConsulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if (fDMCadAtelier_Mov.cdsConsultaID_ATELIER.AsInteger > 0) or (fDMCadAtelier_Mov.vID_Atelier > 0) then
      begin
        if (fDMCadAtelier_Mov.vTipo_ER = 'E') and (fDMCadAtelier_Mov.cdsConsultaDT_ENVIO_ATELIER.AsDateTime < 10) then
          prc_Gravar_Mov
        else
        if (fDMCadAtelier_Mov.vTipo_ER = 'R') and ((fDMCadAtelier_Mov.cdsConsultaDT_RETORNO_ATELIER.AsDateTime < 10) and (fDMCadAtelier_Mov.cdsConsultaDT_ENVIO_ATELIER.AsDateTime > 10))  then
          prc_Gravar_Mov;
      end;
    end;
    fDMCadAtelier_Mov.cdsConsulta.Next;
  end;
  MessageDlg('Registros alterados = ' + IntToStr(vContador), mtInformation, [mbOK], 0);
end;

procedure TfrmConsAtelier_Mov.prc_Controlar_Gravacao;
begin
  if fDMCadAtelier_Mov.vOpcao = 'I' then
    prc_Gravar_Mov
  else
    prc_Le_Consulta;
end;

end.
