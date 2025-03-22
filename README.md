# Flutter-Pemrograman-Asynchronous

# Praktikum 1 - Mengunduh Data dari Web Service (API)
**> Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.** <br>
![W5 Soal 1](https://github.com/user-attachments/assets/118a4c86-c665-44b7-8f82-e3e29dc8f0d2)  <br>
**> Lakukan capture milik Anda dan tulis di README pada laporan praktikum.** <br>
![W5 Soal 2](https://github.com/user-attachments/assets/139fcf07-d3bf-4382-804f-59e3ada92164)  <br>
**> Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!** <br>
Pada langkah 5 menjelaskan dua bagian penting dari kode: penggunaan substring dan catchError.
- substring(0, 450)
Fungsi ini digunakan untuk mengambil bagian awal dari sebuah teks, tepatnya 450 karakter pertama. Dalam konteks kode value.body.toString().substring(0, 450), teks yang diambil berasal dari hasil konversi value.body ke dalam bentuk string. Tujuannya adalah untuk mempersingkat teks agar tidak terlalu panjang saat ditampilkan di aplikasi.
- catchError
Fitur ini digunakan untuk menangani kesalahan yang mungkin terjadi saat menjalankan fungsi getData(). Jika proses pengambilan data mengalami kegagalan, maka variabel result akan diisi dengan pesan 'an error occurred'. Setelah itu, fungsi setState(() {}) dipanggil untuk memperbarui tampilan aplikasi, agar perubahan tersebut bisa langsung terlihat oleh pengguna. <br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 3](https://github.com/user-attachments/assets/6b528413-66f3-467d-a785-c1feb872a2f9)  <br>

# Praktikum 2 - Menggunakan await/async untuk menghindari callbacks
**> Jelaskan maksud kode langkah 1 dan 2 tersebut**<br>
Pada bagian ini, tiga method asynchronous dibuat: returnOneAsync(), returnTwoAsync(), dan returnThreeAsync(). Masing-masing method menggunakan await Future.delayed(Duration(seconds: 3)), yang berarti mereka akan menunggu selama 3 detik sebelum mengembalikan nilai.
- returnOneAsync() mengembalikan nilai 1
- returnTwoAsync() mengembalikan nilai 2
- returnThreeAsync() mengembalikan nilai 3
Tujuan dari delay ini adalah untuk mensimulasikan proses asynchronous, misalnya seperti pengambilan data dari server, atau proses yang memerlukan waktu tertentu sebelum hasilnya tersedia.<br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 4](https://github.com/user-attachments/assets/5eaaddac-a864-481e-82cf-b35ea832b473)  <br>

# Praktikum 3 - Menggunakan Completer di Future
**> Jelaskan maksud kode langkah 2 tersebut**<br>
- late Completer completer;
  Digunakan untuk menyimpan sebuah objek Completer<int>, yang berfungsi untuk membuat dan mengelola Future secara manual.
- getNumber()
  getNumber() akan memulai proses asynchronous dengan membuat Completer, memanggil calculate(), dan kemudian mengembalikan Future yang menunggu diselesaikan
- calculate()
  Fungsi calculate() melakukan penundaan selama lima detik, lalu menyelesaikan Future tersebut dengan nilai 42.<br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 5](https://github.com/user-attachments/assets/8e8759bb-dcbd-409c-9023-ee530ce54948)  <br>
**> Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!** <br>
Pada Langkah 2, kode hanya membuat proses asynchronous sederhana dengan Completer yang menyelesaikan Future secara manual setelah delay 5 detik, tanpa menangani error. Ini mensimulasikan proses asynchronous di mana hasilnya (42) muncul setelah beberapa waktu.
Sementara pada Langkah 5–6, ditambahkan mekanisme try-catch di dalam calculate() untuk menangani kemungkinan error. Jika terjadi kesalahan, Future diselesaikan dengan completeError(). Selain itu, pada bagian onPressed, ditambahkan catchError() agar UI dapat merespons dan menampilkan pesan kesalahan jika terjadi error. <br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 6](https://github.com/user-attachments/assets/a1e69987-831c-429c-b1bd-e0683a6f47e6)  <br>

# Praktikum 4 - Memanggil Future secara paralel
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 7](https://github.com/user-attachments/assets/f04d7111-4224-4997-9d98-2476848da472)  <br>
**> Jelaskan maksud perbedaan kode langkah 1 dan 4!** <br>
- Pada langkah 1 menggunakan FutureGroup, yang memungkinkan menambahkan future satu per satu secara dinamis sebelum ditutup.
- Pada langkah 4 menggunakan Future.wait, cara yang lebih simpel untuk menjalankan banyak future sekaligus jika jumlahnya sudah pasti.

# Praktikum 5 - Menangani Respon Error pada Async Code
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 9](https://github.com/user-attachments/assets/9faf7a0d-d2b5-47c0-9b5d-dd8600a107ae)  <br>
**> Jelaskan maksud perbedaan kode langkah 1 dan 4!** <br>
Saat method handleError() dijalankan lewat tombol ElevatedButton, layar akan menampilkan pesan error "Exception: Something terrible happened!". Di log, juga akan muncul tulisan "Complete", karena kode di dalam finally tetap dijalankan meskipun terjadi error. Perbedaan dari keduanya yaitu : 
Pada Langkah 1, returnError() dipanggil langsung dan ditangani dengan .then(), .catchError(), dan .whenComplete(). Ini disebut callback chaining.
Sedangkan pada Langkah 4, returnError() dipanggil di dalam try-catch-finally melalui method handleError() dengan gaya async-await. Cara ini membuat kode lebih rapi dan lebih mudah dipahami karena alurnya seperti kode biasa (sinkron).

# Praktikum 6 - Menggunakan Future dengan StatefulWidget
**> Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.** <br>
![W5 Soal 11](https://github.com/user-attachments/assets/88aa865b-a5d3-46af-8fa0-a5ec6d9f7a9b)  <br>
**> Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?** <br>
Saya tidak mendapatkan koordinat GPS saat menjalankan aplikasi di browser karena beberapa kendala. Geolocator membutuhkan sensor GPS, sedangkan browser hanya mengandalkan API Geolocation yang kurang akurat. Selain itu, akses lokasi memerlukan izin pengguna dan harus berjalan di https. Jika menggunakan emulator atau perangkat tanpa GPS, lokasi bisa tidak terdeteksi atau kurang akurat. <br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 12](https://github.com/user-attachments/assets/6eb901de-d505-4495-a3b8-a8da8f9d089f)  <br>

# Praktikum 7 - Manajemen Future dengan FutureBuilder
**> Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?** <br>
Pada praktikum sebelumnya, loading ditampilkan dengan CircularProgressIndicator() saat lokasi belum didapatkan, dan ini masih sama di kode baru. Bedanya, metode getPosition() sekarang dipanggil langsung di initState() tanpa penundaan tambahan seperti Future.delayed(). Selain itu, lokasi yang sebelumnya disimpan sebagai String di myPosition, kini langsung disimpan dalam variabel position bertipe Position, membuatnya lebih fleksibel untuk digunakan. Terakhir, akses lokasi menjadi lebih sederhana karena position langsung diperbarui dengan setState(), tanpa perlu memformat string secara manual. <br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 13](https://github.com/user-attachments/assets/48a4e516-d6ec-4226-b725-6b4755f8bd7d)  <br>
**> Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?** <br>
Perbedaan UI dengan langkah sebelumnya terletak pada penggunaan FutureBuilder untuk menampilkan indikator loading, menggantikan pengecekan manual dengan **position == null**. Selain itu, penanganan error kini lebih jelas karena pesan kesalahan langsung ditampilkan di layar, yang sebelumnya tidak ada umpan balik saat terjadi error. Meskipun ada perubahan pada mekanisme pemrosesan data, format tampilan latitude dan longitude tetap disusun dalam bentuk **Column**, menjaga konsistensi penyajian informasi. <br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 14](https://github.com/user-attachments/assets/f1c0f385-5163-459d-896a-59dd03bd45fb)  <br>

# Praktikum 8 - Navigation route dengan Future Function
**> Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda** <br>
![W5 Soal 15](https://github.com/user-attachments/assets/d3e4347c-9153-4897-a832-b146127c7bd2) <br>
**> Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?** <br>
Saat tombol **"Red"** ditekan, halaman kedua akan tertutup dan halaman pertama berubah warna menjadi merah dengan kode warna **0xFFCD5D7D**, diikuti perubahan warna pada AppBar dan latar belakang. Jika tombol **"Green"** ditekan, halaman kedua tertutup dan halaman pertama berubah menjadi hijau dengan kode warna **0xFF75A47F**, termasuk AppBar dan latar belakang. Begitu juga saat tombol **"Blue"** ditekan, halaman kedua akan tertutup dan halaman pertama berubah menjadi biru dengan kode warna **0xFFD1E9F6**, dengan AppBar dan latar belakang yang ikut berubah warna.<br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 16](https://github.com/user-attachments/assets/c4e3800b-71c8-42d4-bb5f-daf355c77434)

# Praktikum 9 - Memanfaatkan async/await dengan Widget Dialog
**> Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?** <br>
Setiap tombol memiliki fungsi **setState()** yang memperbarui warna background dengan warna yang dipilih, seperti pada praktikum sebelumnya saat button diklik maka akan sesuai dengan warna pada tulisannya. Setelah **setState()** dipanggil, dialog ditutup dengan **Navigator.pop(context)**, sehingga pengguna kembali ke halaman utama dengan warna baru.<br>
**> Capture hasil praktikum Anda berupa GIF dan lampirkan di README.** <br>
![W5 Soal 17](https://github.com/user-attachments/assets/bfc657ad-b71f-4639-ae5b-1e21876d6b53)





















