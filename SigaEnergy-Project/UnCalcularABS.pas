unit UnCalcularABS;

interface

type

  TCalcular = class abstract
    function CalcularArCondicionado(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularVentilador(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularTv(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularGeladeira(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularChuveiro(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularSecadorDeCabelo(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularComputador(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularFerroDePassar(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularLampada(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularMicroondas(Potencia,Qtd,Tempo,Comodos, kWh: integer):string; virtual; abstract;
    function CalcularTotal(Total :string):string; virtual; abstract;
    end;
implementation

end.
