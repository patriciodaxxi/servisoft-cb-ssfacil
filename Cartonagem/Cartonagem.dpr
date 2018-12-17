program Cartonagem;

uses
  Forms,
  uMenu in 'uMenu.pas' {fMenu},
  uDmDatabase in 'uDmDatabase.pas' {DmDatabase: TDataModule},
  uDmProdutoCarto in 'uDmProdutoCarto.pas' {dmProdutoCarto: TDataModule},
  uDmFaca in 'uDmFaca.pas' {dmFaca: TDataModule},
  rsDBUtils in '..\..\rslib\nova\rsDBUtils.pas',
  uFaca in 'uFaca.pas' {fFaca},
  uFacaC in 'uFacaC.pas' {fFacaC},
  uFacaSel in 'uFacaSel.pas' {fFacaSel},
  uFacaPDF in 'uFacaPDF.pas' {fFacaPdf},
  uDmFichaTecnica in 'uDmFichaTecnica.pas' {dmFichaTecnica: TDataModule},
  uFichaTecnica in 'uFichaTecnica.pas' {fFichaTecnica},
  uFichaTecnicaC in 'uFichaTecnicaC.pas' {fFichaTecnicaC},
  uDmOrcamento in 'uDmOrcamento.pas' {dmOrcamento: TDataModule},
  uOrcamentoR in 'uOrcamentoR.pas' {fOrcamentoR},
  uAcabPosicao in 'uAcabPosicao.pas' {fAcabPosicao},
  uAcabPosicaoC in 'uAcabPosicaoC.pas' {fAcabPosicaoC},
  uDmAcabPosicao in 'uDmAcabPosicao.pas' {dmAcabPosicao: TDataModule},
  uMaquina in 'uMaquina.pas' {fMaquina},
  uMaquinaC in 'uMaquinaC.pas' {fMaquinaC},
  uDmMaquina in 'uDmMaquina.pas' {dmMaquina: TDataModule},
  uDmPastaCarto in 'uDmPastaCarto.pas' {dmPasta: TDataModule},
  uPasta in 'uPasta.pas' {fPasta},
  uPastaC in 'uPastaC.pas' {fPastaC},
  uOPC in 'uOPC.pas' {fOPC},
  uDmAcabado in 'uDmAcabado.pas' {dmAcabado: TDataModule},
  uAcabadoC in 'uAcabadoC.pas' {fAcabadoC},
  uAcabado in 'uAcabado.pas' {fAcabado},
  uDmOp in 'uDmOp.pas' {dmOP: TDataModule},
  uOP in 'uOP.pas' {fOP},
  uEtiquetaR in 'uEtiquetaR.pas' {fEtiquetaR},
  uEtiqueta in 'uEtiqueta.pas' {fEtiqueta},
  uDmEtiqueta in 'uDmEtiqueta.pas' {dmEtiqueta: TDataModule},
  uAcabadoProcesso in 'uAcabadoProcesso.pas' {fAcabadoProcesso},
  uOPR in 'uOPR.pas' {fOPR},
  uDmConsulta in 'uDmConsulta.pas' {dmConsulta: TDataModule},
  uConsulta in 'uConsulta.pas' {fConsulta},
  uFacaR in 'uFacaR.pas' {fFacaR},
  uCartoOrcamento in 'uCartoOrcamento.pas' {fCartoOrcamento},
  uDmCartoOrcamento in 'uDmCartoOrcamento.pas' {dmCartoOrcamento: TDataModule},
  uCartoOrcamentoC in 'uCartoOrcamentoC.pas' {fCartoOrcamentoC},
  uCartoOrcamentoR in 'uCartoOrcamentoR.pas' {fCartoOrcamentoR},
  uCartoOrcamentoItem in 'uCartoOrcamentoItem.pas' {fCartoOrcamentoItem},
  uDmAcabamento in 'uDmAcabamento.pas' {dmAcabamento: TDataModule},
  uAcabamento in 'uAcabamento.pas' {fAcabamento},
  uAcabamentoC in 'uAcabamentoC.pas' {fAcabamentoC},
  uFichaTecnicaCor in 'uFichaTecnicaCor.pas' {fFichaTecnicaCor},
  uFichaTecnicaAcab in 'uFichaTecnicaAcab.pas' {fFichaTecnicaAcab},
  uDmCor in 'uDmCor.pas' {dmCor: TDataModule},
  uCor in 'uCor.pas' {fCor},
  uCorC in 'uCorC.pas' {fCorC},
  uDmGrupo in 'uDmGrupo.pas' {dmGrupo: TDataModule},
  uGrupo in 'uGrupo.pas' {fGrupo},
  uGrupoC in 'uGrupoC.pas' {fGrupoC};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Cartonagem';
  Application.CreateForm(TDmDatabase, DmDatabase);
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
end.
