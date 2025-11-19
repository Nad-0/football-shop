Nama = Go Nadine Audelia 
NPM = 2406348774 
Kelas = PBP C

TUGAS 7
1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree adalah struktur hierarki yang menunjukkan bagaimana widget tersusun. Hubungan parent-child ini bekerja dengan cara parent/widget induk memberikan batasan misalnya minimum/maksimum lebar dan tinggi ke child. Parent juga memutuskan di mana posisi child akan ditempatkan di layar. Child kemudian menentukan ukurannya sendiri dalam batasan itu dan memberi tahu ukurannya ke parent.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
Saya menggunakan widget MyApp yang merupakan widget root yang membungkus seluruh aplikasi. Di dalamnya, MaterialApp menyediakan beberapa hal seperti tema aplikasi dan memuat MyHomePage sebagai halaman utamanya. MyHomePage menggunakan Scaffold untuk menyediakan kerangka halaman dasar, yang mencakup AppBar dan body. Tata letak body diatur oleh Padding untuk memberi spasi di sekeliling, diikuti oleh Column utama yang menyusun widget secara vertikal. Column ini berisi Row, SizedBox, dan Center. Widget kustom InfoCard menggunakan Card untuk tampilan visual, yang di dalamnya berisi Container untuk mengatur lebar dan padding internal, serta Column lain untuk menyusun dua widget Text. GridView.count digunakan untuk menampilkan tiga tombol widget kustom ItemCard per baris. Setiap ItemCard menggunakan Material untuk mengatur warna latar belakang dan sudut membulat, serta InkWell untuk membuatnya dapat diklik. Di dalam ItemCard, Container memberi padding internal, lalu Center dan Column digunakan untuk menata Icon dan Text. Terakhir, InkWell tersebut memiliki fungsi onTap yang memanggil ScaffoldMessenger untuk menampilkan SnackBar sebagai pesan pop-up saat tombol ditekan.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
MaterialApp berfungsi sebagai widget pembungkus utama yang menyediakan dasar untuk aplikasi bergaya Material Design. Fungsi intinya adalah mengatur tema global aplikasi melalui ThemeData, serta mengelola seluruh sistem navigasi atau routing. MaterialApp sering digunakan sebagai widget root karena widget Material Design lainnya sangat bergantung padanya. 

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget bersifat immutable sehingga jika ingin menampilkan sesuatu yang berbeda, maka harus mengganti widget itu dengan yang baru. Sedangkan, StatefulWidget bersifat mutable dan elemen yang dirender pada StatefulWidget dapat berubah secara dinamis berdasarkan kejadian. Oleh karena itu, saya akan memilih StatelessWidget saat butuh widget yang tidak perlu berubah setelah dirender, dan memilih StatefulWidget saat ingin widget berubah sebagai respons terhadap input pengguna atau data yang masuk.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah lokasi sebuah widget di dalam widget tree. BuildContext sangat penting karena berfungsi sebagai penghubung widget tersebut dengan induk di atasnya. Di dalam metode build, BuildContext diterima sebagai argumen yang otomatis diberikan oleh Flutter, kemudian menggunakannya untuk mengakses data dari induk tersebut. 

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot Reload sangat cepat dan bekerja dengan menyuntikkan kode baru langsung ke aplikasi yang sedang berjalan tanpa merestart dan tanpa kehilangan state. Sedangkan, Hot Restart akan merestart seluruh aplikasi dan menghancurkan semua state, mengembalikan ke halaman awal. Hot Restart lebih lambat dari Hot Reload dan digunakan ketika ingin membuat perubahan besar pada state atau ketika Hot Reload gagal.

TUGAS 8
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Navigator.push() menambahkan halaman baru di atas halaman saat ini sehingga user bisa kembali ke halaman sebelumnya, sedangkan Navigator.pushReplacement() menggantikan halaman saat ini dengan yang baru, sehingga halaman lama dihapus dari tumpukan. Dalam aplikasi saya, Navigator.push() cocok digunakan saat pengguna menavigasi dari halaman utama ke formulir "Tambah Produk" agar mereka bisa kembali jika batal. Sedangkan, Navigator.pushReplacement() sebaiknya digunakan untuk navigasi melalui drawer untuk mencegah penumpukan halaman yang tidak perlu dan menjaga alur navigasi tetap bersih.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Saya memanfaatkan widget Scaffold sebagai fondasi utama hierarki widget di setiap halaman untuk menjamin konsistensi tata letak visual. Dengan menggunakan Scaffold sebagai kerangka dasar, komponen AppBar dapat ditempatkan secara seragam di bagian atas setiap halaman untuk memberikan identitas yang tetap, sementara Drawer dipasang pada slot navigasi samping untuk menyediakan akses menu yang selalu tersedia. Struktur hierarkis ini memastikan bahwa setiap halaman baru secara otomatis mewarisi kerangka standar aplikasi dan meningkatkan pengalaman user.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
Padding menciptakan ruang visual yang mencegah elemen terlihat sesak dan meningkatkan keterbacaan, seperti yang diterapkan di sekitar setiap kolom input pada halaman tambah produk. ListView juga menyediakan kemampuan scrolling secara otomatis dan sangat cocok untuk form yang sangat panjang atau bersifat dinamis. SingleChildScrollView memastikan seluruh elemen formulir tetap dapat diakses melalui pengguliran ketika ruang layar terbatas sehingga menjamin pengguna selalu dapat mencapai tombol "Save" di bagian bawah formulir.

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Penyesuaian warna tema aplikasi dilakukan menggunakan theme pada widget MaterialApp di file main.dart. Dengan menentukan warna ColorScheme maka seluruh widget standar Flutter seperti AppBar, FloatingActionButton, dan ElevatedButton secara otomatis akan mewarisi palet warna tersebut sehingga tercipta visual yang konsisten.

TUGAS 9
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Perlu membuat model Dart saat mengambil atau mengirim data JSON karena model memberikan struktur data yang jelas dan aman. Dengan model, setiap field memiliki tipe yang pasti sehingga kesalahan seperti nilai null yang tidak terduga atau tipe data salah dapat terdeteksi lebih awal. Jika langsung memakai Map<String, dynamic> tanpa model, maka seluruh validasi tipe harus dilakukan manual dan risiko runtime error meningkat sehingga tidak ada jaminan konsistensi struktur data. 

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
Package http digunakan untuk melakukan request HTTP biasa tanpa autentikasi otomatis. Http cocok untuk endpoint publik, tetapi tidak menyimpan atau mengirim cookie sesi. Sebaliknya, CookieRequest adalah wrapper yang sudah terintegrasi dengan sistem autentikasi Django, sehingga otomatis menyimpan cookie login, mengirimkannya pada setiap request berikutnya, serta memudahkan proses login, register, dan logout. 

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Instance CookieRequest perlu dibagikan ke seluruh komponen Flutter karena objek ini menyimpan status autentikasi, termasuk session cookie yang digunakan Django untuk mengenali user yang sudah login. Jika setiap widget membuat instance CookieRequest baru, maka session tidak akan terbawa dan user terlihat seolah belum login di halaman lain. Dengan membagikan satu instance global melalui Provider, seluruh bagian aplikasi dapat melakukan request dengan konteks login yang sama, menjaga konsistensi state user, dan memastikan semua request yang membutuhkan autentikasi dapat berjalan tanpa error.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita 
perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Flutter hanya dapat berkomunikasi dengan Django jika keduanya saling mengizinkan koneksi. Pada sisi Django, alamat 10.0.2.2 harus dimasukkan ke dalam ALLOWED_HOSTS karena emulator Android menerjemahkan “localhost” milik komputer host sebagai 10.0.2.2, sehingga tanpa itu Django akan menolak request sebagai host tidak valid. CORS perlu diaktifkan agar Django mengizinkan request lintas origin dari aplikasi Flutter, sementara pengaturan SameSite dan cookie harus disesuaikan supaya session login dapat dikirim dan disimpan oleh Flutter tanpa diblokir oleh aturan browser/emulator. Di Android sendiri, aplikasi membutuhkan izin akses internet agar dapat melakukan komunikasi HTTP ke server Django. Jika salah satu konfigurasi ini tidak dilakukan, request bisa gagal total, session tidak terkirim, cookie tidak tersimpan, login selalu gagal, atau aplikasi tidak bisa menampilkan data karena semua request diblokir baik oleh Django maupun Android.

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme pengiriman data dalam integrasi Flutter-Django dimulai dengan serialisasi data formulir di Flutter menjadi JSON. Aplikasi Flutter menggunakan CookieRequest mengirim permintaan HTTP POST asinkron ke endpoint API Django. Di backend, view Django menerima request dan melakukan deserialisasi JSON menjadi dictionary Python untuk diproses. Setelah operasi database selesai, Django membuat JsonResponse yang berisi status operasi dan mengirimkannya kembali ke Flutter. Flutter menerima respons JSON, memprosesnya, dan memicu pembaruan UI secara efisien tanpa perlu page reload.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Mekanisme autentikasi dalam integrasi Flutter-Django adalah proses asinkron yang bergantung pada manajemen sesi via cookie. Ketika pengguna login atau register di Flutter, data kredensial diserialisasi ke JSON dan dikirim melalui HTTP POST menggunakan instance CookieRequest. Di sisi Django, view menerima request, mendeserialisasi JSON untuk memverifikasi kredensial. Jika autentikasi sukses, Django membuat sesi, mengirimkan cookie sesi baru dalam header respons. Flutter menerima cookie tersebut dan menyimpannya secara internal, memperbarui Provider. Kemudian memicu navigasi ke halaman utama dan menampilkan Toast sukses. Proses Logout bekerja sebaliknya yaitu Flutter mengirim request yang menghancurkan sesi di Django, dan Flutter menghapus cookie lokal serta mengarahkan pengguna kembali ke halaman Login.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
Saya membuat Model Kustom di Flutter yang merepresentasikan objek produk dari Django. Prosesnya dimulai dengan mengakses endpoint JSON produk saya di Django dan menyalin data mentah JSON tersebut. Data ini kemudian saya tempelkan ke Quicktype dan mengatur language menjadi Dart untuk menghasilkan class model.
- Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
Saya membuat RegisterPage di Flutter. Saya menggunakan CookieRequest untuk mengirimkan data username dan password yang diserialisasi menjadi JSON.
- Membuat halaman login pada proyek tugas Flutter.
Saya membuat LoginPage di Flutter. Halaman ini memiliki form input untuk kredensial. Form akan memanggil method request.login() dari CookieRequest.
- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Integrasi dilakukan melalui instance CookieRequest. Setelah Login, Django mengirimkan cookie sesi yang secara otomatis ditangkap dan disimpan oleh CookieRequest. Status login dikelola oleh Provider agar dapat diakses di seluruh aplikasi Flutter untuk menampilkan menu terautentikasi.
- Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
Saya membuat halaman ProductEntryListPage. Saya memanggil fungsi async yang melakukan HTTP GET request ke endpoint JSON. Hasilnya ditampilkan dalam bentuk daftar card.
- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Buat halaman ProductDetailPage. Di ProductEntryListPage tambahkan widget InkWell pada setiap card item. Gunakan Navigator.push() di handler onTap untuk menavigasi ke ProductDetailPage.
- Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
Pada ProductEntryListPage saya membuat filter. Ketika filter ini aktif, list produk yang sudah difetch akan difilter untuk menampilkan hanya item di mana atribut user_id produk cocok dengan user ID dari pengguna yang sedang login.