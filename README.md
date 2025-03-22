# Flutter - Pemrograman Asynchronous

## Praktikum 1 - Mengunduh Data dari Web Service (API)

- **Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.**  
  ![W5 Soal 1](https://github.com/user-attachments/assets/118a4c86-c665-44b7-8f82-e3e29dc8f0d2)  

- **Lakukan capture milik Anda dan tulis di README pada laporan praktikum.**  
  ![W5 Soal 2](https://github.com/user-attachments/assets/139fcf07-d3bf-4382-804f-59e3ada92164)  

- **Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError:**  
  - **substring(0, 450):**  
    Digunakan untuk mengambil 450 karakter pertama dari hasil konversi `value.body` menjadi string. Ini berguna untuk mempersingkat teks agar tidak terlalu panjang saat ditampilkan.  
  - **catchError:**  
    Berfungsi menangani kesalahan saat menjalankan `getData()`. Jika terjadi error, variabel `result` akan diisi dengan pesan *"an error occurred"*, lalu `setState()` dipanggil untuk memperbarui UI.  

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 3](https://github.com/user-attachments/assets/6b528413-66f3-467d-a785-c1feb872a2f9)  

---

## Praktikum 2 - Menggunakan await/async untuk menghindari callbacks

- **Jelaskan maksud kode langkah 1 dan 2 tersebut:**  
  Membuat tiga method asynchronous:  
  - `returnOneAsync()` mengembalikan nilai **1** setelah menunggu **3 detik**.  
  - `returnTwoAsync()` mengembalikan nilai **2** setelah menunggu **3 detik**.  
  - `returnThreeAsync()` mengembalikan nilai **3** setelah menunggu **3 detik**.  

  Tujuannya mensimulasikan proses asynchronous, seperti pengambilan data dari server yang memerlukan waktu.  

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 4](https://github.com/user-attachments/assets/5eaaddac-a864-481e-82cf-b35ea832b473)  

---

## Praktikum 3 - Menggunakan Completer di Future

- **Jelaskan maksud kode langkah 2 tersebut:**  
  - `late Completer completer;`  
    Digunakan untuk menyimpan objek `Completer<int>` yang mengelola `Future` secara manual.  
  - `getNumber()`  
    Memulai proses asynchronous dengan membuat `Completer`, memanggil `calculate()`, lalu mengembalikan `Future`.  
  - `calculate()`  
    Melakukan penundaan selama **5 detik**, lalu menyelesaikan `Future` dengan nilai **42**.  

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 5](https://github.com/user-attachments/assets/8e8759bb-dcbd-409c-9023-ee530ce54948)  

- **Jelaskan perbedaan kode langkah 2 dengan langkah 5-6:**  
  - **Langkah 2:**  
    Completer hanya menyelesaikan Future setelah penundaan **5 detik** tanpa menangani error.  
  - **Langkah 5-6:**  
    Ditambahkan mekanisme **try-catch** di dalam `calculate()` untuk menangani error dengan `completeError()`. Pada bagian `onPressed`, ditambahkan **catchError()** untuk menampilkan pesan kesalahan jika terjadi error.  

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 6](https://github.com/user-attachments/assets/a1e69987-831c-429c-b1bd-e0683a6f47e6)  

---

## Praktikum 4 - Memanggil Future secara paralel

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 7](https://github.com/user-attachments/assets/f04d7111-4224-4997-9d98-2476848da472)  

- **Jelaskan perbedaan kode langkah 1 dan 4:**  
  - **Langkah 1:**  
    Menggunakan **FutureGroup** untuk menambahkan Future secara dinamis sebelum ditutup.  
  - **Langkah 4:**  
    Menggunakan **Future.wait** untuk menjalankan beberapa Future sekaligus jika jumlahnya sudah pasti.  

---

## Praktikum 5 - Menangani Respon Error pada Async Code

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 9](https://github.com/user-attachments/assets/9faf7a0d-d2b5-47c0-9b5d-dd8600a107ae)  

- **Jelaskan perbedaan kode langkah 1 dan 4:**  
  - **Langkah 1:**  
    Menggunakan callback chaining dengan `.then()`, `.catchError()`, dan `.whenComplete()` untuk menangani error.  
  - **Langkah 4:**  
    Menggunakan **try-catch-finally** agar alur kode lebih rapi dan mudah dibaca.  

---

## Praktikum 6 - Menggunakan Future dengan StatefulWidget

- **Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.**  
  ![W5 Soal 11](https://github.com/user-attachments/assets/88aa865b-a5d3-46af-8fa0-a5ec6d9f7a9b)  

- **Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?**  
  Tidak mendapatkan koordinat karena:  
  - Browser hanya mengandalkan API Geolocation, bukan sensor GPS.  
  - Harus berjalan di **HTTPS** untuk mengakses lokasi.  
  - Emulator atau perangkat tanpa GPS tidak mendukung fitur ini.  

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 12](https://github.com/user-attachments/assets/6eb901de-d505-4495-a3b8-a8da8f9d089f)  

---

## Praktikum 7 - Manajemen Future dengan FutureBuilder

- **Apakah ada perbedaan UI dengan praktikum sebelumnya?**  
  Perbedaan terletak pada:  
  - **FutureBuilder** digunakan untuk menampilkan indikator loading secara otomatis.  
  - **Error handling** lebih jelas karena menampilkan pesan error langsung di UI.  

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 14](https://github.com/user-attachments/assets/f1c0f385-5163-459d-896a-59dd03bd45fb)  

---

## Praktikum 8 - Navigation route dengan Future Function

- **Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.**  
  ![W5 Soal 15](https://github.com/user-attachments/assets/d3e4347c-9153-4897-a832-b146127c7bd2)  

- **Cobalah klik setiap button, apa yang terjadi?**  
  - Tombol **Red:** Halaman pertama berubah warna menjadi merah.  
  - Tombol **Green:** Halaman pertama berubah warna menjadi hijau.  
  - Tombol **Blue:** Halaman pertama berubah warna menjadi biru.  

- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 16](https://github.com/user-attachments/assets/d3e4347c-9153-4897-a832-b146127c7bd2)  

---

