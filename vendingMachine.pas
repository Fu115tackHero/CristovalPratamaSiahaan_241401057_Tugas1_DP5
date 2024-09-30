program vendingMachine;
uses crt;

label
    ulang, ulang2;

var
    nomorProduk : integer;
    harga, uang, kembalian: real;
    produk :  string;
    jawaban : char;

begin
clrscr;

{label ulang}
    ulang:

{Menampilkan Opsi produk pada vending machine}
    writeln('----VENDING MACHINE----'); 
    writeln('1. Coca Cola  -- Rp500');
    writeln('2. Pepsi      -- Rp450');
    writeln('3. Aqua Botol -- Rp300');
    writeln('4. TicTac     -- Rp750');
    writeln('5. Lays       -- Rp850');
    writeln('6. Chitato    -- Rp1000');
    writeln('0. Batal');
    writeln('-----------------------');

{Meminta user untuk memilih produk yang ingin dibeli}
    write('Pilihlah Produk Yang Anda Inginkan: '); 
    readln(nomorProduk);

{proses inisialisasi berdasarkan pilihan user}
    case nomorProduk of
        1 : 
            begin
                produk := 'Coca Cola';
                harga := 500;
            end;
        2 : 
            begin
                produk := 'Pepsi';
                harga := 450;
            end;
        3 : 
            begin
                produk := 'Aqua Botol';
                harga := 300;
            end;
        4 : 
            begin
                produk := 'TicTac';
                harga := 750;
            end;
        5 : 
            begin
                produk := 'Lays';
                harga := 850;
            end;
        6 : 
            begin
                produk := 'Chitato';
                harga := 1000;
            end;
        0 : 
            begin
                writeln('Transaksi dibatalkan.');
                exit; 
            end;
{Jika user menginput selain antara 0-6, maka akan lompat ke awal yaitu pada label bernama 'ulang'}
    else
        begin
            writeln('Tidak Valid'); 
            goto ulang;
        end
    end;

    write('Masukkan Jumlah Uang Anda: ');
    readln(uang);

{proses seleksi antara besar uang dan harga-nya}
    if (uang > harga) then
        begin
            kembalian := uang - harga;
            
            write('Produk yang Anda pilih: ', produk);
            writeln;
            write('Kembalian Anda: Rp', kembalian:5:2);
        end

    else if (uang = harga) then
        begin
            write('Produk yang Anda pilih: ', produk);
            writeln;
        end

{Jika uang tidak cukup, maka program akan berakhir karena user-nya miskin jadi gak layak}
    else
        begin
            writeln('Maaf Uang Anda Tidak cukup');
            exit;
        end;

{label "ulang2"}
    ulang2:
{program akan menawarkan jika user ingin membeli lagi atau tidak}    
    write('Apakah Anda Ingin Membeli Lagi (Y/T)?: ');
    readln(jawaban);

    if (jawaban = 'Y') or (jawaban = 'y') then 
        begin
            goto ulang;
        end

    else if (jawaban = 'T') or (jawaban = 't') then
        begin
            exit;
        end

{jike user menginput selain y, Y, t, atay T, maka program akan memberitahu bahawa jawaban tidak valid dan melompat ke label ulang2}
    else 
        begin
            writeln('Jawaban Tidak valid');
            goto ulang2;
        end;
end.

{PROGRAM DIUSAHAKAN TIDAK MENGGUNAKAN LOOPING.
PROGRAM TANPA MENGGUNAKAN LOOPING = PUSING}
