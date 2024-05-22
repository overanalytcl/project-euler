MODULE Factorial;
   IMPORT Math;
   TYPE
      Factorial* = POINTER TO FactorialDesc;
      FactorialDesc* = RECORD
         digits-: POINTER TO ARRAY OF INTEGER;
	 size-: LONGINT;
      END;

   PROCEDURE (self: Factorial) Init(size: LONGINT);
      VAR
	 i: LONGINT;
   BEGIN
      NEW(self^.digits, size);
      FOR i := 0 TO size - 1 DO
	 self^.digits[i] := 0;
      END;

      self^.digits[0] := 1;
      self^.size := size;
   END Init;

   PROCEDURE (self: Factorial) Multiply*(factor: INTEGER);
      VAR
	 carry, product: INTEGER;
	 i: LONGINT;
   BEGIN
      carry := 0;
      FOR i := 0 TO self^.size - 1 DO
	 product := self^.digits[i] * factor + carry;
	 self^.digits[i] := product MOD 10;
	 carry := product DIV 10;
      END;
   END Multiply;

   PROCEDURE (self: Factorial) Factorial*(n: INTEGER);
      VAR
	 factor: INTEGER;
	 logSize: LONGREAL; size: LONGINT;
   BEGIN
      FOR factor := 2 TO n DO
	 logSize := logSize + Math.log(factor, 10);
      END;
      size := ENTIER(logSize) + 1;
      self.Init(size);
      
      FOR factor := 2 TO n DO
	 self^.Multiply(factor);
      END;
   END Factorial;

   PROCEDURE (self: Factorial) Sum*(): LONGINT;
      VAR
	 i, sum: LONGINT;
   BEGIN
      sum := 0;
      FOR i := 0 TO self^.size - 1 DO
	 sum := sum + self^.digits[i];
      END;
      RETURN sum;
   END Sum;

END Factorial.
