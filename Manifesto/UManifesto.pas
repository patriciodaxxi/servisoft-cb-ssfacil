unit UManifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Dialogs, ExtCtrls, StdCtrls, UDMManifesto, NxEdit,
  RxLookup, Mask, ToolEdit, CurrEdit, NxCollection, Grids, DBGrids, SMDBGrid, RzPanel, RzPrgres, RzTabs, Buttons, dbXPress, DB,
  Menus, ShellApi;

type
  TfrmManifesto = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Geracao: TRzTabSheet;
    gbxVendedor: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    RzProgressBar1: TRzProgressBar;
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnGerar: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    TS_Menu: TRzTabSheet;
    CurrencyEdit2: TCurrencyEdit;
    TabSheet1: TRzTabSheet;
    Panel3: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    NxDatePicker3: TNxDatePicker;
    NxDatePicker4: TNxDatePicker;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    RzGroupBox2: TRzGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    Label2: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    NxCheckBox1: TNxCheckBox;
    NxCheckBox2: TNxCheckBox;
    Label3: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    Label12: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    Label13: TLabel;
    RzProgressBar2: TRzProgressBar;
    Panel4: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label14: TLabel;
    cbManEvento: TComboBox;
    edtManJustificativa: TEdit;
    btnManifestar: TNxButton;
    edtDiretorio: TDirectoryEdit;
    BitBtn1: TBitBtn;
    btnContinua: TNxButton;
    NxComboBox1: TNxComboBox;
    Label16: TLabel;
    BitBtn2: TBitBtn;
    NxButton3: TNxButton;
    PopupMenu1: TPopupMenu;
    ConsultarSituaodaNotaCancelada1: TMenuItem;
    Marcarcomonotasjlanadas1: TMenuItem;
    DownloaddoEvento1: TMenuItem;
    Shape1: TShape;
    Label17: TLabel;
    Label18: TLabel;
    NxDatePicker1: TNxDatePicker;
    Label19: TLabel;
    Shape2: TShape;
    Label20: TLabel;
    BitBtn3: TBitBtn;
    Label21: TLabel;
    Shape3: TShape;
    Label22: TLabel;
    BitBtn4: TBitBtn;
    Label23: TLabel;
    BitBtn5: TBitBtn;
    Label15: TLabel;
    btnMan: TNxButton;
    btnDownload: TNxButton;
    cbOpcao: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnManifestarClick(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure btnContinuaClick(Sender: TObject);
    procedure NxCheckBox2Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure cbOpcaoChange(Sender: TObject);
    procedure cbManEventoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Marcarcomonotasjlanadas1Click(Sender: TObject);
    procedure DownloaddoEvento1Click(Sender: TObject);
    procedure ConsultarSituaodaNotaCancelada1Click(Sender: TObject);
    procedure NxCheckBox1Change(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnManClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
  private
    { Private declarations }
    fDMManifesto: TDMManifesto;
    vChave_Acesso: String;
    vCNPJ, vCodUF: String;
    sXmlEvento: TStringStream;
    oStream: TMemoryStream;
    vCod_Evento: String;

    vNSU_Final: String;
    vContador: Integer;
    vContador_Canc: Integer;
    RetXml: TMemoryStream;
    vFilial_Ant: Integer;
    mXml: TMemoryStream;
    vNota_Propria: String; //Indica se a nota é a empresa que emitiriu ou ela recebeu

    procedure prc_Le_cdsNotaDestinada;
    //function  fnc_Resposta_NSU(NSU: String): TMemoryStream;
    procedure prc_Resposta_NSU(NSU: String);
    function fnc_LocalServidorNFe: String;
    function fnc_Busca_Campo(Campo: String): String;

    procedure prc_Le_mAuxiliar;

    procedure prc_Verifica_Manifesto_AN(Evento: Boolean = False);
    procedure prc_Gravar_Manifesto_AN;
    function fnc_Verifica_Nota(Chave_Acesso: String): String;

    procedure prc_Gravar_Manifesto_Eve(Tipo_Eve: String);

    procedure prc_Manifestar;
    procedure prc_Manifesto_Proprio;

    procedure prc_Download(Chave_Acesso: String);

    function fnc_Buscar_UltNSU(Filial: Integer): String;

    procedure prc_Le_Consulta;

    procedure prc_Salvar_Download(PorEvento: Boolean);

    procedure prc_ConsultarNFE; //Verifica se a nota esta cancelada

    procedure prc_Gerar;

    procedure prc_Le_Evento_Aux;
  public
    { Public declarations }
  end;

var
  frmManifesto: TfrmManifesto;

implementation

uses rsDBUtils, uUtilPadrao, StrUtils, uNFeComandos, DmdDatabase_NFeBD,
  DateUtils, UManifesto_Eve;

{$R *.dfm}

procedure TfrmManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dmDatabase_NFeBD.Owner.ClassName  = Self.ClassName then
    FreeAndNil(dmDatabase_NFeBD);
  Action := Cafree;
end;

procedure TfrmManifesto.FormShow(Sender: TObject);
begin
  Panel2.Height := 0;
  if not Assigned(dmDatabase_NFeBD) then
    dmDatabase_NFeBD := TdmDatabase_NFeBD.Create(Self);

  fDMManifesto  := TDMManifesto.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMManifesto);

  NxDatePicker1.Date := Date - 30;

  if fDMManifesto.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMManifesto.cdsFilialID.AsInteger;

  if RxDBLookupCombo1.Text <> '' then
    CurrencyEdit5.Text := fnc_Buscar_UltNSU(RxDBLookupCombo1.KeyValue);

  edtDiretorio.Text    := fDMManifesto.qParametrosENDXML_NOTAENTRADA.AsString;
  TabSheet1.TabVisible := False;
  TS_Menu.TabVisible   := False;

  fDMManifesto.cdsParametros_Geral.Close;
  fDMManifesto.cdsParametros_Geral.Open;
  if fDMManifesto.cdsParametros_Geral.IsEmpty then
  begin
    fDMManifesto.cdsParametros_Geral.Insert;
    fDMManifesto.cdsParametros_GeralID.AsInteger               := 1;
    fDMManifesto.cdsParametros_GeralVERSAO_BANCO_NFE.AsInteger := 0;
    fDMManifesto.cdsParametros_Geral.Post;
    fDMManifesto.cdsParametros_Geral.ApplyUpdates(0);
  end;
  Marcarcomonotasjlanadas1.Enabled := (fDMManifesto.qParametros_RecXMLUSA_OPCAO_NOTA_LANC.AsString = 'S');
end;

procedure TfrmManifesto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMManifesto);
end;

procedure TfrmManifesto.btnGerarClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  SMDBGrid1.ClearFilter;
  SMDBGrid1.UnSelectAllClick(Sender);

  fDMManifesto.mAuxiliar.EmptyDataSet;

  Panel2.Height := 50;
  prc_Le_Consulta;

  Label13.Caption := 'Verificando as notas no sistema:';
  RzProgressBar2.TotalParts    := 0;
  RzProgressBar2.PartsComplete := 0;
  Refresh;

  fDMManifesto.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,([Locaseinsensitive]));
  fDMManifesto.qUF.Close;
  fDMManifesto.qUF.ParamByName('UF').AsString := fDMManifesto.cdsFilialUF.AsString;
  fDMManifesto.qUF.Open;
  vCodUF := fDMManifesto.qUFCODUF.AsString;

  prc_Gerar;

  while (CurrencyEdit5.AsInteger < CurrencyEdit2.AsInteger) do
  begin
    prc_Gerar;
  end;
end;

procedure TfrmManifesto.prc_Le_cdsNotaDestinada;
var
  i: Integer;
  vTexto: String;
  vTipo_Eve: String;
  vSeqEvento: String;
  vQtd_Nota: Integer;
  vNotaGravadaAux: String;
  vAno, vMes, vDia: Word;
begin
  //sXmlEvento := TStringList.Create;
  sXmlEvento := TStringStream.Create('');

  fDMManifesto.cdsNotaDestinada.First;
  vNSU_Final := '0';
  vQtd_Nota  := 0;
  RzProgressBar1.TotalParts    := fDMManifesto.cdsNotaDestinada.RecordCount;
  RzProgressBar1.PartsComplete := 0;
  RzProgressBar2.TotalParts    := 0;
  RzProgressBar2.PartsComplete := 0;

  while not fDMManifesto.cdsNotaDestinada.Eof do
  begin
    RzProgressBar1.PartsComplete := RzProgressBar1.PartsComplete + 1;

    if fDMManifesto.cdsNotaDestinadaNSU.AsString > vNSU_Final then
      vNSU_Final := fDMManifesto.cdsNotaDestinadaNSU.AsString;

    //mXml.LoadFromStream(fnc_Resposta_NSU(fDMManifesto.cdsNotaDestinadaNSU.AsString));
    prc_Resposta_NSU(fDMManifesto.cdsNotaDestinadaNSU.AsString);
    mXml.Position := 0;

    vSeqEvento   := '0';
    vTipo_Eve := fDMManifesto.cdsNotaDestinadaschema.AsString;
    i := Pos('_',fDMManifesto.cdsNotaDestinadaschema.AsString);
    if i > 0 then
      vTipo_Eve := copy(fDMManifesto.cdsNotaDestinadaschema.AsString,1,i-1);

    sXmlEvento.CopyFrom(mXml,mXml.Size);
    sXmlEvento.Position := 0;

    //sXmlEvento.sa SaveToFile('C:\a\teste.txt');

    vCod_Evento := '';
    prc_Gravar_Manifesto_Eve(vTipo_Eve);

    vNotaGravadaAux := fnc_Verifica_Nota(vChave_Acesso);

    {if (vNotaGravadaAux = 'S') and (NxComboBox1.ItemIndex > 0) then
    begin
      fDMManifesto.qVerifica_Manifesto.Close;
      fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
      fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := vChave_Acesso;
      fDMManifesto.qVerifica_Manifesto.Open;
      if not fDMManifesto.qVerifica_Manifesto.IsEmpty then
        vTipo_Eve := 'Nao gravar';
    end;}

    if vTipo_Eve = 'resNFe' then
    begin
      vQtd_Nota := vQtd_Nota + 1;

      if fDMManifesto.mAuxiliar.Locate('Chave_Acesso',vChave_Acesso,([Locaseinsensitive])) then
      begin
        if (fDMManifesto.mAuxiliarGravado_Banco.AsString = 'N') then
          fDMManifesto.mAuxiliar.Edit;
      end
      else
      begin
        fDMManifesto.mAuxiliar.Insert;
        fDMManifesto.mAuxiliarChave_Acesso.AsString  := vChave_Acesso;
        fDMManifesto.mAuxiliarSerie.AsString         := copy(vChave_Acesso,23,3);
        vTexto := copy(vChave_Acesso,26,9);
        fDMManifesto.mAuxiliarNum_Nota.AsString      := vTexto;
        fDMManifesto.mAuxiliarGravado_Banco.AsString := 'N';
      end;
      if (fDMManifesto.mAuxiliarGravado_Banco.AsString = 'N') then
      begin
        fDMManifesto.mAuxiliarNSU.AsString          := fDMManifesto.cdsNotaDestinadaNSU.AsString;
        fDMManifesto.mAuxiliarXML.LoadFromStream(mXml);
        fDMManifesto.mAuxiliarEvento.AsString := 'N';
        fDMManifesto.mAuxiliarGravada_Nota.AsString := fnc_Verifica_Nota(fDMManifesto.mAuxiliarChave_Acesso.AsString);
        fDMManifesto.mAuxiliarTipo_Eve.AsString := vTipo_Eve;

        fDMManifesto.mAuxiliarCNPJ.AsString := fnc_Busca_Campo('<CNPJ>');
        fDMManifesto.mAuxiliarNome.AsString := fnc_Busca_Campo('<xNome>');
        fDMManifesto.mAuxiliarInsc_Estadual.AsString := fnc_Busca_Campo('<IE>');
        vTexto := fnc_Busca_Campo('<dhEmi>');
        if vTexto <> '' then
        begin
          fDMManifesto.mAuxiliarDtEmissao.AsString := vTexto;
          vAno := StrToInt(copy(fDMManifesto.mAuxiliarDtEmissao.AsString,1,4));
          vMes := StrToInt(copy(fDMManifesto.mAuxiliarDtEmissao.AsString,6,2));
          vDia := StrToInt(copy(fDMManifesto.mAuxiliarDtEmissao.AsString,9,2));
          fDMManifesto.mAuxiliarDtEmissao2.AsDateTime := EncodeDate(vAno,vMes,vDia);
        end;

        vTexto := fnc_Busca_Campo('<vNF>');
        if vTexto <> '' then
        begin
          vTexto := Replace(vTexto,'.',',');
          fDMManifesto.mAuxiliarVlr_Nota.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vTexto)));
        end;
        fDMManifesto.mAuxiliarDtRecebimento.AsString := fnc_Busca_Campo('<dhRecbto>');
        fDMManifesto.mAuxiliarNum_Protocolo.AsString := fnc_Busca_Campo('<nProt>');
        vTexto := fnc_Busca_Campo('<cSitNFe>');
        if trim(vTexto) = '' then
          vTexto := '0';
        fDMManifesto.mAuxiliarSituacao_NFe.AsInteger := StrToInt(vTexto);
        case fDMManifesto.mAuxiliarSituacao_NFe.AsInteger of
          1: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso autorizado no momento da consulta';
          2: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso denegado';
          3: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'NF-e cancelada';
        end;
        fDMManifesto.mAuxiliarNota_Propria.AsString := 'N';
        fDMManifesto.mAuxiliar.Post;
        prc_Verifica_Manifesto_AN(False);
      end;
    end
    else
    if vTipo_Eve = 'procNFe' then
    begin
      if fDMManifesto.mAuxiliar.Locate('Chave_Acesso',vChave_Acesso,([Locaseinsensitive])) then
      begin
        if (fDMManifesto.mAuxiliarGravado_Banco.AsString = 'N') or (fDMManifesto.mAuxiliarXML_Para_Download.IsNull) then
        begin
          fDMManifesto.mAuxiliar.Edit;
          fDMManifesto.mAuxiliarXML_Para_Download.LoadFromStream(mXml);
          fDMManifesto.mAuxiliar.Post;
        end;
      end;
      {else
      begin
        fDMManifesto.mAuxiliar.Insert;
        fDMManifesto.mAuxiliarChave_Acesso.AsString := vChave_Acesso;
        fDMManifesto.mAuxiliarTipo_Eve.AsString := vTipo_Eve;
        fDMManifesto.mAuxiliarSerie.AsString        := copy(vChave_Acesso,23,3);
        vTexto := copy(vChave_Acesso,26,9);
        fDMManifesto.mAuxiliarNum_Nota.AsString     := vTexto;
        fDMManifesto.mAuxiliarNSU.AsString          := fDMManifesto.cdsNotaDestinadaNSU.AsString;
        fDMManifesto.mAuxiliarXML_Para_Download.LoadFromStream(mXml);
        fDMManifesto.mAuxiliarEvento.AsString := 'S';
        fDMManifesto.mAuxiliarCNPJ.AsString := fnc_Busca_Campo('<CNPJ>');
        fDMManifesto.mAuxiliarNome.AsString := fnc_Busca_Campo('<xNome>');
        fDMManifesto.mAuxiliarDtEmissao.AsString := fnc_Busca_Campo('<dhEmi>');
        fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Arquivo ProcNFe (Xml para download)';
        fDMManifesto.mAuxiliarNum_Protocolo.AsString    := fnc_Busca_Campo('<nProt>');
        fDMManifesto.mAuxiliarNota_Propria.AsString     := 'N';
        fDMManifesto.mAuxiliar.Post;
        prc_Verifica_Manifesto_AN(True);
      end;}
    end
    else
    if vTipo_Eve = 'procEventoNFe' then
    begin
      if (vCod_Evento = '110111') or (vCod_Evento = '110110') then
      begin
        fDMManifesto.qVerifica_Manifesto.Close;
        fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
        fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
        fDMManifesto.qVerifica_Manifesto.Open;
        fDMManifesto.prc_Localizar(fDMManifesto.qVerifica_ManifestoID.AsInteger);
        if not fDMManifesto.cdsManifesto_AN.IsEmpty then
        begin
          fDMManifesto.cdsManifesto_AN.Edit;
          if vCod_Evento = '110111' then
            fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 3
          else
            fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString := 'S';
          fDMManifesto.cdsManifesto_AN.Post;
          fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
        end;
        if fDMManifesto.mAuxiliar.Locate('Chave_Acesso',vChave_Acesso,([Locaseinsensitive])) then
        begin
          fDMManifesto.mAuxiliar.Edit;
          if vCod_Evento = '110111' then
          begin
            fDMManifesto.mAuxiliarSituacao_NFe.AsInteger := 3;
            fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'NF-e Cancelada';
          end
          else
            fDMManifesto.mAuxiliarCCe.AsString := 'S';
          fDMManifesto.mAuxiliar.Post;
        end;
      end;
    end;

    fDMManifesto.cdsNotaDestinada.Next;
  end;
  FreeAndNil(sXmlEvento);       
  CurrencyEdit6.AsInteger := vQtd_Nota;
end;

procedure TfrmManifesto.prc_Resposta_NSU(NSU: String);
var
  SXml: TStringList;
  i: Integer;
begin
  vChave_Acesso := '';
  //lblDFeNSU.Caption := 'NSU: ' + cdsNotaDestinadaNSU.AsString;
  sXml := TStringList.Create;
  try
    NFeConsNSU( trim(fnc_LocalServidorNFe),
                vCNPJ,
                vCNPJ,
                vCodUF,
                NSU,
                MXml );

    MXml.Position := 0;
    SXml.LoadFromStream(MXml);
    //MXml.SaveToFile('C:\a\teste2.txt');

    //procura a chave de acesso
    i := posex('<chNFe>',SXml.Text);
    if i > 0 then
      vChave_Acesso := copy(SXml.Text,i+7,44);
    //************

    //Result.LoadFromStream(MXml);
    //mmoDFeXML.Lines.LoadFromStream(MXml);
  finally
    SXml.Free;
  end;
end;

function TfrmManifesto.fnc_LocalServidorNFe: String;
begin
  Result := fDMManifesto.qParametrosLOCALSERVIDORNFE.AsString;
  if (trim(fDMManifesto.cdsFilialLOCALSERVIDORNFE.AsString) <> '') and not(fDMManifesto.cdsFilialLOCALSERVIDORNFE.IsNull) then
    Result := fDMManifesto.cdsFilialLOCALSERVIDORNFE.AsString;
end;

function TfrmManifesto.fnc_Busca_Campo(Campo: String): String;
var
  i, i2: Integer;
  vTexto: String;
  campoaux: String;
begin
  Result := '';
  i := Posex(Campo,sXmlEvento.DataString);
  if i > 0 then
  begin
    campoaux := '</' + copy(Campo,2,Length(campo)-1);
    i  := i  + Length(Campo);
    i2 := Posex(campoaux,sXmlEvento.DataString);
    i2 := i2 - i;
    Result := copy(sXmlEvento.DataString,i,i2);
  end;
end;

procedure TfrmManifesto.prc_Verifica_Manifesto_AN(Evento: Boolean = False);
var
  id: Integer;
begin
  fDMManifesto.qVerifica_Manifesto.Close;
  fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := vChave_Acesso;
  fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
  fDMManifesto.qVerifica_Manifesto.Open;

  id := -1;
  if fDMManifesto.qVerifica_ManifestoID.AsInteger > 0 then
    id := fDMManifesto.qVerifica_ManifestoID.AsInteger;

  if id < 0 then
    prc_Gravar_Manifesto_AN
  else
  begin
    fDMManifesto.mAuxiliar.Edit;
    fDMManifesto.mAuxiliarSituacao_Manif.AsInteger := fDMManifesto.qVerifica_ManifestoSITUACAO_MANIF.AsInteger;
    fDMManifesto.mAuxiliarDownload.AsString        := fDMManifesto.qVerifica_ManifestoDOWNLOAD.AsString;
    if not fDMManifesto.qVerifica_ManifestoXML.IsNull then
      fDMManifesto.mAuxiliarXML_Para_Download.Value := fDMManifesto.qVerifica_ManifestoXML.Value;
    fDMManifesto.mAuxiliarGravado_Banco.AsString   := 'S';
    if Evento then
    begin
      fDMManifesto.mAuxiliarVlr_Nota.AsFloat := fDMManifesto.qVerifica_ManifestoVLR_NOTA.AsFloat;
      fDMManifesto.mAuxiliarSituacao_NFe.AsInteger := fDMManifesto.qVerifica_ManifestoSITUACAO_NFE.AsInteger;
      case fDMManifesto.mAuxiliarSituacao_NFe.AsInteger of
        1: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso autorizado no momento da consulta';
        2: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso denegado';
        3: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'NF-e cancelada';
      end;
      fDMManifesto.mAuxiliarInsc_Estadual.AsString := fDMManifesto.qVerifica_ManifestoINSC_ESTADUAL.AsString;
    end;
    fDMManifesto.mAuxiliar.Post;
  end;
end;

procedure TfrmManifesto.prc_Le_mAuxiliar;
begin
  RzProgressBar2.TotalParts    := fDMManifesto.mAuxiliar.RecordCount;
  RzProgressBar2.PartsComplete := 0;
  SMDBGrid1.DisableScroll;

  fDMManifesto.mAuxiliar.First;
  while not fDMManifesto.mAuxiliar.Eof do
  begin
    RzProgressBar2.PartsComplete := RzProgressBar2.PartsComplete + 1; 

    fDMManifesto.mAuxiliar.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmManifesto.prc_Gravar_Manifesto_AN;
var
  ID: TTransactionDesc;
  vIDAux: Integer;
begin
  fDMManifesto.prc_Localizar(-1);

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase_NFeBD.scoNFeBD.StartTransaction(ID);

  try
    fDMManifesto.qUltIDManifesto_AN.Close;
    fDMManifesto.qUltIDManifesto_AN.Open;
    if fDMManifesto.qUltIDManifesto_ANID.IsNull then
      vIDAux := 0
    else
      vIDAux := fDMManifesto.qUltIDManifesto_ANID.AsInteger;
    vIDAux := vIDAux + 1;

    fDMManifesto.cdsManifesto_AN.Insert;
    fDMManifesto.cdsManifesto_ANID.AsInteger := vIDAux;
    fDMManifesto.cdsManifesto_ANFILIAL.AsInteger         := RxDBLookupCombo1.KeyValue;
    fDMManifesto.cdsManifesto_ANCNPJ_FILIAL.AsString     := fDMManifesto.cdsFilialCNPJ_CPF.AsString;
    fDMManifesto.cdsManifesto_ANGRAVADA_NOTA.AsString    := fnc_Verifica_Nota(fDMManifesto.mAuxiliarChave_Acesso.AsString);
    fDMManifesto.cdsManifesto_ANCHAVE_ACESSO.AsString    := fDMManifesto.mAuxiliarChave_Acesso.AsString;
    fDMManifesto.cdsManifesto_ANCNPJ.AsString            := fDMManifesto.mAuxiliarCNPJ.AsString;
    fDMManifesto.cdsManifesto_ANINSC_ESTADUAL.AsString   := fDMManifesto.mAuxiliarInsc_Estadual.AsString;
    fDMManifesto.cdsManifesto_ANDTEMISSAO.AsString       := fDMManifesto.mAuxiliarDtEmissao.AsString;
    fDMManifesto.cdsManifesto_ANDTEMISSAO2.AsDateTime    := fDMManifesto.mAuxiliarDtEmissao2.AsDateTime;
    fDMManifesto.cdsManifesto_ANNOME.AsString            := fDMManifesto.mAuxiliarNome.AsString;
    fDMManifesto.cdsManifesto_ANNOTA_PROPRIA.AsString    := fDMManifesto.mAuxiliarNota_Propria.AsString;
    fDMManifesto.cdsManifesto_ANNUM_NOTA.AsInteger       := fDMManifesto.mAuxiliarNum_Nota.AsInteger;
    fDMManifesto.cdsManifesto_ANSERIE.AsString           := fDMManifesto.mAuxiliarSerie.AsString;
    fDMManifesto.cdsManifesto_ANVLR_NOTA.AsFloat         := fDMManifesto.mAuxiliarVlr_Nota.AsFloat;
    fDMManifesto.cdsManifesto_ANSITUACAO_MANIF.AsInteger := fDMManifesto.mAuxiliarSituacao_Manif.AsInteger;
    fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger   := fDMManifesto.mAuxiliarSituacao_NFe.AsInteger;
    if trim(fDMManifesto.mAuxiliarXML_Para_Download.Value) <> '' then
      fDMManifesto.cdsManifesto_ANXML.Value := fDMManifesto.mAuxiliarXML_Para_Download.Value; 
    fDMManifesto.cdsManifesto_ANNSU.AsString := fDMManifesto.mAuxiliarNSU.AsString;
    fDMManifesto.cdsManifesto_ANSCHEMA.AsString := fDMManifesto.mAuxiliarSchema.AsString;
    fDMManifesto.cdsManifesto_ANDTRECEBIMENTO.AsString := fDMManifesto.mAuxiliarDtRecebimento.AsString;
    fDMManifesto.cdsManifesto_ANTIPO_EVE.AsString := fDMManifesto.mAuxiliarTipo_Eve.AsString;
    fDMManifesto.cdsManifesto_ANNUM_PROTOCOLO.AsString := fDMManifesto.mAuxiliarNum_Protocolo.AsString;
    fDMManifesto.cdsManifesto_ANDOWNLOAD.AsString      := fDMManifesto.mAuxiliarDownload.AsString;
    fDMManifesto.cdsManifesto_AN.Post;
    fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);

    dmDatabase_NFeBD.scoNFeBD.Commit(ID);
  except
    dmDatabase_NFeBD.scoNFeBD.Rollback(ID);
    raise;
  end;
end;

function TfrmManifesto.fnc_Verifica_Nota(Chave_Acesso: String): String;
begin
  fDMManifesto.qVerifica_Nota.Close;
  fDMManifesto.qVerifica_Nota.ParamByName('nfechaveacesso').AsString := Chave_Acesso;
  fDMManifesto.qVerifica_Nota.Open;

  if fDMManifesto.qVerifica_NotaID.AsInteger > 0 then
    Result := 'S'
  else
    Result := 'N';
end;

function TfrmManifesto.fnc_Buscar_UltNSU(Filial: Integer): String;
begin
  Result := '0';
  fDMManifesto.qUltNSU.Close;
  fDMManifesto.qUltNSU.ParamByName('FILIAL').AsInteger := Filial;
  fDMManifesto.qUltNSU.Open;
  if trim(fDMManifesto.qUltNSUNSU.AsString) <> '' then
    Result := fDMManifesto.qUltNSUNSU.AsString;
end;


procedure TfrmManifesto.prc_Gravar_Manifesto_Eve(Tipo_Eve: String);
var
  vIDAux: Integer;
  vTexto: String;
  vEditAux: Boolean;
begin
  vEditAux := False;
  if Tipo_Eve <> 'Cancelamento' then
  begin
    fDMManifesto.qVerifica_Evento.Close;
    fDMManifesto.qVerifica_Evento.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
    fDMManifesto.qVerifica_Evento.ParamByName('NSU').AsString     := fDMManifesto.cdsNotaDestinadaNSU.AsString;
    fDMManifesto.qVerifica_Evento.Open;
    if not fDMManifesto.qVerifica_Evento.IsEmpty then
      vEditAux := True;
      //exit;
  end
  else
  begin
    fDMManifesto.qVerifica_Cancelamento.Close;
    fDMManifesto.qVerifica_Cancelamento.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
    fDMManifesto.qVerifica_Cancelamento.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
    fDMManifesto.qVerifica_Cancelamento.Open;
    if not fDMManifesto.qVerifica_Cancelamento.IsEmpty then
      exit;
    vChave_Acesso := fDMManifesto.mAuxiliarChave_Acesso.AsString;
  end;

  //23/11/2017  Alterado para reeditar
  if vEditAux then
  begin
    fDMManifesto.prc_Localizar_EVE(fDMManifesto.qVerifica_EventoID.AsInteger);
    fDMManifesto.cdsManifesto_Eve.Edit;
  end
  else
  begin
    fDMManifesto.prc_Localizar_EVE(-1);
    fDMManifesto.qUltManifesto_EVE.Close;
    fDMManifesto.qUltManifesto_EVE.Open;
    vIDAux := fDMManifesto.qUltManifesto_EVEID.AsInteger;
    vIDAux := vIDAux + 1;
    fDMManifesto.cdsManifesto_EVE.Insert;
    fDMManifesto.cdsManifesto_EVEID.AsInteger := vIDAux;
  end;
  fDMManifesto.cdsManifesto_EVEFILIAL.AsInteger      := RxDBLookupCombo1.KeyValue;
  fDMManifesto.cdsManifesto_EVECHAVE_ACESSO.AsString := vChave_Acesso;
  fDMManifesto.cdsManifesto_EVETIPO_EVENTO.AsString  := Tipo_Eve;
  if Tipo_Eve <> 'Cancelamento' then //aqui
  begin
    fDMManifesto.cdsManifesto_EVESCHEMA.AsString       := fDMManifesto.cdsNotaDestinadaschema.AsString;
    fDMManifesto.cdsManifesto_EVENSU.AsString          := fDMManifesto.cdsNotaDestinadaNSU.AsString;
  end;
  fDMManifesto.cdsManifesto_EVEXML.LoadFromStream(mXml);
  fDMManifesto.cdsManifesto_EVEORGAO.AsString        := fnc_Busca_Campo('<cOrgao>');
  vTexto := Monta_Numero(fnc_Busca_Campo('<nSeqEvento>'),0);
  if vTexto <> '' then
    fDMManifesto.cdsManifesto_EVESEQ_EVENTO.AsString  := vTexto
  else
    fDMManifesto.cdsManifesto_EVESEQ_EVENTO.AsString  := '0';
  fDMManifesto.cdsManifesto_EVEDTEVENTO.AsString    := fnc_Busca_Campo('<dhEvento>');
  fDMManifesto.cdsManifesto_EVECOD_EVENTO.AsString   := fnc_Busca_Campo('<tpEvento>');
  fDMManifesto.cdsManifesto_EVEDESCRICAO_EVENTO.AsString := fnc_Busca_Campo('<xEvento>');
  if trim(fDMManifesto.cdsManifesto_EveDESCRICAO_EVENTO.AsString) = '' then
    fDMManifesto.cdsManifesto_EVEDESCRICAO_EVENTO.AsString := fnc_Busca_Campo('<descEvento>');
  if Tipo_Eve = 'procEventoNFe' then
  begin
    if (fDMManifesto.cdsManifesto_EveCOD_EVENTO.AsString <> '110111') and (fDMManifesto.cdsManifesto_EveCOD_EVENTO.AsString <> '110110') then
      fDMManifesto.cdsManifesto_EVENOTA_PROPRIA.AsString := 'S'
    else
    begin
      fDMManifesto.cdsManifesto_EVENOTA_PROPRIA.AsString := 'N';
      vCod_Evento := fDMManifesto.cdsManifesto_EVECOD_EVENTO.AsString;
    end
  end
  else
    fDMManifesto.cdsManifesto_EVENOTA_PROPRIA.AsString := 'N';
  fDMManifesto.cdsManifesto_EVESERIE.AsString := copy(vChave_Acesso,23,3);
  vTexto := copy(vChave_Acesso,26,9);
  fDMManifesto.cdsManifesto_EVENUM_NOTA.AsString := vTexto;
  fDMManifesto.cdsManifesto_EVE.Post;
  fDMManifesto.cdsManifesto_EVE.ApplyUpdates(0);
end;

procedure TfrmManifesto.BitBtn1Click(Sender: TObject);
begin
  if not fDMManifesto.mAuxiliar.IsEmpty then
  begin
    Label13.Caption := 'Limpando tabela auxiliar:';
    Panel2.Height   := 50;

    RzProgressBar2.TotalParts    := fDMManifesto.mAuxiliar.RecordCount;
    RzProgressBar2.PartsComplete := 0;
    Refresh;

    fDMManifesto.mAuxiliar.EmptyDataSet;
    Panel2.Height   := 0;
    Refresh;
  end;
  RxDBLookupCombo1.ReadOnly := False;
  BitBtn1.Enabled           := False;
end;

procedure TfrmManifesto.btnManifestarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não foi informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (cbManEvento.ItemIndex < 0) and (cbOpcao.ItemIndex < 2) then
  begin
    MessageDlg('*** Evento não informado!', mtInformation, [mbOk], 0);
    exit;
  end;

  vContador := 0;
  vContador_Canc := 0;
  fDMManifesto.mAuxiliar.First;
  while not fDMManifesto.mAuxiliar.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMManifesto.mAuxiliarNota_Propria.AsString = 'N') and (fDMManifesto.mAuxiliarSituacao_NFe.AsInteger = 1) then
    begin
      if (cbOpcao.ItemIndex = 0) or (cbOpcao.ItemIndex = 1) then
      begin
        //prc_ConsultarNFE;
        if fDMManifesto.mAuxiliarSituacao_NFe.AsInteger <> 3 then
        begin
          prc_Manifestar;
          if cbOpcao.ItemIndex = 0 then
            prc_Download(fDMManifesto.mAuxiliarChave_Acesso.AsString);
        end;
      end
      else
      if (cbOpcao.ItemIndex = 2) then
      begin
        //prc_ConsultarNFE;
        if fDMManifesto.mAuxiliarSituacao_NFe.AsInteger <> 3 then
          prc_Download(fDMManifesto.mAuxiliarChave_Acesso.AsString);
      end;
    end;
    fDMManifesto.mAuxiliar.Next;
  end;
  //btnConsultarClick(Sender);
  if vContador_Canc > 0 then
    MessageDlg('*** Total de ' + IntToStr(vContador) + ' nota(s) processadas conforme opção!' + #13 + #13 +
               '*** Total de ' + IntToStr(vContador_Canc) + ' nota(s) canceladas pelo emitente!', mtInformation, [mbOk], 0)
  else
    MessageDlg('*** Total de ' + IntToStr(vContador) + ' nota(s) processadas conforme opção!', mtInformation, [mbOk], 0);
end;

procedure TfrmManifesto.prc_Manifestar;
var
  Protocolo: string;
  DtProtocolo: string;
  texto: String;
  vLocalServidorNFe: String;
begin
  if cbManEvento.ItemIndex < 2 then
    edtManJustificativa.Clear;
  RetXml := TMemoryStream.Create;
  try
    if fDMManifesto.cdsFilialPESSOA.AsString = 'F' then
      texto := Monta_Texto(fDMManifesto.cdsFilialCNPJ_CPF.AsString,11)
    else
      texto := Monta_Texto(fDMManifesto.cdsFilialCNPJ_CPF.AsString,14);
    vLocalServidorNFe := fnc_LocalServidorNFe;

    EnviarManifestacao(Trim(vLocalServidorNFe),
                       texto,
                       fDMManifesto.mAuxiliarChave_Acesso.AsString,
                       cbManEvento.ItemIndex,
                       edtManJustificativa.Text,
                       False,
                       RetXml,
                       Protocolo,
                       DtProtocolo);
    RetXml.Position := 0;
    //Memo1.Lines.LoadFromStream(RetXml);

    //mmoManXML.Lines.LoadFromStream(RetXml);
    vContador := vContador + 1;
    //prc_Gravar_Manifesto(DtProtocolo,Protocolo);
    prc_Manifesto_Proprio;

  finally
    FreeAndNil(RetXml);
  end;
end;

procedure TfrmManifesto.prc_Manifesto_Proprio;
begin
  fDMManifesto.mAuxiliar.Edit;
  case cbManEvento.ItemIndex of
    0: fDMManifesto.mAuxiliarSituacao_Manif.AsInteger := 200;
    1: fDMManifesto.mAuxiliarSituacao_Manif.AsInteger := 210;
    2: fDMManifesto.mAuxiliarSituacao_Manif.AsInteger := 220;
    3: fDMManifesto.mAuxiliarSituacao_Manif.AsInteger := 240;
  end;

  fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := cbManEvento.Text;
  fDMManifesto.mAuxiliarselecionada.AsString      := 'S';
  fDMManifesto.mAuxiliar.Post;

  fDMManifesto.qVerifica_Manifesto.Close;
  fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
  fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
  fDMManifesto.qVerifica_Manifesto.Open;

  fDMManifesto.prc_Localizar(fDMManifesto.qVerifica_ManifestoID.AsInteger);

  if fDMManifesto.cdsManifesto_AN.IsEmpty then
    prc_Gravar_Manifesto_AN
  else
  begin
    fDMManifesto.cdsManifesto_AN.Edit;
    fDMManifesto.cdsManifesto_ANSITUACAO_MANIF.AsInteger := fDMManifesto.mAuxiliarSituacao_Manif.AsInteger;
    fDMManifesto.cdsManifesto_AN.Post;
    fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
  end;
end;

procedure TfrmManifesto.prc_Download(Chave_Acesso: String);
var
  //oStream: TMemoryStream;
  //oStrStream: TStringStream;
  vCNPJAux: String;
  vLocalServidorNFe: String;
  vFlag: Boolean;
begin
  if trim(edtDiretorio.Text) = '' then
  begin
    MessageDlg('*** Pasta para salvar o XML não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vCNPJAux := Monta_Numero(fDMManifesto.cdsFilialCNPJ_CPF.AsString,0);

  vLocalServidorNFe := fnc_LocalServidorNFe;

  oStream := TMemoryStream.Create;
  try
    vFlag := False;
    fDMManifesto.qXML.Close;
    fDMManifesto.qXML.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
    fDMManifesto.qXML.Open;
    if not(fDMManifesto.qXMLXML.IsNull) then
    begin
      fDMManifesto.qXMLXML.SaveToStream(oStream);
      vFlag := True;
    end;

    if not vFlag then
    begin
      DownloadNFe(Trim(vLocalServidorNFe),
                   vCNPJAux,
                   Chave_Acesso,
                   oStream );
    end;
    oStream.Position := 0;
    if oStream.Size > 0 then
    begin
      if vFlag then
        prc_Salvar_Download(True)
      else
        prc_Salvar_Download(False);
    end;
  finally
    FreeAndNil(oStream);
  end;
end;

procedure TfrmManifesto.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    CurrencyEdit5.Text := fnc_Buscar_UltNSU(RxDBLookupCombo1.KeyValue);
  end
  else
    CurrencyEdit5.AsInteger := 0;
end;

procedure TfrmManifesto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    vFilial_Ant := RxDBLookupCombo1.KeyValue
  else
    vFilial_Ant := 0;
end;

procedure TfrmManifesto.btnContinuaClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  //btnGerarClick(Sender);
  prc_Gerar;
end;

procedure TfrmManifesto.NxCheckBox2Change(Sender: TObject);
begin
  CurrencyEdit5.ReadOnly := not(NxCheckBox2.Checked);
end;

procedure TfrmManifesto.prc_Le_Consulta;
var
  vComando: String;
  vDtIni: String;
begin
  vComando := '';
  fDMManifesto.cdsConsulta.Close;
  fDMManifesto.sdsConsulta.CommandText := fDMManifesto.ctConsulta;
  if NxComboBox1.ItemIndex = 1 then
    vComando := ' AND ((AN.GRAVADA_NOTA = ' + QuotedStr('N') + ') AND (AN.SITUACAO_NFE <> 3) AND (COALESCE(AN.OCULTAR,' + QuotedStr('') + ') <> ' + QuotedStr('S')+'))'
  else
  //if NxComboBox1.ItemIndex = 0 then
    //vComando := ' AND ((AN.DOWNLOAD = ' + QuotedStr('N') + ')' + '  OR (AN.SITUACAO_MANIF = -1) or (AN.GRAVADA_NOTA = ' + QuotedStr('N') + '))'
  //else
  if NxComboBox1.ItemIndex = 2 then
    vComando := ' AND (AN.SITUACAO_MANIF = -1)'
  else
  if NxComboBox1.ItemIndex = 3 then
    vComando := ' AND (AN.DOWNLOAD = ' + QuotedStr('N') + ')';
  //A Data de emissão foi trocada na versão .368 onde foi criado o campo DTEMISSAO2 na tabela MANIFESTO_AN
  {if (NxDatePicker1.Date > 10) and (NxDatePicker1.Text <> '') then
  begin
    vDtIni   := FormatDateTime('YYYY-MM-DD',NxDatePicker1.date) + 'T00:00:00-00:00';
    vComando := vComando + ' AND (AN.DTEMISSAO >= ' + QuotedStr(vDtIni) + ')';
  end;}
  if NxDatePicker1.Text <> '' then
    vComando := vComando + ' AND AN.DTEMISSAO2 >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
  //*************

  fDMManifesto.sdsConsulta.CommandText := fDMManifesto.sdsConsulta.CommandText + vComando;
  fDMManifesto.sdsConsulta.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;

  fDMManifesto.cdsConsulta.Open;

  RzProgressBar2.TotalParts    := fDMManifesto.cdsConsulta.RecordCount;
  RzProgressBar2.PartsComplete := 0;

  fDMManifesto.cdsConsulta.First;
  while not fDMManifesto.cdsConsulta.Eof do
  begin
    RzProgressBar2.PartsComplete := RzProgressBar2.PartsComplete + 1;

    //if fDMManifesto.cdsConsultaNUM_NOTA.AsInteger = 3120 then
    //  ShowMessage('Aqui');

    fDMManifesto.mAuxiliar.Insert;
    fDMManifesto.mAuxiliarChave_Acesso.AsString  := fDMManifesto.cdsConsultaCHAVE_ACESSO.AsString;
    fDMManifesto.mAuxiliarSerie.AsString         := fDMManifesto.cdsConsultaSERIE.AsString;
    fDMManifesto.mAuxiliarNum_Nota.AsString      := fDMManifesto.cdsConsultaNUM_NOTA.AsString;
    fDMManifesto.mAuxiliarGravado_Banco.AsString := 'S';
    fDMManifesto.mAuxiliarNSU.AsString           := fDMManifesto.cdsConsultaNSU.AsString;
    fDMManifesto.mAuxiliarXML_Para_Download.Value := fDMManifesto.cdsConsultaXML.Value;
    fDMManifesto.mAuxiliarGravada_Nota.AsString   := fDMManifesto.cdsConsultaGRAVADA_NOTA.AsString;
    fDMManifesto.mAuxiliarOcultar.AsString        := fDMManifesto.cdsConsultaOCULTAR.AsString;
    //14/09/2017
    if fDMManifesto.mAuxiliarGravada_Nota.AsString <> 'S' then
    begin
      fDMManifesto.mAuxiliarGravada_Nota.AsString   := fnc_Verifica_Nota(fDMManifesto.cdsConsultaCHAVE_ACESSO.AsString);
      //15/09/2017
      if trim(fDMManifesto.mAuxiliarGravada_Nota.AsString) = 'S' then
      begin
        fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
        if not fDMManifesto.cdsManifesto_AN.IsEmpty then
        begin
          fDMManifesto.cdsManifesto_AN.Edit;
          fDMManifesto.cdsManifesto_ANGRAVADA_NOTA.AsString := 'S';
          fDMManifesto.cdsManifesto_AN.Post;
          fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
        end;
      end;
    end;
    fDMManifesto.mAuxiliarEvento.AsString        := 'N';
    fDMManifesto.mAuxiliarTipo_Eve.AsString      := fDMManifesto.cdsConsultaTIPO_EVE.AsString;
    fDMManifesto.mAuxiliarCNPJ.AsString          := fDMManifesto.cdsConsultaCNPJ.AsString;
    fDMManifesto.mAuxiliarNome.AsString          := fDMManifesto.cdsConsultaNOME.AsString;
    fDMManifesto.mAuxiliarInsc_Estadual.AsString := fDMManifesto.cdsConsultaINSC_ESTADUAL.AsString;
    fDMManifesto.mAuxiliarDtEmissao.AsString     := fDMManifesto.cdsConsultaDTEMISSAO.AsString;
    fDMManifesto.mAuxiliarCCe.AsString           := fDMManifesto.cdsConsultaPOSSUI_CCE.AsString;
    if fDMManifesto.cdsConsultaDTEMISSAO2.AsDateTime > 10 then
      fDMManifesto.mAuxiliarDtEmissao2.AsDateTime := fDMManifesto.cdsConsultaDTEMISSAO2.AsDateTime;
    fDMManifesto.mAuxiliarVlr_Nota.AsFloat   := fDMManifesto.cdsConsultaVLR_NOTA.AsFloat;
    fDMManifesto.mAuxiliarDtRecebimento.AsString := fDMManifesto.cdsConsultaDTRECEBIMENTO.AsString;
    fDMManifesto.mAuxiliarNum_Protocolo.AsString := fDMManifesto.cdsConsultaNUM_PROTOCOLO.AsString;
    fDMManifesto.mAuxiliarSituacao_Manif.AsInteger := fDMManifesto.cdsConsultaSITUACAO_MANIF.AsInteger;
    fDMManifesto.mAuxiliarSituacao_NFe.AsInteger   := fDMManifesto.cdsConsultaSITUACAO_NFE.AsInteger;
    case fDMManifesto.mAuxiliarSituacao_NFe.AsInteger of
      1: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso autorizado no momento da consulta';
      2: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso denegado';
      3: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'NF-e cancelada';
    end;
    fDMManifesto.mAuxiliarNota_Propria.AsString := 'N';
    if fDMManifesto.mAuxiliarXML_Para_Download.IsNull then
    begin
      fDMManifesto.qDownload.Close;
      fDMManifesto.qDownload.ParamByName('Chave_Acesso').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
      fDMManifesto.qDownload.Open;
      if not fDMManifesto.qDownload.IsEmpty then
        fDMManifesto.mAuxiliarXML_Para_Download.Value := fDMManifesto.qDownloadXML.Value;
    end;
    if (fDMManifesto.mAuxiliarSituacao_NFe.AsInteger = 3) or (fDMManifesto.mAuxiliarCCe.AsString = 'S') then
      prc_Le_Evento_Aux;

    fDMManifesto.mAuxiliarDownload.AsString := fDMManifesto.cdsConsultaDOWNLOAD.AsString;
    fDMManifesto.mAuxiliar.Post;

    fDMManifesto.cdsConsulta.Next;
  end;
end;

procedure TfrmManifesto.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMManifesto.mAuxiliar.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmManifesto.cbOpcaoChange(Sender: TObject);
begin
  Label7.Visible       := (cbOpcao.ItemIndex <> 1);
  edtDiretorio.Visible := (cbOpcao.ItemIndex <> 1);
  btnManifestar.Caption := cbOpcao.Text + ' das notas selecionadas';
end;

procedure TfrmManifesto.cbManEventoClick(Sender: TObject);
begin
  case cbManEvento.ItemIndex of
    0,1 :edtManJustificativa.ReadOnly := True;
    2,3 :edtManJustificativa.ReadOnly := False
  end;
end;

procedure TfrmManifesto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    BitBtn2.Visible := not(BitBtn2.Visible);
    BitBtn3.Visible := not(BitBtn3.Visible);
    BitBtn4.Visible := not(BitBtn4.Visible);
  end;
end;

procedure TfrmManifesto.BitBtn2Click(Sender: TObject);
var
  vFlag: Boolean;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vFlag := False;
  while not vflag do
  begin
    btnGerarClick(Sender);
    if not btnContinua.Enabled then
      vFlag := True;
  end;                          
end;

procedure TfrmManifesto.prc_Salvar_Download(PorEvento: Boolean);
var
  vArquivoAux: String;
  vNomeAux: String;
  i: Integer;
begin
  vArquivoAux := edtDiretorio.Text;
  if copy(vArquivoAux,Length(vArquivoAux),1) <> '\' then
    vArquivoAux := vArquivoAux + '\';

  vNomeAux := TirarAcento_Arq(fDMManifesto.mAuxiliarNome.AsString);
  if ((cbOpcao.ItemIndex = 2) and not(PorEvento)) or (PorEvento) then
    vContador := vContador + 1;

  i := 1;
  while i > 0 do
  begin
    i := Pos('\',vNomeAux);
    if i <= 0 then
      i := Pos('/',vNomeAux);
    if i > 0 then
      Delete(vNomeAux,i,1);
  end;

  vArquivoAux := vArquivoAux + 'NFe_' + vNomeAux + '_' + fDMManifesto.mAuxiliarSerie.AsString + '_' + fDMManifesto.mAuxiliarNum_Nota.AsString + '.xml';
  if FileExists(vArquivoAux) then
    DeleteFile(vArquivoAux);

  if PorEvento then
    SalvarUTF8(oStream,vArquivoAux)
  else
    oStream.SaveToFile(vArquivoAux);

  fDMManifesto.mAuxiliar.Edit;
  fDMManifesto.mAuxiliarDownload.AsString    := 'S';
  fDMManifesto.mAuxiliarselecionada.AsString := 'N';
  fDMManifesto.mAuxiliar.Post;

  fDMManifesto.qVerifica_Manifesto.Close;
  fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
  fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
  fDMManifesto.qVerifica_Manifesto.Open;

  if fDMManifesto.qVerifica_ManifestoID.AsInteger > 0 then
    fDMManifesto.prc_Localizar(fDMManifesto.qVerifica_ManifestoID.AsInteger)
  else
    fDMManifesto.prc_Localizar(-1);

  if fDMManifesto.cdsManifesto_AN.IsEmpty then
    prc_Gravar_Manifesto_AN
  else
  begin
    fDMManifesto.cdsManifesto_AN.Edit;
    fDMManifesto.cdsManifesto_ANDOWNLOAD.AsString := 'S';
    fDMManifesto.cdsManifesto_ANXML.LoadFromStream(oStream);
    fDMManifesto.cdsManifesto_AN.Post;
    fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
  end;
end;

procedure TfrmManifesto.prc_ConsultarNFE;
var
  oStrStream: TStringStream;
  vLocalServidorNFe: String;
  vTipo_Evento: String;
begin
  fDMManifesto.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,([Locaseinsensitive]));
  if fDMManifesto.cdsFilialPESSOA.AsString = 'F' then
    vCNPJ := Monta_Numero(fDMManifesto.cdsFilialCNPJ_CPF.AsString,11)
  else
    vCNPJ := Monta_Numero(fDMManifesto.cdsFilialCNPJ_CPF.AsString,14);
  sXmlEvento := TStringStream.Create('');
  MXml := TMemoryStream.Create;
  vLocalServidorNFe := fnc_LocalServidorNFe;

  try
    vTipo_Evento := ConsultarNFe( trim(vLocalServidorNFe) ,
                                            vCNPJ,
                                            fDMManifesto.mAuxiliarChave_Acesso.AsString,
                                            mXml,
                                            False,
                                            false );
    mXml.Position := 0;
    sXmlEvento.CopyFrom(mXml,mXml.Size);
    sXmlEvento.Position := 0;
    if posex('110111',vTipo_Evento) > 0 then
    //vTipo_Evento := fnc_Busca_Campo('<tpEvento>');
    //if vTipo_Evento = '110111' then
    begin
      prc_Gravar_Manifesto_Eve('Cancelamento');
      fDMManifesto.mAuxiliar.Edit;
      fDMManifesto.mAuxiliarSituacao_NFe.AsInteger    := 3;
      fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'NF-e Cancelada';
      fDMManifesto.mAuxiliar.Post;
      vContador_Canc := vContador_Canc + 1;

      fDMManifesto.qVerifica_Manifesto.Close;
      fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
      fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
      fDMManifesto.qVerifica_Manifesto.Open;
      if fDMManifesto.qVerifica_ManifestoID.AsInteger > 0 then
      begin
        fDMManifesto.prc_Localizar(fDMManifesto.qVerifica_ManifestoID.AsInteger);
        if not fDMManifesto.cdsManifesto_AN.IsEmpty then
        begin
          fDMManifesto.cdsManifesto_AN.Edit;
          fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 3;
          fDMManifesto.cdsManifesto_ANTIPO_EVE.AsString      := 'Cancelamento';
          fDMManifesto.cdsManifesto_AN.Post;
          fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
        end;
      end
      else
        prc_Gravar_Manifesto_AN;
    end;

    {oStrStream := TStringStream.Create('');
    try
      oNFeStream.Position := 0;
      oStrStream.CopyFrom(oNFeStream, oNFeStream.Size);
      fDMManifesto_Cli.xtrConsultaNFe.TransformRead.SourceXml := oStrStream.DataString;
      fDMManifesto_Cli.xtrConsultaNFe.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\ConsultaNFe.xtr';

      if chkConsSalvarXML.Checked then
      begin
        if FileExists('c:\a\man_'+edtConsChave.Text+'.xml') then
          DeleteFile('c:\a\man_'+edtConsChave.Text+'.xml');
        oNFeStream.Position := 0;
        oNFeStream.SaveToFile('c:\a\man_'+edtConsChave.Text+'.xml');
      end;
    finally
      FreeAndNil(oStrStream);
    end;}
  finally
    FreeAndNil(mXML);
  end;

  //fDMManifesto_Cli.cdsConsultaNFe.Open;
end;

procedure TfrmManifesto.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMManifesto.mAuxiliarSituacao_NFe.AsInteger = 3 then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMManifesto.mAuxiliarGravada_Nota.AsString = 'S' then
    Background := clMoneyGreen
  else
  if fDMManifesto.mAuxiliarOcultar.AsString = 'S' then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmManifesto.Marcarcomonotasjlanadas1Click(Sender: TObject);
begin
  vContador := 0;
  fDMManifesto.mAuxiliar.First;
  while not fDMManifesto.mAuxiliar.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      fDMManifesto.mAuxiliar.Edit;
      fDMManifesto.mAuxiliarDownload.AsString     := 'S';
      fDMManifesto.mAuxiliarGravada_Nota.AsString := 'S';
      fDMManifesto.mAuxiliar.Post;

      fDMManifesto.qVerifica_Manifesto.Close;
      fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
      fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
      fDMManifesto.qVerifica_Manifesto.Open;

      if fDMManifesto.qVerifica_ManifestoID.AsInteger > 0 then
      begin
        vContador := vContador + 1;
        fDMManifesto.prc_Localizar(fDMManifesto.qVerifica_ManifestoID.AsInteger);
        if not fDMManifesto.cdsManifesto_AN.IsEmpty then
        begin
          fDMManifesto.cdsManifesto_AN.Edit;
          fDMManifesto.cdsManifesto_ANDOWNLOAD.AsString     := 'S';
          fDMManifesto.cdsManifesto_ANGRAVADA_NOTA.AsString := 'S';
          fDMManifesto.cdsManifesto_AN.Post;
          fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
        end;
      end;
    end;
    fDMManifesto.mAuxiliar.Next;
  end;
  MessageDlg('Total de ' + IntToStr(vContador) + ' notas marcadas!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmManifesto.DownloaddoEvento1Click(Sender: TObject);
begin
  if MessageDlg('Confirma o download das notas selecionadas por evento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vContador := 0;
  vContador_Canc := 0;
  oStream   := TMemoryStream.Create;
  try
    fDMManifesto.mAuxiliar.First;
    while not fDMManifesto.mAuxiliar.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMManifesto.mAuxiliarNota_Propria.AsString = 'N') and (not(fDMManifesto.mAuxiliarDownload.IsNull)) then
      begin
        fDMManifesto.mAuxiliarXML_Para_Download.SaveToStream(oStream);
        oStream.Position := 0;

        prc_Salvar_Download(True);

      end;
      fDMManifesto.mAuxiliar.Next;
    end;
  finally
    FreeAndNil(oStream);
  end;

  MessageDlg('Total de ' + IntToStr(vContador) + ' downloads!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmManifesto.ConsultarSituaodaNotaCancelada1Click(
  Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não foi informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vContador := 0;
  vContador_Canc := 0;
  fDMManifesto.mAuxiliar.First;
  while not fDMManifesto.mAuxiliar.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMManifesto.mAuxiliarNota_Propria.AsString = 'N') and (fDMManifesto.mAuxiliarSituacao_NFe.AsInteger = 1) then
    begin
      prc_ConsultarNFE;
    end;
    fDMManifesto.mAuxiliar.Next;
  end;
  //btnConsultarClick(Sender);
  if vContador_Canc > 0 then
    MessageDlg('*** Total de ' + IntToStr(vContador_Canc) + ' nota(s) canceladas!', mtInformation, [mbOk], 0);
end;

procedure TfrmManifesto.prc_Gerar;
var
  SXml: TStringStream;
  ultNSU, maxNSU: String;
  qtdeDocto: Integer;
  vNSUInf: String;
begin
  Panel2.Height := 50;

  vNSUInf := Monta_Numero(CurrencyEdit5.Text,0);
  if vNSUInf = '' then
    vNSUInf := '0';

  fDMManifesto.cdsNotaDestinada.Close;

  if fDMManifesto.cdsFilialPESSOA.AsString = 'F' then
    vCNPJ := Monta_Texto(fDMManifesto.cdsFilialCNPJ_CPF.AsString,11)
  else
    vCNPJ := Monta_Texto(fDMManifesto.cdsFilialCNPJ_CPF.AsString,14);

  MXml := TMemoryStream.Create;
  try
    NFeDistNSU( Trim(fnc_LocalServidorNFe),
                vCNPJ,
                vCNPJ,
                vCodUF,
                vNSUInf,
                ultNSU,
                maxNSU,
                qtdeDocto,
                MXml );

    if maxNSU = '' then
      CurrencyEdit2.Text := '0'
    else
      CurrencyEdit2.Text := maxNSU;
    CurrencyEdit7.Value := qtdeDocto;

    SXml := TStringStream.Create('');
    try
      MXml.Position := 0;
      SXml.CopyFrom(MXml, MXml.Size);
      fDMManifesto.xtrNotaDestinada.TransformRead.SourceXml := SXml.DataString;
      fDMManifesto.xtrNotaDestinada.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'xtr\distNSU.xtr';
      fDMManifesto.cdsNotaDestinada.Open;

      prc_Le_cdsNotaDestinada;

      //prc_Le_mAuxiliar;

      Panel2.Height   := 0;
      Refresh;

      CurrencyEdit1.Text := vNSU_Final;
      CurrencyEdit5.Text := CurrencyEdit1.Text;

    finally
      SXml.free;
    end;
  finally
    MXml.Free;
  end;
  btnGerar.Enabled := False;
  BitBtn1.Enabled           := (fDMManifesto.mAuxiliar.RecordCount > 0);
  RxDBLookupCombo1.ReadOnly := (fDMManifesto.mAuxiliar.RecordCount > 0);
  btnContinua.Enabled := (CurrencyEdit5.AsInteger < CurrencyEdit2.AsInteger);
  Panel2.Height := 0;
end;

procedure TfrmManifesto.NxCheckBox1Change(Sender: TObject);
begin
  btnGerar.Enabled  := NxCheckBox1.Checked;
  if NxCheckBox1.Checked then
    btnContinua.Enabled := False;
end;

procedure TfrmManifesto.SMDBGrid1DblClick(Sender: TObject);
var
  vAno, vMes, vDia: Word;
begin
  if (fDMManifesto.mAuxiliar.IsEmpty) or (trim(fDMManifesto.mAuxiliarChave_Acesso.AsString) = '') then
   exit;

  fDMManifesto.cdsEvento.Close;
  fDMManifesto.sdsEvento.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
  fDMManifesto.sdsEvento.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
  fDMManifesto.cdsEvento.Open;

  sXmlEvento := TStringStream.Create('');
  try
    fDMManifesto.mEventoAux.EmptyDataSet;
    fDMManifesto.cdsEvento.First;
    while not fDMManifesto.cdsEvento.Eof do
    begin
      fDMManifesto.mEventoAux.Insert;
      fDMManifesto.cdsEventoXML.SaveToStream(sXmlEvento);
      sXmlEvento.Position := 0;
      //SXml.LoadFromStream(fDMManifesto.cdsEventoXML);
      //SXml.Position := 0;
      //sXmlEvento.CopyFrom(fDMManifesto.cdsEventoXML,fDMManifesto.cdsEventoXML.Size);
      //sXmlEvento.CopyFrom(mXml,mXml.Size);
      vCod_Evento := fnc_Busca_Campo('<tpEvento>');
      if vCod_Evento = '610600' then
        fDMManifesto.mEventoAuxTipo.AsString := 'CTe'
      else
      if vCod_Evento = '610610' then
        fDMManifesto.mEventoAuxTipo.AsString := 'MDFe'
      else
      if vCod_Evento = '610611' then
        fDMManifesto.mEventoAuxTipo.AsString := 'MDFe Cancelado'
      else
      if vCod_Evento = '110111' then
      begin
        fDMManifesto.mEventoAuxTipo.AsString := 'Nota Cancelada';
        fDMManifesto.mEventoAuxObs.Value     := fnc_Busca_Campo('<xJust>');
      end
      else
      if vCod_Evento = '110110' then
      begin
        fDMManifesto.mEventoAuxTipo.AsString := 'Carta de Correção';
        fDMManifesto.mEventoAuxObs.Value     := fnc_Busca_Campo('<xCorrecao>');
      end;
      fDMManifesto.mEventoAuxDtCompleta.AsString := fnc_Busca_Campo('<dhEvento>');
      vAno := StrToInt(copy(fDMManifesto.mEventoAuxDtCompleta.AsString,1,4));
      vMes := StrToInt(copy(fDMManifesto.mEventoAuxDtCompleta.AsString,6,2));
      vDia := StrToInt(copy(fDMManifesto.mEventoAuxDtCompleta.AsString,9,2));
      fDMManifesto.mEventoAuxDtEvento.AsDateTime := EncodeDate(vAno,vMes,vDia);
      fDMManifesto.mEventoAux.Post;
      fDMManifesto.cdsEvento.Next;
    end;
    fDMManifesto.mEventoAux.IndexFieldNames := 'DtCompleta';
    frmManifesto_Eve := TfrmManifesto_Eve.Create(Self);
    frmManifesto_Eve.fDMManifesto := fDMManifesto;
    frmManifesto_Eve.Edit1.Text   := fDMManifesto.mAuxiliarChave_Acesso.AsString;
    frmManifesto_Eve.ShowModal;
    FreeAndNil(frmManifesto_Eve);
  finally
    FreeAndNil(sXmlEvento);
  end
end;

procedure TfrmManifesto.BitBtn3Click(Sender: TObject);
var
  vSitNFe: Integer;
  vPossuiCCe: String;
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  Panel2.Visible := True;
  Panel2.Height  := 50;

  RzProgressBar2.PartsComplete := 0;

  fDMManifesto.cdsConsulta.Close;
  fDMManifesto.sdsConsulta.CommandText := fDMManifesto.ctConsulta;
  fDMManifesto.sdsConsulta.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMManifesto.cdsConsulta.Open;
  RzProgressBar2.TotalParts    := fDMManifesto.cdsConsulta.RecordCount;
  fDMManifesto.cdsConsulta.First;
  sXmlEvento := TStringStream.Create('');
  try
    while not fDMManifesto.cdsConsulta.Eof do
    begin
      RzProgressBar2.PartsComplete := RzProgressBar2.PartsComplete + 1;
      Panel2.Refresh;
      Refresh;

      fDMManifesto.cdsEvento.Close;
      fDMManifesto.sdsEvento.ParamByName('FILIAL').AsInteger      := fDMManifesto.cdsConsultaFILIAL.AsInteger;
      fDMManifesto.sdsEvento.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.cdsConsultaCHAVE_ACESSO.AsString;
      fDMManifesto.cdsEvento.Open;

      if fDMManifesto.cdsEvento.RecordCount <= 0 then
      begin
        fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
        if not fDMManifesto.cdsManifesto_AN.IsEmpty then
        begin
          fDMManifesto.cdsManifesto_AN.Edit;
          fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 1;
          fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString    := 'N';
          fDMManifesto.cdsManifesto_AN.Post;
          fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
        end;
      end
      else
      begin
        vPossuiCCe := fDMManifesto.cdsConsultaPOSSUI_CCE.AsString;
        vSitNFe    := fDMManifesto.cdsConsultaSITUACAO_NFE.AsInteger;
        fDMManifesto.cdsEvento.First;
        while not fDMManifesto.cdsEvento.Eof do
        begin
          fDMManifesto.cdsEventoXML.SaveToStream(sXmlEvento);
          sXmlEvento.Position := 0;
          vCod_Evento := fnc_Busca_Campo('<tpEvento>');
          if (vCod_Evento = '110111') or (vCod_Evento = '110110') then
          begin
            fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
            if not fDMManifesto.cdsManifesto_AN.IsEmpty then
            begin
              fDMManifesto.cdsManifesto_AN.Edit;
              if (vCod_Evento = '110111') then
                fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 3
              else
              if (vCod_Evento = '110110') then
                fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString := 'S';
              vSitNFe := fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger;
              vPossuiCCe := fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString;

              fDMManifesto.cdsManifesto_AN.Post;
              fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
            end;
          end;
          fDMManifesto.cdsEvento.Next;
        end;
        {if not fDMManifesto.mAuxiliar.State in [dsEdit,dsInsert] then
          fDMManifesto.mAuxiliar.Edit;
        if vPossuiCCe <> fDMManifesto.cdsConsultaPOSSUI_CCE.AsString then
          fDMManifesto.mAuxiliarCCe.AsString := fDMManifesto.cdsConsultaPOSSUI_CCE.AsString;
        if vSitNFe <> fDMManifesto.cdsConsultaSITUACAO_NFE.AsInteger then
          fDMManifesto.mAuxiliarSituacao_NFe.AsInteger := vSitNFe;
        case fDMManifesto.mAuxiliarSituacao_NFe.AsInteger of
          1: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso autorizado no momento da consulta';
          2: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso denegado';
          3: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'NF-e cancelada';
        end;
        fDMManifesto.}
      end;

      if (fDMManifesto.cdsConsultaGRAVADA_NOTA.AsString <> 'S') then
      begin
        fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
        if not fDMManifesto.cdsManifesto_AN.IsEmpty then
        begin
          fDMManifesto.cdsManifesto_AN.Edit;
          fDMManifesto.cdsManifesto_ANGRAVADA_NOTA.AsString := fnc_Verifica_Nota(fDMManifesto.cdsConsultaCHAVE_ACESSO.AsString);
          fDMManifesto.cdsManifesto_AN.Post;
          fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
        end;
      end;
      fDMManifesto.cdsConsulta.Next;
    end;

  finally
    FreeAndNil(sXmlEvento);
  end;
  Panel2.Height  := 0;
  ShowMessage('Concluído!');
  fDMManifesto.mAuxiliar.EmptyDataSet;
  btnGerar.Enabled := True;
  btnContinua.Enabled := False;
  RxDBLookupCombo1.ReadOnly := False;
  Panel2.Height := 0;
end;

procedure TfrmManifesto.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vOcultar: String;
  vTexto: String;
begin
  if (Key = Vk_F3) and (trim(fDMManifesto.mAuxiliarChave_Acesso.AsString) <> '') then
  begin
    vOcultar := InputBox('Informar "S" para ocultar da consulta','Informar "S" para ocultar da consulta', '');
    vOcultar := UpperCase(trim(vOcultar));
    if vOcultar <> 'S' then
      vOcultar := 'N';
    if fDMManifesto.mAuxiliarOcultar.AsString <> vOcultar then
    begin
      fDMManifesto.mAuxiliar.Edit;
      fDMManifesto.mAuxiliarOcultar.AsString := vOcultar;
      fDMManifesto.mAuxiliar.Post;
      fDMManifesto.qVerifica_Manifesto.Close;
      fDMManifesto.qVerifica_Manifesto.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.mAuxiliarChave_Acesso.AsString;
      fDMManifesto.qVerifica_Manifesto.ParamByName('FILIAL').AsInteger      := RxDBLookupCombo1.KeyValue;
      fDMManifesto.qVerifica_Manifesto.Open;
      fDMManifesto.prc_Localizar(fDMManifesto.qVerifica_ManifestoID.AsInteger);
      if not fDMManifesto.cdsManifesto_AN.IsEmpty then
      begin
        fDMManifesto.cdsManifesto_AN.Edit;
        fDMManifesto.cdsManifesto_ANOCULTAR.AsString := vOcultar;
        fDMManifesto.cdsManifesto_AN.Post;
        fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
      end;
    end;
  end
  else
  if (Key = Vk_F4) and (trim(fDMManifesto.mAuxiliarChave_Acesso.AsString) <> '') then
  begin
    vTexto := 'http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=' + fDMManifesto.mAuxiliarChave_Acesso.AsString;
    ShellExecute(Handle,'open', pChar(vTexto) ,nil,nil,SW_SHOW);
  end;
end;

procedure TfrmManifesto.BitBtn4Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  Panel2.Visible := True;
  Panel2.Height  := 50;

  RzProgressBar2.PartsComplete := 0;

  fDMManifesto.cdsConsulta.Close;
  fDMManifesto.sdsConsulta.CommandText := fDMManifesto.ctConsulta;
  if NxDatePicker1.Text <> '' then
    fDMManifesto.sdsConsulta.CommandText := fDMManifesto.sdsConsulta.CommandText + ' AND AN.DTEMISSAO2 >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
  fDMManifesto.sdsConsulta.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;

  fDMManifesto.cdsConsulta.Open;
  RzProgressBar2.TotalParts    := fDMManifesto.cdsConsulta.RecordCount;
  fDMManifesto.cdsConsulta.First;
  sXmlEvento := TStringStream.Create('');
  try
    while not fDMManifesto.cdsConsulta.Eof do
    begin
      RzProgressBar2.PartsComplete := RzProgressBar2.PartsComplete + 1;
      Panel2.Refresh;
      Refresh;

      {fDMManifesto.cdsEvento.Close;
      fDMManifesto.sdsEvento.ParamByName('FILIAL').AsInteger      := fDMManifesto.cdsConsultaFILIAL.AsInteger;
      fDMManifesto.sdsEvento.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.cdsConsultaCHAVE_ACESSO.AsString;
      fDMManifesto.cdsEvento.Open;

      fDMManifesto.cdsEvento.First;
      while not fDMManifesto.cdsEvento.Eof do
      begin
        fDMManifesto.cdsEventoXML.SaveToStream(sXmlEvento);
        sXmlEvento.Position := 0;
        vCod_Evento := fnc_Busca_Campo('<tpEvento>');
        if (vCod_Evento = '110111') or (vCod_Evento = '110110') then
        begin
          fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
          if not fDMManifesto.cdsManifesto_AN.IsEmpty then
          begin
            fDMManifesto.cdsManifesto_AN.Edit;
            if (vCod_Evento = '110111') then
              fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 3
            else
            if (vCod_Evento = '110110') then
              fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString := 'S';
          end;
        end;
        fDMManifesto.cdsEvento.Next;
      end;}
      //if (fDMManifesto.cdsConsultaGRAVADA_NOTA.AsString <> 'S') then
      //begin
        fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
        if not fDMManifesto.cdsManifesto_AN.IsEmpty then
        begin
          fDMManifesto.cdsManifesto_AN.Edit;
          fDMManifesto.cdsManifesto_ANGRAVADA_NOTA.AsString := fnc_Verifica_Nota(fDMManifesto.cdsConsultaCHAVE_ACESSO.AsString);
          fDMManifesto.cdsManifesto_AN.Post;
          fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
        end;
      //end;
      fDMManifesto.cdsConsulta.Next;
    end;

  finally
    FreeAndNil(sXmlEvento);
  end;
  Panel2.Height  := 0;
  ShowMessage('Concluído!');
end;

procedure TfrmManifesto.prc_Le_Evento_Aux;
var
  vSitNFe: Integer;
  vPossuiCCe: String;
  //20/07/2018
  vSitCanc: String;
  vSitCCe: String;
begin
  fDMManifesto.cdsEvento.Close;
  fDMManifesto.sdsEvento.ParamByName('FILIAL').AsInteger      := fDMManifesto.cdsConsultaFILIAL.AsInteger;
  fDMManifesto.sdsEvento.ParamByName('CHAVE_ACESSO').AsString := fDMManifesto.cdsConsultaCHAVE_ACESSO.AsString;
  fDMManifesto.cdsEvento.Open;

  if fDMManifesto.cdsEvento.RecordCount <= 0 then
  begin
    fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
    if not fDMManifesto.cdsManifesto_AN.IsEmpty then
    begin
      fDMManifesto.cdsManifesto_AN.Edit;
      fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 1;
      fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString    := 'N';
      fDMManifesto.cdsManifesto_AN.Post;
      fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);

      fDMManifesto.mAuxiliarSituacao_NFe.AsInteger    := 1;
      fDMManifesto.mAuxiliarCCe.AsString              := 'N';
      fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso autorizado no momento da consulta';
    end;
  end
  else
  begin
    sXmlEvento := TStringStream.Create('');
    try
      vSitNFe    := fDMManifesto.cdsConsultaSITUACAO_NFE.AsInteger;
      vPossuiCCe := fDMManifesto.cdsConsultaPOSSUI_CCE.AsString; 
      vSitCanc   := '';
      vSitCCe    := '';
      fDMManifesto.cdsEvento.First;
      while not fDMManifesto.cdsEvento.Eof do
      begin
        fDMManifesto.cdsEventoXML.SaveToStream(sXmlEvento);
        sXmlEvento.Position := 0;
        vCod_Evento := fnc_Busca_Campo('<tpEvento>');
        fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
        if (vCod_Evento = '110111') or (vCod_Evento = '110110') then
        begin
          //fDMManifesto.prc_Localizar(fDMManifesto.cdsConsultaID.AsInteger);
          if not fDMManifesto.cdsManifesto_AN.IsEmpty then
          begin
            fDMManifesto.cdsManifesto_AN.Edit;
            if (vCod_Evento = '110111') then
            begin
              fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 3;
              vSitCanc := 'S';                                           
            end
            else
            if (vCod_Evento = '110110') then
            begin
              fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString := 'S';
              vSitCCe := 'S';
            end;
            vSitNFe    := fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger;
            fDMManifesto.cdsManifesto_AN.Post;
            fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
          end;
        end;
        fDMManifesto.cdsEvento.Next;
      end;
      if vPossuiCCe <> 'S' then
        fDMManifesto.mAuxiliarCCe.AsString := 'N'
      else
        fDMManifesto.mAuxiliarCCe.AsString := 'S';
      if ((vSitNFe = 3) and (vSitCanc <> 'S')) or ((vPossuiCCe = 'S') and (vSitCCe <> 'S')) then
      begin
        fDMManifesto.cdsManifesto_AN.Edit;
        if ((vSitNFe = 3) and (vSitCanc <> 'S')) then
          fDMManifesto.cdsManifesto_ANSITUACAO_NFE.AsInteger := 1;
        if ((vPossuiCCe = 'S') and (vSitCCe <> 'S')) then
          fDMManifesto.cdsManifesto_ANPOSSUI_CCE.AsString := 'N';
        fDMManifesto.cdsManifesto_AN.Post;
        fDMManifesto.cdsManifesto_AN.ApplyUpdates(0);
      end;
      //20/07/2018
      if (vSitNFe = 3) and (vSitCanc <> 'S') then
        fDMManifesto.mAuxiliarSituacao_NFe.AsInteger := 1
      else
      if vSitNFe <> fDMManifesto.cdsConsultaSITUACAO_NFE.AsInteger then
        fDMManifesto.mAuxiliarSituacao_NFe.AsInteger := vSitNFe;
      case fDMManifesto.mAuxiliarSituacao_NFe.AsInteger of
        1: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso autorizado no momento da consulta';
        2: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'Uso denegado';
        3: fDMManifesto.mAuxiliarDescricao_SitNFe.AsString := 'NF-e cancelada';
      end;
    finally
      FreeAndNil(sXmlEvento);
    end;

  end;
end;

procedure TfrmManifesto.BitBtn5Click(Sender: TObject);
//var
  //vCNPJAux: String;
  //vLocalServidorNFe: String;
begin
  {if trim(edtDiretorio.Text) = '' then
  begin
    MessageDlg('*** Pasta para salvar o XML não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vCNPJAux := Monta_Numero(fDMManifesto.cdsFilialCNPJ_CPF.AsString,0);

  vLocalServidorNFe := fnc_LocalServidorNFe;

  oStream := TMemoryStream.Create;
  try
    DownloadNFe(Trim(vLocalServidorNFe),
                 vCNPJAux,
                 Chave_Acesso,
                 oStream );
    oStream.Position := 0;

    prc_Salvar_Download(False);
  finally
    FreeAndNil(oStream);
  end;}
end;

procedure TfrmManifesto.btnManClick(Sender: TObject);
var
  vNSUAux: Integer;
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não foi informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (cbManEvento.ItemIndex < 0) then
  begin
    MessageDlg('*** Evento não informado!', mtInformation, [mbOk], 0);
    exit;
  end;

  vContador      := 0;
  vContador_Canc := 0;
  fDMManifesto.mAuxiliar.First;
  while not fDMManifesto.mAuxiliar.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMManifesto.mAuxiliarNota_Propria.AsString = 'N') and (fDMManifesto.mAuxiliarSituacao_NFe.AsInteger = 1) then
    begin
      if fDMManifesto.mAuxiliarSituacao_NFe.AsInteger <> 3 then
        prc_Manifestar;
    end;
    fDMManifesto.mAuxiliar.Next;
  end;
  //btnConsultarClick(Sender);
  Sleep(5000);
  if vContador_Canc > 0 then
    MessageDlg('*** Total de ' + IntToStr(vContador) + ' nota(s) manifestadas!' + #13 + #13 +
               '*** Total de ' + IntToStr(vContador_Canc) + ' nota(s) canceladas pelo emitente!', mtInformation, [mbOk], 0)
  else
    MessageDlg('*** Total de ' + IntToStr(vContador) + ' nota(s) manifestadas !', mtInformation, [mbOk], 0);

  vNSUAux := CurrencyEdit5.AsInteger;
  prc_Gerar;
  if vNSUAux = CurrencyEdit5.AsInteger then
  begin
    MessageDlg('*** Evento de Download não disponibilizado na página Ambiente Nacional' + #13 + #13 +
               '    Favor refazer a consulta! ', mtInformation, [mbOk], 0);
    btnGerar.Enabled := True;
  end;

  SMDBGrid1.UnSelectAllClick(Sender);

  fDMManifesto.mAuxiliar.First;
  while not fDMManifesto.mAuxiliar.Eof do
  begin
    if fDMManifesto.mAuxiliarselecionada.AsString = 'S' then
      SMDBGrid1.SelectedRows.CurrentRowSelected := True;
    fDMManifesto.mAuxiliar.Next;
  end;
end;

procedure TfrmManifesto.btnDownloadClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não foi informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(edtDiretorio.Text) = '' then
  begin
    MessageDlg('*** Pasta para salvar o XML não foi informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vContador      := 0;
  vContador_Canc := 0;
  fDMManifesto.mAuxiliar.First;
  while not fDMManifesto.mAuxiliar.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMManifesto.mAuxiliarNota_Propria.AsString = 'N') and (fDMManifesto.mAuxiliarSituacao_NFe.AsInteger = 1) then
    begin
      if fDMManifesto.mAuxiliarSituacao_NFe.AsInteger <> 3 then
        prc_Download(fDMManifesto.mAuxiliarChave_Acesso.AsString);
    end;
    fDMManifesto.mAuxiliar.Next;
  end;
  MessageDlg('*** Total de ' + IntToStr(vContador) + ' Downloads!', mtInformation, [mbOk], 0);
end;

end.


