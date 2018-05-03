program SimuladorCastoEnergia;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FrmSigaEnergy},
  UnCalcularABS in 'UnCalcularABS.pas',
  UnCadastrar in 'UnCadastrar.pas' {FrmCadastrar},
  UnCalculos in 'UnCalculos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSigaEnergy, FrmSigaEnergy);
  Application.CreateForm(TFrmCadastrar, FrmCadastrar);
  Application.Run;
end.
