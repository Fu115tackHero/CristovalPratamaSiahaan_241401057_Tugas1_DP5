program kelulusan;
uses crt;

var
nilaiAkhir, project, uts, uas, tugas, quiz : real;

begin 
clrscr;

    write('Masukkan Nilai Tugas Anda: '); readln(tugas);
    write('Masukkan Nilai Quiz Anda: '); readln(quiz);
    write('Masukkan Nilai UTS Anda: '); readln(uts);
    write('Masukkan Nilai UAS Anda: '); readln(uas);
    write('Masukkan Nilai project Anda: '); readln(project);

    nilaiAkhir := 0.5 * project + 0.15 * uts + 0.15 * uas + 0.1 * tugas + 0.1 * quiz;

    if (nilaiAkhir >= 60) then
        begin
            writeln('Anda Lulus');
        end
    else
        begin
            writeln('Anda Tidak Lulus');
        end;
end.