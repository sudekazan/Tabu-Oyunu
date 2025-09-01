import '../../kelimeler.dart';

// Bilim & Teknoloji Kategorisi
// Fizik, Kimya, Biyoloji, Matematik kavramları
const List<KelimeKarti> premiumBilimTeknoloji = [
  // FİZİK KAVRAMLARI
  KelimeKarti(kelime: 'Newton Yasaları', yasakliKelimeler: ['Yerçekimi', 'Hareket', 'Kütle', 'İvme', 'Fizik']),
  KelimeKarti(kelime: 'Einstein', yasakliKelimeler: ['Görecelik', 'Teori', 'Atom', 'Enerji', 'Fizikçi']),
  KelimeKarti(kelime: 'Elektrik Akımı', yasakliKelimeler: ['Voltaj', 'Amper', 'Direnç', 'Devre', 'Enerji']),
  KelimeKarti(kelime: 'Manyetizma', yasakliKelimeler: ['Mıknatıs', 'Kutuplar', 'Demir', 'Çekim', 'Alan']),
  KelimeKarti(kelime: 'Optik', yasakliKelimeler: ['Işık', 'Lens', 'Yansıma', 'Kırma', 'Görme']),
  KelimeKarti(kelime: 'Ses Dalgaları', yasakliKelimeler: ['Titreşim', 'Hız', 'Kulak', 'Frekans', 'Yayılma']),
  KelimeKarti(kelime: 'Kuvvet', yasakliKelimeler: ['Enerji', 'Hareket', 'Newton', 'Vektör', 'Çekim']),
  KelimeKarti(kelime: 'Enerji', yasakliKelimeler: ['Güneş', 'Elektrik', 'Hareket', 'Isı', 'Çevrim']),
  KelimeKarti(kelime: 'Atom', yasakliKelimeler: ['Çekirdek', 'Elektron', 'Proton', 'Nötron', 'Element']),
  KelimeKarti(kelime: 'Radyasyon', yasakliKelimeler: ['Işın', 'X', 'Kanser', 'Nükleer', 'Tehlike']),
  KelimeKarti(kelime: 'Kuantum', yasakliKelimeler: ['Fizik', 'Parçacık', 'Enerji', 'Dalg', 'Einstein']),
  KelimeKarti(kelime: 'Termodinamik', yasakliKelimeler: ['Isı', 'Enerji', 'Sıcaklık', 'Çevrim', 'Yasaları']),
  KelimeKarti(kelime: 'Yerçekimi', yasakliKelimeler: ['Newton', 'Dünya', 'Ay', 'Çekim', 'Kütle']),
  KelimeKarti(kelime: 'Hız', yasakliKelimeler: ['Zaman', 'Mesafe', 'Hareket', 'Ortalama', 'Ani']),
  KelimeKarti(kelime: 'İvme', yasakliKelimeler: ['Hız', 'Zaman', 'Kuvvet', 'Değişim', 'Vektör']),

  // KİMYA KAVRAMLARI
  KelimeKarti(kelime: 'Periyodik Cetvel', yasakliKelimeler: ['Element', 'Mendeleyev', 'Grup', 'Periyot', 'Atom']),
  KelimeKarti(kelime: 'Asit', yasakliKelimeler: ['Baz', 'pH', 'Sıcak', 'Reaksiyon', 'Yemek']),
  KelimeKarti(kelime: 'Baz', yasakliKelimeler: ['Asit', 'pH', 'Sabun', 'Çözelti', 'Alkalin']),
  KelimeKarti(kelime: 'Organik Kimya', yasakliKelimeler: ['Karbon', 'Bileşik', 'Yaşam', 'Zincir', 'Fonksiyonel']),
  KelimeKarti(kelime: 'Polimer', yasakliKelimeler: ['Plastik', 'Zincir', 'Tekrar', 'Molekül', 'Sentetik']),
  KelimeKarti(kelime: 'Katalizör', yasakliKelimeler: ['Hız', 'Reaksiyon', 'Değişmez', 'Enzim', 'Metal']),
  KelimeKarti(kelime: 'Çözelti', yasakliKelimeler: ['Sıvı', 'Çözünen', 'Çözücü', 'Konsantrasyon', 'Molarite']),
  KelimeKarti(kelime: 'Tuz', yasakliKelimeler: ['Kristal', 'Deniz', 'Yemek', 'Asit', 'Baz']),
  KelimeKarti(kelime: 'Gaz', yasakliKelimeler: ['Hava', 'Basınç', 'Hacim', 'Sıcaklık', 'Molekül']),
  KelimeKarti(kelime: 'Kristal', yasakliKelimeler: ['Tuz', 'Şeker', 'Yapı', 'Düzenli', 'Katı']),
  KelimeKarti(kelime: 'İyon', yasakliKelimeler: ['Yük', 'Elektron', 'Atom', 'Çözelti', 'Elektrolit']),
  KelimeKarti(kelime: 'Valans', yasakliKelimeler: ['Bağ', 'Elektron', 'Atom', 'Sayı', 'Kimyasal']),
  KelimeKarti(kelime: 'İzotop', yasakliKelimeler: ['Atom', 'Nötron', 'Ağırlık', 'Karbon', 'Radyoaktif']),
  KelimeKarti(kelime: 'Bileşik', yasakliKelimeler: ['Element', 'Molekül', 'Formül', 'Bağ', 'Reaksiyon']),
  KelimeKarti(kelime: 'Element', yasakliKelimeler: ['Atom', 'Periyodik', 'Temel', 'Maddeler', 'Sembol']),

  // BİYOLOJİ KAVRAMLARI
  KelimeKarti(kelime: 'Hücre', yasakliKelimeler: ['Yaşam', 'Çekirdek', 'Sitoplazma', 'Organik', 'Biyoloji']),
  KelimeKarti(kelime: 'DNA', yasakliKelimeler: ['Gen', 'Çift', 'Sarmal', 'Kalıtım', 'Biyoloji']),
  KelimeKarti(kelime: 'RNA', yasakliKelimeler: ['DNA', 'Mesaj', 'Protein', 'Tek', 'Sarmal']),
  KelimeKarti(kelime: 'Mitokondri', yasakliKelimeler: ['Enerji', 'Hücre', 'ATP', 'Solunum', 'Güç']),
  KelimeKarti(kelime: 'Kloroplast', yasakliKelimeler: ['Yeşil', 'Bitki', 'Fotosentez', 'Işık', 'Enerji']),
  KelimeKarti(kelime: 'Enzim', yasakliKelimeler: ['Protein', 'Katalizör', 'Hız', 'Reaksiyon', 'Biyokimyasal']),
  KelimeKarti(kelime: 'Viral', yasakliKelimeler: ['Virüs', 'Hastalik', 'Bulaşıcı', 'Mikrop', 'DNA']),
  KelimeKarti(kelime: 'Bakteri', yasakliKelimeler: ['Mikrop', 'Tek', 'Hücre', 'Antibiyotik', 'Enfeksiyon']),
  KelimeKarti(kelime: 'Virüs', yasakliKelimeler: ['Hastalik', 'Bulaşıcı', 'Mikrop', 'DNA', 'RNA']),
  KelimeKarti(kelime: 'İmmunite', yasakliKelimeler: ['Savunma', 'Antikor', 'Hastalik', 'Aşı', 'Hücre']),
  KelimeKarti(kelime: 'Antikor', yasakliKelimeler: ['Savunma', 'Virüs', 'Hastalik', 'Protein', 'Aşı']),
  KelimeKarti(kelime: 'Fotosentez', yasakliKelimeler: ['Bitki', 'Işık', 'Enerji', 'Klorofil', 'Oksijen']),
  KelimeKarti(kelime: 'Solunum', yasakliKelimeler: ['Oksijen', 'Karbon', 'Diyoksit', 'Enerji', 'ATP']),
  KelimeKarti(kelime: 'Sindirim', yasakliKelimeler: ['Yemek', 'Mide', 'Enzim', 'Nutrient', 'Sistem']),
  KelimeKarti(kelime: 'Dolaşım', yasakliKelimeler: ['Kan', 'Kalp', 'Damar', 'Oksijen', 'Sistem']),

  // MATEMATİK KAVRAMLARI
  KelimeKarti(kelime: 'Pisagor', yasakliKelimeler: ['Teorem', 'Üçgen', 'Hipotenüs', 'Karenin', 'Karekök']),
  KelimeKarti(kelime: 'Integral', yasakliKelimeler: ['Alan', 'Türev', 'Hesaplama', 'Limit', 'Matematik']),
  KelimeKarti(kelime: 'Türev', yasakliKelimeler: ['Değişim', 'Hız', 'Fonksiyon', 'Limit', 'Matematik']),
  KelimeKarti(kelime: 'Vektör', yasakliKelimeler: ['Yön', 'Büyüklük', 'İki', 'Boyut', 'Ok']),
  KelimeKarti(kelime: 'Matris', yasakliKelimeler: ['Satır', 'Sütun', 'Dizi', 'Çarpma', 'Lineer']),
  KelimeKarti(kelime: 'Olasılık', yasakliKelimeler: ['Şans', 'İhtimal', 'İstatistik', 'Olay', 'Yüzde']),
  KelimeKarti(kelime: 'İstatistik', yasakliKelimeler: ['Ortalama', 'Standart', 'Sapma', 'Veri', 'Grafik']),
  KelimeKarti(kelime: 'Geometri', yasakliKelimeler: ['Şekil', 'Üçgen', 'Çember', 'Alan', 'Hacim']),
  KelimeKarti(kelime: 'Trigonometri', yasakliKelimeler: ['Sinüs', 'Kosinüs', 'Açı', 'Üçgen', 'Hesaplama']),
  KelimeKarti(kelime: 'Logaritma', yasakliKelimeler: ['Üs', 'Hesaplama', 'Sayi', 'Doğal', 'Matematik']),
  KelimeKarti(kelime: 'Kombinasyon', yasakliKelimeler: ['Permütasyon', 'Seçim', 'Sıra', 'Olasılık', 'Hesaplama']),
  KelimeKarti(kelime: 'Permütasyon', yasakliKelimeler: ['Kombinasyon', 'Sıra', 'Düzen', 'Olasılık', 'Hesaplama']),
  KelimeKarti(kelime: 'Karekök', yasakliKelimeler: ['Pisagor', 'Karenin', 'Sayi', 'Matematik', 'Hesaplama']),
  KelimeKarti(kelime: 'Pi Sayısı', yasakliKelimeler: ['Çember', 'Alan', 'Yarıçap', 'İrrasyonel', 'Matematik']),
  KelimeKarti(kelime: 'Fibonacci', yasakliKelimeler: ['Seri', 'Altın', 'Oran', 'Sayi', 'Dizi']),

  // MODERN TEKNOLOJİ
  KelimeKarti(kelime: 'Yapay Zeka', yasakliKelimeler: ['Makine', 'Öğrenme', 'Robot', 'Algoritma', 'Veri']),
  KelimeKarti(kelime: 'Makine Öğrenmesi', yasakliKelimeler: ['Veri', 'Algoritma', 'Tahmin', 'Model', 'AI']),
  KelimeKarti(kelime: 'Büyük Veri', yasakliKelimeler: ['Analytics', 'Veri', 'Bilgi', 'Analiz', 'Saklama']),
  KelimeKarti(kelime: 'Blockchain', yasakliKelimeler: ['Kripto', 'Zincir', 'Blok', 'Bitcoin', 'Güvenlik']),
  KelimeKarti(kelime: 'Bulut Bilişim', yasakliKelimeler: ['Sunucu', 'İnternet', 'Veri', 'Saklama', 'Erişim']),
  KelimeKarti(kelime: 'İnternet', yasakliKelimeler: ['Ağ', 'Web', 'İletişim', 'Dünya', 'Bilgi']),
  KelimeKarti(kelime: 'Robotik', yasakliKelimeler: ['Robot', 'Makine', 'Otomasyon', 'Sensör', 'Kol']),
  KelimeKarti(kelime: 'Nanoteknoloji', yasakliKelimeler: ['Nano', 'Küçük', 'Teknoloji', 'Atom', 'Malzeme']),
  KelimeKarti(kelime: 'Biyoteknoloji', yasakliKelimeler: ['Biyoloji', 'Genetik', 'Mühendislik', 'DNA', 'Hücre']),
  KelimeKarti(kelime: 'Nörobilim', yasakliKelimeler: ['Beyin', 'Sinir', 'Nöron', 'Düşünme', 'Bilim']),

  // EK BİLİM KAVRAMLARI
  KelimeKarti(kelime: 'Evrim', yasakliKelimeler: ['Darwin', 'Tür', 'Değişim', 'Zaman', 'Uyum']),
  KelimeKarti(kelime: 'Genetik', yasakliKelimeler: ['DNA', 'Kalıtım', 'Gen', 'Hücre', 'Mendel']),
  KelimeKarti(kelime: 'Ekoloji', yasakliKelimeler: ['Çevre', 'Yaşam', 'Denge', 'Doğa', 'Sistem']),
  KelimeKarti(kelime: 'Jeoloji', yasakliKelimeler: ['Yer', 'Kaya', 'Zemin', 'Volkan', 'Deprem']),
  KelimeKarti(kelime: 'Astronomi', yasakliKelimeler: ['Yıldız', 'Gezegen', 'Uzay', 'Gök', 'Teleskop']),
  KelimeKarti(kelime: 'Mikrobiyoloji', yasakliKelimeler: ['Mikrop', 'Bakteri', 'Virüs', 'Mikroskop', 'Kültür']),
  KelimeKarti(kelime: 'Nöroloji', yasakliKelimeler: ['Beyin', 'Sinir', 'Doktor', 'Hastalik', 'Tedavi']),
  KelimeKarti(kelime: 'Psikoloji', yasakliKelimeler: ['Zihin', 'Düşünce', 'Davranış', 'Beyin', 'Bilim']),
  KelimeKarti(kelime: 'Antropoloji', yasakliKelimeler: ['İnsan', 'Kültür', 'Tarih', 'Uygarlık', 'İnsanoğlu']),
  KelimeKarti(kelime: 'Sosyoloji', yasakliKelimeler: ['Toplum', 'İnsan', 'Grup', 'Davranış', 'Kurum']),

  // MATEMATİK İLERİ KAVRAMLAR
  KelimeKarti(kelime: 'Kartezyen', yasakliKelimeler: ['Koordinat', 'Düzlem', 'X', 'Y', 'Grafik']),
  KelimeKarti(kelime: 'Fonksiyon', yasakliKelimeler: ['Grafik', 'Değişken', 'Bağımlı', 'Bağımsız', 'Kural']),
  KelimeKarti(kelime: 'Limit', yasakliKelimeler: ['Yaklaşım', 'Sonsuz', 'Değer', 'Yakın', 'Matematik']),
  KelimeKarti(kelime: 'Sonsuzluk', yasakliKelimeler: ['Sonsuz', 'Limit', 'Matematik', 'Büyük', 'Küçük']),
  KelimeKarti(kelime: 'Kümeler', yasakliKelimeler: ['Eleman', 'Alt', 'Kesişim', 'Birleşim', 'Teori']),

  // FİZİK İLERİ KAVRAMLAR
  KelimeKarti(kelime: 'Kara Delik', yasakliKelimeler: ['Uzay', 'Çekim', 'Kütle', 'Horizon', 'Einstein']),
  KelimeKarti(kelime: 'Gözlemci', yasakliKelimeler: ['Görecelik', 'Einstein', 'Hız', 'Zaman', 'Uzay']),
  KelimeKarti(kelime: 'String Teorisi', yasakliKelimeler: ['Uzay', 'Zaman', 'Parçacık', 'Birleştirme', 'Fizik']),

  // KİMYA İLERİ KAVRAMLARI
  KelimeKarti(kelime: 'Kromatografi', yasakliKelimeler: ['Ayırma', 'Bileşik', 'Laboratuvar', 'Gaz', 'Sıvı']),
  KelimeKarti(kelime: 'Spektroskopi', yasakliKelimeler: ['Analiz', 'Işık', 'Element', 'Dalga', 'Boyu']),

  // BİYOLOJİ İLERİ KAVRAMLARI
  KelimeKarti(kelime: 'Nörotransmitter', yasakliKelimeler: ['Beyin', 'Sinir', 'İletişim', 'Kimyasal', 'Mesaj']),
  KelimeKarti(kelime: 'Stem Hücre', yasakliKelimeler: ['Ana', 'Biyoloji', 'Tedavi', 'Yenilenme', 'Potansiyel']),

  // TEKNOLOJİ GELİŞMELERİ
  KelimeKarti(kelime: '5G', yasakliKelimeler: ['İnternet', 'Hızlı', 'Mobil', 'Veri', 'Teknoloji']),
  KelimeKarti(kelime: 'CRISPR', yasakliKelimeler: ['Gen', 'Düzenleme', 'DNA', 'Biyoteknoloji', 'Makas']),
  KelimeKarti(kelime: 'Drone', yasakliKelimeler: ['İnsansız', 'Uçak', 'Kamera', 'Teknoloji', 'Hava']),
  KelimeKarti(kelime: 'VR', yasakliKelimeler: ['Sanal', 'Gerçeklik', 'Gözlük', '3D', 'Deneyim']),
  KelimeKarti(kelime: 'AR', yasakliKelimeler: ['Artırılmış', 'Gerçeklik', 'Uygulama', 'Ekran', 'Teknoloji']),

  // YENİ TEKNOLOJİLER
  KelimeKarti(kelime: 'NFT', yasakliKelimeler: ['Dijital', 'Sanat', 'Blockchain', 'Koleksiyon', 'Kripto']),
  KelimeKarti(kelime: 'Metaverse', yasakliKelimeler: ['Sanal', 'Dünya', 'VR', 'Facebook', 'Gelecek']),
  KelimeKarti(kelime: 'Kuantum Bilgisayar', yasakliKelimeler: ['Hızlı', 'Kuantum', 'Gelecek', 'Şifreleme', 'Güçlü']),
  KelimeKarti(kelime: 'Yapay Sinir Ağları', yasakliKelimeler: ['Beyin', 'Makine', 'Öğrenme', 'Veri', 'Algoritma']),
  KelimeKarti(kelime: 'Deep Learning', yasakliKelimeler: ['Derin', 'Öğrenme', 'AI', 'Veri', 'Model']),
  KelimeKarti(kelime: 'Biyometrik', yasakliKelimeler: ['Parmak', 'İzi', 'Yüz', 'Tanima', 'Güvenlik']),
  KelimeKarti(kelime: 'İnternet of Things', yasakliKelimeler: ['IoT', 'Nesneler', 'Bağlı', 'Akıllı', 'Sensör']),
  KelimeKarti(kelime: '3D Yazıcı', yasakliKelimeler: ['Baskı', 'Katman', 'Malzeme', 'Teknoloji', 'İmalat']),
  KelimeKarti(kelime: 'Sistem Çipi', yasakliKelimeler: ['Apple', 'M1', 'Bilgisayar', 'Hızlı', 'Enerji']),
  KelimeKarti(kelime: '5G Ağ', yasakliKelimeler: ['Hızlı', 'İnternet', 'Mobil', 'Veri', 'Yeni']),

  // YAZILIM VE PROGRAMLAMA
  KelimeKarti(kelime: 'Python', yasakliKelimeler: ['Programlama', 'Kolay', 'Veri', 'Bilim', 'Kod']),
  KelimeKarti(kelime: 'JavaScript', yasakliKelimeler: ['Web', 'Tarayıcı', 'Dinamik', 'Frontend', 'Kod']),
  KelimeKarti(kelime: 'Machine Learning', yasakliKelimeler: ['Makine', 'Öğrenme', 'Veri', 'Algoritma', 'AI']),
  KelimeKarti(kelime: 'Cloud Computing', yasakliKelimeler: ['Bulut', 'Sunucu', 'Veri', 'İnternet', 'Saklama']),
  KelimeKarti(kelime: 'Big Data', yasakliKelimeler: ['Büyük', 'Veri', 'Analiz', 'Bilgi', 'İşleme']),
  KelimeKarti(kelime: 'DevOps', yasakliKelimeler: ['Geliştirme', 'İşletme', 'Otomasyon', 'Kod', 'Dağıtım']),
  KelimeKarti(kelime: 'Git', yasakliKelimeler: ['Versiyon', 'Kontrol', 'Kod', 'Depo', 'GitHub']),
  KelimeKarti(kelime: 'Docker', yasakliKelimeler: ['Konteyner', 'Uygulama', 'Taşınabilir', 'Bulut', 'İzolasyon']),
  KelimeKarti(kelime: 'Kubernetes', yasakliKelimeler: ['Konteyner', 'Orkestrasyon', 'Google', 'Bulut', 'Otomasyon']),
  KelimeKarti(kelime: 'API', yasakliKelimeler: ['Arayüz', 'Uygulama', 'Veri', 'İletişim', 'Protokol']),

  // FİZİK YENİ KAVRAMLAR
  KelimeKarti(kelime: 'Higgs Bozonu', yasakliKelimeler: ['Tanrı', 'Parçacık', 'Fizik', 'LHC', 'Kütle']),
  KelimeKarti(kelime: 'Kütle Çekim Dalgaları', yasakliKelimeler: ['Einstein', 'Uzay', 'Zaman', 'Dalgalar', 'Dedektör']),
  KelimeKarti(kelime: 'Süperiletkenlik', yasakliKelimeler: ['Sıcaklık', 'Elektrik', 'Direnç', 'Manyetik', 'Soğuk']),
  KelimeKarti(kelime: 'Plazma', yasakliKelimeler: ['Dördüncü', 'Hal', 'Sıcak', 'Yıldız', 'Fizik']),
  KelimeKarti(kelime: 'Foton', yasakliKelimeler: ['Işık', 'Parçacık', 'Dalga', 'Enerji', 'Kuantum']),
  KelimeKarti(kelime: 'Nötrino', yasakliKelimeler: ['Parçacık', 'Kütle', 'Hız', 'Güneş', 'Dedektör']),
  KelimeKarti(kelime: 'Kozmik Mikrodalga Arka Plan', yasakliKelimeler: ['Büyük', 'Patlama', 'Evren', 'Işınım', 'COBE']),

  // KİMYA YENİ KAVRAMLAR
  KelimeKarti(kelime: 'Nanokimya', yasakliKelimeler: ['Nano', 'Çok', 'Küçük', 'Malzeme', 'Teknoloji']),
  KelimeKarti(kelime: 'Yeşil Kimya', yasakliKelimeler: ['Çevre', 'Dostu', 'Sürdürülebilir', 'Temiz', 'Proses']),
  KelimeKarti(kelime: 'Supramoleküler Kimya', yasakliKelimeler: ['Büyük', 'Molekül', 'Yapı', 'Kendiliğinden', 'Düzenlenme']),
  KelimeKarti(kelime: 'Fotokimya', yasakliKelimeler: ['Işık', 'Kimyasal', 'Reaksiyon', 'Enerji', 'Aktivasyon']),
  KelimeKarti(kelime: 'Elektrokimya', yasakliKelimeler: ['Elektrik', 'Kimyasal', 'Reaksiyon', 'Pil', 'Korozyon']),
  KelimeKarti(kelime: 'Radyokimya', yasakliKelimeler: ['Radyasyon', 'Çekirdek', 'Reaksiyon', 'Radyoaktif', 'İzotop']),

  // BİYOLOJİ YENİ KAVRAMLAR
  KelimeKarti(kelime: 'Genom İkizleme', yasakliKelimeler: ['CRISPR', 'Düzenleme', 'DNA', 'Gen', 'Tedavi']),
  KelimeKarti(kelime: 'Mikrobiyom', yasakliKelimeler: ['Mikroorganizma', 'Bakteri', 'Vücut', 'Sağlık', 'Denge']),
  KelimeKarti(kelime: 'Epigenetik', yasakliKelimeler: ['Gen', 'Düzenleme', 'Çevre', 'Kalıtım', 'DNA']),
  KelimeKarti(kelime: 'Sistem Biyolojisi', yasakliKelimeler: ['Sistem', 'Ağ', 'Biyoloji', 'Matematik', 'Model']),
  KelimeKarti(kelime: 'Sentetik Biyoloji', yasakliKelimeler: ['Yapay', 'Yaşam', 'Genetik', 'Mühendislik', 'Yeni']),
  KelimeKarti(kelime: 'Biyoinformatik', yasakliKelimeler: ['Biyoloji', 'Bilgisayar', 'Veri', 'Genom', 'Analiz']),

  // ÇEVRE BİLİMİ
  KelimeKarti(kelime: 'Küresel Isınma', yasakliKelimeler: ['Sıcaklık', 'CO2', 'İklim', 'Değişim', 'Dünya']),
  KelimeKarti(kelime: 'Karbon Ayak İzi', yasakliKelimeler: ['CO2', 'İz', 'Çevre', 'Etkisi', 'Küresel']),
  KelimeKarti(kelime: 'Sürdürülebilirlik', yasakliKelimeler: ['Çevre', 'Gelecek', 'Kaynak', 'Koruma', 'Denge']),
  KelimeKarti(kelime: 'Biyoçeşitlilik', yasakliKelimeler: ['Yaşam', 'Çeşit', 'Tür', 'Doğa', 'Koruma']),
  KelimeKarti(kelime: 'Okyanus Asitlenmesi', yasakliKelimeler: ['CO2', 'Deniz', 'Kireçlenme', 'Balık', 'Mercan']),

  // ASTRONOMİ YENİ KAVRAMLAR
  KelimeKarti(kelime: 'Kara Delik', yasakliKelimeler: ['Yıldız', 'Kütle', 'Çekim', 'Horizon', 'Olay']),
  KelimeKarti(kelime: 'Nötron Yıldızı', yasakliKelimeler: ['Yıldız', 'Çökmüş', 'Manyetik', 'Radyasyon', 'Pulsar']),
  KelimeKarti(kelime: 'Kırmızı Devi', yasakliKelimeler: ['Yıldız', 'Evolüsyon', 'Güneş', 'Genişleme', 'Soğuma']),
  KelimeKarti(kelime: 'Süpernova', yasakliKelimeler: ['Yıldız', 'Patlama', 'Ölüm', 'Element', 'Enerji']),
  KelimeKarti(kelime: 'Gökada', yasakliKelimeler: ['Yıldız', 'Sistem', 'Samanyolu', 'Evren', 'Sarmal']),
  KelimeKarti(kelime: 'Karanlık Madde', yasakliKelimeler: ['Görünmez', 'Kütle', 'Çekim', 'Evren', 'Teori']),
  KelimeKarti(kelime: 'Karanlık Enerji', yasakliKelimeler: ['Genişleme', 'Evren', 'Hızlanma', 'Teori', 'Gizemli']),

  // ROBOTİK VE OTOMASYON
  KelimeKarti(kelime: 'Endüstriyel Robot', yasakliKelimeler: ['Fabrika', 'Otomasyon', 'Kol', 'Montaj', 'Verimlilik']),
  KelimeKarti(kelime: 'Hizmet Robotu', yasakliKelimeler: ['İnsana', 'Yardım', 'Temizlik', 'Bakım', 'Asistan']),
  KelimeKarti(kelime: 'Otonom Araç', yasakliKelimeler: ['Kendiliğinden', 'Sürüş', 'Sensör', 'AI', 'Güvenlik']),
  KelimeKarti(kelime: 'Kolaboratif Robot', yasakliKelimeler: ['İnsan', 'Çalışma', 'Güvenli', 'Cobots', 'Fabrika']),
  KelimeKarti(kelime: 'Soft Robotik', yasakliKelimeler: ['Esnek', 'Malzeme', 'Doğal', 'Hareket', 'Güvenlik']),

  // BİLGİSAYAR BİLİMİ
  KelimeKarti(kelime: 'Algoritma', yasakliKelimeler: ['Adım', 'Çözüm', 'Veri', 'İşlem', 'Program']),
  KelimeKarti(kelime: 'Veri Yapısı', yasakliKelimeler: ['Dizi', 'Liste', 'Ağaç', 'Graf', 'Veri']),
  KelimeKarti(kelime: 'Nesne Yönelimli', yasakliKelimeler: ['OOP', 'Sınıf', 'Nesne', 'Kalıtım', 'Programlama']),
  KelimeKarti(kelime: 'Veritabanı', yasakliKelimeler: ['Veri', 'Saklama', 'Tablo', 'SQL', 'Yönetim']),
  KelimeKarti(kelime: 'Şifreleme', yasakliKelimeler: ['Güvenlik', 'Veri', 'Anahtar', 'Kripto', 'Koruma']),
  KelimeKarti(kelime: 'Ağ Güvenliği', yasakliKelimeler: ['Firewall', 'Virüs', 'Saldırı', 'Koruma', 'İnternet']),
  KelimeKarti(kelime: 'Bulut Güvenliği', yasakliKelimeler: ['Veri', 'Koruma', 'Erişim', 'Şifreleme', 'Bulut']),

  // TIBBİ TEKNOLOJİ
  KelimeKarti(kelime: 'MR Görüntüleme', yasakliKelimeler: ['Manyetik', 'Rezonans', 'Tanı', 'Görüntü', 'Vücut']),
  KelimeKarti(kelime: 'CT Tarayıcı', yasakliKelimeler: ['Bilgisayarlı', 'Tomografi', 'X-Işın', '3D', 'Tanı']),
  KelimeKarti(kelime: 'Ultrason', yasakliKelimeler: ['Ses', 'Dalga', 'Görüntü', 'Bebek', 'Tanı']),
  KelimeKarti(kelime: 'PET Tarayıcı', yasakliKelimeler: ['Pozitron', 'Emisyon', 'Tomografi', 'Beyin', 'Kanser']),
  KelimeKarti(kelime: 'Genetik Test', yasakliKelimeler: ['DNA', 'Hastalik', 'Tanı', 'Risk', 'Kalıtım']),
  KelimeKarti(kelime: 'Nanobot', yasakliKelimeler: ['Nano', 'Robot', 'Tedavi', 'Vücut', 'İçinde']),
  KelimeKarti(kelime: '3D Biyoyazıcı', yasakliKelimeler: ['Dok', 'Yazma', 'Organ', 'Biyoloji', 'Tıp']),

  // ENERJİ TEKNOLOJİLERİ
  KelimeKarti(kelime: 'Güneş Paneli', yasakliKelimeler: ['Fotovoltaik', 'Güneş', 'Enerji', 'Yeşil', 'Elektrik']),
  KelimeKarti(kelime: 'Rüzgar Türbini', yasakliKelimeler: ['Rüzgar', 'Enerji', 'Çiftlik', 'Elektrik', 'Dönme']),
  KelimeKarti(kelime: 'Pil Teknolojisi', yasakliKelimeler: ['Lityum', 'İyon', 'Şarj', 'Enerji', 'Saklama']),
  KelimeKarti(kelime: 'Nükleer Füzyon', yasakliKelimeler: ['Güneş', 'Enerji', 'Çekirdek', 'Sıcak', 'Güvenli']),
  KelimeKarti(kelime: 'Hidrojen Yakıt', yasakliKelimeler: ['Yeşil', 'Enerji', 'Araba', 'Çevre', 'Temiz']),
  KelimeKarti(kelime: 'Akıllı Şebeke', yasakliKelimeler: ['Elektrik', 'Ağ', 'Akıllı', 'Verim', 'Dağıtım']),
];

List<KelimeKarti> karisikBilimTeknoloji() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumBilimTeknoloji);
  kopya.shuffle();
  return kopya;
}
