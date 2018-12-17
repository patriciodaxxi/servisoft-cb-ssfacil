unit UCadProduto_Comb_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadUnidade, UCadMaterial, Grids, DBVGrids,
  RzPanel;

type
  TfrmCadProduto_Comb_Mat = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel1: TPanel;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    gbxConsumo: TRzGroupBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    lblID: TLabel;
    dbedtID: TDBEdit;
    Label2: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure dbedtIDExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadMaterial: TfrmCadMaterial;
    vID_MaterialAnt : Integer;

    function  fnc_Erro: Boolean;
    procedure prc_Abrir_Material_Cor;
    procedure prc_Move_Dados;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Comb_Mat: TfrmCadProduto_Comb_Mat;


implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UCadProduto, UCadPosicao,
  UCadSetor;

{$R *.dfm}

procedure TfrmCadProduto_Comb_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Comb_Mat.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Comb_Mat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);

  gbxConsumo.Visible := (fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S');

  fDMCadProduto.prc_Abrir_Material;
  fDMCadProduto.cdsPosicao.Close;
  fDMCadProduto.cdsPosicao.Open;

  prc_Abrir_Material_Cor;

  Label3.Visible           := (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString = 'S');
  RxDBLookupCombo4.Visible := (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString = 'S');

  RxDBLookupCombo1.SetFocus;

  if fDMCadProduto.qParametros_ProdUSA_ID_MATERIAL_CONS.AsString = 'S' then
  begin
    dbedtID.Visible := True;
    lblID.Visible := True;
    dbedtID.SetFocus;
  end;

  Label2.Visible           := (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString = 'S');
  RxDBLookupCombo5.Visible := (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString = 'S');
  SpeedButton5.Visible     := (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString = 'S');
  SpeedButton6.Visible     := (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString = 'S');
  DBCheckBox1.Visible      := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
end;

procedure TfrmCadProduto_Comb_Mat.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vQtd: Real;
  vAux: String;
begin
  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    if trim(RxDBLookupCombo3.Text) <> '' then
      fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString := RxDBLookupCombo3.Text
    else
    begin
      fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString := '';
      fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger             := 0;
    end;
    fDMCadProduto.cdsProduto_Comb_Mat.Post;

  except
    on E: exception do
    begin
      vFlagErro := True;  
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  if not vFlagErro then
    Close;
end;

function TfrmCadProduto_Comb_Mat.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  if fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Material não informado!';
  if not(fDMCadProduto.cdsMaterial_Cor.IsEmpty) and (fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger <= 0) then
  begin
    if fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S' then
      vMsgErro := vMsgErro + #13 + '*** Cor não informada!';
  end;
  if (fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger <= 0) and (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString = 'S')
    and (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Posição não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Comb_Mat.BitBtn4Click(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  Close;
end;

procedure TfrmCadProduto_Comb_Mat.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.Close;
  fDMCadProduto.cdsMaterial.Open;
  if RxDBLookupCombo2.Text <> '' then
    prc_Abrir_Material_Cor;
  fDMCadProduto.cdsCor.Close;
  fDMCadProduto.cdsCor.Open;
end;

procedure TfrmCadProduto_Comb_Mat.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := vCodProduto_Pos;
    if fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger > 0 then
      RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmCadProduto_Comb_Mat.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadProduto_Comb_Mat.SpeedButton1Click(Sender: TObject);
var
  ffrmCadProduto: TfrmCadProduto;
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  if RxDBLookupCombo1.Text <> '' then
    ffrmCadProduto.vID_Produto_Local := RxDBLookupCombo1.KeyValue;
  if RxDBLookupCombo2.Text <> '' then
    ffrmCadProduto.vID_Produto_Local := RxDBLookupCombo2.KeyValue;
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
  SpeedButton4Click(sender);
end;

procedure TfrmCadProduto_Comb_Mat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto_Comb_Mat.Panel1Exit(Sender: TObject);
begin
  prc_Abrir_Material_Cor;
end;

procedure TfrmCadProduto_Comb_Mat.prc_Abrir_Material_Cor;
begin
  fDMCadProduto.cdsMaterial_Cor.Close;
  fDMCadProduto.sdsMaterial_Cor.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger;
  fDMCadProduto.cdsMaterial_Cor.Open;
end;

procedure TfrmCadProduto_Comb_Mat.SpeedButton2Click(Sender: TObject);
var
  ffrmCadPosicao: TfrmCadPosicao;
begin
  ffrmCadPosicao := TfrmCadPosicao.Create(self);
  ffrmCadPosicao.ShowModal;
  FreeAndNil(ffrmCadPosicao);
  SpeedButton3Click(sender);
end;

procedure TfrmCadProduto_Comb_Mat.SpeedButton3Click(Sender: TObject);
begin
  fDMCadProduto.cdsPosicao.Close;
  fDMCadProduto.cdsPosicao.Open;
end;

procedure TfrmCadProduto_Comb_Mat.prc_Move_Dados;
var
  vExiste : Boolean;
begin
  if fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString <> 'S' then
    exit;

  if not fDMCadProduto.cdsMaterial.Locate('ID',RxDBLookupCombo1.KeyValue,([Locaseinsensitive])) then
    exit;

  if vID_MaterialAnt = fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger then
    exit;

  vExiste := False;
  if fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString = 'S' then
  begin
    if fDMCadProduto.cdsProduto_Consumo.Locate('ID_MATERIAL;ID_POSICAO',VarArrayOf([fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger,
                                               fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger]),[locaseinsensitive]) then
      vExiste := True;
  end
  else
  if fDMCadProduto.cdsProduto_Consulta.Locate('ID_MATERIAL',fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger,([Locaseinsensitive])) then
    vExiste := True;


  if vExiste then
  begin
    fDMCadProduto.cdsProduto_Comb_MatUNIDADE.AsString := fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString;
    fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
    fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
    fDMCadProduto.cdsProduto_Comb_MatIMP_TALAO.AsString  := fDMCadProduto.cdsProduto_ConsumoIMP_TALAO.AsString;
    fDMCadProduto.cdsProduto_Comb_MatTINGIMENTO.AsString := fDMCadProduto.cdsProduto_ConsumoTINGIMENTO.AsString;
  end
  else
  begin
    fDMCadProduto.cdsProduto_Comb_MatUNIDADE.AsString    := fDMCadProduto.cdsMaterialUNIDADE.AsString;
    fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := 0;
    fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := 0;
    fDMCadProduto.cdsProduto_Comb_MatIMP_TALAO.AsString  := 'N';
    fDMCadProduto.cdsProduto_Comb_MatTINGIMENTO.AsString := 'N';
  end;
end;

procedure TfrmCadProduto_Comb_Mat.Panel1Enter(Sender: TObject);
begin
 vID_MaterialAnt := fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger;
end;

procedure TfrmCadProduto_Comb_Mat.DBEdit2Exit(Sender: TObject);
var
  vQtdAux: Real;
begin
  vQtdAux := 0;
  if fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat > 0 then
    vQtdAux := 1 / fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat;
  fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.0000',vQtdAux));
end;

procedure TfrmCadProduto_Comb_Mat.dbedtIDExit(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger > 0 then
  begin
    if not fDMCadProduto.cdsMaterial.Locate('ID',fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger,([Locaseinsensitive])) then
    begin
      MessageDlg('Produto/Material não encontrado!', mtError,[mbOK],0);
      dbedtID.SetFocus;
      Exit;
    end;
  end;

end;

procedure TfrmCadProduto_Comb_Mat.SpeedButton5Click(Sender: TObject);
var
  ffrmCadSetor: TfrmCadSetor;
begin
  ffrmCadSetor := TfrmCadSetor.Create(self);
  ffrmCadSetor.ShowModal;
  FreeAndNil(ffrmCadSetor);
  SpeedButton6Click(sender);
end;

procedure TfrmCadProduto_Comb_Mat.SpeedButton6Click(Sender: TObject);
begin
  fDMCadProduto.cdsSetor.Close;
  fDMCadProduto.cdsSetor.Open;
end;

end.
