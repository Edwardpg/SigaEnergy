program SimuladorCastoEnergia;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FrmSigaEnergy},
  UnCalcularABS in 'UnCalcularABS.pas',
  UnCadastrar in 'UnCadastrar.pas' {FrmCadastrar},
  UnCalculos in 'UnCalculos.pas',
  UnBandeirasTarifarias in 'UnBandeirasTarifarias.pas' {FrmBandeiraTarifaria},
  UnCalculoBandeiras in 'UnCalculoBandeiras.pas',
  UnGravarTXT in 'UnGravarTXT.pas',
  UnSingleton in 'UnSingleton.pas',
  UnEvalidationError in 'UnEvalidationError.pas',
  UnAgradeicimentoAutor in 'UnAgradeicimentoAutor.pas' {FrmAutor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TFrmSigaEnergy, FrmSigaEnergy);
  Application.CreateForm(TFrmAutor, FrmAutor);
  Application.Run;
end.
