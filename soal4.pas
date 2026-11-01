program KelulusanMahasiswa;
uses crt;

var 
  //STRUKTUR DATA: Array 1D Paralel
  //Mengalokasikan memori terpisah untuk tiap komponen nilai dan rata-rata hingga 5 mahasiswa
  tugas, kuis, UTS, UAS, rata : array[1..5] of real;
  n, i, k : integer;

begin
    clrscr;
    { ---------- BAGIAN 1: INPUT JUMLAH MAHASISWA ---------- }
    repeat
        write('Masukkan jumlah mahasiswa (1-5): ');
        readln(n);
    until (n >= 1) and (n <= 5);         
    { ---------- BAGIAN 2: INPUT NILAI & HITUNG RATA-RATA ---------- }
    for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);

        write('  Nilai tugas : ');
        readln(tugas[i]);   
        //menyimpan nilai tugas
        write('  Nilai kuis  : ');
        readln(kuis[i]);                   
        //menyimpan nilai kuis
        write('  Nilai UTS   : ');
        readln(uts[i]);                    
        //menyimpan nilai UTS
        write('  Nilai UAS   : ');
        readln(uas[i]);                    
        //menyimpan nilai UAS

        { jumlahkan keempat nilai lalu bagi 4 }
        rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    { ---------- BAGIAN 3: TAMPILKAN HASIL ---------- }
    writeln;
    writeln('=========== HASIL ===========');

    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i);
        writeln('  Tugas     : ', tugas[i]:0:2);
        writeln('  Kuis      : ', kuis[i]:0:2);
        writeln('  UTS       : ', uts[i]:0:2);
        writeln('  UAS       : ', uas[i]:0:2);
        writeln('  Rata-rata : ', rata[i]:0:2);

        { tentukan lulus atau tidak berdasarkan rata-rata }
        if rata[i] >= 70 then
        writeln('  Keterangan: LULUS')
        else
        writeln('  Keterangan: TIDAK LULUS');

        writeln;
    end;

    readln;                              { tahan layar supaya hasil sempat dibaca }
end.