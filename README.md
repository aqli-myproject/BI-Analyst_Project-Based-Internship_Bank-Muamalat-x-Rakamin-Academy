# Background Project
Project ini merupakan tugas akhir program Virtual Internship Business Intelligence Analyst Bank Muamalat x Rakamin Academy.
Dengan mengimplementasikan proses pengolahan data dari awal hingga akhir (end to end).

Sebagai BI analyst PT Sejahtera Bersama, diberikan tugas untuk memberikan solusi atas beberapa case berikut ini:
- Menentukan primary key masing-masing tabel
- Menentukan relationship masing-masing tabel
- Membuat tabel master  yang berisi kolom berikut ini: CustomerEmail (cust_email); CustomerCity (cust_city); OrderDate (order_date); OrderQty (order_qty); ProductName (product_name); ProductPrice (product_price); ProductCategoryName (category_name); TotalSales (total_sales)
- Membuat visualisasi yang menampilkan data penjualan: Total keseluruhan sales; Total keseluruhan sales berdasarkan kategori produk; Total keseluruhan qty berdasarkan kategori produk; Total sales berdasarkan kota; Total qty berdasarkan kota; Top 5 kategori produk yang paling tinggi salesnya; Top 5 kategori produk yang paling tinggi qtynya
- Apa yang bisa anda usulkan untuk mempertahankan penjualan ataupun menaikkan penjualan dengan tabel transaksi detail yang sudah ada?

# Business Problem
PT Sejahtera Bersama, ingin mempertahankan dan meningkatkan revenue. namun berdasarkan data yang ada diketahui Total revenue tahun 2021 adalah 84,15 juta, namun terdapat tantangan penurunan YoY Growth Revenue sebesar -7,89% dibandingkan Tahun 2020.

# Objective
- Menganalisis tren revenue bulanan (MoM dan YoY) untuk mengidentifikasi pola pertumbuhan.
- Meningkatkan dan menstabilkan MoM Growth di atas 10% sehingga bisa berimplikasi pada pertumbuhan tahunan (YoY)
- Mengidentifikasi kategori produk atau kota dengan potensi revenue yang belum dioptimalkan.
- Ekspansi di Kota yang potensial meningkatkan kontribusi regional sebesar 15%
- Meningkatkan Average Order Value (AOV) dan revenue bulanan.
- Meningkatkan AOV menjadi IDR 60 ribu dari sebelumnya di kisaran 52-53 ribu

# Tools
- Google Big Query : Query master table
- MySQL : ERD Diagram relational
- Looke Studio : Data Visualization & Dashboard

# Create Master Table
- Membuat Master Table yang digunakan untuk analisis revenue
[Big_Query Link](https://console.cloud.google.com/bigquery?sq=762122809489:a81ce80aed1c48908473452bee6a8bbd)

# ERD (Relationship Diagram)
![ERD diagram relational.png](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/d9e9fa973392c3a6e31d7968430d8447eaad48fa/ERD%20diagram%20relational.png)

Penjelasan Relasi antar tabel:
- Product - ProductCategory: One-to-Many
  - Satu kategori bisa memiliki banyak produk
  - Satu produk hanya bisa memiliki satu kategori
- Orders - Product: Many-to-One
  - Satu produk bisa muncul di banyak order
  - Satu record order hanya untuk satu produk
- Orders - Customers: Many-to-One
  - Satu pelanggan bisa memiliki banyak order
  - Satu order hanya dimiliki oleh satu pelanggan

# Result Master Table
![Master Table](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/master/diagram%20analysis%20pbi%20bank%20muamalat%20x%20rakamin/result%20query%20master%20table.png)

Untuk detail fitur kolom yang telah ditambahkan ke dalam master table, bisa klik link berikut ini:
[master table sales performance.csv](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/master/master%20table%20sales%20performance.csv)

# Dashbord Sales Performance
User (Stakeholder):
- Manager penjualan

Dashboard ini akan membantu stakeholder:
- Memonitor performa bisnis secara real-time
- Mengidentifikasi area yang perlu perhatian
- Membuat keputusan berbasis data
- Merencanakan strategi ke depan

Alasan pemilihan metrics ini:
- Memberikan overview bisnis sesuai kebutuhan meliputi Revenue, YoY Growth, AOV, Total Order, Total Quantity, Total Customer
- Mudah dimengerti level manajemen penjualan
- Actionable untuk pengambilan keputusan

![Dashboard Sales Performance](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/master/dashboard%20sales%20performance%20pbi%20final.png)

# Analysis Insight
### Monthly Sales Trends
![Monthly Sales](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/master/diagram%20analysis%20pbi%20bank%20muamalat%20x%20rakamin/monthly%20sales%20trends.png)

Seasonal Trends:
- Penjualan 2020 cenderung lebih tinggi dibanding 2021, kecuali April-Juni.
- Perbedaan terbesar di November, 2020 sekitar 7,3 juta vs 2021 hanya 6,2 juta.
- Tren 2021 lebih stabil dengan variasi bulanan yang lebih kecil dibanding 2020.
- Pola musiman serupa, penjualan puncak di tengah tahun, turun di akhir tahun.

Sales Pattern Issues:
- Penurunan penjualan bulanan di 2021 secara dominan ada 10 bulan yang dibawah revenue di 2020.
- Hal tersebut kemungkinan berdampak pada penurunan KPI secara keseluruhan, seperti revenue, total order, AOV, total quantity, dan total customer.
- Perlu analisis lebih lanjut untuk mengidentifikasi faktor-faktor lain yang menyebabkan penurunan.

### YoY & MoM Growth
![YoY & MoM Growth](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/master/diagram%20analysis%20pbi%20bank%20muamalat%20x%20rakamin/YoY%20%26%20MoM.png)

YoY Growth 2020-2021 Trends:
- Penurunan terbesar terjadi pada bulan Juli 2020 (-25.66%), diikuti oleh Oktober (-29.40%).
- Peningkatan signifikan hanya terlihat di bulan Juni 2021 (+48.37%), yang menunjukkan adanya inisiatif atau momen spesifik yang berhasil meningkatkan revenue.
- Sebagian besar bulan menunjukkan tren negatif YoY di 2020 dan 2021, yang mengindikasikan pertumbuhan revenue perusahaan stagnan atau menurun dibandingkan tahun sebelumnya.
- Pada bulan Desember 2021 (-0.53%), penurunan hampir mendekati nol, yang mungkin mengindikasikan stabilisasi revenue setelah performa buruk selama tahun berjalan.

YoY Trends Issue:
- Ketergantungan pada event tertentu, seperti bulan Juni, yang tidak konsisten sepanjang tahun.
- Tidak ada strategi yang berhasil mengangkat performa YoY secara signifikan di bulan-bulan lainnya.
- Penurunan di bulan Oktober dan Juli perlu dianalisis lebih lanjut, seperti efektivitas promosi atau perubahan tren pasar.

MoM Growth 2020-2021 Trends:
- Pertumbuhan tertinggi tercatat di bulan Februari 2021 (+40%), diikuti Maret 2021 (+34%), yang mengindikasikan adanya kampanye atau strategi yang efektif pada awal tahun.
- Penurunan tajam terjadi di April 2021 (-41%) dan September 2020 (-34%), menunjukkan adanya masalah musiman atau kejenuhan pasar.
- MoM 2020 memiliki pertumbuhan yang lebih stabil di beberapa bulan (contoh: Juli 2020, +19%, dan September 2020, +18%) dibandingkan MoM 2021 yang lebih fluktuatif.
- Desember 2021 menunjukkan pertumbuhan positif +20% dibandingkan bulan sebelumnya, yang kemungkinan disebabkan oleh peningkatan permintaan akhir tahun.

MoM Trends Issue:
- Fluktusasi cukup tinggi terjadi / Tidak ada pola pertumbuhan yang konsisten sepanjang tahun.
- Penurunan tajam pada April 2021 dan September 2020 menjadi titik kritis yang perlu dievaluasi, sehingga perlu diidentifikasi apakah ada perubahan harga? atau kurangnya promosi pada bulan-bulan tersebut?

### Price vs Qty Correlation
![Price vs Qty Correlation](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/master/diagram%20analysis%20pbi%20bank%20muamalat%20x%20rakamin/price%20vs%20quantity%20correlation.png)

Price vs Qty Correlation Insight:
- Pola Distribusi Harga:
  - Mayoritas produk terkonsentrasi di rentang harga 0-30 rb
  - Beberapa produk premium di rentang 40-90 rb
  - Terdapat gap harga yang signifikan antara 30-40 rb
- Pola Kuantitas Penjualan:
  - Volume tertinggi (250-300 unit) terjadi pada produk dengan harga rendah
  - Produk premium (>40 rb) cenderung memiliki volume penjualan 150-200 unit
  - Tren umum: semakin tinggi harga, semakin rendah kuantitas (korelasi negatif)
- Segmentasi Produk:
  - Segmen Low-end (0-20 rb): Volume tinggi, kompetisi ketat
  - Segmen Mid-range (20-40 rb): Volume moderat
  - Segmen Premium (>40 rb): Volume rendah, margin tinggi

Price vs Qty Correlation Issue:
- Manajemen Harga:
  - Gap harga yang besar (30-40 rb) menunjukkan potensi missed opportunity
  - Terlalu banyak produk berkompetisi di segmen harga rendah
  - Kurangnya diferensiasi harga di beberapa segmen
- Volume Penjualan:
  - Ketergantungan tinggi pada volume besar di produk murah
  - Produk premium struggle mendapatkan volume yang signifikan
  - Beberapa produk dengan harga sama memiliki perbedaan volume yang besar
- Portfolio Management:
  - Terlalu banyak variasi produk di rentang harga rendah
  - Distribusi produk tidak merata di seluruh rentang harga
  - Potensi kanibalisasi antar produk di segmen yang sama

### Distribution Total Sales by City
![Geographic Distribution Map](https://github.com/aqli-myproject/BI-Analyst_Project-Based-Internship_Bank-Muamalat-x-Rakamin-Academy/blob/master/diagram%20analysis%20pbi%20bank%20muamalat%20x%20rakamin/sales%20distribution%20by%20city%202020-2021.png)

Peta Distribusi Total Sales by City:
- Konsentrasi Revenue di Amerika Serikat: Sebagian besar penjualan terpusat di Amerika Serikat, terutama di kota-kota seperti Washington, Houston, Sacramento, San Diego, Phoenix, dan Philadelphia. Dan Ukuran lingkaran pada mapping menunjukkan bahwa Washington dan Houston memiliki total revenue tertinggi dibandingkan kota lain.
- Distribusi Global yang Minim: Ada titik penjualan di Eropa (Inggris, Jerman, Prancis, Spanyol), Timur Tengah (Arab Saudi, Turki), serta Australia dan Amerika Selatan (Brasil, Argentina).
- Kota dengan Revenue Tinggi vs Kota dengan Revenue Rendah: Kota dengan Revenue Tinggi: Washington, Houston, Sacramento, San Diego, Phoenix. sedangkan Kota dengan Revenue Rendah: Albany, Springfield, Miami, Trenton, Madison, dan Louisville.

Peta Distribusi Total Sales by City Issue:
- Ketergantungan perusahaan pada pasar AS bisa menjadi risiko, terutama jika terjadi penurunan daya beli atau persaingan yang lebih ketat.
- Revenue dari luar AS terlihat sangat kecil dibandingkan pasar domestik.
- Potensi pasar global belum dimaksimalkan.
- Perusahaan mungkin menghadapi kendala ekspansi internasional, seperti logistik, regulasi, atau kurangnya strategi pemasaran global.
- Kota dengan revenue rendah mungkin memiliki permintaan yang kecil atau persaingan yang lebih tinggi.
- Perlu strategi untuk meningkatkan penjualan di kota-kota tersebut, seperti diskon, kampanye marketing lokal, atau penyesuaian produk dengan preferensi lokal.

Detail Analysis selainnya bisa dicek pada link berikut ini: [https://drive.google.com/file/d/139UUDn9NzPgXlblQZaO9p959QH2_gU60/view?usp=sharing]
