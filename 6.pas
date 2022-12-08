var
f1, f2: file of integer;
a,min,max,i1,imax,imin:integer;
begin
max:=-1;
min:=1000;
Assign(f1, 'F:\Лаба 14\Тест\Задание 5.txt');
Assign(f2, 'F:\Лаба 14\Тест\Задание 5.1.txt');
Rewrite(f1);
for var i:=1 to 10 do
begin
a:=random(1,50);
write(f1,a);
if min>a then begin min:=a; imin:=i; end;
if max<a then begin max:=a; imax:=i; end;
write (a,' ');
end;
close(f1);


writeln;
writeln('max ',max,' i- ',imax);
writeln('min ',min,' i- ',imin);
writeln;


{reset(f1);
for var i:=1 to 10 do
begin
read(f1,a);
{if i=imin then write(f2,max)
else write(f2,a);
if i=imax then write(f2,min)
else write(f2,a);
write(a,' ');
end;
close(f2);}
reset(f1);
Rewrite(f2);
var i:=1;
while not eof(f1) do
begin
  read(f1,a);
  if i=imin then write(f2,max)
else if i=imax then write(f2,min)
else write(f2,a);
i+=1;
end;

writeln;
reset(f2);
while not eof(f2) do
begin
read (f2,a);
write(a,' ');
end;

close(f1);
close(f2);
end.