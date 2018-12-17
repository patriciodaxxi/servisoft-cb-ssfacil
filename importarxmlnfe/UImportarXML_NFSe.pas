unit uImportarXML_NFSe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, StdCtrls, DBCtrls, DB, Grids, DBGrids, SMDBGrid,
  DBClient, Provider, Xmlxform, Buttons, Mask, ToolEdit, RzTabs, ExtCtrls,
  RzPanel, XMLIntf, ComCtrls, Spin, XMLDoc, oxmldom, StrUtils, UDMImportarXML_NFSe;

type
  TfrmImportarXML_NFSe = class(TForm)
    Panel3: TPanel;
    OpenDialog: TOpenDialog;
    Diretorio: TLabel;
    edtDiretorio: TDirectoryEdit;
    chkSub: TCheckBox;
    RzPageControl1: TRzPageControl;
    TabSheet5: TRzTabSheet;
    Panel4: TPanel;
    TabSheet6: TRzTabSheet;
    RzPanel1: TRzPanel;
    btnCarregarXML: TBitBtn;
    TabSheet2: TRzTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    MemLista: TMemo;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    ComboBox1: TComboBox;
    dbgNFSeToCds: TDBGrid;
    Label2: TLabel;
    FilenameEdit1: TFilenameEdit;
    btnCarregaXML: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    procedure btnCarregaXMLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCarregarXMLClick(Sender: TObject);
  private
    { Private declarations }
    vGravar : Boolean;

    fDMImportarXML_NFSe: TDMImportarXML_NFSe;

    procedure ListarArquivos(Diretorio: string; Sub:Boolean);

    function TemAtributo(Attr, Val: Integer): Boolean;

    procedure Carrega_XML(Arquivo : String);

    procedure Gerar_CampoBom;
    procedure Gerar_NH_SL;

    function Replace(Str, Ant, Novo: string): string;

    procedure NFSe_CarregarNotas(AXML: TStream; ACds: TClientDataSet);

    function fnc_montar_cnpj_cpf(Doc : String) : String;
    procedure prc_Gravar_Cliente_NH_SL(CNPJ_CPF : String);
    procedure prc_Gravar_Cliente_CampoBom(CNPJ_CPF : String);

  public
    { Public declarations }
  end;

var
  frmImportarXML_NFSe: TfrmImportarXML_NFSe;

implementation

uses uUtilPadrao, rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmImportarXML_NFSe.btnCarregaXMLClick(Sender: TObject);
begin
  Carrega_XML(FilenameEdit1.FileName);
  if trim(fDMImportarXML_NFSe.cdsCampoBomdEmi.AsString) = '' then
    Carrega_XML(FilenameEdit1.FileName);

  if fDMImportarXML_NFSe.cdsCampoBom.IsEmpty then
    exit;

  Gerar_CampoBom;
end;

procedure TfrmImportarXML_NFSe.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex := 1;
end;

procedure TfrmImportarXML_NFSe.BitBtn2Click(Sender: TObject);
var
  vTexto : String;
begin
  if MessageDlg('Confirma a importação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMImportarXML_NFSe.cdsNFSe.Close;
  fDMImportarXML_NFSe.cdsNFSe.CreateDataSet;

  Memo1.Lines.Clear;

  memLista.Lines.Clear;

  ListarArquivos(edtDiretorio.Text, chkSub.Checked);

  if ComboBox1.ItemIndex > 0 then
  begin
    fDMImportarXML_NFSe.cdsNFSe.First;
    while not fDMImportarXML_NFSe.cdsNFSe.Eof do
    begin
      Gerar_NH_SL;

      fDMImportarXML_NFSe.cdsNFSe.Next;
    end;

  end;

  ShowMessage('Arquivo ' + vTexto +  ' Gerado!');
end;

procedure TfrmImportarXML_NFSe.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
  i : Integer;
  vQtd_Geral, vQtd_Ok, vQtd_Erro : Integer;
begin
  vQtd_Geral := 0;
  vQtd_Ok    := 0;
  vQtd_Erro  := 0;

  Ret := FindFirst(Diretorio+'\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio+'\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
        vGravar := True;
        memLista.Lines.Add(Diretorio+'\'+F.Name);
        vQtd_Geral := vQtd_Geral + 1;
        try
          i := 0;
          while i < 3 do
          begin
            i := i + 1;
            Carrega_XML(Diretorio+'\'+F.Name);
            if (ComboBox1.ItemIndex = 0) and not(fDMImportarXML_NFSe.cdsCampoBom.IsEmpty) then
              i := 3
            else
            if (ComboBox1.ItemIndex > 0) and not(fDMImportarXML_NFSe.cdsNFSe.IsEmpty) then
              i := 3;
          end;
          if ComboBox1.ItemIndex = 0 then
            vGravar := not(fDMImportarXML_NFSe.cdsCampoBom.IsEmpty)
          else
            vGravar := not(fDMImportarXML_NFSe.cdsNFSe.IsEmpty);
        except
          vGravar := False;
        end;
        if not vGravar then
        begin
          vQtd_Erro := vQtd_Erro + 1;
          Memo1.Lines.Add(Diretorio+'\'+F.Name);
        end
        else
        begin
          vQtd_Ok := vQtd_Ok + 1;
          case ComboBox1.ItemIndex of
            0 : Gerar_CampoBom;
          end;
        end;
      end;
        Ret := FindNext(F);
    end;
  finally
    FindClose(F);
  end;

  Label7.Caption := FormatFloat('0',vQtd_Erro);
  Label8.Caption := FormatFloat('0',vQtd_Ok);
  Label9.Caption := FormatFloat('0',vQtd_Geral);
end;

procedure TfrmImportarXML_NFSe.Carrega_XML(Arquivo: String);
var
  sXML : TMemoryStream;
  sList: TStringList;
begin
  fDMImportarXML_NFSe.cdsCampoBom.Close;
  if ComboBox1.ItemIndex > 0 then
  begin
    sList := TStringList.Create;
    sXML  := TMemoryStream.Create;

    try
      sList.LoadFromFile(Arquivo);
      sList.SaveToStream(sXML);

      try
        NFSe_CarregarNotas(sXML, fDMImportarXML_NFSe.cdsNFSe);
        vGravar := True;
      except
        vGravar := False;
      end;

    finally
      FreeAndNil(sXML);
      FreeAndNil(sList);
    end;

  end
  else
  begin
    fDMImportarXML_NFSe.cdsCampoBom.Close;
    try
      fDMImportarXML_NFSe.XMLTransformProvider1.XMLDataFile := Arquivo;
      SMDBGrid1.DataSource := fDMImportarXML_NFSe.dsCampoBom;
      fDMImportarXML_NFSe.XMLTransformProvider1.TransformRead.TransformationFile := 'campo_bom.xtr';
      fDMImportarXML_NFSe.cdsCampoBom.Open;
      fDMImportarXML_NFSe.XMLTransformProvider1.XMLDataFile := Arquivo;
      vGravar := True;
    except
      on e: Exception do
      begin
        vGravar := False;
        raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
      end;
    end;
  end;

end;

function TfrmImportarXML_NFSe.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmImportarXML_NFSe.Gerar_CampoBom;
var
  vAux : String;
begin
  if trim(fDMImportarXML_NFSe.cdsCampoBomTomS_CNPJ.AsString) <> '' then
    vAux := fnc_montar_cnpj_cpf(fDMImportarXML_NFSe.cdsCampoBomTomS_CNPJ.AsString)
  else
    vAux := fnc_montar_cnpj_cpf(fDMImportarXML_NFSe.cdsCampoBomTomS_CPF.AsString);
  if fDMImportarXML_NFSe.fnc_Abrir_Fornecedor(vAux) then
    exit;

  prc_Gravar_Cliente_CampoBom(vAux);
end;

function TfrmImportarXML_NFSe.Replace(Str, Ant, Novo: string): string;
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

procedure TfrmImportarXML_NFSe.FormShow(Sender: TObject);
begin
  fDMImportarXML_NFSe     := TDMImportarXML_NFSe.Create(Self);

  oDBUtils.SetDataSourceProperties(Self,fDMImportarXML_NFSe);
end;

procedure TfrmImportarXML_NFSe.Gerar_NH_SL;
var
  vAux : String;
begin
  if trim(fDMImportarXML_NFSe.cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj.AsString) <> '' then
    vAux := fDMImportarXML_NFSe.cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj.AsString
  else
    vAux := fDMImportarXML_NFSe.cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf.AsString;
  vAux := fnc_montar_cnpj_cpf(vAux);
  if fDMImportarXML_NFSe.fnc_Abrir_Fornecedor(vAux) then
    exit;

  prc_Gravar_Cliente_NH_SL(vAux);
end;

procedure TfrmImportarXML_NFSe.btnCarregarXMLClick(Sender: TObject);
var
  sXML: TMemoryStream;
  sList: TStringList;
begin
  if OpenDialog.Execute then
  begin
    //aqui
    sList := TStringList.Create;
    sXML  := TMemoryStream.Create;

    try
      sList.LoadFromFile(OpenDialog.FileName);
      sList.SaveToStream(sXML);

      fDMImportarXML_NFSe.cdsNFSe.Close;
      fDMImportarXML_NFSe.cdsNFSe.CreateDataSet;

      NFSe_CarregarNotas(sXML, fDMImportarXML_NFSe.cdsNFSe);
    finally
      FreeAndNil(sXML);
      FreeAndNil(sList);
    end;
  end;
end;

procedure TfrmImportarXML_NFSe.NFSe_CarregarNotas(AXML: TStream; ACds: TClientDataSet);

  procedure Processar_Nodes(AFields: TFields; ACompNfse: IXMLNode; APrefixo: string);
  var
    I: Integer;
    sCampo: string;
    xNode: IXMLNode;
    sThousandSeparator: Char;
    sDecimalSeparator: Char;
  begin
    for I := 0 to AFields.Count - 1 do
    begin
      sCampo := APrefixo + AFields[I].FieldName;
      if (sCampo[Length(sCampo)] in ['0'..'9']) then
        sCampo := Copy(sCampo, 1, Length(sCampo) - 1);

      xNode := ACompNfse.ChildNodes.FindNode(sCampo);
      if (xNode <> nil) then
      begin
        if (AFields[I] is TADTField) then
          Processar_Nodes(TADTField(AFields[I]).Fields, xNode, APrefixo)
        else if (AFields[I] is TIntegerField) then
          AFields[I].AsInteger := StrToIntDef(xNode.Text, 0)
        else if (AFields[I] is TFloatField) then
        begin
          sThousandSeparator := ThousandSeparator;
          sDecimalSeparator  := DecimalSeparator;
          try
            ThousandSeparator := ',';
            DecimalSeparator  := '.';
            AFields[I].AsFloat := StrToFloatDef(xNode.Text, 0);
          finally
            ThousandSeparator := sThousandSeparator;
            DecimalSeparator  := sDecimalSeparator;
          end;
        end
        else
          AFields[I].AsString := xNode.Text;
      end;
    end;
  end;

var
  xDoc: IXMLDocument;
  sXML: TStringStream;
  xNode, xAtt, xLista, xCompNfse: IXMLNode;
  cXML, sPrefixo: String;
  I: Integer;
begin
  sXML := TStringStream.Create('');
  try
    TMemoryStream(AXml).Position := 0;
    sXML.CopyFrom(AXml, AXml.Size);
    cXML := sXML.DataString;
  finally
    FreeAndNil(sXML);
  end;

  //Alterado dia 14/01/2016 conforme Edson, para Tipografia
  //cXML := AnsiReplaceStr(cXML, 'utf-8', 'ISO-8859-1');
  cXML := AnsiReplaceStr(cXML, 'utf-8', 'iso-8859-1');
  if (cXML[1] = #239) then
    cXML := Copy(cXML, 4, Length(cXML)-3);
  xDoc := LoadXMLData(cXML);

  // Primeiro node
  xNode := xDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    xAtt := xNode.AttributeNodes.FindNode('xmlns:tc');
    if (xAtt <> nil) then
      sPrefixo := 'tc:'
    else
      sPrefixo := '';

    // Verifica se existe lista
    xLista := xNode.ChildNodes.FindNode('ListaNfse');
    if (xLista <> nil) then
    begin
      // Percorre a lista
      for I := 0 to xLista.ChildNodes.Count - 1 do
      begin
        ACds.Append;
        xCompNfse := xLista.ChildNodes[I];
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(ACds.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        ACds.Post;
      end;
    end
    else
    begin
      // Procura o CompNfse
      xCompNfse := xNode.ChildNodes.FindNode('CompNfse');
      if (xCompNfse <> nil) then
      begin
        ACds.Append;
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(ACds.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        ACds.Post;
      end;
    end;
  end;
end;

function TfrmImportarXML_NFSe.fnc_montar_cnpj_cpf(Doc: String): String;
var
  Texto2 : String;
begin
  texto2 := '';
  if Length(Doc) > 11 then
  begin
    Texto2 := Texto2 + Monta_Numero(copy(Doc,1,2),2) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(Doc,3,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(Doc,6,3),3) + '/';
    Texto2 := Texto2 + Monta_Numero(copy(Doc,9,4),4) + '-';
    Texto2 := Texto2 + Monta_Numero(copy(Doc,13,2),2);
  end
  else
  begin
    Texto2 := Texto2 + Monta_Numero(copy(Doc,1,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(Doc,4,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(Doc,7,3),3) + '-';
    Texto2 := Texto2 + Monta_Numero(copy(Doc,10,2),2);
  end;
  Result := Texto2;
end;

procedure TfrmImportarXML_NFSe.prc_Gravar_Cliente_NH_SL(CNPJ_CPF : String);
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PESSOA',0);

  fDMImportarXML_NFSe.cdsFornecedor.Insert;
  fDMImportarXML_NFSe.cdsFornecedorCODIGO.AsInteger       := vAux;
  fDMImportarXML_NFSe.cdsFornecedorNOME.AsString          := UpperCase(fDMImportarXML_NFSe.cdsNFSeTomadorServicoRazaoSocial.AsString);
  fDMImportarXML_NFSe.cdsFornecedorENDERECO.AsString      := UpperCase(fDMImportarXML_NFSe.cdsNFSeTomadorServicoEnderecoEndereco.AsString);
  fDMImportarXML_NFSe.cdsFornecedorNUM_END.AsString       := fDMImportarXML_NFSe.cdsNFSeTomadorServicoEnderecoNumero2.AsString;
  fDMImportarXML_NFSe.cdsFornecedorBAIRRO.AsString        := UpperCase(fDMImportarXML_NFSe.cdsNFSeTomadorServicoEnderecoBairro.AsString);
  if fDMImportarXML_NFSe.cdsCidade.Locate('CODMUNICIPIO',fDMImportarXML_NFSe.cdsNFSeTomadorServicoEnderecoCidade.AsString,[loCaseInsensitive]) then
  begin
    fDMImportarXML_NFSe.cdsFornecedorCIDADE.AsString      := fDMImportarXML_NFSe.cdsCidadeNOME.AsString;
    fDMImportarXML_NFSe.cdsFornecedorUF.AsString          := fDMImportarXML_NFSe.cdsCidadeUF.AsString;
    fDMImportarXML_NFSe.cdsFornecedorID_CIDADE.AsInteger  := fDMImportarXML_NFSe.cdsCidadeID.AsInteger;
  end
  else
    fDMImportarXML_NFSe.cdsFornecedorUF.AsString          := fDMImportarXML_NFSe.cdsNFSeTomadorServicoEnderecoEstado1.AsString;
  fDMImportarXML_NFSe.cdsFornecedorCEP.AsString           := fDMImportarXML_NFSe.cdsNFSeTomadorServicoEnderecoCep.AsString;
  fDMImportarXML_NFSe.cdsFornecedorTELEFONE1.AsString     := fDMImportarXML_NFSe.cdsNFSeTomadorServicoContatoTelefone.AsString;
  fDMImportarXML_NFSe.cdsFornecedorCNPJ_CPF.AsString      := CNPJ_CPF;
  fDMImportarXML_NFSe.cdsFornecedorINSCR_EST.AsString     := '';
  fDMImportarXML_NFSe.cdsFornecedorINSC_MUNICIPAL.AsString := fDMImportarXML_NFSe.cdsNFSeTomadorServicoIdentificacaoTomadorInscricaoMunicipal.AsString;
  fDMImportarXML_NFSe.cdsFornecedorDTCADASTRO.AsDateTime  := Date;
  fDMImportarXML_NFSe.cdsFornecedorFANTASIA.AsString      := fDMImportarXML_NFSe.cdsFornecedorNOME.AsString;
  fDMImportarXML_NFSe.cdsFornecedorTP_FORNECEDOR.AsString := 'N';
  fDMImportarXML_NFSe.cdsFornecedorTP_CLIENTE.AsString    := 'S';
  fDMImportarXML_NFSe.cdsFornecedorUSUARIO.AsString         := 'NFSeXML';
  fDMImportarXML_NFSe.cdsFornecedorHRCADASTRO.AsDateTime    := Now;
  fDMImportarXML_NFSe.cdsFornecedorCOMPLEMENTO_END.AsString := fDMImportarXML_NFSe.cdsNFSeTomadorServicoEnderecoComplemento.AsString;
  fDMImportarXML_NFSe.cdsFornecedorID_PAIS.AsInteger        := 1;
  if Length(CNPJ_CPF) = 18 then
    fDMImportarXML_NFSe.cdsFornecedorPESSOA.AsString := 'J'
  else
    fDMImportarXML_NFSe.cdsFornecedorPESSOA.AsString := 'F';
  fDMImportarXML_NFSe.cdsFornecedor.Post;
  fDMImportarXML_NFSe.cdsFornecedor.ApplyUpdates(0);
end;

procedure TfrmImportarXML_NFSe.prc_Gravar_Cliente_CampoBom(
  CNPJ_CPF: String);
var
  vAux: Integer;
  texto2 : String;
begin
  vAux := dmDatabase.ProximaSequencia('PESSOA',0);

  fDMImportarXML_NFSe.cdsFornecedor.Insert;
  fDMImportarXML_NFSe.cdsFornecedorCODIGO.AsInteger       := vAux;
  fDMImportarXML_NFSe.cdsFornecedorNOME.AsString          := UpperCase(fDMImportarXML_NFSe.cdsCampoBomTomS_xNome.AsString);
  fDMImportarXML_NFSe.cdsFornecedorENDERECO.AsString      := UpperCase(fDMImportarXML_NFSe.cdsCampoBomender_xLgr.AsString);
  fDMImportarXML_NFSe.cdsFornecedorNUM_END.AsString       := fDMImportarXML_NFSe.cdsCampoBomender_nro.AsString;
  fDMImportarXML_NFSe.cdsFornecedorBAIRRO.AsString        := UpperCase(fDMImportarXML_NFSe.cdsCampoBomender_xBairro.AsString);
  texto2 := TirarAcento(fDMImportarXML_NFSe.cdsCampoBomender_xMun.AsString);
  texto2 := UpperCase(texto2);
  if fDMImportarXML_NFSe.cdsCidade.Locate('NOME',texto2,[loCaseInsensitive]) then
  begin
    fDMImportarXML_NFSe.cdsFornecedorCIDADE.AsString      := fDMImportarXML_NFSe.cdsCidadeNOME.AsString;
    fDMImportarXML_NFSe.cdsFornecedorUF.AsString          := fDMImportarXML_NFSe.cdsCidadeUF.AsString;
    fDMImportarXML_NFSe.cdsFornecedorID_CIDADE.AsInteger  := fDMImportarXML_NFSe.cdsCidadeID.AsInteger;
  end
  else
  begin
    fDMImportarXML_NFSe.cdsFornecedorUF.AsString          := fDMImportarXML_NFSe.cdsCampoBomender_UF.AsString;
    fDMImportarXML_NFSe.cdsFornecedorCIDADE.AsString      := fDMImportarXML_NFSe.cdsCampoBomender_xMun.AsString;
  end;
  fDMImportarXML_NFSe.cdsFornecedorCEP.AsString            := fDMImportarXML_NFSe.cdsCampoBomender_CEP.AsString;
  fDMImportarXML_NFSe.cdsFornecedorCNPJ_CPF.AsString       := CNPJ_CPF;
  fDMImportarXML_NFSe.cdsFornecedorINSCR_EST.AsString      := fDMImportarXML_NFSe.cdsCampoBomTomS_IE.AsString;
  fDMImportarXML_NFSe.cdsFornecedorINSC_MUNICIPAL.AsString := fDMImportarXML_NFSe.cdsCampoBomTomS_IM.AsString;
  fDMImportarXML_NFSe.cdsFornecedorDTCADASTRO.AsDateTime   := Date;
  fDMImportarXML_NFSe.cdsFornecedorFANTASIA.AsString       := fDMImportarXML_NFSe.cdsFornecedorNOME.AsString;
  fDMImportarXML_NFSe.cdsFornecedorTP_FORNECEDOR.AsString  := 'N';
  fDMImportarXML_NFSe.cdsFornecedorTP_CLIENTE.AsString     := 'S';
  fDMImportarXML_NFSe.cdsFornecedorUSUARIO.AsString         := 'NFSeXML';
  fDMImportarXML_NFSe.cdsFornecedorHRCADASTRO.AsDateTime    := Now;
  fDMImportarXML_NFSe.cdsFornecedorCOMPLEMENTO_END.AsString := fDMImportarXML_NFSe.cdsCampoBomender_xCpl.AsString;
  fDMImportarXML_NFSe.cdsFornecedorID_PAIS.AsInteger        := 1;
  if Length(CNPJ_CPF) = 18 then
    fDMImportarXML_NFSe.cdsFornecedorPESSOA.AsString := 'J'
  else
    fDMImportarXML_NFSe.cdsFornecedorPESSOA.AsString := 'F';
  fDMImportarXML_NFSe.cdsFornecedor.Post;
  fDMImportarXML_NFSe.cdsFornecedor.ApplyUpdates(0);
end;

end.
