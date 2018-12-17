unit uMenu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, jpeg, ExtCtrls, StdCtrls, IniFiles,
  DateUtils, SqlExpr, UCBase;

type
  TfMenu1 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    Panel5: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    UCControls1: TUCControls;
    Panel7: TPanel;
    Image1: TImage;
    lbDatabase: TLabel;
    Panel4: TPanel;
    lblCPagar: TLabel;
    Label5: TLabel;
    lblCPagar_Valor: TLabel;
    lblCReceber: TLabel;
    lblCReceber_Valor: TLabel;
    lblCheque: TLabel;
    lblCheque_Valor: TLabel;
    Panel8: TPanel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Label7Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Verifica_Certificado;
    procedure prc_Verifica_Backup;
    procedure Le_Ini;
    procedure prc_Verifica_IBPT;
  public
    { Public declarations }
    procedure prc_Verifica_Nota_Dupl(Tipo: String);
  end;

var
  fMenu1: TfMenu1;

implementation

uses DmdDatabase, UMenu, DmdDatabase_NFeBD, uUtilPadrao, UIBPT_Atualiza;

{$R *.dfm}

procedure TfMenu1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfMenu1.FormShow(Sender: TObject);
begin
  fMenu.vPath := ExtractFilePath(Application.ExeName);
  lbDatabase.Caption := dmDatabase.scoDados.Params.Values['DATABASE'];

  prc_Verifica_Certificado;
  prc_Verifica_Backup;
  Le_Ini;
  prc_Verifica_Nota_Dupl('A');
  prc_Verifica_IBPT;
end;

procedure TfMenu1.Le_Ini;
begin

end;

procedure TfMenu1.prc_Verifica_Backup;
var
  Config: TIniFile;
  vData: String;
  vHora: String;
begin
  Config := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');

  vData := Config.ReadString('BackUp', 'UltData', '');
  vHora := Config.ReadString('BackUp', 'UltHora', '');
  Panel3.Visible := (trim(vData) <> '');
  Label6.Visible := (trim(vData) <> '');
  if trim(vData) <> '' then
  begin
    Label6.Caption := 'Data Último Backup: ' + vData + ' ' + vHora;
    if DaysBetween(Date,StrToDate(vData)) > 1 then
      Label6.Caption := Label6.Caption + '! Verificar!';
  end;
  FreeAndNil(Config);
end;

procedure TfMenu1.prc_Verifica_Certificado;
var
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  vDataFin: TDateTime;
  vDataIni: TDateTime;
  vQtdAux: Integer;
  fdmDatabase_NFeBD: TdmDatabase_NFeBD;
  vCont: Integer;
  vDiasVenc: Integer;
  vVencido: Boolean;
begin
  if not fnc_Verifica_Usa_NFeConfig then
    exit;

  Label4.Caption := '';
  fdmDatabase_NFeBD := TdmDatabase_NFeBD.Create(Self);
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := fdmDatabase_NFeBD.scoNFeBD;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT CC.CNPJ_TITULAR, CC.chave_acesso, CC.validade_inicio, CC.validade_fim '
                       + ' FROM CONFIG_CERTIFICADOS CC';
    sds.Open;
    vCont := 0;
    vVencido := False;
    sds.First;
    while not sds.Eof do
    begin
      try
        vDataIni := sds.FieldByName('validade_inicio').AsDateTime;
        vDataFin := sds.FieldByName('validade_fim').AsDateTime;
        vQtdAux  := DaysBetween(date,vDataFin);
        if vQtdAux <= 15 then
        begin
          if vDataFin >= Date then
          begin
            vCont := vCont + 1;
            if vCont = 1 then
              vDiasVenc := vQtdAux
            else
            if vQtdAux < vDiasVenc then
              vDiasVenc := vQtdAux;
          end
          else
            vVencido := True;
        end;
      except
      end;
      sds.Next;
    end;
    if vCont > 0 then
    begin
      Label4.Caption := 'Existe Certificado Digital vencendo em ...' + IntToStr(vDiasVenc) + ' dias...';
      Panel6.Visible := True;
      Label4.Visible := True;
    end
    else
    if vVencido then
    begin
      Label4.Caption := '... Existe Certificado Vencido ...';
      Panel6.Visible := True;
      Label4.Visible := True;
    end;
    sds.Close;
  finally
    FreeAndNil(sds);
    FreeAndNil(fdmDatabase_NFeBD);
  end;
end;

procedure TfMenu1.prc_Verifica_Nota_Dupl(Tipo: String);
var
  sds: TSQLDataSet;
  vDiasAux: Integer;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.CommandText := 'SELECT NOME FROM FILIAL WHERE PRINCIPAL = ' + QuotedStr('S');
    sds.Open;
    //fMenu.Caption := fMenu.Caption + '  (Empresa: ' + sds.FieldByName('NOME').AsString + ' )';
    sds.Close;

    if (Tipo = 'A') or (Tipo = 'N') then
    begin
      sds.CommandText := 'SELECT COUNT(1) FROM NOTAFISCAL '
                       + 'WHERE ((NFECHAVEACESSO = ' + QuotedStr('') +')'
                       + ' OR (NFECHAVEACESSO IS NULL)) '
                       + ' AND (TIPO_REG = ' + QuotedStr('NTS') +')'
                       + ' AND (NUMNOTA > 0)'
                       + ' AND (CANCELADA = ' + QuotedStr('N') + ')';
      sds.Open;
      Label1.Visible := (sds.FieldByName('COUNT').AsInteger > 0);
      Panel5.Visible := (sds.FieldByName('COUNT').AsInteger > 0);
      sds.Close;
    end;
    if (Tipo = 'A') or (Tipo = 'D') then
    begin
      lblCheque.Visible         := Label5.Visible;
      lblCheque_Valor.Visible   := Label5.Visible;
      lblCPagar.Visible         := Label5.Visible;
      lblCPagar_Valor.Visible   := Label5.Visible;
      lblCReceber.Visible       := Label5.Visible;
      lblCReceber_Valor.Visible := Label5.Visible;
      Panel4.Visible            := Label5.Visible;
      if Label5.Visible then
      begin
        sds.Close;
        sds.CommandText := 'SELECT SUM(DUP.VLR_RESTANTE) VLR_RESTANTE, DUP.TIPO_ES '
                         + 'FROM DUPLICATA DUP '
                         + 'WHERE DUP.DTVENCIMENTO = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                         + ' GROUP BY DUP.TIPO_ES ';
        sds.Open;
        while not sds.eof do
        begin
          if sds.FieldByName('TIPO_ES').AsString = 'E' then
            lblCReceber_Valor.Caption := 'R$ ' + FormatFloat('###,###,##0.00',sds.FieldByName('VLR_RESTANTE').AsFloat)
          else
            lblCPagar_Valor.Caption := 'R$ ' + FormatFloat('###,###,##0.00',sds.FieldByName('VLR_RESTANTE').AsFloat);
          sds.Next;
        end;
        sds.Close;
        sds.CommandText := 'SELECT SUM(C.VALOR) VALOR '
                         + 'FROM CHEQUE C '
                         + 'WHERE C.DTBOM_PARA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                         + ' AND C.DTCOMPENSADO IS NULL ';
        sds.Open;
        lblCheque_Valor.Caption := 'R$ ' + FormatFloat('###,###,##0.00',sds.FieldByName('VALOR').AsFloat);
        sds.Close;
      end;

      sds.Close;
      sds.CommandText := 'SELECT MOSTRAR_ULT_REMESSA FROM PARAMETROS_FIN ';
      sds.Open;
      Label8.Visible := ((sds.FieldByName('MOSTRAR_ULT_REMESSA').AsString = 'S') and (Panel1.Visible));
      Panel1.Visible := Label8.Visible;
      sds.Close;
      if Label8.Visible then
      begin
        sds.Close;
        sds.CommandText := 'SELECT max(h2.dtlancamento) dtlancamento '
                         + 'FROM  Duplicata_hist H2 '
                         + 'WHERE H2.complemento LIKE ' + QuotedStr('REMESSA%');
        sds.Open;
        Label8.Caption :=  'Última Remessa gerada: ' + sds.FieldByName('dtlancamento').AsString;
        vDiasAux := DaysBetween(Date,sds.FieldByName('dtlancamento').AsDateTime);
        if vDiasAux > 0 then
          Label8.Caption :=  'Remessa gerada há ' + IntToStr(vDiasAux) + ' dia(s) ';
        sds.Close;
      end;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfMenu1.FormActivate(Sender: TObject);
begin
  fMenu1.WindowState := wsMaximized;
end;

procedure TfMenu1.prc_Verifica_IBPT;
var
  sds: TSQLDataSet;
begin
  Panel8.Visible := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.Close;
    sds.CommandText := 'SELECT VERIFICA_IBPT_MENU FROM PARAMETROS_NFE ';
    sds.Open;
    if trim(sds.FieldByName('VERIFICA_IBPT_MENU').AsString) <> 'S' then
      exit;
    sds.Close;

    sds.CommandText := 'SELECT TIPO_LEI_TRANSPARENCIA FROM PARAMETROS ';
    sds.Open;
    if sds.FieldByName('TIPO_LEI_TRANSPARENCIA').AsString <> 'I' then
      exit;
    sds.Close;

    sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM TAB_NCM N '
                     + 'LEFT JOIN tab_ibpt IBPT '
                     + 'ON N.ncm = IBPT.codigo '
                     + 'AND IBPT.ex = ' + QuotedStr('')
                     + 'WHERE ((N.ibpt_inativo = ' +QuotedStr('N') + ') or (N.ibpt_inativo IS NULL)) ' 
                     + '  AND ((N.inativo = ' +QuotedStr('N') + ') or (N.inativo IS NULL)) '
                     + '  AND ((IBPT.DT_FINAL < :DATA) or (IBPT.DT_FINAL IS NULL)) ';
   sds.ParamByName('DATA').AsDate := Date;
   sds.Open;
   Panel8.Visible := (sds.FieldByName('CONTADOR').AsInteger > 0);
   Label7.Visible := (sds.FieldByName('CONTADOR').AsInteger > 0);
   sds.Close;

  finally
    FreeAndNil(sds);
  end;

end;

procedure TfMenu1.Label7Click(Sender: TObject);
begin
  frmIBPT_Atualiza := TfrmIBPT_Atualiza.Create(Self);
  frmIBPT_Atualiza.ShowModal;
  FreeAndNil(frmIBPT_Atualiza);
  prc_Verifica_IBPT;
end;

end.
