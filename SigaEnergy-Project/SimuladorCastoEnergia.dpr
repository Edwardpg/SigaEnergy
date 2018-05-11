program SimuladorCastoEnergia;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FrmSigaEnergy},
  UnCalcularABS in 'UnCalcularABS.pas',
  UnCadastrar in 'UnCadastrar.pas' {FrmCadastrar},
  UnCalculos in 'UnCalculos.pas',
  UnBandeirasTarifarias in 'UnBandeirasTarifarias.pas' {FrmBandeiraTarifaria},
  UnCalculoBandeiras in 'UnCalculoBandeiras.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSigaEnergy, FrmSigaEnergy);
  Application.CreateForm(TFrmCadastrar, FrmCadastrar);
  Application.CreateForm(TFrmBandeiraTarifaria, FrmBandeiraTarifaria);
  Application.Run;
end.
