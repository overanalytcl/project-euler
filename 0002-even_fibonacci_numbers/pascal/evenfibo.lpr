program EvenFibo;

var
  prev, cur, nextVal, sum: Integer;

begin
  prev := 2;
  cur := 8;

  while (cur <= 4000000) do
  begin
    nextVal := prev + 4 * cur;
    prev := cur;
    cur := nextVal;
  end;

  sum := (prev + cur - 2) div 4;
  writeln(sum);
end.
