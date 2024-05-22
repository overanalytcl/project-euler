MODULE CountingSundays;
   IMPORT In, Out;

   (* https://en.wikipedia.org/wiki/Zeller%27s_congruence *)
   PROCEDURE GetWeekday(year, month, day: LONGINT): LONGINT;
      VAR
	 y, m: LONGINT;
   BEGIN
      m := (month - 3 + 4800) MOD 4800;
      y := (year + m DIV 12) MOD 400;
      m := m MOD 12;
      
      RETURN (y + y DIV 4 - y DIV 100 + (13 * m + 2) DIV 5 + day + 2) MOD 7;
   END GetWeekday;

   PROCEDURE Main;
      VAR
	 count, y, m: INTEGER;
   BEGIN
      count := 0;
      FOR y := 1901 TO 2000 DO
	 FOR m := 1 TO 12 DO
	    IF GetWeekday(y, m, 1) = 0 THEN INC(count); END;
	 END;
      END;
      Out.Int(count, 0); Out.Ln;
   END Main;
   
BEGIN
   Main;
END CountingSundays.