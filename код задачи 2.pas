var
  s, s1, s2: string;
  q, w, i, j, k, n, c: integer;

begin
  writeln('Введите строку содержащую несколько одинаковых подстрок');
  readln(s);
  writeln('Введите подстроку для поиска и удаления');
  readln(s1);
  q := length(s);
  n := 0;
  i := 1;
  while i <= length(s) do
    if s[i] = s1[1] then
    begin
      j := 1;
      while (j <= length(s1)) and (s[i + j - 1] = s1[j]) do inc(j);
      if j > length(s1) then inc(n);
      if n mod 2 = 0 then
      begin
        w+=1;
        for j := 1 to length(s1) do
        begin
          for k := i to length(s) - 1 do
            s[k] := s[k + 1];
          SetLength(s2, q-w);
          for c:= 1 to q - w do
          begin
            s2[c]:= s[c];
          end;
        end;
      end
      else i := i + 1
    end
    else i := i + 1;
  writeln(s2);
end.