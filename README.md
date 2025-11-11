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