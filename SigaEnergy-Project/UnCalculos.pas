unit UnCalculos;

interface

uses
  System.SysUtils, UnCalcularABS;

type
  TCalculo = class(TCalcular)
  private
    FCalculoDiario: TCalcular;
  public
    function CalcularArCondicionado(Potencia, Qtd, Tempo, Comodos: integer):
        string; override;
    function CalcularVentilador(Potencia, Qtd, Tempo, Comodos: integer): string;
        override;
    function CalcularTv(Potencia, Qtd, Tempo, Comodos: integer): string; override;
    function CalcularGeladeira(Potencia, Qtd, Tempo, Comodos: integer): string;
        override;
    function CalcularChuveiro(Potencia, Qtd, Tempo, Comodos: integer): string;
        override;
    function CalcularSecadorDeCabelo(Potencia, Qtd, Tempo, Comodos: integer):
        string; override;
    function CalcularComputador(Potencia, Qtd, Tempo, Comodos: integer): string;
        override;
    function CalcularFerroDePassar(Potencia, Qtd, Tempo, Comodos: integer): string;
        override;
    function CalcularLampada(Potencia, Qtd, Tempo, Comodos: integer): string;
        override;
    function CalcularMicroondas(Potencia, Qtd, Tempo, Comodos: integer): string;
        override;
    function CalcularGastoEmDinheiro(Eletrodomestico: string): string; override;
    destructor Destroy; override;
  end;

implementation

{ TCalculoDiario }

function TCalculo.CalcularArCondicionado(Potencia, Qtd, Tempo, Comodos:
    integer): string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularChuveiro(Potencia, Qtd, Tempo, Comodos: integer):
    string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularComputador(Potencia, Qtd, Tempo, Comodos: integer):
    string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularFerroDePassar(Potencia, Qtd, Tempo, Comodos:
    integer): string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularGastoEmDinheiro(Eletrodomestico: string): string;
begin
  ResultadoParcial := StrToFloat(Eletrodomestico) * ValorFormulaEmDinheiro;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularGeladeira(Potencia, Qtd, Tempo, Comodos: integer):
    string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularLampada(Potencia, Qtd, Tempo, Comodos: integer):
    string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularMicroondas(Potencia, Qtd, Tempo, Comodos: integer):
    string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularSecadorDeCabelo(Potencia, Qtd, Tempo, Comodos:
    integer): string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularTv(Potencia, Qtd, Tempo, Comodos: integer): string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

function TCalculo.CalcularVentilador(Potencia, Qtd, Tempo, Comodos: integer):
    string;
begin
  inherited;
  ResultadoParcial := (Potencia * Qtd * Tempo * Comodos) / ValorFormulakWh;
  Result := FloatToStr(ResultadoParcial);
end;

destructor TCalculo.Destroy;
begin
  FCalculoDiario.Free;
  inherited;
end;

end.
