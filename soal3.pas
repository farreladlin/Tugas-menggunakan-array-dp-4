program UrutNilaiUAS;

uses crt;

var
  nilai : array[1..10] of real;  
  n , i, j : integer;                                         

begin
    clrscr;
    //1. INPUT JUMLAH MAHASISWA
    
    repeat
      write('Masukkan jumlah mahasiswa (1-10): ');
      readln(n);                           
    until (n >= 1) and (n <= 10);         

    //2. INPUT NILAI UAS 
  
    for i := 1 to n do
    begin
      write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
      readln(nilai[i]);                    
    end;

    //3. PROSES BUBBLE SORT 

    //Perulangan LUAR: menentukan jumlah putaran.
    //Data sebanyak n butuh paling banyak (n - 1) putaran.
    for i := 1 to n - 1 do
    begin

      //Perulangan DALAM: membandingkan dua nilai yang bersebelahan.
      //Batasnya (n - i) karena setiap selesai satu putaran.
      //nilai terbesar sudah "mengapung" ke ujung kanan.
      //jadi bagian itu tidak perlu dibandingkan lagi.
      for j := 1 to n - i do
      begin

        //kalau kiri lebih besar dari kanan, urutannya salah, harus ditukar 
        if nilai[j] > nilai[j + 1] then
        begin
          //Proses Menukar TANPA temp, memakai penjumlahan dan pengurangan 
           
          nilai[j] := nilai[j] + nilai[j + 1];   
          //1.disimpan di nilai[j] 
          nilai[j + 1] := nilai[j] - nilai[j + 1]; 
          //2.jadi nilai[j+1] berisi nilai lama nilai[j]
           nilai[j] := nilai[j] - nilai[j + 1];  
          //jadi nilai[j] berisi nilai lama nilai[j+1]
        end;

      end;  
    end;    

    //4. MENAMPILKAN HASIL

    writeln;                                           
    writeln('Nilai UAS terurut dari terendah ke tertinggi:');

    //tampilkan seluruh nilai yang sudah terurut 
    for i := 1 to n do
      writeln(i, '. ', nilai[i]:0:2);      

    readln;                                
end.