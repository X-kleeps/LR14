var
f1, f2,f3: file of integer;
a,sum:integer;
begin
Assign(f1, 'F:\Лаба 14\Тест\Задание 3.txt');
Assign(f2, 'F:\Лаба 14\Тест\Задание 3.1.txt');
Assign(f3, 'F:\Лаба 14\Тест\Задание 3.2.txt');
Rewrite(f1);
for var i:=1 to 10 do
begin
a:=random(1,50);
write(f1,a);
end;


rewrite(f2);
rewrite(f3);
reset(f1);
while not eof(f1) do
begin
read(f1,a);
if a mod 2 = 0 then
write(f3,a);
end;

reset(f3);
writeln('Четные числа');
while not eof(f3) do
begin
read(f3,a);
write(a,' ');
end;

reset(f3);
writeln;
writeln('Сумма четных чисел');
while not eof(f3) do
begin
read(f3,a);
sum:=sum+a;
end;
write(sum);

close(f1);
close(f2);
close(f3);
end.