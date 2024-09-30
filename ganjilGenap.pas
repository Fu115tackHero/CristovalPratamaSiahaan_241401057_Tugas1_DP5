program ganjil_genap;
uses crt;

var 
angka : integer;

begin 
clrscr;
    
    write('Masukkan Sebuah Angka: ');readln(angka);

    if (angka mod 2 = 0) then
        begin
            writeln('angka ', angka , ' merupakan bilangan genap')
        end
    else
        begin
            writeln('angka ', angka , ' merupakan bilangan ganjil')
        end;
end.