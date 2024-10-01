program fishbash;
uses crt;

var
    angka : integer;

begin 
clrscr;
    writeln('--PROGRAM FISH BASH--');
    write('Masukkan Angka: '); readln(angka);

    if (angka mod 3 = 0) AND (angka mod 5 = 0) then
        begin
            writeln('Fish Bash');
        end  
    else if (angka mod 3 = 0) then
        begin
            writeln('Fish');
        end
    else if (angka mod 5 = 0) then
        begin
            writeln('Bash');
        end
    else
        begin
            writeln(angka);
        end;
end.