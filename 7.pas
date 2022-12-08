var
  f: file of char;
  c: char;
  n: integer;

begin
  assign(f, 'F:\Лаба 14\Тест\Задание 6.txt');
  rewrite(f);
  write('Символы:');
  for var i := 1 to 10 do
  begin
    read(c);
    write(F, c);
  end;
  reset(f);
  for  var i := 1 to 9 do
  begin
    if i mod 2 = 1 then begin seek(f, i); write(f, '!'); end;
  end;
  reset(f);
  while not eof(f) do
  begin
    read(f, c);
    write(c);
  end;
  close(f);
end.