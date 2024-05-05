program multiples;

function Gauss(const x: integer): integer;
begin
  Gauss := x * (x + 1) div 2;
end;

function GaussDivisor(const limit, divisor: integer): integer;
begin
  GaussDivisor := divisor * gauss((limit - 1) div divisor);
end;

var
  sum, limit: integer;

begin
  limit := 1000;

  sum := GaussDivisor(limit, 3) + GaussDivisor(limit, 5) - GaussDivisor(limit, 15);

  writeln('The sum of all multiples of 3 or 5 below ', limit, ' is: ', sum);
end.
