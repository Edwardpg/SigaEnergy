unit UnCalculos;

interface

uses
  System.SysUtils, UnCalcularABS;

type
  TCalculo = class(TCalcular)
  private
    FCalculoDiario: TCalcular;
  public
    function CalcularArCondicionado(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularVentilador(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularTv(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularGeladeira(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularChuveiro(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularSecadorDeCabelo(Potencia, Qtd, Tempo, Comodos,
      kWh: integer): string; override;
    function CalcularComputador(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularFerroDePassar(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularLampada(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularMicroondas(Potencia, Qtd, Tempo, Comodos, kWh: integer)
      : string; override;
    function CalcularTotal(Potencia,Qtd,Tempo,Comodos, kWh: string): string; override;
    destructor Destroy; override;
  end;

implementation

{ TCalculoDiario }

function TCalculo.CalcularArCondicionado(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularChuveiro(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularComputador(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularFerroDePassar(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularGeladeira(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularLampada(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularMicroondas(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularSecadorDeCabelo(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularTotal(Potencia,Qtd,Tempo,Comodos, kWh: string): string;
begin
  inherited;
  Result := Potencia + Qtd + Tempo + Comodos + kWh;
end;

function TCalculo.CalcularTv(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

function TCalculo.CalcularVentilador(Potencia, Qtd, Tempo, Comodos,
  kWh: integer): string;
begin
  inherited;
  Result := IntToStr(Potencia * Qtd * Tempo * Comodos * kWh);
end;

destructor TCalculo.Destroy;
begin
  FCalculoDiario.Free;
  inherited;
end;

end.
