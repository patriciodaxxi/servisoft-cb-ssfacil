unit UEtiq_Rotulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMConsNotas_ES, ExtCtrls, Mask,
  StdCtrls, ToolEdit, CurrEdit, RxLookup, NxCollection, Grids, DBGrids, SMDBGrid, RzTabs, Menus;

type
  TfrmEtiq_Rotulo = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Pedido: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    TS_Avulsa: TRzTabSheet;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnEtiqueta: TNxButton;
    Panel2: TPanel;
    NxButton2: TNxButton;
    SMDBGrid2: TSMDBGrid;
    Label10: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    btnGerar: TNxButton;
    btnExcluir: TNxButton;
    NxButton1: TNxButton;
    Label13: TLabel;
    Edit1: TEdit;
    Label11: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ckEndEntrega: TCheckBox;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    DateEdit3: TDateEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    Label12: TLabel;
    edtTransportadora: TCurrencyEdit;
    edtNomeTransportadora: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure edtTransportadoraExit(Sender: TObject);
    procedure edtTransportadoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vTipo_Nota: Integer;
    procedure prc_Consultar;
    procedure prc_Le_Nota;
    procedure prc_Imp_Etiqueta;
    procedure prc_Gravar_mEtiq_Rotulo(Qtd, Qtd_Total, NumNota: Integer; LocalEntrega, NumPedido: String; Data: TDateTime ; Nome_Transp : String);
  public
    { Public declarations }
    fDMConsNotas_ES: TDMConsNotas_ES;
    vFilial_Rot: Integer;
  end;                         

var
  frmEtiq_Rotulo: TfrmEtiq_Rotulo;

implementation

uses DB, rsDBUtils, USel_Pessoa, uUtilPadrao;

{$R *.dfm}

procedure TfrmEtiq_Rotulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmEtiq_Rotulo.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo3.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmEtiq_Rotulo.prc_Consultar;
var
  vComando: String;
begin
  vComando := ' WHERE TIPO_REG = ' + QuotedStr('NTS');
  if CurrencyEdit1.AsInteger > 0 then
  begin
    vComando := vComando + ' AND N.NUMNOTA = ' + IntToStr(CurrencyEdit1.AsInteger);
    vComando := vComando + ' AND N.SERIE = ' + QuotedStr(Edit1.Text);
  end;
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND N.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND N.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  if trim(RxDBLookupCombo3.Text) <> '' then
    vComando := vComando + ' AND N.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  fDMConsNotas_ES.cdsNotaFiscal_Rot.Close;
  fDMConsNotas_ES.sdsNotaFiscal_Rot.CommandText := fDMConsNotas_ES.ctNotaFiscal_Rot + vComando;
  fDMConsNotas_ES.cdsNotaFiscal_Rot.Open;
end;

procedure TfrmEtiq_Rotulo.FormShow(Sender: TObject);
begin
  vTipo_Etiqueta := 'ROT';
  fDMConsNotas_ES := TDMConsNotas_ES.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotas_ES);

  if CurrencyEdit1.AsInteger <= 0 then
  begin
    RxDBLookupCombo3.Visible := (fDMConsNotas_ES.cdsFilial.RecordCount > 1);
    Label8.Visible           := (fDMConsNotas_ES.cdsFilial.RecordCount > 1);
    if fDMConsNotas_ES.cdsFilial.RecordCount = 1 then
      RxDBLookupCombo3.KeyValue := fDMConsNotas_ES.cdsFilialID.AsInteger;
  end;
  if vFilial_Rot > 0 then
    RxDBLookupCombo3.KeyValue := vFilial_Rot;
  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
  DateEdit3.Date := Date;
end;

procedure TfrmEtiq_Rotulo.btnEtiquetaClick(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Pedido then
    prc_Le_Nota;
  if fDMConsNotas_ES.mEtiq_Rotulo.IsEmpty then
    Exit;
  if vTipo_Nota = 0 then
    vTipo_Nota := 1;
  SMDBGrid2.DisableScroll;
  prc_Imp_Etiqueta;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmEtiq_Rotulo.prc_Le_Nota;
var
  i: Integer;
  vVolume: Integer;
begin
  fDMConsNotas_ES.mEtiq_Rotulo.EmptyDataSet;
  if fDMConsNotas_ES.cdsNotaFiscal_Rot.IsEmpty then
    exit;
  if fDMConsNotas_ES.cdsNotaFiscal_RotTIPO_NOTA.AsString = 'S' then
    vTipo_Nota := 1
  else
    vTipo_Nota := 2;
  fDMConsNotas_ES.cdsNotaFiscal_Rot.First;
  while not fDMConsNotas_ES.cdsNotaFiscal_Rot.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if fDMConsNotas_ES.cdsFilialID.AsInteger <> fDMConsNotas_ES.cdsNotaFiscal_RotFILIAL.AsInteger then
        fDMConsNotas_ES.cdsFilial.Locate('ID',fDMConsNotas_ES.cdsNotaFiscal_RotFILIAL.AsInteger,[loCaseInsensitive]);
      fDMConsNotas_ES.prc_Abrir_Cliente(fDMConsNotas_ES.cdsNotaFiscal_RotID_CLIENTE.AsInteger);
      //if fDMConsNotas_ES.cdsClienteCODIGO.AsInteger <> fDMConsNotas_ES.cdsNotaFiscal_RotID_CLIENTE.AsInteger then
      //  fDMConsNotas_ES.cdsCliente.Locate('CODIGO',fDMConsNotas_ES.cdsNotaFiscal_RotID_CLIENTE.AsInteger,[loCaseInsensitive]);
      fDMConsNotas_ES.qCidade.Close;
      if fDMConsNotas_ES.cdsNotaFiscal_RotLOCALENTREGA.AsString = 'N' then
        fDMConsNotas_ES.qCidade.ParamByName('ID').AsInteger := fDMConsNotas_ES.cdsNotaFiscal_RotID_CIDADE.AsInteger
      else
        fDMConsNotas_ES.qCidade.ParamByName('ID').AsInteger := fDMConsNotas_ES.cdsNotaFiscal_RotID_CIDADE_ENT.AsInteger;
      fDMConsNotas_ES.qCidade.Open;

      if fDMConsNotas_ES.cdsNotaFiscal_RotQTDVOLUME.AsInteger <= 0 then
        vVolume := 1
      else
        vVolume := fDMConsNotas_ES.cdsNotaFiscal_RotQTDVOLUME.AsInteger;
      for i := 1 to vVolume do
        prc_Gravar_mEtiq_Rotulo(i,vVolume,fDMConsNotas_ES.cdsNotaFiscal_RotNUMNOTA.AsInteger,fDMConsNotas_ES.cdsNotaFiscal_RotLOCALENTREGA.AsString,'',
                                fDMConsNotas_ES.cdsNotaFiscal_RotDTEMISSAO.AsDateTime,fDMConsNotas_ES.cdsNotaFiscal_RotNOME_TRANSP.AsString);
    end;
    fDMConsNotas_ES.cdsNotaFiscal_Rot.Next;
  end;
end;

procedure TfrmEtiq_Rotulo.btnGerarClick(Sender: TObject);
var
  i: Integer;
  vLocal: String;
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(Edit4.Text) = '' then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit4.AsInteger <= 0 then
  begin
    MessageDlg('*** Quantidade não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if DateEdit3.Date <= 10 then
  begin
    MessageDlg('*** Data não informada!', mtError, [mbOk], 0);
    exit;
  end;

  if fDMConsNotas_ES.cdsFilialID.AsInteger <> RxDBLookupCombo1.KeyValue then
    fDMConsNotas_ES.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);

  fDMConsNotas_ES.prc_Abrir_Cliente(CurrencyEdit3.AsInteger);
  //if fDMConsNotas_ES.cdsClienteCODIGO.AsInteger <> RxDBLookupCombo6.KeyValue then
  // fDMConsNotas_ES.cdsCliente.Locate('CODIGO',RxDBLookupCombo6.KeyValue,[loCaseInsensitive]);

  if (trim(fDMConsNotas_ES.cdsClienteENDERECO_ENT.AsString) <> '') and (ckEndEntrega.Checked) then
    vLocal := 'E'
  else
    vLocal := 'N';
  fDMConsNotas_ES.qCidade.Close;
  if vLocal = 'E' then
    fDMConsNotas_ES.qCidade.ParamByName('ID').AsInteger := fDMConsNotas_ES.cdsClienteID_CIDADE_ENT.AsInteger
  else
    fDMConsNotas_ES.qCidade.ParamByName('ID').AsInteger := fDMConsNotas_ES.cdsClienteID_CIDADE.AsInteger;
  fDMConsNotas_ES.qCidade.Open;

  for i := 1 to CurrencyEdit4.AsInteger do
    prc_Gravar_mEtiq_Rotulo(i,CurrencyEdit4.AsInteger,CurrencyEdit2.AsInteger,vLocal,Edit2.Text,DateEdit3.Date,edtNomeTransportadora.Text);
end;

procedure TfrmEtiq_Rotulo.btnExcluirClick(Sender: TObject);
begin
  if fDMConsNotas_ES.mEtiq_Rotulo.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a etiqueta?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMConsNotas_ES.mEtiq_Rotulo.Delete;
end;

procedure TfrmEtiq_Rotulo.prc_Imp_Etiqueta;
var
  vArq: String;
begin
  fDMConsNotas_ES.qFilial_Rel.Close;
  fDMConsNotas_ES.qFilial_Rel.ParamByName('ID').AsInteger      := vFilial_Rot;
  fDMConsNotas_ES.qFilial_Rel.ParamByName('TIPO').AsInteger    := 11;
  fDMConsNotas_ES.qFilial_Rel.ParamByName('POSICAO').AsInteger := vTipo_Nota;
  fDMConsNotas_ES.qFilial_Rel.Open;

  fDMConsNotas_ES.cdsMinuta.Close;
  fDMConsNotas_ES.sdsMinuta.CommandText := fDMConsNotas_ES.ctMinuta + ' AND N.ID = ' + fDMConsNotas_ES.cdsNotaFiscal_RotID.AsString;
  fDMConsNotas_ES.cdsMinuta.Open;

  if fDMConsNotas_ES.qFilial_Rel.IsEmpty then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\TopMaster_Etiq2.fr3'
  else
    vArq := fDMConsNotas_ES.qFilial_RelCAMINHO.AsString;
  if FileExists(vArq) then
    fDMConsNotas_ES.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsNotas_ES.frxReport1.ShowReport;
end;

procedure TfrmEtiq_Rotulo.prc_Gravar_mEtiq_Rotulo(Qtd, Qtd_Total, NumNota: Integer; LocalEntrega, NumPedido: String; Data: TDateTime ; Nome_Transp : String);
begin

  fDMConsNotas_ES.mEtiq_Rotulo.Insert;
  fDMConsNotas_ES.mEtiq_RotuloNome_Filial.AsString        := fDMConsNotas_ES.cdsFilialNOME.AsString;
  fDMConsNotas_ES.mEtiq_RotuloCNPJ_CPF_Filial.AsString    := fDMConsNotas_ES.cdsFilialCNPJ_CPF.AsString;
  fDMConsNotas_ES.mEtiq_RotuloEnd_Filial.AsString         := fDMConsNotas_ES.cdsFilialENDERECO.AsString + ',' + fDMConsNotas_ES.cdsFilialNUM_END.AsString;
  fDMConsNotas_ES.mEtiq_RotuloComplemento_Filial.AsString := fDMConsNotas_ES.cdsFilialCOMPLEMENTO_END.AsString;
  fDMConsNotas_ES.mEtiq_RotuloBairro_Filial.AsString      := fDMConsNotas_ES.cdsFilialBAIRRO.AsString;
  fDMConsNotas_ES.mEtiq_RotuloCep_Filial.AsString         := fDMConsNotas_ES.cdsFilialCEP.AsString;
  fDMConsNotas_ES.mEtiq_RotuloCidade_Filial.AsString      := fDMConsNotas_ES.cdsFilialNOME_CIDADE.AsString;
  fDMConsNotas_ES.mEtiq_RotuloUF_Filial.AsString          := fDMConsNotas_ES.cdsFilialUF.AsString;
  fDMConsNotas_ES.mEtiq_RotuloEmail_Filial.AsString       := fDMConsNotas_ES.cdsFilialEMAIL.AsString;
  fDMConsNotas_ES.mEtiq_RotuloNome_Cliente.AsString       := fDMConsNotas_ES.cdsClienteNOME.AsString;
  if LocalEntrega = 'E' then
  begin
    fDMConsNotas_ES.mEtiq_RotuloCNPJ_CPF_Cliente.AsString    := fDMConsNotas_ES.cdsClienteCNPJ_CPF_ENT.AsString;
    fDMConsNotas_ES.mEtiq_RotuloEnd_Cliente.AsString         := fDMConsNotas_ES.cdsClienteENDERECO_ENT.AsString + ', ' + fDMConsNotas_ES.cdsClienteNUM_END_ENT.AsString;
    fDMConsNotas_ES.mEtiq_RotuloBairro_Cliente.AsString      := fDMConsNotas_ES.cdsClienteBAIRRO_ENT.AsString;
    fDMConsNotas_ES.mEtiq_RotuloCep_Cliente.AsString         := fDMConsNotas_ES.cdsClienteCEP_ENT.AsString;
    fDMConsNotas_ES.mEtiq_RotuloCidade_Cliente.AsString      := fDMConsNotas_ES.qCidadeNOME.AsString;
    fDMConsNotas_ES.mEtiq_RotuloUF_Cliente.AsString          := fDMConsNotas_ES.cdsClienteUF_ENT.AsString;
    fDMConsNotas_ES.mEtiq_RotuloComplemento_Cliente.AsString := fDMConsNotas_ES.cdsClienteCOMPLEMENTO_END_ENT.AsString;
    fDMConsNotas_ES.mEtiq_RotuloLocal_Endereco.AsString      := 'End. Entrega';
  end
  else
  begin
    fDMConsNotas_ES.mEtiq_RotuloCNPJ_CPF_Cliente.AsString    := fDMConsNotas_ES.cdsClienteCNPJ_CPF.AsString;
    fDMConsNotas_ES.mEtiq_RotuloEnd_Cliente.AsString         := fDMConsNotas_ES.cdsClienteENDERECO.AsString + ', ' + fDMConsNotas_ES.cdsClienteNUM_END.AsString;
    fDMConsNotas_ES.mEtiq_RotuloBairro_Cliente.AsString      := fDMConsNotas_ES.cdsClienteBAIRRO.AsString;
    fDMConsNotas_ES.mEtiq_RotuloCep_Cliente.AsString         := fDMConsNotas_ES.cdsClienteCEP.AsString;
    fDMConsNotas_ES.mEtiq_RotuloCidade_Cliente.AsString      := fDMConsNotas_ES.qCidadeNOME.AsString;
    fDMConsNotas_ES.mEtiq_RotuloUF_Cliente.AsString          := fDMConsNotas_ES.cdsClienteUF.AsString;
    fDMConsNotas_ES.mEtiq_RotuloComplemento_Cliente.AsString := fDMConsNotas_ES.cdsClienteCOMPLEMENTO_END.AsString;
    fDMConsNotas_ES.mEtiq_RotuloLocal_Endereco.AsString      := 'End. Cadastro';
  end;
  fDMConsNotas_ES.mEtiq_RotuloNumero.AsInteger       := Qtd;
  fDMConsNotas_ES.mEtiq_RotuloNumero_Total.AsInteger := Qtd_Total;
  fDMConsNotas_ES.mEtiq_RotuloNumNota.AsInteger      := NumNota;
  fDMConsNotas_ES.mEtiq_RotuloNumPedido.AsString     := NumPedido;
  fDMConsNotas_ES.mEtiq_RotuloData.AsDateTime        := Data;
  fDMConsNotas_ES.mEtiq_RotuloNome_Transp.AsString   := Nome_Transp;
  fDMConsNotas_ES.mEtiq_Rotulo.Post;
end;

procedure TfrmEtiq_Rotulo.NxButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir as etiquetas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  while not fDMConsNotas_ES.mEtiq_Rotulo.IsEmpty do
    fDMConsNotas_ES.mEtiq_Rotulo.Delete;
end;

procedure TfrmEtiq_Rotulo.CurrencyEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := CurrencyEdit3.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    CurrencyEdit3.AsInteger := vCodPessoa_Pos;
    CurrencyEdit3.SetFocus;
  end;
end;

procedure TfrmEtiq_Rotulo.CurrencyEdit3Exit(Sender: TObject);
begin
  Edit4.Text := '';
  if CurrencyEdit3.AsInteger > 0 then
  begin
    fDMConsNotas_ES.prc_Abrir_Cliente(CurrencyEdit3.AsInteger);
    Edit4.Text := fDMConsNotas_ES.cdsClienteNOME.AsString;
    if fDMConsNotas_ES.cdsClienteCODIGO.AsInteger <= 0 then
    begin
      MessageDlg('*** Cliente não encontrado!', mtError, [mbOk], 0);
      CurrencyEdit3.SetFocus;
    end;
  end;
end;

procedure TfrmEtiq_Rotulo.edtTransportadoraExit(Sender: TObject);
begin
  edtNomeTransportadora.Text := '';
  if edtTransportadora.AsInteger > 0 then
  begin
    fDMConsNotas_ES.prc_Abrir_Transportadora(edtTransportadora.AsInteger);
    edtNomeTransportadora.Text := fDMConsNotas_ES.cdsClienteNOME.AsString;
    if fDMConsNotas_ES.cdsClienteCODIGO.AsInteger <= 0 then
    begin
      MessageDlg('*** Cliente não encontrado!', mtError, [mbOk], 0);
      edtTransportadora.SetFocus;
    end;
  end;

end;

procedure TfrmEtiq_Rotulo.edtTransportadoraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := edtTransportadora.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'T';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    edtTransportadora.AsInteger := vCodPessoa_Pos;
    edtTransportadora.SetFocus;
  end;
end;

end.
