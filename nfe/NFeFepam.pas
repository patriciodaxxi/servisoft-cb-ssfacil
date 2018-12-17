
{**************************************************************************************************}
{                                                                                                  }
{                                         XML Data Binding                                         }
{                                                                                                  }
{         Generated on: 10/10/2018 14:53:50                                                        }
{       Generated from: C:\Users\SouthSystem\Google Drive\!desenvolvimento\cleomar\Fepam\NFe.xsd   }
{                                                                                                  }
{**************************************************************************************************}

unit NFeFepam;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLLote = interface;
  IXMLLote_notasFiscais = interface;
  IXMLLote_notasFiscais_notaFiscal = interface;

{ IXMLLote }

  IXMLLote = interface(IXMLNode)
    ['{30BF30A6-7F97-483C-9DFF-0F90C425C7F3}']
    { Property Accessors }
    function Get_Nro: Int64;
    function Get_Versao_sw: String;
    function Get_DtEmissao: String;
    function Get_CnpjDestinatario: String;
    function Get_CnpjTransp: String;
    function Get_InscSufDestinatario: String;
    function Get_UfDestino: String;
    function Get_UfOrigem: String;
    function Get_QtdeNF: Int64;
    function Get_NotasFiscais: IXMLLote_notasFiscais;
    procedure Set_Nro(Value: Int64);
    procedure Set_Versao_sw(Value: String);
    procedure Set_DtEmissao(Value: String);
    procedure Set_CnpjDestinatario(Value: String);
    procedure Set_CnpjTransp(Value: String);
    procedure Set_InscSufDestinatario(Value: String);
    procedure Set_UfDestino(Value: String);
    procedure Set_UfOrigem(Value: String);
    procedure Set_QtdeNF(Value: Int64);
    { Methods & Properties }
    property Nro: Int64 read Get_Nro write Set_Nro;
    property Versao_sw: String read Get_Versao_sw write Set_Versao_sw;
    property DtEmissao: String read Get_DtEmissao write Set_DtEmissao;
    property CnpjDestinatario: String read Get_CnpjDestinatario write Set_CnpjDestinatario;
    property CnpjTransp: String read Get_CnpjTransp write Set_CnpjTransp;
    property InscSufDestinatario: String read Get_InscSufDestinatario write Set_InscSufDestinatario;
    property UfDestino: String read Get_UfDestino write Set_UfDestino;
    property UfOrigem: String read Get_UfOrigem write Set_UfOrigem;
    property QtdeNF: Int64 read Get_QtdeNF write Set_QtdeNF;
    property NotasFiscais: IXMLLote_notasFiscais read Get_NotasFiscais;
  end;

{ IXMLLote_notasFiscais }

  IXMLLote_notasFiscais = interface(IXMLNodeCollection)
    ['{E21C7949-A5E0-49A3-B53C-C304C7D9C52F}']
    { Property Accessors }
    function Get_NotaFiscal(Index: Integer): IXMLLote_notasFiscais_notaFiscal;
    { Methods & Properties }
    function Add: IXMLLote_notasFiscais_notaFiscal;
    function Insert(const Index: Integer): IXMLLote_notasFiscais_notaFiscal;
    property NotaFiscal[Index: Integer]: IXMLLote_notasFiscais_notaFiscal read Get_NotaFiscal; default;
  end;

{ IXMLLote_notasFiscais_notaFiscal }

  IXMLLote_notasFiscais_notaFiscal = interface(IXMLNode)
    ['{BD9608D8-2467-4C13-B4F5-5E05A2056EC1}']
    { Property Accessors }
    function Get_ChaveAcesso: String;
    function Get_TxZero: Boolean;
    procedure Set_ChaveAcesso(Value: String);
    procedure Set_TxZero(Value: Boolean);
    { Methods & Properties }
    property ChaveAcesso: String read Get_ChaveAcesso write Set_ChaveAcesso;
    property TxZero: Boolean read Get_TxZero write Set_TxZero;
  end;

{ Forward Decls }

  TXMLLote = class;
  TXMLLote_notasFiscais = class;
  TXMLLote_notasFiscais_notaFiscal = class;

{ TXMLLote }

  TXMLLote = class(TXMLNode, IXMLLote)
  protected
    { IXMLLote }
    function Get_Nro: Int64;
    function Get_Versao_sw: String;
    function Get_DtEmissao: String;
    function Get_CnpjDestinatario: String;
    function Get_CnpjTransp: String;
    function Get_InscSufDestinatario: String;
    function Get_UfDestino: String;
    function Get_UfOrigem: String;
    function Get_QtdeNF: Int64;
    function Get_NotasFiscais: IXMLLote_notasFiscais;
    procedure Set_Nro(Value: Int64);
    procedure Set_Versao_sw(Value: String);
    procedure Set_DtEmissao(Value: String);
    procedure Set_CnpjDestinatario(Value: String);
    procedure Set_CnpjTransp(Value: String);
    procedure Set_InscSufDestinatario(Value: String);
    procedure Set_UfDestino(Value: String);
    procedure Set_UfOrigem(Value: String);
    procedure Set_QtdeNF(Value: Int64);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLote_notasFiscais }

  TXMLLote_notasFiscais = class(TXMLNodeCollection, IXMLLote_notasFiscais)
  protected
    { IXMLLote_notasFiscais }
    function Get_NotaFiscal(Index: Integer): IXMLLote_notasFiscais_notaFiscal;
    function Add: IXMLLote_notasFiscais_notaFiscal;
    function Insert(const Index: Integer): IXMLLote_notasFiscais_notaFiscal;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLote_notasFiscais_notaFiscal }

  TXMLLote_notasFiscais_notaFiscal = class(TXMLNode, IXMLLote_notasFiscais_notaFiscal)
  protected
    { IXMLLote_notasFiscais_notaFiscal }
    function Get_ChaveAcesso: String;
    function Get_TxZero: Boolean;
    procedure Set_ChaveAcesso(Value: String);
    procedure Set_TxZero(Value: Boolean);
  end;

{ Global Functions }

function Getlote(Doc: IXMLDocument): IXMLLote;
function Loadlote(const FileName: string): IXMLLote;
function Newlote: IXMLLote;

const
  TargetNamespace = 'http://www.portal.fucapi.br';

implementation

uses xmlutil;

{ Global Functions }

function Getlote(Doc: IXMLDocument): IXMLLote;
begin
  Result := Doc.GetDocBinding('lote', TXMLLote, TargetNamespace) as IXMLLote;
end;

function Loadlote(const FileName: string): IXMLLote;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('lote', TXMLLote, TargetNamespace) as IXMLLote;
end;

function Newlote: IXMLLote;
begin
  Result := NewXMLDocument.GetDocBinding('lote', TXMLLote, TargetNamespace) as IXMLLote;
end;

{ TXMLLote }

procedure TXMLLote.AfterConstruction;
begin
  RegisterChildNode('notasFiscais', TXMLLote_notasFiscais);
  inherited;
end;

function TXMLLote.Get_Nro: Int64;
begin
  Result := AttributeNodes['nro'].NodeValue;
end;

procedure TXMLLote.Set_Nro(Value: Int64);
begin
  SetAttribute('nro', Value);
end;

function TXMLLote.Get_Versao_sw: String;
begin
  Result := AttributeNodes['versao_sw'].Text;
end;

procedure TXMLLote.Set_Versao_sw(Value: String);
begin
  SetAttribute('versao_sw', Value);
end;

function TXMLLote.Get_DtEmissao: String;
begin
  Result := AttributeNodes['dtEmissao'].Text;
end;

procedure TXMLLote.Set_DtEmissao(Value: String);
begin
  SetAttribute('dtEmissao', Value);
end;

function TXMLLote.Get_CnpjDestinatario: String;
begin
  Result := ChildNodes['cnpjDestinatario'].Text;
end;

procedure TXMLLote.Set_CnpjDestinatario(Value: String);
begin
  ChildNodes['cnpjDestinatario'].NodeValue := Value;
end;

function TXMLLote.Get_CnpjTransp: String;
begin
  Result := ChildNodes['cnpjTransp'].Text;
end;

procedure TXMLLote.Set_CnpjTransp(Value: String);
begin
  ChildNodes['cnpjTransp'].NodeValue := Value;
end;

function TXMLLote.Get_InscSufDestinatario: String;
begin
  Result := ChildNodes['inscSufDestinatario'].Text;
end;

procedure TXMLLote.Set_InscSufDestinatario(Value: String);
begin
  ChildNodes['inscSufDestinatario'].NodeValue := Value;
end;

function TXMLLote.Get_UfDestino: String;
begin
  Result := ChildNodes['ufDestino'].Text;
end;

procedure TXMLLote.Set_UfDestino(Value: String);
begin
  ChildNodes['ufDestino'].NodeValue := Value;
end;

function TXMLLote.Get_UfOrigem: String;
begin
  Result := ChildNodes['ufOrigem'].Text;
end;

procedure TXMLLote.Set_UfOrigem(Value: String);
begin
  ChildNodes['ufOrigem'].NodeValue := Value;
end;

function TXMLLote.Get_QtdeNF: Int64;
begin
  Result := ChildNodes['qtdeNF'].NodeValue;
end;

procedure TXMLLote.Set_QtdeNF(Value: Int64);
begin
  ChildNodes['qtdeNF'].NodeValue := Value;
end;

function TXMLLote.Get_NotasFiscais: IXMLLote_notasFiscais;
begin
  Result := ChildNodes['notasFiscais'] as IXMLLote_notasFiscais;
end;

{ TXMLLote_notasFiscais }

procedure TXMLLote_notasFiscais.AfterConstruction;
begin
  RegisterChildNode('notaFiscal', TXMLLote_notasFiscais_notaFiscal);
  ItemTag := 'notaFiscal';
  ItemInterface := IXMLLote_notasFiscais_notaFiscal;
  inherited;
end;

function TXMLLote_notasFiscais.Get_NotaFiscal(Index: Integer): IXMLLote_notasFiscais_notaFiscal;
begin
  Result := List[Index] as IXMLLote_notasFiscais_notaFiscal;
end;

function TXMLLote_notasFiscais.Add: IXMLLote_notasFiscais_notaFiscal;
begin
  Result := AddItem(-1) as IXMLLote_notasFiscais_notaFiscal;
end;

function TXMLLote_notasFiscais.Insert(const Index: Integer): IXMLLote_notasFiscais_notaFiscal;
begin
  Result := AddItem(Index) as IXMLLote_notasFiscais_notaFiscal;
end;

{ TXMLLote_notasFiscais_notaFiscal }

function TXMLLote_notasFiscais_notaFiscal.Get_ChaveAcesso: String;
begin
  Result := AttributeNodes['chaveAcesso'].Text;
end;

procedure TXMLLote_notasFiscais_notaFiscal.Set_ChaveAcesso(Value: String);
begin
  SetAttribute('chaveAcesso', Value);
end;

function TXMLLote_notasFiscais_notaFiscal.Get_TxZero: Boolean;
begin
  Result := AttributeNodes['txZero'].NodeValue;
end;

procedure TXMLLote_notasFiscais_notaFiscal.Set_TxZero(Value: Boolean);
begin
  SetAttribute('txZero', Value);
end;

end.