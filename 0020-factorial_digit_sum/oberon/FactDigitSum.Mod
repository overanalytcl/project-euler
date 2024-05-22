MODULE FactDigitSum;
   IMPORT Factorial, Out;
      
   VAR
      number, i: INTEGER;
      sum: LONGINT;
      f: Factorial.Factorial;
BEGIN
   number := 100;
   
   NEW(f);
   f.Factorial(number); 
   sum := f.Sum(); 
   Out.Int(sum, 0); Out.Ln;
END FactDigitSum.
