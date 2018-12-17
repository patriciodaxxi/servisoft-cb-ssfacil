unit UCadProduto_Forn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadPessoa;

type
  TfrmCadProduto_Forn = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    ckTamanho: TCheckBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadPessoa: TfrmCadPessoa;
    vCodProduto_Forn: String;
    function  fnc_Erro: Boolean;
    procedure prc_Gravar_Tamanho;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Forn: TfrmCadProduto_Forn;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProduto_Forn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Forn.State in [dsEdit,dsInsert] then
    //fDMCadProduto.cdsProduto_Forn.CancelUpdates;
    fDMCadProduto.cdsProduto_Forn.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Forn.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  fDMCadProduto.qNCM.Close;
  fDMCadProduto.qNCM.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID_NCM.AsInteger;
  fDMCadProduto.qNCM.Open;
  DBEdit10.Visible := (fDMCadProduto.qNCMTIPO_ESCALA.AsString = 'N');
  Label13.Visible  := (fDMCadProduto.qNCMTIPO_ESCALA.AsString = 'N');

  if (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    RxDBLookupCombo3.LookupSource := fdmCadProduto.dsProduto_Comb
  else
    RxDBLookupCombo3.LookupSource := fdmCadProduto.dsProduto_Cor;

  ckTamanho.Visible        := (fDMCadProduto.cdsProdutoID_GRADE.AsInteger > 0);
  Label6.Visible           := ((fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S') and (fDMCadProduto.cdsProdutoID_GRADE.AsInteger > 0));
  RxDBLookupCombo1.Visible := ((fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S') and (fDMCadProduto.cdsProdutoID_GRADE.AsInteger > 0));
  if fDMCadProduto.qParametrosUSA_EDI.AsString = 'S' then
  begin
    Label10.Caption := 'Fornecedor/Cliente';
    Label1.Caption  := 'Produto no Fornecedor/Cliente';
    Label4.Caption  := 'Cód.Prod.no Fornecedor/Cliente:';
  end;
  Label7.Visible  := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  DBEdit6.Visible := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  Label8.Visible  := (((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))
                     and ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B'))
                      or ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S')));
  RxDBLookupCombo3.Visible  := (((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))
                              and ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B'))
                              or ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S')));
end;

procedure TfrmCadProduto_Forn.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vInserir: Boolean;
begin
  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    vInserir := (fDMCadProduto.cdsProduto_Forn.State in [dsInsert]);
    if trim(fDMCadProduto.cdsProduto_FornNOME_MATERIAL_FORN.AsString) = '' then
      fDMCadProduto.cdsProduto_FornNOME_MATERIAL_FORN.AsString := fDMCadProduto.cdsProdutoNOME.AsString;
    fDMCadProduto.cdsProduto_FornNOMEFORNECEDOR.AsString := RxDBLookupCombo2.Text;
    fDMCadProduto.cdsProduto_Tam.First;
    vCodProduto_Forn := fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString;
    if (fDMCadProduto.cdsProdutoID_GRADE.AsInteger > 0) and (trim(fDMCadProduto.cdsProduto_FornTAMANHO.AsString) = '') then
    begin
      fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString := fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString + fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornTAMANHO.AsString           := fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornTAMANHO_CLIENTE.AsString   := fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
    end;
    fDMCadProduto.cdsProduto_Forn.Post;
    if (vInserir) and (ckTamanho.Checked) then
      prc_Gravar_Tamanho;
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

function TfrmCadProduto_Forn.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_FornID_FORNECEDOR.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Fornecedor não informado!';
  if trim(fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Cód. Produto do fornecedor não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Forn.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadProduto_Forn.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadPessoa := TfrmCadPessoa.Create(self);
  ffrmCadPessoa.ShowModal;
  FreeAndNil(ffrmCadPessoa);

  SpeedButton4Click(sender);
end;

procedure TfrmCadProduto_Forn.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsFornecedor.Close;
  fDMCadProduto.cdsFornecedor.Open;
end;

procedure TfrmCadProduto_Forn.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadProduto_Forn.prc_Gravar_Tamanho;
var
  vItem: Integer;
  vID_Fornecedor: Integer;
  vNome_Material: String;
  vCod_Material: String;
  vNome_Fornecedor: String;
  vPreco_Custo: Real;
begin
  vID_Fornecedor   := fDMCadProduto.cdsProduto_FornID_FORNECEDOR.AsInteger;
  vNome_Material   := fDMCadProduto.cdsProduto_FornNOME_MATERIAL_FORN.AsString;
  //vCod_Material    := fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString;
  vCod_Material    := vCodProduto_Forn;
  vNome_Fornecedor := fDMCadProduto.cdsProduto_FornNOMEFORNECEDOR.AsString;
  vPreco_Custo     := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProduto_FornPRECO_CUSTO.AsFloat));
  fDMCadProduto.cdsProduto_Forn.Last;
  vItem := fDMCadProduto.cdsProduto_FornITEM.AsInteger;
  fDMCadProduto.cdsProduto_Tam.First;
  while not fDMCadProduto.cdsProduto_Tam.Eof do
  begin
    if not fDMCadProduto.cdsProduto_Forn.Locate('ID_FORNECEDOR;TAMANHO',VarArrayOf([vID_Fornecedor,fDMCadProduto.cdsProduto_TamTAMANHO.AsString]),[locaseinsensitive]) then
    begin
      vItem := vItem  + 1;
      fDMCadProduto.cdsProduto_Forn.Insert;
      fDMCadProduto.cdsProduto_FornID.AsInteger   := fDMCadProduto.cdsProdutoID.AsInteger;
      fDMCadProduto.cdsProduto_FornITEM.AsInteger := vItem;
      fDMCadProduto.cdsProduto_FornID_FORNECEDOR.AsInteger := vID_Fornecedor;
      fDMCadProduto.cdsProduto_FornNOME_MATERIAL_FORN.AsString := vNome_Material;
      fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString  := vCod_Material + fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornTAMANHO.AsString            := fDMCadProduto.cdsProduto_TamTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornTAMANHO_CLIENTE.AsString    := fDMCadProduto.cdsProduto_FornTAMANHO.AsString;
      fDMCadProduto.cdsProduto_FornNOMEFORNECEDOR.AsString     := vNome_Fornecedor;
      fDMCadProduto.cdsProduto_FornPRECO_CUSTO.AsFloat         := StrToFloat(FormatFloat('0.0000',vPreco_Custo));
      fDMCadProduto.cdsProduto_Forn.Post;
    end;
    fDMCadProduto.cdsProduto_Tam.Next;
  end;
end;

procedure TfrmCadProduto_Forn.RxDBLookupCombo1Exit(Sender: TObject);
begin
  fDMCadProduto.cdsProduto_FornTAMANHO_CLIENTE.AsString := fDMCadProduto.cdsProduto_FornTAMANHO.AsString;
end;

procedure TfrmCadProduto_Forn.DBEdit10Enter(Sender: TObject);
begin
  fDMCadProduto.cdsProduto_FornCNPJ_FABRICANTE.AsString := '00.000.000/0000-00';
end;

procedure TfrmCadProduto_Forn.DBEdit10Exit(Sender: TObject);
var
  vNomeAux: string;
  vAux: string;
begin
  vAux := Monta_Numero(DBEdit10.Text, 0);
  if (trim(vAux) = '') or (copy(vAux, 1, 9) = '000000000') then
    exit;
  if not ValidaCNPJ(DBEdit10.Text) then
  begin
    ShowMessage('CNPJ incorreto!');
    fDMCadProduto.cdsProduto_FornCNPJ_FABRICANTE.Clear;
    DBEdit10.SetFocus;
  end;
end;

end.
