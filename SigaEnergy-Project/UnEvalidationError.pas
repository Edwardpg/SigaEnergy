unit UnEvalidationError;

interface

uses
  System.SysUtils, System.TypInfo, Vcl.Samples.Spin;

type
  TEvalidationError = class (Exception)
  Mensagem :string;
  SpinQuantidades : TSpinEdit;
  constructor Create(Const Msg: string); reintroduce;
  end;

implementation

{ EvalidationError }

constructor TEvalidationError.Create(Const Msg: string);
begin
  Mensagem := Msg;
end;

end.
