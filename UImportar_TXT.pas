unit UImportar_TXT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, Grids,
  RzTabs, RzPanel, NxCollection, UDMCadPedido, SqlExpr, dbXPress, UDMCadNotaFiscal, UDMImportarXML, DBCtrls, DBGrids, SMDBGrid,
  UImportar_TXT_Cli, uCalculo_NotaFiscal, DB, RxLookup, uCadNotaFiscal_Itens;

type
  TfrmImportar_TXT = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    FilenameEdit1: TFilenameEdit;
    gbxVendedor: TRzGroupBox;
    RzPageControl2: TRzPageControl;
    TS_Registros: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    btnGravar_Pedido: TNxButton;
    TabSheet1: TRzTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    ComboBox2: TComboBox;
    RzGroupBox2: TRzGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label13: TLabel;
    Label14: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FilenameEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FilenameEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravar_PedidoClick(Sender: TObject);
    procedure SMDBGrid4ColExit(Sender: TObject);
  private
    { Private declarations }
    fDMImportarXML: TDMImportarXML;
    ffrmImportar_TXT_Cli: TfrmImportar_TXT_Cli;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;

    Registro: String;
    vCNPJ_Cliente: String;
    vCNPJ_Empresa: String;
    vErro: Boolean;
    vID_Variacao: Integer;
    vItem_Nota: Integer;
    vItem_Imp: Integer;
    vID_NCM: Integer;

    procedure prc_Le_TXT;
    procedure prc_Gravar_mCliente;
    procedure prc_Gravar_mItensNota;
    procedure prc_Gravar_OutrosNotas;
    procedure prc_Verificar_Itens;
    procedure prc_Verificar_Cliente;
    procedure prc_Excluir_Campo;
    function fnc_Buscar_Campo: String;
    function Replace(Str, Ant, Novo: string): string;

    procedure prc_Gravar_Nota;
    procedure prc_Gravar_Itens;
    procedure prc_Gravar_Cliente;
    procedure prc_Gravar_Cidade;
    procedure prc_Gravar_Pais;
    procedure prc_Gravar_NotaFiscal_IMP;
    procedure prc_Gravar_NotaFiscal_IMP_ADI;
    procedure prc_Le_Importacao;

    procedure prc_scroll(DataSet: TDataSet);

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
  end;

var
  frmImportar_TXT: TfrmImportar_TXT;

implementation

uses rsDBUtils, UCadPedido_Itens, DmdDatabase, UDMUtil, uUtilPadrao, USel_Produto, TypInfo;

{$R *.dfm}

procedure TfrmImportar_TXT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportar_TXT.FilenameEdit1Change(Sender: TObject);
begin
  if trim(FilenameEdit1.Text) <> '' then
    prc_Le_TXT;
end;

procedure TfrmImportar_TXT.FormShow(Sender: TObject);
begin
  fDMImportarXML := TDMImportarXML.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMImportarXML);
  fDMImportarXML.mDadosImp_Adi.AFTERSCROLL := prc_scroll;
end;

procedure TfrmImportar_TXT.prc_Le_TXT;
var
  F: TextFile;
  vEnd_Arquivo: String;
begin
  vItem_Nota := 0;
  vItem_Imp  := 0;
  vErro      := False;
  fDMImportarXML.vQtd_Produto_NaoEncontrado := 0;
  fDMImportarXML.vQtd_Adicao_Erro := 0;
  fDMImportarXML.vCliente_OK      := False;
  vEnd_Arquivo                    := FilenameEdit1.Text;
  if copy(vEnd_Arquivo,1,1) = '"' then
    Delete(vEnd_Arquivo,1,1);
  if copy(vEnd_Arquivo,Length(vEnd_Arquivo),1) = '"' then
    Delete(vEnd_Arquivo,Length(vEnd_Arquivo),1);
  vID_Variacao  := 0;
  vCNPJ_Cliente := '';
  fDMImportarXML.mRegistro.EmptyDataSet;
  fDMImportarXML.mItensNota.EmptyDataSet;
  fDMImportarXML.mDadosImp.EmptyDataSet;
  fDMImportarXML.mDadosImp_Adi.EmptyDataSet;
  fDMImportarXML.mItensNota_Imp.EmptyDataSet;
  fDMImportarXML.mItensNota_Adi.EmptyDataSet;
  fDMImportarXML.mOutrosNota.EmptyDataSet;
  try

    vCNPJ_Empresa := '';
    AssignFile(F,vEnd_Arquivo);
    Reset(F);
    while not Eof(F) do
    begin
      ReadLn(F,Registro);
      if Copy(Registro,1,1) = 'E' then
        prc_Gravar_mCliente
      else
      if Copy(Registro,1,4) = 'C02|' then
        vCNPJ_Empresa := Monta_Texto(copy(Registro,5,14),0)
      else
      if (Copy(Registro,1,1) = 'H') or (Copy(Registro,1,1) = 'I') or (Copy(Registro,1,1) = 'N') or (Copy(Registro,1,1) = 'O') or
         (Copy(Registro,1,1) = 'P') or (Copy(Registro,1,1) = 'Q') or (Copy(Registro,1,1) = 'S') then
        prc_Gravar_mItensNota
      else
      if (Copy(Registro,1,3) = 'X26') then
        prc_Gravar_OutrosNotas;
    end;
  finally
    CloseFile(F);
  end;
  if fDMImportarXML.mRegistro.State in [dsEdit,dsInsert] then
    fDMImportarXML.mRegistro.Post;
    //aqui 08/02/2014
  prc_Verificar_Cliente;
  prc_Verificar_Itens;

  Label9.Caption  := FormatFloat('0',fDMImportarXML.vQtd_Produto_NaoEncontrado);
  Label12.Caption := FormatFloat('0',fDMImportarXML.vQtd_Adicao_Erro);
  Label10.Visible := not(fDMImportarXML.vCliente_OK);

  vCNPJ_Empresa := copy(vCNPJ_Empresa,1,2) + '.' + copy(vCNPJ_Empresa,3,3) + '.' + copy(vCNPJ_Empresa,6,3) + '/' + copy(vCNPJ_Empresa,9,4) + '-' + copy(vCNPJ_Empresa,13,2);
  if (fDMImportarXML.cdsFilial.Locate('CNPJ_CPF',vCNPJ_Empresa,[loCaseInsensitive])) then
    RxDBLookupCombo2.KeyValue := fDMImportarXML.cdsFilialID.AsInteger
  else
    RxDBLookupCombo2.ClearValue;
end;

procedure TfrmImportar_TXT.prc_Gravar_mCliente;
var
  vNome: String;
  vTipo: String;
begin
  vTipo := copy(Registro,1,4);
  prc_Excluir_Campo;
  if (copy(vTipo,1,2) = 'E|') then
  begin
    vNome := fnc_Buscar_Campo;
    if not(fDMImportarXML.mRegistro.Locate('Nome',vNome,[loCaseInsensitive])) then
      fDMImportarXML.mRegistro.Insert;
    fDMImportarXML.mRegistroNome.AsString := vNome;
    fDMImportarXML.mRegistroTipo_Reg.AsString := 'CLI';
    fDMImportarXML.mRegistroRegistro.AsString := 'Cliente';
    fDMImportarXML.mRegistroInsc_Estadual.AsString := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroInsc_Suframa.AsString  := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroEmail.AsString         := fnc_Buscar_Campo;
  end
  else
  if (copy(vTipo,1,4) = 'E02|') then
  begin
    fDMImportarXML.mRegistroCNPJ_CPF.AsString := fnc_Buscar_Campo;
    if trim(fDMImportarXML.mRegistroCNPJ_CPF.AsString) = '' then
      fDMImportarXML.mRegistroCNPJ_CPF.AsString := '00.000.000/0000-00';
    fDMImportarXML.mRegistroPessoa.AsString := 'J';
  end
  else
  if (copy(vTipo,1,4) = 'E03|') then
  begin
    fDMImportarXML.mRegistroCNPJ_CPF.AsString := fnc_Buscar_Campo;
    if trim(fDMImportarXML.mRegistroCNPJ_CPF.AsString) = '' then
      fDMImportarXML.mRegistroCNPJ_CPF.AsString := '000.000.000-00';
    fDMImportarXML.mRegistroPessoa.AsString := 'F';
  end
  else
  if (copy(vTipo,1,4) = 'E05|') then
  begin
    fDMImportarXML.mRegistroEndereco.AsString        := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroNum_Endereco.AsString    := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroComplemento_End.AsString := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroBairro.AsString          := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroCod_Municipio.AsString   := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroNome_Cidade.AsString     := UpperCase(fnc_Buscar_Campo);
    fDMImportarXML.mRegistroUF.AsString              := UpperCase(fnc_Buscar_Campo);
    fDMImportarXML.mRegistroCep.AsString             := fnc_Buscar_Campo;
    if trim(fDMImportarXML.mRegistroCep.AsString) = '' then
      fDMImportarXML.mRegistroCep.AsString := '99999999';
    fDMImportarXML.mRegistroCod_Pais.AsString  := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroNome_Pais.AsString := fnc_Buscar_Campo;
    fDMImportarXML.mRegistroFone.AsString      := fnc_Buscar_Campo;
  end;
end;

procedure TfrmImportar_TXT.prc_Excluir_Campo;
var
  i: Integer;
begin
   i := Pos('|',Registro);
   delete(Registro,1,i);
end;

function TfrmImportar_TXT.fnc_Buscar_Campo: String;
var
  i: Integer;
begin
  i := Pos('|',Registro);
  Result := Copy(Registro,1,i-1);
  prc_Excluir_Campo;
end;

procedure TfrmImportar_TXT.prc_Gravar_mItensNota;
var
  vCampo: String;
  vTipo: String;
  vNum: String;
  vItemAux: String;
  vTexto1: String;
begin
  vTipo := copy(Registro,1,4);
  prc_Excluir_Campo;
  if (copy(vTipo,1,2) = 'H|') then
  begin
    vItem_Nota := vItem_Nota + 1;
    fDMImportarXML.mItensNota.Insert;
    fDMImportarXML.mItensNotaItem.AsInteger         := vItem_Nota;
    fDMImportarXML.mItensNotaInfAdicionais.AsString := fnc_Buscar_Campo;
  end
  else
  if (copy(vTipo,1,2) = 'I|') then
  begin
    fDMImportarXML.mItensNotaCodProduto.AsString  := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaCodBarra.AsString    := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaNomeProduto.AsString := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaNCM.AsString         := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaEX_TIPI.AsString     := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaCFOP.AsString        := fnc_Buscar_Campo;
    if fDMImportarXML.mItensNotaCFOP.AsString = '000' then
      fDMImportarXML.mItensNotaCFOP.AsString := RxDBLookupCombo1.Text;
    fDMImportarXML.mItensNotaUnidade.AsString     := fnc_Buscar_Campo;
    vCampo                                        := Replace(fnc_Buscar_Campo,'.',',');
    fDMImportarXML.mItensNotaQtd.AsFloat          := StrToFloat(FormatFloat('0.0000',StrToFloat(vCampo)));
    vCampo                                        := Replace(fnc_Buscar_Campo,'.',',');
    fDMImportarXML.mItensNotaVlrUnitario.AsFloat  := StrToFloat(FormatFloat('0.000000',StrToFloat(vCampo)));
    vCampo                                        := Replace(fnc_Buscar_Campo,'.',',');
    fDMImportarXML.mItensNotaVlrTotal.AsFloat     := StrToFloat(FormatFloat('0.000000',StrToFloat(vCampo)));
    vCampo                                        := fnc_Buscar_Campo;
    vCampo                                        := fnc_Buscar_Campo;
    vCampo                                        := fnc_Buscar_Campo;
    vCampo                                        := fnc_Buscar_Campo;
    vCampo                                        := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrFrete.AsFloat     := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo                                        := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrSeguro.AsFloat    := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo                                        := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrDesconto.AsFloat  := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo                                        := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrOutrasDespesas.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,4) = 'I18|') then
  begin
    vNum := fnc_Buscar_Campo;
    if not fDMImportarXML.mDadosImp.Locate('NumDI',vNum,[loCaseInsensitive]) then
    begin
      vItem_Imp := vItem_Imp + 1;
      fDMImportarXML.mDadosImp.Insert;
      fDMImportarXML.mDadosImpItem_Imp.AsInteger := vItem_Imp;
      fDMImportarXML.mDadosImpNumDI.AsString     := vNum;
      vCampo                                     := fnc_Buscar_Campo;
      vTexto1 := Monta_Numero(vCampo,0);
      if (trim(vCampo) <> '') and (trim(vTexto1) <> '') then
        fDMImportarXML.mDadosImpDtRegistro.AsDateTime := EncodeDate(StrToInt(copy(vCampo,1,4)),StrToInt(copy(vCampo,6,2)),StrToInt(copy(vCampo,9,2)));
      fDMImportarXML.mDadosImpLocal_Desembaraco.AsString := fnc_Buscar_Campo;
      fDMImportarXML.mDadosImpUF.AsString                := fnc_Buscar_Campo;
      vCampo                                             := fnc_Buscar_Campo;
      if (trim(vCampo) <> '') and (Length(vCampo) > 8) then
        fDMImportarXML.mDadosImpDtDesembaracao.AsDateTime := EncodeDate(StrToInt(copy(vCampo,1,4)),StrToInt(copy(vCampo,6,2)),StrToInt(copy(vCampo,9,2)));
      fDMImportarXML.mDadosImpCodExportador.AsString := fnc_Buscar_Campo;
      fDMImportarXML.mDadosImp.Post;
    end;
    fDMImportarXML.mItensNota_Imp.Insert;
    fDMImportarXML.mItensNota_ImpItem.AsInteger     := vItem_Nota;
    fDMImportarXML.mItensNota_ImpItem_Imp.AsInteger := vItem_Imp;
    fDMImportarXML.mItensNota_ImpNum_DI.AsString    := vNum;
    fDMImportarXML.mItensNota_Imp.Post;
  end
  else
  if (copy(vTipo,1,4) = 'I25|') then
  begin
    vNum     := fnc_Buscar_Campo;
    vItemAux := fnc_Buscar_Campo;
    if not (fDMImportarXML.mDadosImp_Adi.Locate('NumAdicao;Item_Adi',VarArrayOf([vNum,vItemAux]),[locaseinsensitive])) then
    begin
      fDMImportarXML.mDadosImp_Adi.Insert;
      fDMImportarXML.mDadosImp_AdiNumAdicao.AsString := vNum;
      fDMImportarXML.mDadosImp_AdiItem_Adi.AsString  := vItemAux;
      fDMImportarXML.mDadosImp_AdiCodFabricante.AsString := fnc_Buscar_Campo;
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mDadosImp_AdiVlrDesconto.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      fDMImportarXML.mDadosImp_Adi.Post;
    end;
    fDMImportarXML.mItensNota_Adi.Insert;
    fDMImportarXML.mItensNota_AdiItem.AsInteger     := vItem_Nota;
    fDMImportarXML.mItensNota_AdiItem_Imp.AsInteger := vItem_Imp;
    fDMImportarXML.mItensNota_AdiNum_Adi.AsString   := vNum;
    fDMImportarXML.mItensNota_AdiItem_Adi.AsString  := vItemAux;
    fDMImportarXML.mItensNota_Adi.Post;
  end
  else
  if (copy(vTipo,1,4) = 'N02|') or (copy(vTipo,1,4) = 'N04|') then
  begin
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaOrigem.AsString     := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaCodSitTrib.AsString := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaModICMS.AsString    := fnc_Buscar_Campo;
    if copy(vTipo,1,4) = 'N04|' then
    begin
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaPercRedIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    end;
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaBaseIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaAliqIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,4) = 'N05|') then
  begin
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaOrigem.AsString     := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaCodSitTrib.AsString := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaModICMS.AsString    := fnc_Buscar_Campo;
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaPercMVAST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaPercRedBCST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaBaseCST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaPercIcmsST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrIcmsST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,4) = 'N06|') or (copy(vTipo,1,4) = 'N07|') or (copy(vTipo,1,4) = 'N09|') or (copy(vTipo,1,4) = 'N10|') then
  begin
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaOrigem.AsString     := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaCodSitTrib.AsString := fnc_Buscar_Campo;
    if (copy(vTipo,1,4) = 'N09|') or (copy(vTipo,1,4) = 'N10|') then
    begin
      fDMImportarXML.mItensNotaModICMS.AsString := fnc_Buscar_Campo;
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaPercRedIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaBaseIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaAliqIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaVlrIcms.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      fDMImportarXML.mItensNotaModIcmsST.AsString := fnc_Buscar_Campo;
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaPercMVAST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaPercRedBCST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaBaseCST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaPercIcmsST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaVlrIcmsST.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vTipo := '';
    end;
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,4) = 'N08|') then
  begin
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaOrigem.AsString     := fnc_Buscar_Campo;
    fDMImportarXML.mItensNotaCodSitTrib.AsString := fnc_Buscar_Campo;
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaBaseCSTRet.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrIcmsCSTRet.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,3) = 'O07') or (copy(vTipo,1,3) = 'O08') or (copy(vTipo,1,3) = 'O10') then
  begin
    fDMImportarXML.mItensNota.Edit;
    if (copy(vTipo,1,3) <> 'O10') then
      fDMImportarXML.mItensNotaCodCSTIPI.AsString := fnc_Buscar_Campo;
    if (copy(vTipo,1,3) = 'O10') then
    begin
      vCampo := fnc_Buscar_Campo;
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaAliqIPI.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    end;
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,2) = 'P|') then
  begin
    fDMImportarXML.mItensNota.Edit;
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaBaseImportacao.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrDespesaAduaneira.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrImportacao.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    fDMImportarXML.mItensNotaVlrIOF.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,1) = 'Q') and (copy(vTipo,1,2) <> 'Q|') then
  begin
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaCodPIS.AsString := fnc_Buscar_Campo;
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    if (copy(vTipo,1,3) = 'Q02') or (copy(vTipo,1,3) = 'Q03') then
    begin
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaAliqPIS.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaVlrPis.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    end
    else
    if (copy(vTipo,1,3) = 'Q05') then
      fDMImportarXML.mItensNotaVlrPis.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)))
    else
    if (copy(vTipo,1,3) = 'Q07') or (copy(vTipo,1,3) = 'Q10') then
    begin
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaAliqPIS.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    end;
    fDMImportarXML.mItensNota.Post;
  end
  else
  if (copy(vTipo,1,1) = 'S') and (copy(vTipo,1,2) <> 'S|') then
  begin
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaCodCofins.AsString := fnc_Buscar_Campo;
    vCampo := Replace(fnc_Buscar_Campo,'.',',');
    if vCampo = '' then vCampo:= '0';
    if (copy(vTipo,1,3) = 'S02') or (copy(vTipo,1,3) = 'S03') then
    begin
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaAliqCofins.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaVlrCofins.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    end
    else
    if (copy(vTipo,1,3) = 'S05') then
      fDMImportarXML.mItensNotaVlrCofins.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)))
    else
    if (copy(vTipo,1,3) = 'S07') or (copy(vTipo,1,3) = 'S09') then
    begin
      vCampo := Replace(fnc_Buscar_Campo,'.',',');
      if vCampo = '' then vCampo:= '0';
      fDMImportarXML.mItensNotaAliqCofins.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vCampo)));
    end;

    fDMImportarXML.mItensNota.Post;
  end;
end;

function TfrmImportar_TXT.Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

procedure TfrmImportar_TXT.prc_Gravar_OutrosNotas;
var
  vCampo: String;
begin
  prc_Excluir_Campo;
  fDMImportarXML.mOutrosNota.Insert;
  fDMImportarXML.mOutrosNotaQtdVolume.AsString     := FormatFloat('0',StrToInt(fnc_Buscar_Campo));
  fDMImportarXML.mOutrosNotaEspecie.AsString       := fnc_Buscar_Campo;
  fDMImportarXML.mOutrosNotaMarca.AsString         := fnc_Buscar_Campo;
  fDMImportarXML.mOutrosNotaNumeroVolumes.AsString := fnc_Buscar_Campo;
  vCampo := Replace(fnc_Buscar_Campo,'.',',');
  if vCampo = '' then vCampo:= '0';
  fDMImportarXML.mOutrosNotaPesoLiquido.AsFloat    := StrToFloat(FormatFloat('0.000',StrToFloat(vCampo)));
  vCampo := Replace(fnc_Buscar_Campo,'.',',');
  if vCampo = '' then vCampo:= '0';
  fDMImportarXML.mOutrosNotaPesoBruto.AsFloat      := StrToFloat(FormatFloat('0.000',StrToFloat(vCampo)));
  fDMImportarXML.mOutrosNota.Post;
end;

procedure TfrmImportar_TXT.prc_Verificar_Itens;
begin
  fDMImportarXML.mItensNota.First;
  while not fDMImportarXML.mItensNota.Eof do
  begin
    fDMImportarXML.mItensNota.Edit;
    if fDMImportarXML.mRegistroID.AsInteger > 0 then
      fDMImportarXML.mItensNotaCodFornecedor.AsInteger := fDMImportarXML.mRegistroID.AsInteger;
      //aqui
    if ComboBox1.ItemIndex = 0 then
    begin
      fDMImportarXML.prc_Abrir_Produto(0,fDMImportarXML.mItensNotaCodProduto.AsString,'');
      fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger := fDMImportarXML.cdsProdutoID.AsInteger;
    end
    else
    begin
      if fDMImportarXML.mItensNotaCodFornecedor.AsInteger > 0 then
        fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger := fDMImportarXML.fnc_Abrir_Produto_Forn(fDMImportarXML.mItensNotaCodProduto.AsString,fDMImportarXML.mItensNotaCodFornecedor.AsInteger,fDMImportarXML.mItensNotaNomeProduto.AsString);
      if fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger <= 0 then
      begin
        fDMImportarXML.prc_Abrir_Produto(0,'',fDMImportarXML.mItensNotaNomeProduto.AsString);
        if not fDMImportarXML.cdsProduto.IsEmpty then
          fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger := fDMImportarXML.cdsProdutoID.AsInteger;
      end;
    end;
    if fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger > 0 then
    begin
      fDMImportarXML.prc_Abrir_Produto(fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger,'');
      if trim(fDMImportarXML.mItensNotaNCM.AsString) = '' then
       fDMImportarXML.mItensNotaID_NCM.AsInteger := fDMImportarXML.cdsProdutoID_NCM.AsInteger;
    end;
    if trim(fDMImportarXML.mItensNotaNCM.AsString) <> '' then
      fDMImportarXML.mItensNotaID_NCM.AsInteger := fDMImportarXML.fnc_Abrir_NCM(fDMImportarXML.mItensNotaNCM.AsString)
    else
    begin
      fDMImportarXML.qNCM.Close;
      fDMImportarXML.qNCM.ParamByName('ID').AsInteger := fDMImportarXML.mItensNotaID_NCM.AsInteger;
      fDMImportarXML.qNCM.Open;
      fDMImportarXML.mItensNotaNCM.AsString := fDMImportarXML.qNCMNCM.AsString;
    end;
    fDMImportarXML.mItensNota.Post;
    fDMImportarXML.mItensNota.Next;
  end;
end;

procedure TfrmImportar_TXT.prc_Verificar_Cliente;
var
  vCampo: String;
  vExiste_Cli, vExiste_Aux: Boolean;
begin
  fDMImportarXML.mRegistro.First;
  fDMImportarXML.mRegistro.Edit;
  vCampo := Monta_Numero(fDMImportarXML.mRegistroCNPJ_CPF.AsString,0);
  if Copy(vCampo,1,5) = '00000' then
    vExiste_Cli := fDMImportarXML.fnc_Abrir_Fornecedor(fDMImportarXML.mRegistroNome.AsString,'N')
  else
    vExiste_Cli := fDMImportarXML.fnc_Abrir_Fornecedor(fDMImportarXML.mRegistroCNPJ_CPF.AsString,'C');
  if vExiste_Cli then
  begin
    fDMImportarXML.mRegistroID.AsInteger := fDMImportarXML.cdsFornecedorCODIGO.AsInteger;
    if Copy(vCampo,1,5) = '00000' then
      fDMImportarXML.mRegistroCNPJ_CPF.AsString := fDMImportarXML.cdsFornecedorCNPJ_CPF.AsString;
    if fDMImportarXML.cdsFornecedorID_PAIS.AsInteger > 0 then
      fDMImportarXML.mRegistroID_Pais.AsInteger := fDMImportarXML.cdsFornecedorID_PAIS.AsInteger;
    if fDMImportarXML.cdsFornecedorID_CIDADE.AsInteger > 0 then
      fDMImportarXML.mRegistroID_Cidade.AsInteger := fDMImportarXML.cdsFornecedorID_CIDADE.AsInteger;
  end;
  if (trim(fDMImportarXML.mRegistroCod_Pais.AsString) = '') then
  begin
    if fDMImportarXML.mRegistroID_Pais.AsInteger > 0 then
      vExiste_Aux := fDMImportarXML.fnc_Abrir_Pais(fDMImportarXML.mRegistroID_Pais.AsString,'I')
    else
      vExiste_Aux := fDMImportarXML.fnc_Abrir_Pais(fDMImportarXML.mRegistroNome_Pais.AsString,'N');
  end
  else
  if fDMImportarXML.mRegistroID_Pais.AsInteger <= 0 then
    vExiste_Aux := fDMImportarXML.fnc_Abrir_Pais(fDMImportarXML.mRegistroCod_Pais.AsString,'C');
  if vExiste_Aux then
  begin
    fDMImportarXML.mRegistroCod_Pais.AsString := fDMImportarXML.cdsPaisCODPAIS.AsString;
    fDMImportarXML.mRegistroID_Pais.AsInteger := fDMImportarXML.cdsPaisID.AsInteger;
  end;
  if fDMImportarXML.mRegistroID_Cidade.AsInteger <= 0 then
  begin
    if (trim(fDMImportarXML.mRegistroCod_Municipio.AsString) = '') or (copy(fDMImportarXML.mRegistroCod_Municipio.AsString,1,3) = '999') or (Length(fDMImportarXML.mRegistroCod_Municipio.AsString) < 7)   then
      vExiste_Aux := fDMImportarXML.fnc_Abrir_Cidade(fDMImportarXML.mRegistroNome_Cidade.AsString,'N')
    else
      vExiste_Aux := fDMImportarXML.fnc_Abrir_Cidade(UpperCase(fDMImportarXML.mRegistroCod_Municipio.AsString),'C');
    if vExiste_Aux then
    begin
      fDMImportarXML.mRegistroCod_Municipio.AsString := fDMImportarXML.cdsCidadeCODMUNICIPIO.AsString;
      fDMImportarXML.mRegistroID_Cidade.AsInteger    := fDMImportarXML.cdsCidadeID.AsInteger;
      fDMImportarXML.mRegistroNome_Cidade.AsString   := UpperCase(fDMImportarXML.cdsCidadeNOME.AsString);
    end;
  end;
  if fDMImportarXML.mRegistro.State in [dsEdit] then
    fDMImportarXML.mRegistro.Post;
end;

procedure TfrmImportar_TXT.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger <= 0 then
    AFont.Color := clRed;
end;

procedure TfrmImportar_TXT.SMDBGrid3DblClick(Sender: TObject);
begin
  vCodProduto_Pos := fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger;
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  frmSel_Produto.ShowModal;
  if vCodProduto_Pos <> fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger then
  begin
    fDMImportarXML.mItensNota.Edit;
    fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger := vCodProduto_Pos;
    fDMImportarXML.mItensNota.Post;
  end;
  Label9.Caption  := FormatFloat('0',fDMImportarXML.vQtd_Produto_NaoEncontrado);
end;

procedure TfrmImportar_TXT.SMDBGrid2DblClick(Sender: TObject);
var
  vExiste: Boolean;
begin
  vExiste := fDMImportarXML.fnc_Abrir_Fornecedor('','Z');
  vExiste := fDMImportarXML.fnc_Abrir_Cidade('','Z');
  vExiste := fDMImportarXML.fnc_Abrir_Pais('','Z');
  fDMImportarXML.cdsFornecedor.IndexFieldNames := 'NOME';
  fDMImportarXML.cdsCidade.IndexFieldNames     := 'NOME';
  fDMImportarXML.cdsPais.IndexFieldNames       := 'NOME';
  ffrmImportar_TXT_Cli := TfrmImportar_TXT_Cli.Create(Self);
  ffrmImportar_TXT_Cli.fDMImportarXML := fDMImportarXML;
  ffrmImportar_TXT_Cli.ShowModal;
  FreeAndNil(ffrmImportar_TXT_Cli);
  Label10.Visible := not(fDMImportarXML.vCliente_OK);
end;

procedure TfrmImportar_TXT.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMImportarXML.mRegistroID.AsInteger <= 0) or (fDMImportarXML.mRegistroID_Cidade.AsInteger <= 0) or (fDMImportarXML.mRegistroID_Pais.AsInteger <= 0) then
    AFont.Color := clRed;
end;

procedure TfrmImportar_TXT.SMDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if trim(fDMImportarXML.mDadosImp_AdiCodFabricante.AsString) = '' then
    AFont.Color := clRed;
end;

procedure TfrmImportar_TXT.FilenameEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (trim(FilenameEdit1.Text) <> '') then
    prc_Le_TXT;
end;

procedure TfrmImportar_TXT.btnGravar_PedidoClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vAux2: Integer;
begin
  if MessageDlg('Deseja gravar a Nota Fiscal?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  if trim(fDMImportarXML.mRegistroCod_Pais.AsString) = '' then
  begin
    MessageDlg('*** Código do Pais não informado, será necessário cadastrar manualmente!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMImportarXML.vQtd_Adicao_Erro > 0 then
  begin
    MessageDlg('*** Adição sem o código do Fabricante!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(RxDBLookupCombo2.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if not (fDMCadNotaFiscal.cdsFilial.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive])) then
  begin
    MessageDlg('*** Filial não encontrada!', mtError, [mbOk], 0);
    exit;
  end;

  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(Self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  if fDMImportarXML.mRegistroID.AsInteger <= 0 then
  begin
    prc_Gravar_Cliente;
    fDMCadNotaFiscal.cdsCliente.Close;
    fDMCadNotaFiscal.cdsCliente.Open;
    fDMImportarXML.mRegistro.Edit;
    fDMImportarXML.mRegistroID.AsInteger        := vCodPessoa_Pos;
    fDMImportarXML.mRegistroID_Pais.AsInteger   := vID_Pais_Pos;
    fDMImportarXML.mRegistroID_Cidade.AsInteger := vID_Cidade_Pos;
    fDMImportarXML.mRegistro.Post;
  end;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMImportarXML.cdsProduto.Close;
    fDMImportarXML.cdsProduto.Open;
    fDMImportarXML.cdsNCM.Close;
    fDMImportarXML.cdsNCM.Open;
    prc_Gravar_Nota;
    fDMImportarXML.mItensNota.First;
    while not fDMImportarXML.mItensNota.Eof do
    begin
      fDMImportarXML.Gravar_ClasFiscal;
      fDMImportarXML.Gravar_Unidade;
      if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMImportarXML.mRegistroID.AsInteger then
        fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMImportarXML.mRegistroID.AsInteger,[loCaseInsensitive]);
      if fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger <= 0 then
        fDMImportarXML.Gravar_Produto('NFeTXT',True)
      else
      begin
        fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger,[loCaseInsensitive]);
        vAux2 := fDMImportarXML.fnc_Abrir_Produto_Forn(fDMImportarXML.mItensNotaCodProduto.AsString,fDMImportarXML.mRegistroID.AsInteger,fDMImportarXML.mItensNotaNomeProduto.AsString);
        if vAux2 <= 0 then
          fDMImportarXML.prc_Gravar_Produto_Forn;
        vaux2 := fDMImportarXML.cdsProduto_FornID.AsInteger;
      end;
      fDMImportarXML.mItensNota.Next;
    end;
    fDMCadNotaFiscal.cdsProduto.Close;
    fDMCadNotaFiscal.cdsProduto.Open;

    fDMImportarXML.mItensNota.First;
    while not fDMImportarXML.mItensNota.Eof do
    begin
      fDMImportarXML.Gravar_ClasFiscal;
      fDMImportarXML.Gravar_Unidade;
      if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMImportarXML.mRegistroID.AsInteger then
        fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMImportarXML.mRegistroID.AsInteger,[loCaseInsensitive]);
      prc_Gravar_Itens;

      //colocar dentro da procedure prc_gravar_itens 29/04/2014
      //prc_Le_Importacao;

      fDMImportarXML.mItensNota.Next;
    end;
    if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
      fDMCadNotaFiscal.cdsNotaFiscal.Post;
    fDMCadNotaFiscal.vID_Nota_Imp := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
    Close;
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(ffrmCadNotaFiscal_Itens);
end;

procedure TfrmImportar_TXT.prc_Gravar_Itens;
var
  vTexto: String;
begin
  fDMCadNotaFiscal.prc_Inserir_Itens(False);

  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger;
  fDMImportarXML.prc_Abrir_Produto(fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger,'','');
  //fDMImportarXML.cdsProduto.Locate('ID',fDMImportarXML.mItensNotaCodProdutoInterno.AsInteger,[loCaseInsensitive]);
  fDMImportarXML.qCFOP.Close;
  fDMImportarXML.qCFOP.ParamByName('CODCFOP').AsString := fDMImportarXML.mItensNotaCFOP.AsString;
  fDMImportarXML.qCFOP.Open;
  if not fDMImportarXML.qCFOP.IsEmpty then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := fDMImportarXML.qCFOPID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString  := fDMImportarXML.qCFOPCODCFOP.AsString;
    vID_Variacao := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
  end;
  if vID_Variacao > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := vID_Variacao;

  ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;
  if copy(fDMImportarXML.mItensNotaCFOP.AsString,1,1) = '3' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMImportarXML.cdsProdutoPERC_IMPORTACAO.AsFloat));
    if (fDMImportarXML.cdsProdutoPERC_IMPORTACAO.AsFloat <= StrToFloat(FormatFloat('0.00',0))) and
       (StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaBaseImportacao.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaVlrImportacao.AsFloat)) > 0) then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.00',(fDMImportarXML.mItensNotaVlrImportacao.AsFloat / fDMImportarXML.mItensNotaBaseImportacao.AsFloat) * 100));
    vTexto := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsString;
    if copy(vTexto,Length(vTexto),1) = '9' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat + 0.01));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat  := StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaVlrDespesaAduaneira.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaVlrImportacao.AsFloat));
  end;

  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger              := fDMImportarXML.mItensNotaID_NCM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNCM.AsString                  := fDMImportarXML.mItensNotaNCM.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat                   := fDMImportarXML.mItensNotaQtd.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat           := fDMImportarXML.mItensNotaQtd.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat          := fDMImportarXML.mItensNotaVlrUnitario.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat             := fDMImportarXML.mItensNotaVlrTotal.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat             := fDMImportarXML.mItensNotaAliqIcms.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat              := fDMImportarXML.mItensNotaAliqIPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat         := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat          := fDMImportarXML.mItensNotaVlrDesconto.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat               := fDMImportarXML.mItensNotaVlrIPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat              := fDMImportarXML.mItensNotaVlrIcms.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat             := fDMImportarXML.mItensNotaBaseIcms.AsFloat;
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger <= 0) or (ComboBox2.ItemIndex = 1) then
  begin
    if fDMImportarXML.mItensNotaCodSitTribInterno.AsInteger <= 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger := fDMImportarXML.fnc_Abrir_qCSTIcms(fDMImportarXML.mItensNotaCodSitTrib.AsString)
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger := fDMImportarXML.mItensNotaCodSitTribInterno.AsInteger;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.Clear;
  if (ComboBox2.ItemIndex  = 1) or ((fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTIPI.AsInteger <= 0) and (trim(fDMImportarXML.mItensNotaCodCSTIPI.AsString) <> '')) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTIPI.AsInteger := fDMImportarXML.fnc_Abrir_qCSTIPI(fDMImportarXML.mItensNotaCodCSTIPI.AsString);
  if (ComboBox2.ItemIndex  = 1) or ((fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COFINS.AsInteger <= 0) and (trim(fDMImportarXML.mItensNotaCodCofins.AsString) <> '')) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COFINS.AsInteger := fDMImportarXML.fnc_Abrir_qCofins(fDMImportarXML.mItensNotaCodCofins.AsString);
  if (ComboBox2.ItemIndex  = 1) or ((fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PIS.AsInteger <= 0) and (trim(fDMImportarXML.mItensNotaCodPIS.AsString) <> '')) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PIS.AsInteger := fDMImportarXML.fnc_Abrir_qPis(fDMImportarXML.mItensNotaCodPIS.AsString);
  fDMCadNotaFiscal.cdsNotaFiscal_ItensCALCULARICMSSOBREIPI.AsString := 'N';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger              := fDMImportarXML.mItensNotaCodCor.AsInteger;
  if fDMImportarXML.mItensNotaCodCor.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.Clear;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString              := fDMImportarXML.mItensNotaUnidade.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger       := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString        := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString           := fDMImportarXML.cdsProdutoREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString         := fDMImportarXML.mItensNotaNomeProduto.AsString;

  if fDMImportarXML.qCFOPGERAR_DUPLICATA.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'S'
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'N';
  if fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString <> fDMImportarXML.mItensNotaCFOP.AsString then
    fDMCadNotaFiscal.cdsCFOP.Locate('CODCFOP',fDMImportarXML.mItensNotaCFOP.AsString, ([LocaseInsensitive]));
  if fDMCadNotaFiscal.cdsCFOPGERAR_DUPLICATA.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'S'
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'N';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString      := fDMImportarXML.mItensNotaTamanho.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDDEVOLVIDA.AsFloat  := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMImportarXML.mItensNotaQtd.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat     := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString  := fDMImportarXML.mItensNotaOrigem.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat    := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTipo_Nota.AsString    := 'E';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMImportarXML.mItensNotaInfAdicionais.AsString;
  if StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaAliqCofins.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat := StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaAliqCofins.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaAliqPIS.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat    := StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaAliqPIS.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaAliqIPI.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat    := StrToFloat(FormatFloat('0.00',fDMImportarXML.mItensNotaAliqIPI.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat)) <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat := StrToFloat(FormatFloat('0.00',fDMImportarXML.cdsProdutoPERC_COFINS.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat)) <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat := StrToFloat(FormatFloat('0.00',fDMImportarXML.cdsProdutoPERC_PIS.AsFloat));
  //aqui 29/04/2014
  prc_Le_Importacao;

  ffrmCadNotaFiscal_Itens.Tag := 99;

  ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
  //fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
  //fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0)
end;

procedure TfrmImportar_TXT.prc_Gravar_Nota;
begin
  //28/06/2017
  //fDMCadNotaFiscal.cdsFilial.First;
  if RxDBLookupCombo2.Text <> '' then
  begin
    vFilial      := RxDBLookupCombo2.KeyValue;
    vFilial_Nome := RxDBLookupCombo2.Text;
  end;
  fDMCadNotaFiscal.cdsFilial.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]);

  fDMCadNotaFiscal.prc_Inserir('NTS');

  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadNotaFiscal.prc_Abrir_CSTICMS('S')
  else
    fDMCadNotaFiscal.prc_Abrir_CSTICMS('N');

  fDMImportarXML.qCFOP.Close;
  fDMImportarXML.qCFOP.ParamByName('CODCFOP').AsString := fDMImportarXML.mItensNotaCFOP.AsString;
  fDMImportarXML.qCFOP.Open;
  if not fDMImportarXML.qCFOP.IsEmpty then
    fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMImportarXML.qCFOPID.AsInteger;
  vCodPessoa_Pos := fDMImportarXML.mRegistroID.AsInteger;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',vCodPessoa_Pos,[loCaseInsensitive]);
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString    := 'E';
  fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E');
  fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger  := vCodPessoa_Pos;
  fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger   := fDMImportarXML.mOutrosNotaQtdVolume.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString      := fDMImportarXML.mOutrosNotaEspecie.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString        := fDMImportarXML.mOutrosNotaMarca.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalNUMEROVOLUME.AsString := fDMImportarXML.mOutrosNotaNumeroVolumes.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat     := fDMImportarXML.mOutrosNotaPesoBruto.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat   := fDMImportarXML.mOutrosNotaPesoLiquido.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.Clear;
  fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.Clear;
  fDMCadNotaFiscal.cdsNotaFiscalID_REGIMETRIB.AsInteger := fDMCadNotaFiscal.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString := fDMCadNotaFiscal.cdsFilialSIMPLES.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime := Date;
end;

procedure TfrmImportar_TXT.prc_Gravar_Cliente;
var
  vAux: Integer;
begin
  if fDMImportarXML.mRegistroID_Cidade.AsInteger <= 0 then
    prc_Gravar_Cidade
  else
    vID_Cidade_Pos := fDMImportarXML.mRegistroID_Cidade.AsInteger;
  if fDMImportarXML.mRegistroID_Pais.AsInteger <= 0 then
    prc_Gravar_Pais
  else
    vID_Pais_Pos := fDMImportarXML.mRegistroID_Pais.AsInteger;

  vAux := dmDatabase.ProximaSequencia('PESSOA',0);

  fDMImportarXML.cdsFornecedor.Insert;
  fDMImportarXML.cdsFornecedorCODIGO.AsInteger         := vAux;
  fDMImportarXML.cdsFornecedorNOME.AsString            := fDMImportarXML.mRegistroNome.AsString;
  fDMImportarXML.cdsFornecedorENDERECO.AsString        := fDMImportarXML.mRegistroEndereco.AsString;
  fDMImportarXML.cdsFornecedorBAIRRO.AsString          := fDMImportarXML.mRegistroBairro.AsString;
  fDMImportarXML.cdsFornecedorCIDADE.AsString          := fDMImportarXML.mRegistroNome_Cidade.AsString;
  fDMImportarXML.cdsFornecedorCEP.AsString             := fDMImportarXML.mRegistroCep.AsString;
  fDMImportarXML.cdsFornecedorUF.AsString              := fDMImportarXML.mRegistroUF.AsString;
  fDMImportarXML.cdsFornecedorDDDFONE1.AsString        := fDMImportarXML.mRegistroDDD.AsString;
  fDMImportarXML.cdsFornecedorTELEFONE1.AsString       := fDMImportarXML.mRegistroFone.AsString;
  fDMImportarXML.cdsFornecedorCNPJ_CPF.AsString        := fDMImportarXML.mRegistroCNPJ_CPF.AsString;
  fDMImportarXML.cdsFornecedorINSCR_EST.AsString       := fDMImportarXML.mRegistroInsc_Estadual.AsString;
  fDMImportarXML.cdsFornecedorDTCADASTRO.AsDateTime    := Date;
  fDMImportarXML.cdsFornecedorFANTASIA.AsString        := fDMImportarXML.cdsFornecedorNOME.AsString;
  fDMImportarXML.cdsFornecedorTP_FORNECEDOR.AsString   := 'N';
  fDMImportarXML.cdsFornecedorTP_CLIENTE.AsString      := 'S';
  fDMImportarXML.cdsFornecedorID_CIDADE.AsInteger      := vID_Cidade_Pos;
  fDMImportarXML.cdsFornecedorUSUARIO.AsString         := 'NFeTXT';
  fDMImportarXML.cdsFornecedorHRCADASTRO.AsDateTime    := Now;
  fDMImportarXML.cdsFornecedorCOMPLEMENTO_END.AsString := fDMImportarXML.mRegistroComplemento_End.AsString;
  fDMImportarXML.cdsFornecedorNUM_END.AsString         := fDMImportarXML.mRegistroNum_Endereco.AsString;
  fDMImportarXML.cdsFornecedorID_PAIS.AsInteger        := vID_Pais_Pos;
  fDMImportarXML.cdsFornecedorPESSOA.AsString          := fDMImportarXML.mRegistroPessoa.AsString;
  fDMImportarXML.cdsFornecedor.Post;
  fDMImportarXML.cdsFornecedor.ApplyUpdates(0);
  vCodPessoa_Pos  := vAux;
end;

procedure TfrmImportar_TXT.prc_Gravar_Cidade;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);
  fDMImportarXML.cdsCidade.Insert;
  fDMImportarXML.cdsCidadeID.AsInteger          := vAux;
  fDMImportarXML.cdsCidadeNOME.AsString         := UpperCase(fDMImportarXML.mRegistroNome_Cidade.AsString);
  fDMImportarXML.cdsCidadeUF.AsString           := UpperCase(fDMImportarXML.mRegistroUF.AsString);
  fDMImportarXML.cdsCidadeCODMUNICIPIO.AsString := fDMImportarXML.mRegistroCod_Municipio.AsString;
  fDMImportarXML.cdsCidade.Post;
  fDMImportarXML.cdsCidade.ApplyUpdates(0);
  vID_Cidade_Pos := vAux;
end;

procedure TfrmImportar_TXT.prc_Gravar_Pais;
var                           
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PAIS',0);
  fDMImportarXML.cdsPais.Insert;
  fDMImportarXML.cdsPaisID.AsInteger     := vAux;
  fDMImportarXML.cdsPaisNOME.AsString    := fDMImportarXML.mRegistroNome_Pais.AsString;
  fDMImportarXML.cdsPaisCODPAIS.AsString := fDMImportarXML.mRegistroCod_Pais.AsString;
  fDMImportarXML.cdsPais.Post;
  fDMImportarXML.cdsPais.ApplyUpdates(0);
  vID_Pais_Pos := vAux;
end;

procedure TfrmImportar_TXT.prc_Gravar_NotaFiscal_IMP;
var
  vItemAux: Integer;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Imp.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_Imp.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpID.AsInteger               := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger             := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger         := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMDI.AsString             := fDMImportarXML.mDadosImpNumDI.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsString        := fDMImportarXML.mDadosImpDtRegistro.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsString     := fDMImportarXML.mDadosImpDtDesembaracao.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpCODEXPORTADOR.AsString     := fDMImportarXML.mDadosImpCodExportador.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpLOCAL_DESEMBARACO.AsString := fDMImportarXML.mDadosImpLocal_Desembaraco.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpUF.AsString                := fDMImportarXML.mDadosImpUF.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMFATURA.AsString         := fDMImportarXML.mDadosImpNumFatura.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp.Post;
end;

procedure TfrmImportar_TXT.prc_Le_Importacao;
begin
  fDMImportarXML.mItensNota_Imp.First;
  while not fDMImportarXML.mItensNota_Imp.Eof do
  begin
    if fDMImportarXML.mDadosImp.Locate('Item_Imp',fDMImportarXML.mItensNota_ImpItem_Imp.AsInteger,[loCaseInsensitive]) then
      prc_Gravar_NotaFiscal_IMP;
    if fDMImportarXML.mDadosImp_Adi.Locate('NumAdicao;Item_Adi',VarArrayOf([fDMImportarXML.mItensNota_AdiNum_Adi.AsString,fDMImportarXML.mItensNota_AdiItem_Adi.AsInteger]),[locaseinsensitive]) then
      prc_Gravar_NotaFiscal_IMP_ADI;
    fDMImportarXML.mItensNota_Imp.Next;
  end;
end;

procedure TfrmImportar_TXT.prc_Gravar_NotaFiscal_IMP_ADI;
var
  vItemAux: Integer;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_AD.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdID.AsInteger            := fDMCadNotaFiscal.cdsNotaFiscal_ImpID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_IMP.AsInteger      := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_AD.AsInteger       := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUMADICAO.AsString      := fDMImportarXML.mDadosImp_AdiNumAdicao.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsString        := fDMImportarXML.mDadosImp_AdiItem_Adi.AsString; 
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger := 1;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdCODFABRICANTE.AsString  := fDMImportarXML.mDadosImp_AdiCodFabricante.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI.AsFloat := StrToFloat(FormatFloat('0.00',fDMImportarXML.mDadosImp_AdiVlrDesconto.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Post;
end;

procedure TfrmImportar_TXT.SMDBGrid4ColExit(Sender: TObject);
begin
  Label12.Caption := FormatFloat('0',fDMImportarXML.vQtd_Adicao_Erro);
end;

procedure TfrmImportar_TXT.prc_scroll(DataSet: TDataSet);
begin
  Label12.Caption := FormatFloat('0',fDMImportarXML.vQtd_Adicao_Erro);
end;

end.

