var
 S:String;
 F_in: File of Real;
 El2,El1,El:Real;
 i:integer;
 a:real;
 
begin
  Assign(F_in,'F:\Лаба 14\Тест\Задание 5.txt');
  rewrite(F_in);
  writeln ('Введите вещественные числа');
  for i:=1 to 10 do begin
      a:=random(1,20);
      write(a,' ');
      write(F_in,a); {заполняем исходный файл числами}
  end;
  close(F_in);
  Reset(F_in); 
  Read(F_in,El);
  Read(F_in,El1);
  Read(F_in,El2);
  writeln;
  writeln('Результат =');
  if (El1>El)and(El1>El2) then Write(El1)
  else
   begin
    while (not eof(F_in)) and not((El<El1) and (El1>El2)) do
     begin
      El:=El1;
      El1:=El2;
      Read(F_in,El2);
     end;
    if (El<El1) and (El1>El2) then
       Write(El1)
    else if eof(F_in) and (El1<El) then
       Write(El);
   end;
  Close(F_in);
end.