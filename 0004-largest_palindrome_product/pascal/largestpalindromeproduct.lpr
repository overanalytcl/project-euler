program LargestPalindromeProduct;

var
  max, maxI, maxJ, i, j, product: Integer;

function isPalindrome(n: Integer): Boolean;
var
  rev, temp: Integer;
begin
  rev := 0;
  temp := n;
  while temp <> 0 do
  begin
    rev := rev * 10 + temp mod 10;
    temp := temp div 10;
  end;
  isPalindrome := n = rev;
end;

begin
  max := 0;
  maxI := 0;
  maxJ := 0;

  for i := 999 downto 100 do
  begin
    j := 990;
    while j > 100 do
    begin
      product := i * j;
      if (product > max) and (isPalindrome(product)) then
      begin
        max := product;
        maxI := i;
        maxJ := j;
      end;
      j := j - 11;
    end;
  end;

  writeln('Largest palindrome product: ', max, ' with i: ', maxI, ' and j: ', maxJ);
end.
