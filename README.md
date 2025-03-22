# Flutter-Pemrograman-Asynchronous

# Praktikum 1
# Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
![W5 Soal 1](https://github.com/user-attachments/assets/118a4c86-c665-44b7-8f82-e3e29dc8f0d2)
# Lakukan capture milik Anda dan tulis di README pada laporan praktikum.
![W5 Soal 2](https://github.com/user-attachments/assets/139fcf07-d3bf-4382-804f-59e3ada92164)
# Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
Pada langkah 5 menjelaskan dua bagian penting dari kode: penggunaan substring dan catchError.
- substring(0, 450)
Fungsi ini digunakan untuk mengambil bagian awal dari sebuah teks, tepatnya 450 karakter pertama. Dalam konteks kode value.body.toString().substring(0, 450), teks yang diambil berasal dari hasil konversi value.body ke dalam bentuk string. Tujuannya adalah untuk mempersingkat teks agar tidak terlalu panjang saat ditampilkan di aplikasi.
- catchError
Fitur ini digunakan untuk menangani kesalahan yang mungkin terjadi saat menjalankan fungsi getData(). Jika proses pengambilan data mengalami kegagalan, maka variabel result akan diisi dengan pesan 'an error occurred'. Setelah itu, fungsi setState(() {}) dipanggil untuk memperbarui tampilan aplikasi, agar perubahan tersebut bisa langsung terlihat oleh pengguna.
# Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![W5 Soal 3](https://github.com/user-attachments/assets/6b528413-66f3-467d-a785-c1feb872a2f9)

# Praktikum 2
# Jelaskan maksud kode langkah 1 dan 2 tersebut!
Pada bagian ini, tiga method asynchronous dibuat: returnOneAsync(), returnTwoAsync(), dan returnThreeAsync(). Masing-masing method menggunakan await Future.delayed(Duration(seconds: 3)), yang berarti mereka akan menunggu selama 3 detik sebelum mengembalikan nilai.
- returnOneAsync() mengembalikan nilai 1
- returnTwoAsync() mengembalikan nilai 2
- returnThreeAsync() mengembalikan nilai 3
Tujuan dari delay ini adalah untuk mensimulasikan proses asynchronous, misalnya seperti pengambilan data dari server, atau proses yang memerlukan waktu tertentu sebelum hasilnya tersedia.
# Capture hasil praktikum Anda berupa GIF dan lampirkan di README. 
![W5 Soal 4](https://github.com/user-attachments/assets/5eaaddac-a864-481e-82cf-b35ea832b473)







