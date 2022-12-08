var
 S: String;
 F_in,F_out: text;
 MinLen,MaxLen: integer;
  i:integer;
begin
  Assign(F_in,'F:\Лаба 14\Тест\Задание 2.txt');
  Rewrite(F_in);
   write('Введите строки исходного файла:');
  for i:=1 to 3 do
  begin
       readln(s);
       writeln(F_in,s);
  end;
  close(F_in);
  Reset(F_in);
  Assign(F_out,'F:\Лаба 14\Тест\Задание 2.1.txt');
  Rewrite(F_out);
 
 {MinLen:=-1;
 
 
 while (not eof(F_in)) do //Мин строка
  begin
   Read(F_in,S);
   if (Length(S)<MinLen) or (MinLen=-1) then
   MinLen:=Length(S);
  end;}

MaxLen:=-1;

  while (not eof(F_in)) do //Макс строка
  begin
   Readln(F_in,S);
   if (Length(S)>MaxLen) or (MaxLen=-1) then
   MaxLen:=Length(S);
  end;
  
 
 Close(F_in);
 Reset(F_in);
 
 
 while (not eof(F_in)) do
  begin
   Readln(F_in,S);
   if Length(S)=MaxLen then
   Writeln(F_out,S);
  end;
 
 Close(F_in);
 Close(F_out);
end.