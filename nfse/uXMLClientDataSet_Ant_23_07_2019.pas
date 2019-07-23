unit uXMLClientDataSet;

interface

uses
  Windows, Classes, SysUtils, XMLDoc, XMLIntf, DBClient, DB, StrUtils;

type
  TXMLClientDataset = class
  private
    FDoc: IXMLDocument;
    FXML: TStringStream;
    function CarregarXML: TClientDataSet;
  protected
    procedure ConverterXML(AClientDataSet: TClientDataSet); virtual; abstract;
    procedure ConverterParaXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean); virtual;
    procedure CarregarCampos(AClientDataSet: TClientDataSet); virtual; abstract;
    procedure AddADTChield(ADef: TFieldDef; AName: string; ADataType: TFieldType; ASize: Integer = 0);
    procedure Processar_Nodes(AFields: TFields; ABase: IXMLNode; APrefixo: string);
    procedure Processar_NodesXML(AFields: TFields; ABase: IXMLNode; APrefixo: string);
    procedure Processar_NodeAttributes(AClientDataSet: TClientDataSet; ANode: IXMLNode); virtual;
    property XMLDoc: IXMLDocument read FDoc;
  public
    constructor Create;
    destructor Destroy; override;

    function CriarClientDataSet(AXMLFile: String): TClientDataSet; overload;
    function CriarClientDataSet(AXML: TMemoryStream): TClientDataSet; overload;
    function CriarClientDataSet: TClientDataSet; overload;
    procedure GerarXML(AClientDataSet: TClientDataSet; AStream: TStream; ATodosRegistros: Boolean); overload;
    function GerarXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean): String; overload;
  end;

implementation

uses
  XSBuiltIns;

{ TXMLClientDataset }

procedure TXMLClientDataset.AddADTChield(ADef: TFieldDef; AName: string;
  ADataType: TFieldType; ASize: Integer);
begin
  ADef.ChildDefs.Add(AName, ADataType, ASize);
end;

function TXMLClientDataset.CarregarXML: TClientDataSet;
var
  cXML: string;
begin
  cXML := FXML.DataString;

  //Alterado dia 14/01/2016 conforme Edson, para Tipografia
  //cXML := AnsiReplaceStr(cXML, 'ISO-8859-1', 'utf-8');
  cXML := AnsiReplaceStr(cXML, 'utf-8', 'iso-8859-1');
  if (cXML[1] = #239) then
    cXML := Copy(cXML, 4, Length(cXML)-3);

  FDoc := LoadXMLData(cXML);

  Result := TClientDataSet.Create(nil);

  CarregarCampos(Result);

  Result.CreateDataSet;

  ConverterXML(Result);
end;

procedure TXMLClientDataset.ConverterParaXML(
  AClientDataSet: TClientDataSet; ATodosRegistros: Boolean);
begin
  raise Exception.Create('Não suportado');
end;

constructor TXMLClientDataset.Create;
begin
  FXML := TStringStream.Create('');
end;

function TXMLClientDataset.CriarClientDataSet(AXMLFile: String): TClientDataSet;
var
  lXML: TStringList;
begin
  lXML := TStringList.Create;
  try
    lXML.LoadFromFile(AXMLFile);

    FXML.Position := 0;
    lXML.SaveToStream(FXML);

    Result := CarregarXML;
  finally
    FreeAndNil(lXML);
  end;
end;

function TXMLClientDataset.CriarClientDataSet: TClientDataSet;
begin
  Result := TClientDataSet.Create(nil);
  CarregarCampos(Result);
  Result.CreateDataSet;
end;

function TXMLClientDataset.CriarClientDataSet(AXML: TMemoryStream): TClientDataSet;
begin
  AXML.Position := 0;
  FXML.Position := 0;
  FXML.CopyFrom(AXML, AXML.Size);

  Result := CarregarXML;
end;

destructor TXMLClientDataset.Destroy;
begin
  FreeAndNil(FXML);
  inherited;
end;

procedure TXMLClientDataset.GerarXML(AClientDataSet: TClientDataSet;
  AStream: TStream; ATodosRegistros: Boolean);
begin
  FDoc := NewXMLDocument;
  FDoc.Encoding := 'UTF-8';

  ConverterParaXML(AClientDataSet, ATodosRegistros);

  TMemoryStream(AStream).Position := 0;
  FDoc.SaveToStream(AStream);
end;

function TXMLClientDataset.GerarXML(AClientDataSet: TClientDataSet; ATodosRegistros: Boolean): String;
var
  Stream: TMemoryStream;
  StrMem: TStringStream;
begin
  Stream := TMemoryStream.Create;
  StrMem := TStringStream.Create('');
  try
    GerarXML(AClientDataSet, Stream, ATodosRegistros);
    Stream.SaveToStream(StrMem);
    Result := UTF8Decode(StrMem.DataString);
  finally
    FreeAndNil(StrMem);
    FreeAndNil(Stream);
  end;
end;

procedure TXMLClientDataset.Processar_NodeAttributes(AClientDataSet: TClientDataSet; ANode: IXMLNode);
begin

end;

procedure TXMLClientDataset.Processar_Nodes(AFields: TFields;
  ABase: IXMLNode; APrefixo: string);
var
  I: Integer;
  sCampo: string;
  xNode: IXMLNode;
  sThousandSeparator: Char;
  sDecimalSeparator: Char;
  f: TFormatSettings;
  xdt: TXSDateTime;
  fd: TADTField;
begin
  for I := 0 to AFields.Count - 1 do
  begin
    sCampo := APrefixo + AFields[I].FieldName;
    if (sCampo[Length(sCampo)] in ['0'..'9']) then
      sCampo := Copy(sCampo, 1, Length(sCampo) - 1);

    xNode := ABase.ChildNodes.FindNode(sCampo);
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
      else if (AFields[I] is TDateTimeField) then
      begin
        xdt := TXSDateTime.Create;
        try
          xdt.XSToNative(xNode.Text);
          //aqui 01/09/2018
          //AFields[I].AsDateTime := xdt.AsDateTime;
          AFields[I].AsVariant := xdt.AsUTCDateTime;
        finally
          FreeAndNil(xdt);
        end;
      end
      else if (AFields[I] is TDateField) then
      begin
        f.ShortDateFormat := 'yyyy-mm-dd';
        f.DateSeparator := '-';
        AFields[I].AsDateTime := StrToDateTime(xNode.Text, f);
      end
      else if (AFields[I] is TDataSetField) then
      begin
        if (Self.ClassNameIs('TXMLClientDataset_NFSE_CampoBom') and SameText(sCampo, 'cobr')) then
        begin
          xNode := xNode.ChildNodes[0];
          sCampo := xNode.NodeName;
          fd :=  TADTField(TDataSetField(AFields[I]).NestedDataSet.Fields[0]);
          while (xNode <> nil) and (xNode.NodeName = sCampo) do
          begin
            TDataSetField(AFields[I]).NestedDataSet.Append;
            Processar_Nodes(fd.Fields, xNode, APrefixo);
            TDataSetField(AFields[I]).NestedDataSet.Append;

            xNode := xNode.NextSibling;
          end;
        end
        else
        begin
          while (xNode <> nil) and (xNode.NodeName = sCampo) do
          begin
            TDataSetField(AFields[I]).NestedDataSet.Append;
            Processar_Nodes(TDataSetField(AFields[I]).NestedDataSet.Fields, xNode, APrefixo);
            TDataSetField(AFields[I]).NestedDataSet.Append;

            xNode := xNode.NextSibling;
          end;
        end;
      end
      else
        AFields[I].AsString := xNode.Text;
    end;
  end;
end;

procedure TXMLClientDataset.Processar_NodesXML(AFields: TFields;
  ABase: IXMLNode; APrefixo: string);
var
  I: Integer;
  sCampo: string;
  xNode: IXMLNode;
  sThousandSeparator: Char;
  sDecimalSeparator: Char;
  vField: TField;
  xdt: TXSDateTime;
begin
  for I := 0 to AFields.Count - 1 do
  begin
    vField := AFields[I];
    sCampo := APrefixo + vField.FieldName;
    if (sCampo[Length(sCampo)] in ['0'..'9']) then
      sCampo := Copy(sCampo, 1, Length(sCampo) - 1);

    if (vField is TADTField) then
    begin
      xNode := ABase.AddChild(sCampo);
      Processar_NodesXML(TADTField(vField).Fields, xNode, APrefixo);
    end
    else if (vField is TFloatField) then
    begin
      sThousandSeparator := ThousandSeparator;
      sDecimalSeparator  := DecimalSeparator;
      try
        ThousandSeparator := ',';
        DecimalSeparator  := '.';
        if not vField.IsNull then
        begin
          xNode := ABase.AddChild(sCampo);
          //xNode.Text := FloatToStr(vField.AsFloat);
          xNode.Text := FormatFloat('0.00##', vField.AsFloat);
        end;
      finally
        ThousandSeparator := sThousandSeparator;
        DecimalSeparator  := sDecimalSeparator;
      end;
    end
    else if (vField is TDateField) then
    begin
      if not vField.IsNull then
      begin
        xNode := ABase.AddChild(sCampo);
        xNode.Text := FormatDateTime('yyyy-mm-dd', vField.AsDateTime);
      end;
    end
    else if (vField is TDateTimeField) then
    begin
      if not vField.IsNull then
      begin
        xdt := TXSDateTime.Create;
        try
          xdt.AsDateTime := vField.AsDateTime;
          xNode := ABase.AddChild(sCampo);
          xNode.Text := xdt.NativeToXS;
        finally
          FreeAndNil(xdt);
        end;
      end;
    end
    else if (vField is TDataSetField) then
    begin
      TDataSetField(AFields[I]).NestedDataSet.First;
      while not TDataSetField(AFields[I]).NestedDataSet.Eof do
      begin
        xNode := ABase.AddChild(sCampo);
        Processar_NodesXML(TDataSetField(vField).NestedDataSet.Fields, xNode, APrefixo);
        TDataSetField(AFields[I]).NestedDataSet.Next;
//        if not TDataSetField(AFields[I]).NestedDataSet.Eof then
//	  xNode := ABase.AddChild(sCampo);
      end;
    end
    else
    begin
      if not vField.IsNull then
      begin
        xNode := ABase.AddChild(sCampo);
        xNode.Text := vField.AsString;
      end;
    end;

    if (xNode <> nil) then
    begin
      Processar_NodeAttributes(TClientDataSet(AFields.DataSet), xNode);

      if (xNode.XML = Format('<%0:s></%0:s>', [xNode.NodeName])) or
         (xNode.XML = Format('<%s/>', [xNode.NodeName])) then
        ABase.ChildNodes.Delete(xNode.NodeName);
    end
  end;
end;

end.
