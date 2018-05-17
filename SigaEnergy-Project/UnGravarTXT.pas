unit UnGravarTXT;

interface

type
  TGravar = class
    procedure GravarTXT(SalvarComo, Texto: string);
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TGravar }

procedure TGravar.GravarTXT(SalvarComo, Texto: string);
var
  GerarArquivoTXT: TextFile;
begin
  try
    AssignFile(GerarArquivoTXT, SalvarComo);
    Rewrite(GerarArquivoTXT);
    Append(GerarArquivoTXT);
    WriteLn(GerarArquivoTXT, Texto);
  finally
    CloseFile(GerarArquivoTXT);
    ShowMessage('Simulação salva com sucesso em: \n' + SalvarComo );
  end;
end;

end.
