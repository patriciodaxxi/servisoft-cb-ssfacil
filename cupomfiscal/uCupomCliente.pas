unit uCupomCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls,
  uDmCupomFiscal, rsDBUtils, NxCollection, ExtCtrls, RxDBComb, RxLookup, DB, Buttons, dbTables;

type
  TfCupomCliente = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    btConfirmar: TNxButton;
    brCancelar: TNxButton;
    Label4: TLabel;
    DBMemo2: TDBMemo;
    Label78: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure brCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure RxDBComboBox2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  fCupomCliente: TfCupomCliente;

implementation

uses UCupomFiscalCli;

{$R *.dfm}

procedure TfCupomCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCupomCliente.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);

  Label78.Visible := ((fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'PED') and (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'ORC'));
  RxDBComboBox2.Visible := ((fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'PED') and (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'ORC'));

  Label5.Visible := ((fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'PED') and (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'ORC'));
  RxDBLookupCombo1.Visible := ((fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'PED') and (fDmCupomFiscal.cdsCupomFiscalTIPO.AsString <> 'ORC'));
end;

procedure TfCupomCliente.brCancelarClick(Sender: TObject);
begin
  fDmCupomFiscal.vClienteConfirmado := False;
  Close;
end;

procedure TfCupomCliente.btConfirmarClick(Sender: TObject);
begin
  if fDmCupomFiscal.cdsCupomFiscal.State in [dsEdit,dsInsert] then
    fDmCupomFiscal.cdsCupomFiscal.Post;
  fDmCupomFiscal.cdsCupomFiscal.Edit;
  fDmCupomFiscal.vClienteConfirmado := True;
  Close;
end;

procedure TfCupomCliente.RxDBComboBox2Exit(Sender: TObject);
begin
  if (RxDBComboBox2.ItemIndex = 1) and (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger <>  fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) then
  begin
    if fDmCupomFiscal.cdsPessoa.Locate('CODIGO',fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]) then
    begin
      if trim(fDmCupomFiscal.cdsPessoaENDERECO_ENT.AsString) <> '' then
      begin
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := 'End: ' + fDmCupomFiscal.cdsPessoaENDERECO_ENT.AsString
                                                                + ', ' + fDmCupomFiscal.cdsPessoaNUM_END_ENT.AsString;
        if trim(fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END_ENT.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString
                                                                  + ' - ' + fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END_ENT.AsString;
        if trim(fDmCupomFiscal.cdsPessoaBAIRRO_ENT.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString + ' -Bai: '
                                                                  + fDmCupomFiscal.cdsPessoaBAIRRO_ENT.AsString;
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString +
                                                                  ' -Cep: ' + fDmCupomFiscal.cdsPessoaCEP_ENT.AsString +
                                                                  ' - ' + fDmCupomFiscal.cdsPessoaCIDADE_ENT.AsString +
                                                                  '/' + fDmCupomFiscal.cdsPessoaUF_ENT.AsString;
      end
      else
      begin
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := 'End: ' + fDmCupomFiscal.cdsPessoaENDERECO.AsString +
                                                                  ', ' + fDmCupomFiscal.cdsPessoaNUM_END.AsString;
        if trim(fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString
                                                                  + ' - ' + fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString;
        if trim(fDmCupomFiscal.cdsPessoaBAIRRO.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString + ' -Bai: '
                                                                  + fDmCupomFiscal.cdsPessoaBAIRRO.AsString;
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString
                                                                + ' -Cep: ' + fDmCupomFiscal.cdsPessoaCEP.AsString
                                                                + ' - ' + fDmCupomFiscal.cdsPessoaCIDADE.AsString + '/' + fDmCupomFiscal.cdsPessoaUF.AsString;
      end;
    end;
  end;
end;

procedure TfCupomCliente.BitBtn1Click(Sender: TObject);
begin
  fCupomFiscalCli := TfCupomFiscalCli.Create(Self);
  fCupomFiscalCli.fDmCupomFiscal := fDmCupomFiscal;

  if DbEdit1.Text <> 'CONUSMIDOR' then
    fCupomFiscalCli.Edit1.Text := DbEdit1.Text;

  fCupomFiscalCli.ShowModal;

  fDmCupomFiscal.SQLQuery1.Close;
  fDmCupomFiscal.SQLQuery1.SQL.Text := 'SELECT CF.ID, CF.DTEMISSAO, CF.ID_TIPOCOBRANCA, CF.TIPO ' +
                                       'FROM CUPOMFISCAL CF ' +
                                       'WHERE CF.ID_TIPOCOBRANCA IS NULL AND ' +
                                       ' CF.TIPO IN (''PED'',''ORC'') AND ' +
                                       ' CF.ID_CLIENTE = ' + IntToStr(fDmCupomFiscal.vClienteID) +
                                       ' ORDER BY CF.DTEMISSAO';
  fDmCupomFiscal.SQLQuery1.Open;
  if not fDmCupomFiscal.SQLQuery1.IsEmpty then
  begin
    ShowMessage('Existe orçamento ou pedido aberto para este cliente em ' + fDmCupomFiscal.SQLQuery1.fieldByName('DTEMISSAO').AsString);
  end;
  fDmCupomFiscal.SQLQuery1.Close;

  if fDmCupomFiscal.vClienteID > 0 then
  begin
    if fdmCupomFiscal.cdsCupomFiscal.State in [dsBrowse] then
      fdmCupomFiscal.cdsCupomFiscal.Edit;
    fDmCupomFiscal.cdsPessoa.IndexFieldNames := 'CODIGO';
    fDmCupomFiscal.cdsPessoa.FindKey([fDmCupomFiscal.vClienteID]);
    fdmCupomFiscal.cdsCupomFiscalCLIENTE_NOME.AsString := fDmCupomFiscal.cdsPessoaNOME.AsString;
    fdmCupomFiscal.cdsCupomFiscalCLIENTE_FONE.AsString := fdmCupomFiscal.cdsPessoaTELEFONE1.AsString;
    fdmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsPessoaENDERECO.AsString + ', ' +
                                                              fDmCupomFiscal.cdsPessoaNUM_END.AsString + '/' +
                                                              fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString;
    if fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString <> '000.000.000-00' then
      fDmCupomFiscal.cdsCupomFiscalCPF.AsString := fDmCupomFiscal.cdsPessoaCNPJ_CPF.AsString;
    fdmCupomFiscal.cdsCupomFiscal.Post;
  end;
end;

procedure TfCupomCliente.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F6) then
    BitBtn1Click(Sender);
end;

end.


