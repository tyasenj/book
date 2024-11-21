# Pemrograman Asynchronous

## Praktikum 1: Mengunduh Data dari Web Service (API)

### Langkah 1: Buat Project Baru

<img src = "assets/gambar_1.jpg">

### Langkah 2: Cek file pubspec.yaml

<img src = "assets/gambar_3.jpg">

### Langkah 3: Buka file main.dart

**Soal 3:**

Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

<img src = "assets/gambar_26.jpg">

<img src = "assets/gambar_4.jpg">

### Langkah 4: Tambah method getData()

class \_FuturePageState

<img src = "assets/gambar_25.jpg">

Soal 2:

Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut.

<img src = "assets/gambar_2.jpg">

### Langkah 5: Tambah kode di ElevatedButton

<img src = "assets/gambar_5.jpg">

**Soal 3**

Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

- substring(0, 450)

  - Mengambil 450 karakter pertama dari respons API agar data yang ditampilkan tidak terlalu panjang.
  - Berguna untuk membatasi tampilan data yang besar.

- catchError

  - Menangani error jika getData() gagal (contoh: jaringan bermasalah atau API error).
  - Jika terjadi error, variabel result diisi dengan teks "An error occurred" dan UI diperbarui dengan setState.

<img src = "assets/gambar_6.gif">

---

### Langkah 1: Buka file main.dart

class \_FuturePageState

<img src = "assets/gambar_8.jpg">

### Langkah 2: Tambah method count()

<img src = "assets/gambar_9.jpg">

### Langkah 3: Panggil count()

onPressed()

<img src = "assets/gambar_10.jpg">

### Langkah 4: Run

<img src = "assets/gambar_11.gif">

**Soal 4**

Jelaskan maksud kode langkah 1 dan 2 tersebut!

- Langkah 1: Masing-masing method menunggu 3 detik dan mengembalikan angka.

- Langkah 2: Semua angka dijumlahkan secara berurutan, dan hasilnya ditampilkan di UI. Total waktu eksekusi adalah sekitar 9 detik.

---

## Praktikum 3: Menggunakan Completer di Future

### Langkah 1: Buka main.dart

<img src = "assets/gambar_12.jpg">

### Langkah 2: Tambahkan variabel dan method

class \_FuturePageState

<img src = "assets/gambar_13.jpg">

### Langkah 3: Ganti isi kode onPressed()

<img src = "assets/gambar_14.jpg">

### Langkah 4: Run

<img src = "assets/gambar_15.gif">

### Langkah 5: Ganti method calculate()

<img src = "assets/gambar_16.jpg">

### Langkah 6: Pindah ke onPressed()

<img src = "assets/gambar_17.jpg">

**Soal 6**

Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!

- Langkah 2 menggunakan Completer untuk menyelesaikan Future secara manual, dengan asumsi bahwa proses akan selalu berhasil (tanpa error handling).

- Hasil Future adalah 42 setelah 5 detik.
  Langkah 5-6 memperkenalkan penanganan error dengan try-catch di dalam calculate(). Jika terjadi error, Completer akan dipanggil dengan error, dan di onPressed(), kita menangani hasil atau error dengan then dan catchError.

---

## Praktikum 4: Memanggil Future secara paralel

### Langkah 1: Buka file main.dart

<img src = "assets/gambar_18.jpg">

### Langkah 2: Edit onPressed()

<img src = "assets/gambar_19.jpg">

### Langkah 3: Run

**Soal 7**

<img src = "assets/gambar_20.gif">

### Langkah 4: Ganti variabel futureGroup

<img src = "assets/gambar_21.jpg">

**Soal 8**

Jelaskan maksud perbedaan kode langkah 1 dan 4!

- Penggunaan FutureGroup (Langkah 1) adalah metode kustom yang lebih eksplisit untuk mengelola dan menutup futures dalam grup. Anda harus menambahkan futures secara manual dan menutup grup setelah semua ditambahkan.

- Future.wait() (Langkah 4) adalah metode built-in Dart yang lebih sederhana dan langsung untuk menangani beberapa futures secara paralel. Ini mengembalikan Future yang selesai setelah semua futures dalam daftar selesai, tanpa perlu menambahkan atau menutup futures secara eksplisit.

---

## Praktikum 5: Menangani Respon Error pada Async Code

### Langkah 1: Buka file main.dart

<img src = "assets/gambar_22.jpg">

### Langkah 2: ElevatedButton

<img src = "assets/gambar_23.jpg">

### Langkah 3: Run

**Soal 9**

<img src = "assets/gambar_24.gif">

### Langkah 4: Tambah method handleError()

<img src = "assets/gambar_23.jpg">

**Soal 10**

Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

- Langkah 1 (Method returnError):

  - Hanya melemparkan exception setelah penundaan.
  - Tidak ada penanganan error dalam method ini. Ini hanya menyebabkan error.

- Langkah 4 (Method handleError):

  - Menangani error dengan blok try-catch.
  - Menangkap exception dari returnError() dan memperbarui UI dengan pesan error.
  - finally block selalu dijalankan untuk menampilkan "Complete" setelah proses selesai, terlepas dari apakah terjadi error atau tidak.

---

## Praktikum 6: Menggunakan Future dengan StatefulWidget

### Langkah 1: install plugin geolocator

<img src = "assets/gambar_27.jpg">

### Langkah 2: Tambah permission GPS

android/app/src/main/androidmanifest.xml

<img src = "assets/gambar_28.jpg">

iOS/Info.plist

<img src = "assets/gambar_29.jpg">

### Langkah 3: Buat file geolocation.dart

### Langkah 4: Buat StatefulWidget

Buat class LocationScreen di dalam file geolocation.dart

### Langkah 5: Isi kode geolocation.dart

**Soal 11**

Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

<img src = "assets/gambar_31.jpg">

### Langkah 6: Edit main.dart

<img src = "assets/gambar_32.jpg">

### Langkah 7: Run

<img src = "assets/gambar_33.gif">

### Langkah 8: Tambahkan animasi loading

<img src = "assets/gambar_34.jpg">

**Soal 12**

1. Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));

<img src = "assets/gambar_35.jpg">

2. Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

   Tidak. Browser tidak memiliki akses langsung ke API perangkat keras seperti GPS. Namun, beberapa browser mendukung lokasi menggunakan Geolocation API berbasis jaringan (Wi-Fi atau IP). Untuk mengaktifkannya, pastikan Anda memberikan izin lokasi di browser.

3. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 12".

<img src = "assets/gambar_36.gif">

---

## Praktikum 7: Manajemen Future dengan FutureBuilder

### Langkah 1: Modifikasi method getPosition()

<img src = "assets/gambar_37.jpg">

### Langkah 2: Tambah variabel

<img src = "assets/gambar_38.jpg">

### Langkah 3: Tambah initState()

<img src = "assets/gambar_39.jpg">

### Langkah 4: Edit method build()

<img src = "assets/gambar_40.jpg">

**Soal 13**

1. Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?

   UI lebih efisien dan clean: Kode menjadi lebih ringkas karena FutureBuilder menyederhanakan logika pengambilan data dan tampilan UI.

   Responsive terhadap perubahan state Future: Tidak perlu banyak pengelolaan state manual.

   Kemudahan debugging: Error dapat langsung ditampilkan tanpa banyak kode tambahan.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 13".

<img src = "assets/gambar_42.gif">

3. Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI.

---

### Langkah 5: Tambah handling error

<img src = "assets/gambar_41.jpg">

**Soal 14**

1. Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?

   Sebelumnya (Tanpa Error Handling):

   UI hanya menampilkan animasi loading (CircularProgressIndicator) saat menunggu data, dan data posisi ketika berhasil ditemukan.
   Tidak ada mekanisme untuk menangani error jika terjadi masalah selama proses pengambilan lokasi (misalnya, jika layanan lokasi tidak aktif atau izin ditolak).

   Sekarang (Dengan Error Handling):

   UI sekarang menambahkan penanganan error, sehingga jika ada masalah selama pengambilan lokasi (misalnya, layanan lokasi dimatikan atau izin ditolak), akan menampilkan pesan error yang sesuai, seperti "Something terrible happened!".
   Tampilan yang lebih informatif dengan menampilkan pesan error ketika terjadi kegagalan, memberikan umpan balik yang jelas kepada pengguna.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 14".

<img src = "assets\gambar_42 (2).gif">

---

## Praktikum 8: Navigation route dengan Future Function

### Langkah 1: Buat file baru navigation_first.dart

### Langkah 2: Isi kode navigation_first.dart

<img src = "assets/gambar_44.jpg">

**Soal 15**

<img src = "assets/gambar_48.jpg">

### Langkah 3: Tambah method di class \_NavigationFirstState

<img src = "assets/gambar_45.jpg">

### Langkah 4: Buat file baru navigation_second.dart

### Langkah 5: Buat class NavigationSecond dengan StatefulWidget

<img src = "assets/gambar_46.jpg">

### Langkah 6: Edit main.dart

<img src = "assets/gambar_47.jpg">

### Langkah 8: Run

<img src = "assets/gambar_49.gif">

**Soal 16**

1. Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

   Ketika Anda mengklik salah satu tombol di halaman kedua (NavigationSecond), warna yang terkait dengan tombol tersebut akan dikirim kembali ke halaman pertama (NavigationFirst). Ini terjadi karena tombol pada halaman kedua menggunakan Navigator.pop() untuk "kembali" ke halaman pertama sambil mengirimkan data (warna).

2. Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!

Saya mengganti warna dengan Pink, Ungu, dan Kuning.

<img src = "assets/gambar_50.jpg">

3. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 16".

<img src = "assets/gambar_51.gif">

---

## Praktikum 9: Memanfaatkan async/await dengan Widget Dialog

### Langkah 1: Buat file baru navigation_dialog.dart

### Langkah 2: Isi kode navigation_dialog.dart

<img src = "assets/gambar_52.jpg">

### Langkah 3: Tambah method async

<img src = "assets/gambar_53.jpg">

### Langkah 4: Panggil method di ElevatedButton

<img src = "assets/gambar_54.jpg">

### Langkah 5: Edit main.dart

<img src = "assets/gambar_55.jpg">

### Langkah 6: Run

<img src = "assets/gambar_57.gif">

**Soal 17**

1. Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

   StatefulWidget dan setState() memastikan bahwa perubahan yang terjadi dalam UI bisa langsung diterapkan ketika ada perubahan pada data atau status aplikasi (dalam hal ini, warna). Dengan setiap interaksi tombol, state baru diterapkan, dan tampilan diperbarui.

2. Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!

<img src = "assets/gambar_56.jpg">

3. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 17".

<img src = "assets/gambar_58.gif">
