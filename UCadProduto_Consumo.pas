unit UCadProduto_Consumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadUnidade, UCadMaterial, Grids, DBVGrids;

type
  TfrmCadProduto_Consumo = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    Label12: TLabel;
    VDBGrid1: TVDBGrid;
    Label6: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label7: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label8: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    lblID: TLabel;
    dbedtID: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBComboBox1Enter(Sender: TObject);
    procedure RxDBComboBox1Exit(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
//    procedure prc_Localiza_Material;
    procedure dbedtIDEnter(Sender: TObject);
    procedure dbedtIDExit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadMaterial: TfrmCadMaterial;
    vQtd_Consumo : Real;
    vID_Posicao_Loc : Integer;
    vID_Setor_Loc : Integer;
    vID_Material_Loc : Integer;
    vItem_Loc : Integer;

    function  fnc_Erro: Boolean;
    procedure prc_Monta_Tamanho;
    procedure prc_Atualiza_Comb;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    vTipo_Consumo: String;

  end;

var
  frmCadProduto_Consumo: TfrmCadProduto_Consumo;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProduto_Consumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Consumo.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Consumo.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Consumo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);

  if fDMCadProduto.cdsProduto_Consumo.State in [dsInsert] then
  begin
    vID_Material_Loc := 0;
    vItem_Loc        := 0;
  end
  else
  begin
    vQtd_Consumo     := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
    vID_Posicao_Loc  := fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger;
    vID_Setor_Loc    := fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger;
    vID_Material_Loc := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
    vItem_Loc        := fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger;
  end;

  RxDBComboBox2.Visible := (fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S');
  Label6.Visible        := (fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S');

  dbedtID.Visible := (fDMCadProduto.qParametros_ProdUSA_ID_MATERIAL_CONS.AsString = 'S');
  lblID.Visible   := (fDMCadProduto.qParametros_ProdUSA_ID_MATERIAL_CONS.AsString = 'S');

  if Panel2.Enabled then
    if dbedtID.Visible then
      dbedtID.SetFocus
    else
      RxDBLookupCombo1.SetFocus;

  fDMCadProduto.prc_Abrir_Material;
  fDMCadProduto.cdsPosicao.Close;
  fDMCadProduto.cdsPosicao.Open;
  Label3.Visible           := (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString = 'S');
  RxDBLookupCombo4.Visible := (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString = 'S');
  Label8.Visible           := (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString = 'S');
  RxDBLookupCombo5.Visible := (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString = 'S');
  RxDBComboBox1.ReadOnly   := ((fDMCadProduto.qParametrosUSA_GRADE.AsString <> 'S') and (fDMCadProduto.cdsProdutoID_GRADE.AsInteger <= 0));

  if RxDBComboBox1.ReadOnly then
    RxDBComboBox1.Color := clSilver
  else
    RxDBComboBox1.Color := clWindow;
  VDBGrid1.Visible := (not(RxDBComboBox1.ReadOnly) and (RxDBComboBox1.ItemIndex = 1));
  vTipo_Baixa_Ped := fDMCadProduto.cdsProduto_ConsumoTIPO_CONSUMO.AsString;
  DBEdit2.ReadOnly := (not(RxDBComboBox1.ReadOnly) and (RxDBComboBox1.ItemIndex = 1));
  if DBEdit2.ReadOnly then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
  DBCheckBox1.Visible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
end;

procedure TfrmCadProduto_Consumo.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vQtd: Real;
  vAux: String;
  
begin
  if (fDMCadProduto.cdsProduto_Consumo.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Consumo.Post;
  if (fDMCadProduto.cdsProduto_Consumo_Tam.State in [dsEdit, dsInsert]) and (trim(fDMCadProduto.cdsProduto_Consumo_TamTAMANHO.AsString) = '') then
    fDMCadProduto.cdsProduto_Consumo_Tam.Cancel;

  if not(fDMCadProduto.cdsProduto_Consumo.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Consumo.Edit;
  if fDMCadProduto.cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'T' then
  begin
    vQtd := 0;
    fDMCadProduto.cdsProduto_Consumo_Tam.First;
    while not fDMCadProduto.cdsProduto_Consumo_Tam.Eof do
    begin
      if trim(fDMCadProduto.cdsProduto_Consumo_TamTAMANHO.AsString) = '' then
        fDMCadProduto.cdsProduto_Consumo_Tam.Delete
      else
      begin
        vQtd := vQtd + fDMCadProduto.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat;
        fDMCadProduto.cdsProduto_Consumo_Tam.Next;
      end;
    end;
    fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.000000',vQtd));
  end;
  fDMCadProduto.cdsProduto_ConsumoNOME_POSICAO.AsString := RxDBLookupCombo4.Text;
  fDMCadProduto.cdsProduto_ConsumoNOME_SETOR.AsString   := RxDBLookupCombo5.Text;

  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    fDMCadProduto.cdsMaterial.Locate('ID',RxDBLookupCombo1.KeyValue,([Locaseinsensitive]));
    fDMCadProduto.cdsProduto_ConsumoNOMEMATERIAL.AsString := RxDBLookupCombo2.Text;
    fDMCadProduto.cdsProduto_ConsumoREFERENCIA.AsString   := RxDBLookupCombo1.Text;
    if fDMCadProduto.qParametros_ProdOPCAO_PRECO_CONSUMO.AsString = 'C' then
      fDMCadProduto.cdsProduto_ConsumoPRECO_CUSTO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsMaterialPRECO_CUSTO_TOTAL.AsFloat))
    else
      fDMCadProduto.cdsProduto_ConsumoPRECO_CUSTO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsMaterialPRECO_CUSTO.AsFloat));
    fDMCadProduto.cdsProduto_Consumo.Post;

    if fDMCadProduto.cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'G' then
    begin
      fDMCadProduto.cdsProduto_Consumo_Tam.First;
      while not fDMCadProduto.cdsProduto_Consumo_Tam.Eof do
        fDMCadProduto.cdsProduto_Consumo_Tam.Delete;
    end;

    //25/05/2018
    if (fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S') and (fDMCadProduto.qParametros_ProdATUALIZAR_COMB.AsString = 'S') then
      prc_Atualiza_Comb;
    //***************

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

function TfrmCadProduto_Consumo.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** Material não informado!';
  if (fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger <= 0) and (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString = 'S')
    and (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Posição não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Consumo.BitBtn4Click(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Consumo.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  Close;
end;

procedure TfrmCadProduto_Consumo.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.Close;
  fDMCadProduto.cdsMaterial.Open;
end;

procedure TfrmCadProduto_Consumo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger := vCodProduto_Pos;
    if fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger > 0 then
      RxDBLookupCombo1.SetFocus;
    RxDBLookupCombo1Exit(Sender);
  end;
end;

procedure TfrmCadProduto_Consumo.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadProduto_Consumo.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto_Consumo.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(ffrmCadUnidade);

  SpeedButton3Click(sender);
end;

procedure TfrmCadProduto_Consumo.SpeedButton3Click(Sender: TObject);
begin
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto_Consumo.DBEdit2Exit(Sender: TObject);
var
  vQtdAux: Real;
begin
  vQtdAux := 0;
  if fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat > 0 then
    vQtdAux := 1 / fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
  fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.0000',vQtdAux));
end;

procedure TfrmCadProduto_Consumo.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadMaterial := TfrmCadMaterial.Create(self);
  ffrmCadMaterial.ShowModal;
  FreeAndNil(ffrmCadMaterial);

  SpeedButton4Click(sender);
end;

procedure TfrmCadProduto_Consumo.RxDBComboBox1Enter(Sender: TObject);
begin
  vTipo_Consumo := fDMCadProduto.cdsProduto_ConsumoTIPO_CONSUMO.AsString;
end;

procedure TfrmCadProduto_Consumo.RxDBComboBox1Exit(Sender: TObject);
begin
  VDBGrid1.Visible := (RxDBComboBox1.ItemIndex = 1);
  if RxDBComboBox1.ItemIndex = 1 then
    prc_Monta_Tamanho;
  DBEdit2.ReadOnly := (RxDBComboBox1.ItemIndex = 1);
  if DBEdit2.ReadOnly then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
end;

procedure TfrmCadProduto_Consumo.prc_Monta_Tamanho;
begin
  fDMCadProduto.cdsProduto_Tam.First;
  while not fDMCadProduto.cdsProduto_Tam.Eof do
  begin
    if not fDMCadProduto.cdsProduto_Consumo_Tam.Locate('TAMANHO',fDMCadProduto.cdsProduto_TamTAMANHO.AsString,([Locaseinsensitive])) then
    begin
      fDMCadProduto.cdsProduto_Consumo_Tam.Insert;
      fDMCadProduto.cdsProduto_Consumo_TamID.AsInteger        := fDMCadProduto.cdsProdutoID.AsInteger;
      fDMCadProduto.cdsProduto_Consumo_TamITEM.AsInteger      := fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger;
      fDMCadProduto.cdsProduto_Consumo_TamTAMANHO.AsString    := fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
      fDMCadProduto.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat := 0;
      fDMCadProduto.cdsProduto_Consumo_Tam.Post;
    end;
    fDMCadProduto.cdsProduto_Tam.Next;
  end;
end;

procedure TfrmCadProduto_Consumo.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    fDMCadProduto.cdsProduto_ConsumoIMP_TALAO.AsString := fDMCadProduto.cdsPosicaoIMP_TALAO.AsString;
end;

procedure TfrmCadProduto_Consumo.dbedtIDEnter(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.IndexFieldNames := 'ID';
end;

procedure TfrmCadProduto_Consumo.dbedtIDExit(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger > 0 then
  begin
    if not fDMCadProduto.cdsMaterial.Locate('ID',fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger,([Locaseinsensitive])) then
    begin
      MessageDlg('Produto/Material não encontrado!', mtError,[mbOK],0);
      dbedtID.SetFocus;
      Exit;
    end;
    fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString := fDMCadProduto.cdsMaterialUNIDADE.AsString;

  end;
end;

procedure TfrmCadProduto_Consumo.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if fDMCadProduto.cdsMaterial.Locate('ID',fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger,([Locaseinsensitive])) then
    fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString := fDMCadProduto.cdsMaterialUNIDADE.AsString;
end;

procedure TfrmCadProduto_Consumo.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if fDMCadProduto.cdsMaterial.Locate('ID',fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger,([Locaseinsensitive])) then
    fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString := fDMCadProduto.cdsMaterialUNIDADE.AsString;
end;

procedure TfrmCadProduto_Consumo.prc_Atualiza_Comb;
begin
  if vID_Material_Loc <= 0 then
    exit;

  if (vID_Material_Loc <> fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger)
    or (StrToFloat(FormatFloat('0.00000',vQtd_Consumo)) <> StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat)))
    or (vID_Posicao_Loc <> fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger)
    or (vID_Setor_Loc <> fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger) then
  begin
    if MessageDlg('Deseja alterar as combinações conforme o consumo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

    fDMCadProduto.cdsProduto_Comb.First;
    while not fDMCadProduto.cdsProduto_Comb.Eof do
    begin
      fDMCadProduto.cdsProduto_Comb_Mat.First;
      while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      begin
        if fDMCadProduto.cdsProduto_Comb_MatITEM_MAT.AsInteger = vItem_Loc then
        begin
          fDMCadProduto.cdsProduto_Comb_Mat.Edit;
          if fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger <> fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger then
            fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
          if fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger <> fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger then
            fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger;  
          if fDMCadProduto.cdsProduto_Comb_MatID_SETOR.AsInteger <> fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger then
            fDMCadProduto.cdsProduto_Comb_MatID_SETOR.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger;
          if (StrToFloat(FormatFloat('0.00000',vQtd_Consumo)) <> StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat))) then
          begin
            fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
            fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat));
          end;
          fDMCadProduto.cdsProduto_Comb_Mat.Post;
        end;
        fDMCadProduto.cdsProduto_Comb_Mat.Next;
      end;
      fDMCadProduto.cdsProduto_Comb.Next;
    end;
  end;

end;

end.
