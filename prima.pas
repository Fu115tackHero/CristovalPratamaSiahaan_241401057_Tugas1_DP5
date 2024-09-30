program prima;
uses crt;

var
    angka,i: integer;
    angkaPrima: boolean;

{SAYA BERUSAHA UNTUK MEMBUAT PROGRAM INI TANPA MENGGUNAKAN LOOPING, NAMUN SAYA MENYERAH KARENA HASIL YANG DIDAPATKAN TIDAK AKURAT.
JADI, DEMI MEMBUAT PROGRAM LEBIH AKURAT ATAU LOGIS, SAYA MENGGUNAKAN LOOPING WALAUPUN BELUM DIPELAJARI PADA PRAKTIKUM}

begin
clrscr;

    write('Input satu angka bulat: ');
    readln(angka);
 
    angkaPrima := true;
 
{angka negatif, 0, dan 1 bukan angka prima}
if (angka <= 1) then
    begin
        angkaPrima := false
    end
else
    begin
        for i := 2 to (angka div 2) do {program angka melooping mulai dari i = 2 hingga setengah dari angka yang dimasukkan}
        begin
        if (angka mod i = 0) then
            begin
                angkaPrima := false; {jika hasil sisa dari angka dibagi dengan i adalah 0, maka angka tersebut bukan bilangan prima}
                break;
            end;
        end;
    end;
 
if (angkaPrima) then
    begin
        writeln(angka,' adalah angka prima')
    end
else
    begin
        writeln(angka,' bukan angka prima');
    end;

end.
 
{Catatan: 1. Alasan i dimulai dari 2 bukan 1, karena semua angka dapat dibagi dengan 1. 
          2. Alasan looping berakhir hingga setengah dari angka yang dimasukkan adalah
          Jika sebuah angka memiliki faktor lain selain 1 dan dirinya sendiri, 
          faktor tersebut pasti terletak sebelum atau sama dengan setengah dari angka tersebut.
          contoh :Jika kita memeriksa angka 30, salah satu faktornya adalah 15, yang merupakan setengah dari 30.
          angka setelah setengah dari angka tersebut misalnya 16 dst, pasti bukan faktor dari angka tersebut
          3. Jika kita measukkan angka 2, angka tersebut akan dianggap prima dikarenakan statment loop disini
          for i := 2 to (angka div 2), artinya for i := 2 to 1. statement di dalam loop tidak akan dieksekusi
          dikarenakan tidak memenuhi kondisi. karena angkaPrima = true, maka angka 2 adalah
          angka prima }


