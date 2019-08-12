unit uMenu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, jpeg, ExtCtrls, StdCtrls, IniFiles, Mask,
  DB, DateUtils, SqlExpr, UCBase, FMTBcd, DBClient, Provider, Grids, DBGrids, SMDBGrid, ToolEdit, strUtils,
  JvLabel, JvBlinkingLabel;

type
  TfMenu1 = class(TForm)
    Panel2: TPanel;
    PanelBkp: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    UCControls1: TUCControls;
    Panel7: TPanel;
    Image1: TImage;
    lbDatabase: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    sdsAniversariante: TSQLDataSet;
    SMDBGrid1: TSMDBGrid;
    dspAniversariante: TDataSetProvider;
    cdsAniversariante: TClientDataSet;
    dsAniversariante: TDataSource;
    cdsAniversarianteDT_NASCIMENTO: TDateField;
    cdsAniversarianteNOME: TStringField;
    cdsAniversarianteTELEFONE1: TStringField;
    cdsAniversarianteTELEFONE2: TStringField;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    LabelBkp: TJvBlinkingLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabelBkpClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Verifica_Certificado;
    procedure prc_Verifica_Backup;
    procedure Le_Ini;
  public
    { Public declarations }
    vAnivPeriodo: string;
    procedure prc_Verifica_Nota_Dupl(Tipo: String);
    function fnc_ExibeAniversarios: String;
    procedure prc_Aniversarios(vDtIni, vDtFin: TDateTime);
  end;

var
  fMenu1: TfMenu1;

implementation

uses DmdDatabase, UMenu, DmdDatabase_NFeBD, uUtilPadrao;

{$R *.dfm}

procedure TfMenu1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfMenu1.FormShow(Sender: TObject);
var
  vVersao: String;
begin
  lbDatabase.Caption := dmDatabase.scoDados.Params.Values['DATABASE'];

  prc_Verifica_Certificado;
  prc_Verifica_Backup;
  Le_Ini;
  prc_Verifica_Nota_Dupl('A');

  vVersao := fMenu.GetBuildInfoAsString;
  if vVersao <> '0.0.0.0' then
    lbDatabase.Caption := 'Versão ' + vVersao + ' - ' + lbDatabase.Caption;

  case AnsiIndexStr(fnc_ExibeAniversarios,['N','D','S']) of
    0: Panel1.Visible := False;
    1: begin
         DateEdit1.Date := Date;
         DateEdit2.Date := Date;
         prc_Aniversarios(Date,Date);
       end;
    2: prc_Aniversarios(0,0);
  end;
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

  if trim(vData) <> '' then
  begin
    LabelBkp.Caption := 'Data Último Backup: ' + vData; // + ' ' + vHora;
    if DaysBetween(Date,StrToDate(vData)) > 4 then
    begin
      LabelBkp.Blinking := False;
      LabelBkp.Caption := LabelBkp.Caption + '! Clique aqui!';
      PanelBkp.Visible := True;
      LabelBkp.Visible := True;
      if DaysBetween(Date,StrToDate(vData)) > 9 then
        LabelBkp.Blinking := True;
    end;
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
    sds.CommandText   := 'SELECT CC.CNPJ_TITULAR, CC.chave_acesso, CC.validade_inicio, CC.validade_fim FROM CONFIG_CERTIFICADOS CC';
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
    sds.Close;

    if (Tipo = 'A') or (Tipo = 'N') then
    begin
      sds.CommandText := 'SELECT COUNT(1) FROM CUPOMFISCAL '
                       + 'WHERE ((NFECHAVEACESSO = ' + QuotedStr('') +')'
                       + ' OR (NFECHAVEACESSO IS NULL)) '
                       + ' AND (TIPO = ' + QuotedStr('NFC') +')'
                       + ' AND (NUMCUPOM > 0)'
                       + ' AND (CANCELADO = ' + QuotedStr('N') + ')';
      sds.Open;
      Label1.Visible := (sds.FieldByName('COUNT').AsInteger > 0);
      Panel5.Visible := (sds.FieldByName('COUNT').AsInteger > 0);
      sds.Close;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfMenu1.FormActivate(Sender: TObject);
begin
  fMenu1.WindowState := wsMaximized;
end;

procedure TfMenu1.prc_Aniversarios(vDtIni, vDtFin: TDateTime);
begin
  if vDtIni < 10 then
  begin
    if (DayOfTheWeek(Date) = 1) then
    begin
      DateEdit1.Date := Date;
      DateEdit2.Date := Date + 6;
    end
    else
    begin
      DateEdit1.Date := Date + 1 - (DayOfTheWeek(Date));
      DateEdit2.Date := DateEdit1.Date + 6;
    end;
  end;

  cdsAniversariante.Open;
  cdsAniversariante.Filtered := False;
  cdsAniversariante.Filter   := 'DT_NASCIMENTO >= ''' + FormatDateTime('DD/MM/YYYY',DateEdit1.Date) +
                                ''' AND DT_NASCIMENTO <= ''' + FormatDateTime('DD/MM/YYYY',DateEdit2.Date) + '''';
  cdsAniversariante.Filtered := True;
  cdsAniversariante.Open;
end;

procedure TfMenu1.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then
    prc_Aniversarios(DateEdit1.Date,DateEdit2.Date);
end;

procedure TfMenu1.DateEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then
    prc_Aniversarios(DateEdit1.Date,DateEdit2.Date);
end;

function TfMenu1.fnc_ExibeAniversarios: String;
var
  sds: TSQLDataSet;
  vDiasAux: Integer;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.CommandText := 'SELECT ANIVERSARIO_PERIODO FROM CUPOMFISCAL_PARAMETROS';
    sds.Open;
    Result := sds.FieldByName('ANIVERSARIO_PERIODO').AsString;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfMenu1.LabelBkpClick(Sender: TObject);
begin
 prc_Verifica_Backup;
  prc_ShellExecute('ssBackUp_Solo.exe');
end;

end.
