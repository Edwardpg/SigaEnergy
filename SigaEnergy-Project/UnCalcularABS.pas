unit UnCalcularABS;

interface

type

  TCalcular = class abstract
  protected
    ResultadoParcial : Double;
    function CalcularArCondicionado(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularVentilador(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularTv(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularGeladeira(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularChuveiro(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularSecadorDeCabelo(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularComputador(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularFerroDePassar(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularLampada(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularMicroondas(Potencia,Qtd,Tempo,Comodos: integer):string; virtual; abstract;
    function CalcularGastoEmDinheiro(Eletrodomestico: string):string; virtual; abstract;
    function CalcularTotal(ArCondicionado,Ventilador,Tv, Geladeira, Chuveiro, SecadorDeCabelo, Computador,
      FerroDePassar, Lampada, Microondas : string):string; virtual; abstract;
    const
      ValorFormulakWh = 1000;
      ValorFormulaEmDinheiro = 0.30;
    end;

implementation

end.
