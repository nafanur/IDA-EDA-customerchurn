**TUJUAN:** untuk menganalisis faktor-faktor yang mempengaruhi pelanggan dalam memutuskan untuk berhenti atau tetap berlangganan layanan perusahaan. 
**Fokus:** pada retensi pelanggan dan mengurangi churn.

**Question:**
1.	Berapa % Pelanggan Churn dan pelanggan yang tetap menggunakan layanan aktif?
dari 5880 pelanggan, 49,3% diantaranya termasuk pelanggan churn, yaitu ada 2898 pelanggan dan 50,7% lainnya tetap menggunakan layanan aktif. 
2.	Apakah ada pola dalam Pelanggan Churn berdasarkan jenis kelamin?
Pelanggan Laki-laki lebih banyak churn (50,6%) dibandingkan Perempuan (49,4%).   
3.	Apakah ada pola/preferensi pada Pelanggan Churn berdasarkan jenis layanan internet yang diberikan? Dan Fitur mana yang paling menguntungkan? DCL atau FIBER
Pelanggan yg tdk mendapatkan internet lebih banyak churn (34,8%) daripada yg mendapatkan internet. Diantara DCL atau FIBER OPTIC, layanan internet yg paling menguntungkan adalah DSL, meskipun hanya berbanding tipis.  
4.	Apa jenis layanan yang paling menguntungkan?
- Layanan telepon: Dari 2898 pelanggan yang churn, 50,9 % adalah pelanggan tidak menggunakan layanan telepon. Layanan telepon memberikan nilai tambah bagi pelanggan.
- Beberapa jalur telepon: Dari 2898 pelanggan yang churn, 50,9 % adalah pelanggan tidak menggunakan layanan telepon. Namun, 25,2% adalah pelanggan churn yang memiliki beberapa jalur telepon. Maka, layanan ini kurang menguntungkan bagi pelanggan.
- OnlineSecurity: Dari 2898 pelanggan yang churn, 34,8% adalah pelanggan tidak mendapatkan layanan internet. Dan 33,2% adalah yang tidak mendapatkan online security. Layanan cyber online memberikan nilai tambah bagi pelanggan.
- OnlineBackup: Dari 2898 pelanggan yang churn, 34,8% adalah pelanggan tidak mendapatkan layanan internet. Dan 33,2% adalah yang tidak mendapatkan cadangan data. Layanan Cadangan data memberikan nilai tambah bagi pelanggan.
- Kontrak langganan: Dari 2898 pelanggan yang churn, 34,8% adalah pelanggan yang hanya berlangganan selama satu tahun.
- DeviceProtection: Dari 2898 pelanggan yang churn, 34,8% adalah pelanggan tidak mendapatkan layanan internet. Dan 33,3% adalah yang mendapatkan asuransi perbaikan perangkat (perlindungan device). Layanan perbaikan prangkat tidak memberikan nilai tambah bagi pelanggan.
- TechSupport: Dari 2898 pelanggan yang churn, 34,8% adalah pelanggan tidak mendapatkan layanan internet. 33,3% adalah pelanggan yang tidak mendapat dukungan teknis dan mengalami churn, ini lebih banyak dibandingkan yg mendapat dukungan teknis. Layanan dukungan teknis memberikan nilai tambah bagi pelanggan.
- StreamingTV: Dari 2898 customer churn, 34,8% diantaranya adalah customer tanpa layanan internet dan mengalami churn. 32,7% diantaranya adalah customer yg mendapat streaming tv, namun mengalami churn (tetap berhenti berlangganan).
- StreamingMovies: Dari 2898 customer churn, 34,8% diantaranya adalah customer tanpa layanan internet. 32,9% diantaranya adalah pelanggan tidak memiliki layanan streaming movies dan memutuskan untuk berhenti berlangganan.
- Jumlah total yang dibebankan kepada pelanggan: Ada 32 pelanggan yang telah berlangganan untuk jangka waktu yang lama dan membayar biaya langganan yang lebih tinggi setiap bulannya untuk layanan tertentu.

**Analisis Keuntungan Layanan**
- Layanan yang Menguntungkan: Layanan telepon (‘PhoneService’), keamanan online (‘OnlineSecurity’), cadangan data (‘OnlineBackup’), dan dukungan teknis (‘Tech Support’) menunjukkan nilai tambah yang signifikan bagi pelanggan dan membantu mengurangi churn. Terutama untuk layanan internet (‘Internet Service’), itu menjadi nilai tambah untuk pelanggan.
- Layanan yang Kurang Menguntungkan: Beberapa jalur telepon (‘MultipleLines’), perlindungan perangkat (‘DeviceProtection’), streaming TV, dan streaming film (‘streamingMovies’) tidak memberikan nilai tambah yang cukup kuat untuk mengurangi churn.

**Analisis Regresi Logistik Multiple Biner**
  
a. Dengan software R Studio 
- **Uji Parsial (Wald Test)**:
Hasil: Semua variabel memiliki p-value > 0,05, yang berarti **tidak ada variabel secara individual yang signifikan** dalam memprediksi churn.
- **Odds Ratio:**
Hasil: Tidak ada variabel dengan odds ratio yang signifikan secara statistik, mengindikasikan tidak ada variabel yang secara signifikan mempengaruhi peluang churn.
- Tidak Ada Faktor Dominan: Tidak ada faktor individu yang secara signifikan memprediksi churn pelanggan.
  Ini menunjukkan bahwa churn mungkin dipengaruhi oleh kombinasi kompleks dari berbagai faktor, atau ada faktor lain yang tidak termasuk dalam model yang lebih berpengaruh.
- Saran: Karena hasil yang tidak signifikan, **perlu mengeksplorasi model** lain atau pendekatan berbeda (misalnya, machine learning) untuk lebih memahami faktor-faktor yang mempengaruhi churn pelanggan.

b. Dengan Phyton:
1. **Akurasi (Accuracy)**:
   - **49%**: Model berhasil memprediksi churn dengan benar pada 49% dari semua sampel. Ini menunjukkan bahwa **model tidak terlalu akurat.**
2. **Presisi (Precision)**:
   - **Kelas 0 (Tidak Churn)**: 49%
     - Dari semua prediksi yang mengatakan pelanggan tidak churn, 49% dari prediksi tersebut benar.
   - **Kelas 1 (Churn)**: 48%
     - Dari semua prediksi yang mengatakan pelanggan akan churn, 48% dari prediksi tersebut benar.
3. **Recall (Daya Ingat)**:
   - **Kelas 0 (Tidak Churn)**: 63%
     - Dari semua pelanggan yang *sebenarnya tidak churn*, 63% berhasil diidentifikasi dengan benar oleh model.
   - **Kelas 1 (Churn)**: 34%
     - Dari semua pelanggan yang *sebenarnya churn*, hanya 34% yang berhasil diidentifikasi dengan benar oleh model.
4. **Kesimpulan:** Model saat ini memiliki kinerja yang kurang baik karena dengan akurasi hanya 49%.


