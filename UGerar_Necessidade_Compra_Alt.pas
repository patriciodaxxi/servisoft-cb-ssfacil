unit UGerar_Necessidade_Compra_Alt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, UDMCadNecessidade_Compras,
  ComCtrls, Buttons, DB, RzPanel, NxCollection, RxLookup, FMTBcd;



  //, , , SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, UNFe, UCBase,
 //
  //Menus, dbXPress, DateUtils,
  //
  //Variants,
 // ;



type
  TfrmGerar_Necessidade_Compra_Alt = class(TForm)
    frm: TPanel;
    Panel2: TPanel;
    pnlMaterial: TPanel;
    lblIdMaterial: TLabel;
    lblNomeMaterial: TLabel;
    lblCarimbo: TLabel;
    lblTamanho: TLabel;
    lblUnidade: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    stat1: TStatusBar;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    RzGroupBox1: TRzGroupBox;
    lblqtdegeraroc: TLabel;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    DBEdit11: TDBEdit;
    Label2: TLabel;
    DBEdit12: TDBEdit;
    Label3: TLabel;
    DBEdit13: TDBEdit;
    Label4: TLabel;
    btnAlterar: TNxButton;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    dblcTamanho: TRxDBLookupCombo;
    RzGroupBox2: TRzGroupBox;
    lblqtdeestoque: TLabel;
    DBEdit7: TDBEdit;
    lblqtdeestoqueoc: TLabel;
    DBEdit8: TDBEdit;
    lblConsumo: TLabel;
    DBEdit9: TDBEdit;
    DBEdit15: TDBEdit;
    Label5: TLabel;
    btnAlterar_Consumo: TNxButton;
    btnConfirmar_Consumo: TNxButton;
    btnConfirmar_Mat: TNxButton;
    btnCancelar_Mat: TNxButton;
    btnCancelar_Consumo: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlMaterialEnter(Sender: TObject);
    procedure btnConfirmar_MatClick(Sender: TObject);
    procedure btnAlterar_ConsumoClick(Sender: TObject);
    procedure btnConfirmar_ConsumoClick(Sender: TObject);
    procedure btnCancelar_MatClick(Sender: TObject);
    procedure btnCancelar_ConsumoClick(Sender: TObject);
  private
    valorTransicao: Real;
    vID_Material_Loc : Integer;
    vID_Cor_Loc      : Integer;
    vTamanho_Loc     : String;
    vCarimbo_Loc     : String;
    vCarimboAux_Loc  : String;

    procedure prc_Habilita_Material;
    procedure prc_Abrir_Combinacao(ID_Material : Integer);
    procedure prc_Abrir_Produto_Tam(ID_Material : Integer);
    procedure prc_Habilitar_Cons;

    function fnc_Verifica_Mat(ID_Material : Integer) : Boolean;

    { Private declarations }
  public
    fDMCadNecessidade_Compras: TDMCadNecessidade_Compras;
    vNum_Ordem_Loc   : Integer;

    { Public declarations }
  end;

var
  frmGerar_Necessidade_Compra_Alt: TfrmGerar_Necessidade_Compra_Alt;

implementation

uses
  rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmGerar_Necessidade_Compra_Alt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNecessidade_Compras);
  if not (fDMCadNecessidade_Compras.mMaterial.State in [dsEdit]) then
    fDMCadNecessidade_Compras.mMaterial.Edit;
  uUtilPadrao.fnc_Busca_Nome_Filial;
  stat1.Panels[1].Text := vFilial_Nome;
  stat1.Panels[0].Text := vUsuario;
  vID_Material_Loc := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  vID_Cor_Loc      := fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger;
  vTamanho_Loc     := fDMCadNecessidade_Compras.mMaterialTamanho.AsString;
  vCarimbo_Loc     := fDMCadNecessidade_Compras.mMaterialCarimbo.AsString;
  vCarimboAux_Loc  := fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString;

  prc_Abrir_Combinacao(fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger);
  prc_Abrir_Produto_Tam(fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger);

  btnAlterar.Enabled := (fDMCadNecessidade_Compras.qParametros_UsuarioALT_MATERIAL_NEC.AsString = 'S');
  btnAlterar_Consumo.Enabled := (fDMCadNecessidade_Compras.qParametros_UsuarioALT_CONSUMO_NEC.AsString = 'S');

  fDMCadNecessidade_Compras.qParametros_Usuario.Close;
  fDMCadNecessidade_Compras.qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  fDMCadNecessidade_Compras.qParametros_Usuario.Open;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnCancelarClick(Sender: TObject);
begin
  fDMCadNecessidade_Compras.mMaterial.Cancel;
  Close;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnConfirmarClick(Sender: TObject);
begin
  if fDMCadNecessidade_Compras.mMaterial.State in [dsEdit] then
    fDMCadNecessidade_Compras.mMaterial.Post;
  Close;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit12Exit(Sender: TObject);
begin
  if (fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat > 0) then
  begin
    if (fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat > fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat) then
    begin
      MessageDlg('Qtde para reserva não pode ser maior que a Qtde Estoque!', mtError, [mbOk], 0);
      DBEdit12.SetFocus;
    end;
  end;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit13Exit(Sender: TObject);
var
  vAux: Real;
begin
  if (fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat < 0) then
  begin
    MessageDlg('Não permite valor negativo!', mtError, [mbOK], 0);
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat := valorTransicao;
    DBEdit13.SetFocus;
  end;
  if (fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat > 0) then
  begin
    if (fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat > fDMCadNecessidade_Compras.mMaterialQtd_Sobra_OC.AsFloat) then
    begin
      MessageDlg('Qtde Usada da Sobra para Este Material não pode ser maior que a Qtde Estoque OC!', mtError, [mbOk], 0);
      fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat := valorTransicao;
      DBEdit13.SetFocus;
    end;
{    if (fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat > fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat) then
    begin
      MessageDlg('Qtde Usada da Sobra para Este Material não pode ser maior que a Qtde para OC!', mtError, [mbOk], 0);
      fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat := valorTransicao;
      DBEdit13.SetFocus;
    end;}
  end;
  if (fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat <> valorTransicao) then
  begin
    vAux := StrToFloat(FormatFloat('0.00', valorTransicao - fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat));
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat + (vAux)));
    fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat + (vAux)));

  end;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit13Enter(Sender: TObject);
begin
  valorTransicao := fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit11Exit(Sender: TObject);
begin
  if (fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat > fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat) then
  begin
    MessageDlg('Qtde OC que pertence a esse material não pode ser maior que a Qtd para gerar OC!', mtError, [mbOk], 0);
    DBEdit11.SetFocus;
  end
  else
  if (StrToFloat(FormatFloat('0.00000',fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat)) > StrToFloat(FormatFloat('0.00000',fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat))) then
  begin
    MessageDlg('Qtde OC que pertence a esse material não pode ser maior que a Qtd do consumo!', mtError, [mbOk], 0);
    DBEdit11.SetFocus;
  end;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit10Exit(Sender: TObject);
begin
  if (fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat < fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat) then
  begin
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat := fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat;
  end;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadNecessidade_Compras.mMaterial.State in [dsEdit,dsInsert] then
    fDMCadNecessidade_Compras.mMaterial.Cancel;
  Action := Cafree;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnAlterarClick(
  Sender: TObject);
begin
  pnlMaterial.Enabled := True;
  prc_Habilita_Material;
  DBEdit1.SetFocus;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.prc_Habilita_Material;
var
  Cor : TColor;
begin
  if pnlMaterial.Enabled then
    Cor := clWhite
  else
    Cor := $00F2F2F2;
  DBEdit1.Color := Cor;
  RxDBLookupCombo1.Color := Cor;
  dblcTamanho.Color      := Cor;
  DBEdit3.Color := Cor;
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  btnConfirmar_Mat.Enabled := not(btnConfirmar_Mat.Enabled);
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnCancelar_Mat.Enabled  := not(btnCancelar_Mat.Enabled);
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit1Exit(Sender: TObject);
begin
  Label6.Visible := False;
  if not fnc_Verifica_Mat(fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger) then
  begin
    DBEdit1.SetFocus;
    MessageDlg('Material não encontrado!', mtError, [mbOk], 0);
    fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger := vID_Material_Loc;
    fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger      := vID_Cor_Loc;
    fDMCadNecessidade_Compras.mMaterialTamanho.AsString      := vTamanho_Loc;
  end
  else
  begin
    prc_Abrir_Combinacao(fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger);
    prc_Abrir_Produto_Tam(fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger);
  end;
end;

function TfrmGerar_Necessidade_Compra_Alt.fnc_Verifica_Mat(
  ID_Material: Integer): Boolean;
begin
  Result := False;
  //if fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger = ID_Material then
  //  Result := True;
  fDMCadNecessidade_Compras.qMaterial.Close;
  fDMCadNecessidade_Compras.qMaterial.ParamByName('ID').AsInteger := ID_Material;
  fDMCadNecessidade_Compras.qMaterial.Open;
  if fDMCadNecessidade_Compras.qMaterialID.AsInteger = ID_Material then
  begin
    Result := True;
    fDMCadNecessidade_Compras.mMaterial.Edit;
    fDMCadNecessidade_Compras.mMaterialNome_Material.AsString := fDMCadNecessidade_Compras.qMaterialNOME.AsString;
    fDMCadNecessidade_Compras.mMaterialUnidade.AsString       := fDMCadNecessidade_Compras.qMaterialUNIDADE.AsString;
    RxDBLookupCombo1.ReadOnly := (fDMCadNecessidade_Compras.qMaterialUSA_COR.AsString <> 'S');
    dblcTamanho.ReadOnly      := (fDMCadNecessidade_Compras.qMaterialUSA_GRADE.AsString <> 'S');
    if fDMCadNecessidade_Compras.qMaterialUSA_COR.AsString = 'S' then
      RxDBLookupCombo1.Color := clWhite
    else
    begin
      RxDBLookupCombo1.Color := $00F2F2F2;
      fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger := 0;
    end;
    if fDMCadNecessidade_Compras.qMaterialUSA_GRADE.AsString = 'S' then
      dblcTamanho.Color := clWhite
    else
    begin
      dblcTamanho.Color := $00F2F2F2;
      fDMCadNecessidade_Compras.mMaterialTamanho.AsString := '';
    end;
  end;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit1Enter(Sender: TObject);
begin
  Label6.Visible := True;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    if vCodProduto_Pos > 0 then
    begin
      if not (fDMCadNecessidade_Compras.mMaterial.State in [dsEdit]) then
        fDMCadNecessidade_Compras.mMaterial.Edit;
      fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger := vCodProduto_Pos;
      if not fnc_Verifica_Mat(fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger) then
        DBEdit1.SetFocus;
    end;
  end;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.pnlMaterialEnter(
  Sender: TObject);
begin
  prc_Abrir_Combinacao(fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger);
end;

procedure TfrmGerar_Necessidade_Compra_Alt.prc_Abrir_Combinacao(
  ID_Material: Integer);
begin
  fDMCadNecessidade_Compras.cdsCombinacao.Close;
  fDMCadNecessidade_Compras.sdsCombinacao.ParamByName('ID').AsInteger := ID_Material;
  fDMCadNecessidade_Compras.cdsCombinacao.Open;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.prc_Abrir_Produto_Tam(
  ID_Material: Integer);
begin
  fDMCadNecessidade_Compras.cdsProduto_Tam.Close;
  fDMCadNecessidade_Compras.sdsProduto_Tam.ParamByName('ID').AsInteger := ID_Material;
  fDMCadNecessidade_Compras.cdsProduto_Tam.Open;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnConfirmar_MatClick(
  Sender: TObject);
var
  vTamAux : String;
  vIDCorAux : Integer;
  vCarimboAux : String;
  vJuntar : Boolean;
  vItem_Juntar : Integer;
  vItemAux : Integer;
begin
  vJuntar      := False;
  vItem_Juntar := 0;
  vTamAux      := fDMCadNecessidade_Compras.mMaterialTamanho.AsString;
  vCarimboAux  := trim(TirarAcento(fDMCadNecessidade_Compras.mMaterialCarimbo.AsString));
  if RxDBLookupCombo1.Text <> '' then
    vIDCorAux := RxDBLookupCombo1.KeyValue
  else
    vIDCorAux := 0;
  if trim(vTamAux) = '' then
   vTamAux := '';
  if trim(vCarimboAux) = '' then
    vCarimboAux := '';
  if (vID_Material_Loc = fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger)
    and (vID_Cor_Loc = vIDCorAux)
    and (vTamanho_Loc = vTamAux)
    //and (vCarimbo_Loc = fDMCadNecessidade_Compras.mMaterialCarimbo.AsString) then
    and (vCarimboAux_Loc = fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString) then
  begin
    pnlMaterial.Enabled := False;
    prc_Habilita_Material;
    Exit;
  end;

  fDMCadNecessidade_Compras.qDuplicidade.Close;
  fDMCadNecessidade_Compras.qDuplicidade.ParamByName('NUM_ORDEM').AsInteger   := vNum_Ordem_Loc;
  fDMCadNecessidade_Compras.qDuplicidade.ParamByName('ID_MATERIAL').AsInteger := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  fDMCadNecessidade_Compras.qDuplicidade.ParamByName('ID_COR').AsInteger      := vIDCorAux;
  fDMCadNecessidade_Compras.qDuplicidade.ParamByName('TAMANHO').AsString      := vTamAux;
  fDMCadNecessidade_Compras.qDuplicidade.ParamByName('CARIMBOAUX').AsString   := vCarimboAux;
  fDMCadNecessidade_Compras.qDuplicidade.Open;
  if (fDMCadNecessidade_Compras.qDuplicidadeITEM.AsInteger > 0) and
     (fDMCadNecessidade_Compras.qDuplicidadeITEM.AsInteger <> fDMCadNecessidade_Compras.mMaterialItem.AsInteger)  then
  begin
    if (fDMCadNecessidade_Compras.qDuplicidadeNUM_OC.AsInteger > 0) or (fDMCadNecessidade_Compras.qDuplicidadeID_MOVESTOQUE_RES.AsInteger > 0) then
    begin
      MessageDlg('Item ' + fDMCadNecessidade_Compras.qDuplicidadeITEM.AsString + ', já possui OC ou Reserva já gerada', mtError, [mbOK], 0);
      Exit;
    end;
    if MessageDlg('Deseja juntar a qtde ' + FormatFloat('0.#####',fDMCadNecessidade_Compras.qDuplicidadeQTD_CONSUMO.AsFloat) + #13
                 + ' Na cor informada? ' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    vItem_Juntar := fDMCadNecessidade_Compras.qDuplicidadeITEM.AsInteger;
    vJuntar      := True;

    fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat     := fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat
                                                                + fDMCadNecessidade_Compras.qDuplicidadeQTD_CONSUMO.AsFloat;
    {fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat     := fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat
                                                                + fDMCadNecessidade_Compras.qDuplicidadeQTD_CONSUMO.AsFloat;
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat := fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat
                                                                + fDMCadNecessidade_Compras.qDuplicidadeQTD_CONSUMO.AsFloat;}
  end;
  {if (fDMCadNecessidade_Compras.qDuplicidadeITEM.AsInteger > 0) and
     (fDMCadNecessidade_Compras.qDuplicidadeITEM.AsInteger <> fDMCadNecessidade_Compras.mMaterialItem.AsInteger) then
  begin
    MessageDlg('Material/Cor/Tamanho já existe no item ' + fDMCadNecessidade_Compras.qDuplicidadeITEM.AsString, mtError, [mbOk], 0);
    exit;
  end;}

  if fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger > 0 then
    fDMCadNecessidade_Compras.mMaterialNome_Cor.AsString := RxDBLookupCombo1.Text
  else
    fDMCadNecessidade_Compras.mMaterialNome_Cor.AsString := '';
  if trim(fDMCadNecessidade_Compras.mMaterialCarimbo.AsString) <> '' then
    fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString := TirarAcento(fDMCadNecessidade_Compras.mMaterialCarimbo.AsString)
  else
    fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString := '';

  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Close;
  fDMCadNecessidade_Compras.sdsLote_Mat_Grava.ParamByName('NUM_ORDEM').AsInteger := vNum_Ordem_Loc;
  fDMCadNecessidade_Compras.sdsLote_Mat_Grava.ParamByName('ITEM').AsInteger      := fDMCadNecessidade_Compras.mMaterialItem.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Open;
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Edit;
  if (fDMCadNecessidade_Compras.cdsLote_Mat_GravaID_MATERIAL.AsInteger <> fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger) and
    (fDMCadNecessidade_Compras.cdsLote_Mat_GravaID_MATERIAL_ANT.AsInteger <=0) then
    fDMCadNecessidade_Compras.cdsLote_Mat_GravaID_MATERIAL_ANT.AsInteger := fDMCadNecessidade_Compras.cdsLote_Mat_GravaID_MATERIAL.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_GravaID_MATERIAL.AsInteger := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_GravaID_COR.AsInteger      := vIDCorAux;
  fDMCadNecessidade_Compras.cdsLote_Mat_GravaCARIMBO.AsString      := fDMCadNecessidade_Compras.mMaterialCarimbo.AsString;
  fDMCadNecessidade_Compras.cdsLote_Mat_GravaCARIMBOAUX.AsString   := fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString;
  if vJuntar then
  begin
    fDMCadNecessidade_Compras.cdsLote_Mat_GravaQTD_CONSUMO.AsFloat := fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat;
    if fDMCadNecessidade_Compras.cdsLote_Mat_GravaOBS.IsNull then
      fDMCadNecessidade_Compras.cdsLote_Mat_GravaOBS.AsString := 'Juntou IT: ' + IntToStr(vItem_Juntar)
    else
      fDMCadNecessidade_Compras.cdsLote_Mat_GravaOBS.AsString := fDMCadNecessidade_Compras.cdsLote_Mat_GravaOBS.AsString + '(Juntou IT: ' + IntToStr(vItem_Juntar) + ')';
  end;
  fDMCadNecessidade_Compras.cdsLote_Mat_GravaTAMANHO.AsString      := vTamAux;
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Post;
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.ApplyUpdates(0);
  fDMCadNecessidade_Compras.mMaterial.Post;

  if vJuntar then
  begin
    fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Close;
    fDMCadNecessidade_Compras.sdsLote_Mat_Grava.ParamByName('NUM_ORDEM').AsInteger := vNum_Ordem_Loc;
    fDMCadNecessidade_Compras.sdsLote_Mat_Grava.ParamByName('ITEM').AsInteger      := vItem_Juntar;
    fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Open;
    fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Delete;
    fDMCadNecessidade_Compras.cdsLote_Mat_Grava.ApplyUpdates(0);
    vItemAux := fDMCadNecessidade_Compras.mMaterialItem.AsInteger;
    if fDMCadNecessidade_Compras.mMaterial.Locate('ITEM', vItem_Juntar, ([Locaseinsensitive])) then
      fDMCadNecessidade_Compras.mMaterial.Delete;
    fDMCadNecessidade_Compras.mMaterial.Locate('ITEM',vItemAux, ([Locaseinsensitive]));

    fDMCadNecessidade_Compras.cdsLote_Mat.Close;
    fDMCadNecessidade_Compras.sdsLote_Mat.ParamByName('NUM_ORDEM').AsInteger := vNum_Ordem_Loc;
    fDMCadNecessidade_Compras.cdsLote_Mat.Open;
    fDMCadNecessidade_Compras.cdsLote_Mat.Locate('ITEM',vItemAux, ([Locaseinsensitive]));
    fDMCadNecessidade_Compras.mMaterial.Edit;
    fDMCadNecessidade_Compras.prc_Ajusta_Qtd;
    fDMCadNecessidade_Compras.mMaterial.Edit;
  end;
  pnlMaterial.Enabled := False;
  prc_Habilita_Material;

end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnAlterar_ConsumoClick(
  Sender: TObject);
begin
  prc_Habilitar_Cons;
  DBEdit9.SetFocus;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnConfirmar_ConsumoClick(
  Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00000',fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat)) <= 0 then
  begin
    MessageDlg('Qtd. Consumo não pode ser zero!', mtError, [mbOk], 0);
    DBEdit9.SetFocus;
    Exit;
  end;
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Close;
  fDMCadNecessidade_Compras.sdsLote_Mat_Grava.ParamByName('NUM_ORDEM').AsInteger := vNum_Ordem_Loc;
  fDMCadNecessidade_Compras.sdsLote_Mat_Grava.ParamByName('ITEM').AsInteger      := fDMCadNecessidade_Compras.mMaterialItem.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Open;
  
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Edit;
  fDMCadNecessidade_Compras.cdsLote_Mat_GravaQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat));
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.Post;
  fDMCadNecessidade_Compras.cdsLote_Mat_Grava.ApplyUpdates(0);
  prc_Habilitar_Cons;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnCancelar_MatClick(
  Sender: TObject);
begin
  fDMCadNecessidade_Compras.mMaterial.Cancel;
  pnlMaterial.Enabled := False;
  prc_Habilita_Material;
end;

procedure TfrmGerar_Necessidade_Compra_Alt.prc_Habilitar_Cons;
var
  Cor : TColor;
begin
  DBEdit9.ReadOnly := not(DBEdit9.ReadOnly);
  if DBEdit9.ReadOnly then
    Cor := $00F2F2F2
  else
    Cor := clWhite;
  DBEdit9.Color := Cor;
  btnConfirmar_Consumo.Enabled := not(btnConfirmar_Consumo.Enabled);
  btnCancelar_Consumo.Enabled  := not(btnCancelar_Consumo.Enabled);
  btnAlterar_Consumo.Enabled   := not(btnAlterar_Consumo.Enabled );
  btnConfirmar.Enabled         := not(btnConfirmar.Enabled);
end;

procedure TfrmGerar_Necessidade_Compra_Alt.btnCancelar_ConsumoClick(
  Sender: TObject);
begin
  fDMCadNecessidade_Compras.mMaterial.Cancel;
  prc_Habilitar_Cons;
end;

end.

