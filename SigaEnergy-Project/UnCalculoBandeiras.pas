unit UnCalculoBandeiras;

interface

uses
  System.SysUtils;

type
  TCalcularBandeiras = class
    function CalcularTarifaBandeiras(kWh: Double): Double;
  const
    FValorBandeiraVerde = 0;
    FValorBandeiraAmarela = 1;
    FValorBandeiraVermelhaClara = 3;
    FValorBandeiraVermelhaEscura = 5;
  end;

implementation

uses
  UnBandeirasTarifarias;

{ TCalcularBandeiras }

function TCalcularBandeiras.CalcularTarifaBandeiras(kWh: Double): Double;
var
  ValorInteiro,ValorTaxaTarifaria: Integer;
  ValorFinalCalculadoTarifa: Double;
begin
  ValorInteiro := Trunc(kWh);
  if ValorInteiro <= 100 then
    begin
//    FrmBandeiraTarifaria.GroupBoxBandeiraVerde.Enabled := True;
    FrmBandeiraTarifaria.ImageBandeiraVerde.Visible := True;
    ValorTaxaTarifaria := FValorBandeiraVerde;
    FrmBandeiraTarifaria.EditBandeiraVerde.Text := IntToStr(ValorTaxaTarifaria);
//    ValorFinalCalculadoTarifa := StrToInt(FrmBandeiraTarifaria.EditBandeiraVerde.Text);
    {Arrumar e separa para o resultado final com o que estou adicionado
    e também arrumar o método para pegar o (edittotalkwhcadastrado / 100)
    e seu resultado dar um TRUNC e vai receber no edit das bandeira}
      ValorFinalCalculadoTarifa := 87;
    end;
  if (ValorInteiro > 100) and (ValorInteiro <= 500) then
    begin
    FrmBandeiraTarifaria.ImageBandeiraAmarela.Visible := True;
    ValorTaxaTarifaria := ValorInteiro * FValorBandeiraAmarela;
    FrmBandeiraTarifaria.EditBandeiraAmarela.Text := IntToStr(ValorTaxaTarifaria);
    begin
    ValorFinalCalculadoTarifa := (StrToInt(FrmBandeiraTarifaria.EditTotalGastoReaisCadastrado.Text)) +
    (StrToInt(FrmBandeiraTarifaria.EditBandeiraAmarela.Text));
    end;
    end;
  if (ValorInteiro > 500) and (ValorInteiro <= 800) then
    begin
    FrmBandeiraTarifaria.ImageBandeiraVermelhaFraco.Visible := True;
    ValorTaxaTarifaria := ValorInteiro * FValorBandeiraVermelhaClara;
    FrmBandeiraTarifaria.EditBandeiraVermelhaClara.Text := IntToStr(ValorTaxaTarifaria);
    begin
    ValorFinalCalculadoTarifa := (StrToInt(FrmBandeiraTarifaria.EditTotalGastoReaisCadastrado.Text)) +
    (StrToInt(FrmBandeiraTarifaria.EditBandeiraVermelhaClara.Text));
    end;
    end;
  if (ValorInteiro > 800) then
    begin
    FrmBandeiraTarifaria.ImageBandeiraVermelhaEscura.Visible := True;
    ValorTaxaTarifaria := ValorInteiro * FValorBandeiraVermelhaEscura;
    FrmBandeiraTarifaria.EditBandeiraVermelhaEscuro.Text := IntToStr(ValorTaxaTarifaria);
    begin
    ValorFinalCalculadoTarifa := (StrToInt(FrmBandeiraTarifaria.EditTotalGastoReaisCadastrado.Text)) +
    (StrToInt(FrmBandeiraTarifaria.EditBandeiraVermelhaEscuro.Text));
    end;
    end;

  Result := ValorFinalCalculadoTarifa;
end;

end.
