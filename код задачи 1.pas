var a: array [1..10] of integer;
    l, i: integer;
    c: boolean;
begin
  for i:= 1 to 10 do
    read (a[i]);
  c:= True;
  l:= 10;
  i:= 1;
  while c do begin
  while (i+2 <= 10) and (c = True) do
    begin
    if a[i] + a[i + 1] <> a[i + 2] then begin
    c:=False;
    writeln ('Массив не соответствует последовательности Фибоначчи');
    end;
    i:= i + 1;
    end;
    if c = True then
      c:=False;
      writeln ('Массив cоответствует последовательности Фибоначчи');
    end;
end.