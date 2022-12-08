var
 F_in,F_out: File of Char;
 a,C:Char;
 i,r:integer;
begin
  Assign(F_in,'F:\Лаба 14\Тест\Задание 1.txt');
  ReWrite(F_in);
  write('Какие символы записываем в исходный файл?');
  for i:=1 to 10 do
  begin
       read(a);
       write(F_in,a);
  end;
 
  Reset(F_in);
  Assign(F_out,'F:\Лаба 14\Тест\Задание 1.1.txt');
  ReWrite(F_out);
 
  Read(F_in,C);
  i:=0;
  
  Reset(F_in);
  while (not eof(F_in)) do
    begin
    inc(i);
    Read(F_in,C);
  if C=' ' then r:=i;
    end;
      
  Reset(F_in);
  i:=0;
  while (not eof(F_in)) do
   begin
     inc(i);
    Read(F_in,C);
    if i<=r then Write(F_out,C);
   end;
   Close(F_out);
   Close(F_in);
   Erase(F_in);
   Rename(F_out,'F:\Лаба 14\Тест\Задание 1.txt');
end.