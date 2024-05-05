program LargestPrimeFactor;

var
  n, i, max_factor, limit: Int64;

begin
  n := 600851475143;
  max_factor := 1;

  while (n mod 2 = 0) do
  begin
    max_factor := 2;
    n := n div 2;
  end;

  limit := Trunc(Sqrt(n));
  i := 3;
  while (i <= limit) do
  begin
    while (n mod i = 0) do
    begin
      max_factor := i;
      n := n div i;
    end;
    i := i + 2;
  end;

  if (n > 2) then
    max_factor := n;

  WriteLn(max_factor);
end.
