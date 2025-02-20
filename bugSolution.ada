```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (others => 0); -- Initialize array
begin
   for I in Arr'Range loop
      Arr(I) := Arr(I) + 1; 
   end loop;
   --Corrected logic: Check the boundary condition before attempting access
   if Arr'Last < Arr'Last + 1 then
      Arr(Arr'Last) := 10; --Correct Access
   end if;
exception
   when others =>
      --Exception Handling (Optional)
      Put_Line("An unexpected error occurred.");
end Example;
```