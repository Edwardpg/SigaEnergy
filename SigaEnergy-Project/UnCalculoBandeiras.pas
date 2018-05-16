unit UnCalculoBandeiras;

interface

uses
  System.SysUtils;

type
  TCalcularBandeiras = class
    function CalcularTotalTarifa(CustoReais, CustoTarifa: Double): string;
  end;

implementation

function TCalcularBandeiras.CalcularTotalTarifa(CustoReais, CustoTarifa:
    Double): string;
begin
  Result := FloatToStr(CustoReais + CustoTarifa);
end;

end.
