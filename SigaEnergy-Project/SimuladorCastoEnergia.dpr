program SimuladorCastoEnergia;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FrmSigaEnergy},
  UnCalcular in 'UnCalcular.pas',
  UnCadastrar in 'UnCadastrar.pas' {FrmCadastrar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSigaEnergy, FrmSigaEnergy);
  Application.CreateForm(TFrmCadastrar, FrmCadastrar);
  Application.Run;
end.
