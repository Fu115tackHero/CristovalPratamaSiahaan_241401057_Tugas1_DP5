program positifNegatif;
uses crt;

var
angka : integer;

begin 
clrscr;

    write('Masukkan sebuah angka: '); readln(angka);

    if (angka > 0) then
        begin
            writeln('Angka ', angka , ' adalah positif');
        end
    else if (angka < 0) then
        begin
            writeln('Angka ', angka , ' adalah negatif');
        end
    else
        begin
            writeln('Angka tersebut adalah 0 alias netral');
        end;
end.