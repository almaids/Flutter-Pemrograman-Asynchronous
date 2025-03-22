# Flutter - Pemrograman Asynchronous

## Praktikum 1 - Mengunduh Data dari Web Service (API)
- **Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.**  
  ![W5 Soal 1](https://github.com/user-attachments/assets/118a4c86-c665-44b7-8f82-e3e29dc8f0d2)  
- **Lakukan capture milik Anda dan tulis di README pada laporan praktikum.**  
  ![W5 Soal 2](https://github.com/user-attachments/assets/139fcf07-d3bf-4382-804f-59e3ada92164)  
- **Penjelasan kode langkah 5:**
  - **substring(0, 450):** Mengambil 450 karakter pertama dari hasil konversi `value.body` menjadi string untuk membatasi panjang teks yang ditampilkan.
  - **catchError:** Menangani kesalahan saat menjalankan `getData()`. Jika terjadi error, variabel `result` akan menampilkan pesan *"an error occurred"*, lalu `setState()` dipanggil untuk memperbarui UI.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 3](https://github.com/user-attachments/assets/6b528413-66f3-467d-a785-c1feb872a2f9)  

---

## Praktikum 2 - Menggunakan await/async untuk Menghindari Callbacks
- **Penjelasan kode langkah 1 dan 2:**
  - `returnOneAsync()`, `returnTwoAsync()`, dan `returnThreeAsync()` adalah method asynchronous yang masing-masing mengembalikan nilai setelah menunggu **3 detik**. Tujuannya mensimulasikan proses asynchronous seperti pengambilan data dari server.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**
  ![W5 Soal 4](https://github.com/user-attachments/assets/5eaaddac-a864-481e-82cf-b35ea832b473)  

---

## Praktikum 3 - Menggunakan Completer di Future
- **Penjelasan kode langkah 2:**
  - `late Completer completer;` digunakan untuk membuat objek `Completer<int>` yang mengelola `Future` secara manual.
  - `getNumber()` membuat `Completer`, memanggil `calculate()`, lalu mengembalikan `Future`.
  - `calculate()` menunda selama **5 detik**, lalu menyelesaikan `Future` dengan nilai **42**.
- **Perbedaan kode langkah 2 dengan langkah 5-6:**
  - **Langkah 2:** Completer menyelesaikan Future setelah penundaan tanpa menangani error.
  - **Langkah 5-6:** Menambahkan mekanisme **try-catch** untuk menangani error dengan `completeError()`. **catchError()** digunakan untuk menampilkan pesan kesalahan jika terjadi error.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**
  ![W5 Soal 5](https://github.com/user-attachments/assets/8e8759bb-dcbd-409c-9023-ee530ce54948)  

---

## Praktikum 4 - Memanggil Future secara Paralel
- **Perbedaan kode langkah 1 dan 4:**
  - **Langkah 1:** Menggunakan **FutureGroup** untuk menambahkan Future secara dinamis sebelum ditutup.
  - **Langkah 4:** Menggunakan **Future.wait** untuk menjalankan beberapa Future secara bersamaan jika jumlahnya sudah pasti.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
  ![W5 Soal 7](https://github.com/user-attachments/assets/f04d7111-4224-4997-9d98-2476848da472)  

---

## Praktikum 5 - Menangani Respon Error pada Async Code
- **Perbedaan kode langkah 1 dan 4:**
  - **Langkah 1:** Menggunakan callback chaining dengan `.then()`, `.catchError()`, dan `.whenComplete()`.
  - **Langkah 4:** Menggunakan **try-catch-finally** agar alur kode lebih rapi dan mudah dibaca.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**
  ![W5 Soal 9](https://github.com/user-attachments/assets/9faf7a0d-d2b5-47c0-9b5d-dd8600a107ae)  

---

## Praktikum 6 - Menggunakan Future dengan StatefulWidget
- **Apakah Anda mendapatkan koordinat GPS ketika run di browser?**
  Tidak, karena:
  - Browser hanya mengandalkan API Geolocation, bukan sensor GPS.
  - Harus berjalan di **HTTPS** untuk mengakses lokasi.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**
  ![W5 Soal 12](https://github.com/user-attachments/assets/6eb901de-d505-4495-a3b8-a8da8f9d089f)  

---

## Praktikum 7 - Manajemen Future dengan FutureBuilder
- **Apakah ada perbedaan UI dengan praktikum sebelumnya?**
  Ya, FutureBuilder menampilkan indikator loading secara otomatis dan menampilkan pesan error langsung di UI.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**
  ![W5 Soal 14](https://github.com/user-attachments/assets/f1c0f385-5163-459d-896a-59dd03bd45fb)  

---

## Praktikum 8 - Navigation Route dengan Future Function
- **Penjelasan:**
  Tombol **Red**, **Green**, dan **Blue** mengirim warna pilihan ke halaman pertama melalui `Navigator.pop(context, color)`. Halaman pertama menerima warna melalui fungsi `_navigateAndGetColor()` dan memanggil `setState()` untuk memperbarui tampilan.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**
  ![W5 Soal 16](https://github.com/user-attachments/assets/d3e4347c-9153-4897-a832-b146127c7bd2)  

---

## Praktikum 9 - Memanfaatkan async/await dengan Widget Dialog
- **Penjelasan:**
  Setiap tombol memperbarui warna background dengan warna yang dipilih menggunakan `setState()`. Setelah itu, dialog ditutup dengan `Navigator.pop(context)`, mengembalikan pengguna ke halaman utama dengan warna baru.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**
  ![W5 Soal 17](https://github.com/user-attachments/assets/f593ddb8-c998-4920-b5ad-0ec516c5350b)  

---

