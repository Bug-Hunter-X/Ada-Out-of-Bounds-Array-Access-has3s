```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (others => 0); -- Initialize array
begin
   for I in Arr'Range loop
      Arr(I) := Arr(I) + 1; 
      --Error: attempting to access an element outside the bounds of Arr
      if I > Arr'Last then
         Arr(I+1) := 10;
      end if;
   end loop;
end Example;
```