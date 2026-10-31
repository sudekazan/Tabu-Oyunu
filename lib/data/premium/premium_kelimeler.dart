import '../kelimeler.dart';
import 'kategoriler/index.dart';

// Orta seviye premium kelimeler - zor ama çok kolay olmayan
const List<KelimeKarti> ortaSeviyePremiumKelimeler = [
  // Bilim ve Teknoloji
  KelimeKarti(kelime: 'Kuantum Bilimi', yasakliKelimeler: ['Fizik', 'Parçacık', 'Enerji', 'Atom', 'Küçük']),
  KelimeKarti(kelime: 'Yapay Zekâ', yasakliKelimeler: ['Bilgisayar', 'Akıllı', 'Makine', 'Algoritma', 'Otomasyon']),
  KelimeKarti(kelime: 'Gökbilim', yasakliKelimeler: ['Yıldız', 'Gezegen', 'Uzay', 'Teleskop', 'Evren']),
  KelimeKarti(kelime: 'Klimatoloji', yasakliKelimeler: ['İklim', 'Hava', 'Sıcaklık', 'Yağış', 'Dünya']),
  KelimeKarti(kelime: 'Genetik Mühendisliği', yasakliKelimeler: ['DNA', 'Gen', 'Modifikasyon', 'Bitki', 'Sağlık']),

  // Tarih ve Kültür
  KelimeKarti(kelime: 'Aydınlanma Çağı', yasakliKelimeler: ['Akıl', 'Bilim', '18', 'Voltaire', 'Felsefe']),
  KelimeKarti(kelime: 'Sömürgecilik', yasakliKelimeler: ['Koloni', 'Avrupa', 'Afrika', 'Asya', 'İmparatorluk']),
  KelimeKarti(kelime: 'Kadın Hakları', yasakliKelimeler: ['Oy', 'Eşitlik', 'Seçim', 'Feminizm', 'Hak']),
  KelimeKarti(kelime: 'Uygarlık', yasakliKelimeler: ['Toplum', 'Kültür', 'Teknoloji', 'Şehir', 'Gelişme']),
  KelimeKarti(kelime: 'İmparatorluk', yasakliKelimeler: ['Hükümdar', 'Toprak', 'Geniş', 'Yönetim', 'Güç']),

  // Spor ve Sağlık
  KelimeKarti(kelime: 'Fizyoterapi', yasakliKelimeler: ['Tedavi', 'Hareket', 'Ağrı', 'Rehabilitasyon', 'Sağlık']),
  KelimeKarti(kelime: 'Beslenme Bilimi', yasakliKelimeler: ['Yiyecek', 'Vitamin', 'Sağlık', 'Diyet', 'Besin']),
  KelimeKarti(kelime: 'Kardiyoloji', yasakliKelimeler: ['Kalp', 'Doktor', 'Hastalık', 'Tedavi', 'Kanın']),
  KelimeKarti(kelime: 'İmmünoloji', yasakliKelimeler: ['Bağışıklık', 'Antikor', 'Virüs', 'Savunma', 'Sağlık']),
  KelimeKarti(kelime: 'Endokrinoloji', yasakliKelimeler: ['Hormon', 'Bez', 'Tiroid', 'Şeker', 'Doktor']),
  KelimeKarti(kelime: 'Diyetisyen', yasakliKelimeler: ['Beslenme', 'Sağlık', 'Yiyecek', 'Kilo', 'Uzman']),
  KelimeKarti(kelime: 'Maraton', yasakliKelimeler: ['Koşu', '42', 'Kilometre', 'Uzun', 'Dayanıklılık']),
  KelimeKarti(kelime: 'Triatlon', yasakliKelimeler: ['Yüzme', 'Bisiklet', 'Koşu', 'Üç', 'Spor']),

  // Sanat ve Müzik
  KelimeKarti(kelime: 'İmpressionizm', yasakliKelimeler: ['Sanat', 'Renk', 'Işık', 'Hızlı', 'Fırça']),
  KelimeKarti(kelime: 'Kübizm', yasakliKelimeler: ['Sanat', 'Şekil', 'Açı', 'Picasso', 'Modern']),
  KelimeKarti(kelime: 'Opera', yasakliKelimeler: ['Müzik', 'Sahne', 'Şarkı', 'Gösteri', 'İtalyan']),
  KelimeKarti(kelime: 'Senfoni', yasakliKelimeler: ['Müzik', 'Orkestra', 'Nota', 'Uzun', 'Besteci']),
  KelimeKarti(kelime: 'Mozaik', yasakliKelimeler: ['Taş', 'Renk', 'Duvar', 'Sanat', 'Parça']),
  KelimeKarti(kelime: 'Grafiti', yasakliKelimeler: ['Duvar', 'Renk', 'Şehir', 'Sanat', 'İllegal']),
  KelimeKarti(kelime: 'Animasyon', yasakliKelimeler: ['Çizgi', 'Film', 'Hareket', 'Bilgisayar', 'Sanat']),

  // Coğrafya ve Çevre
  KelimeKarti(kelime: 'Tektonik', yasakliKelimeler: ['Levha', 'Deprem', 'Dağ', 'Yer', 'Hareket']),
  KelimeKarti(kelime: 'Buzul', yasakliKelimeler: ['Buz', 'Soğuk', 'Dağ', 'Eritmek', 'İklim']),
  KelimeKarti(kelime: 'Fatih', yasakliKelimeler: ['İstabul', 'Osmanlı', 'Fetih', 'Sultan', 'Mehmet']),
  KelimeKarti(kelime: 'Marmara', yasakliKelimeler: ['Deniz', 'İstanbul', 'Bursa', 'Kocaeli', 'Adalar']),
  KelimeKarti(kelime: 'Kapadokya', yasakliKelimeler: ['Peri', 'Bacaları', 'Nevşehir', 'Taş', 'Balon']),
  KelimeKarti(kelime: 'Pamukkale', yasakliKelimeler: ['Beyaz', 'Traverten', 'Su', 'Denizli', 'Doğa']),

  // Ekonomi ve İş
  KelimeKarti(kelime: 'Enflasyon', yasakliKelimeler: ['Fiyat', 'Artış', 'Para', 'Alım', 'Güç']),
  KelimeKarti(kelime: 'Deflasyon', yasakliKelimeler: ['Fiyat', 'Düşüş', 'Para', 'Alım', 'Güç']),
  KelimeKarti(kelime: 'Borsa', yasakliKelimeler: ['Hisse', 'Satış', 'Alış', 'Para', 'Yatırım']),
  KelimeKarti(kelime: 'Vergi', yasakliKelimeler: ['Devlet', 'Para', 'Gelir', 'Ödeme', 'Yasal']),
  KelimeKarti(kelime: 'İhracat', yasakliKelimeler: ['Dış', 'Satış', 'Ürün', 'Yabancı', 'Ticaret']),
  KelimeKarti(kelime: 'İthalat', yasakliKelimeler: ['Dış', 'Alış', 'Ürün', 'Yabancı', 'Ticaret']),

  // Eğitim ve Bilim
  KelimeKarti(kelime: 'Pedagoji', yasakliKelimeler: ['Eğitim', 'Öğretim', 'Çocuk', 'Yöntem', 'Bilim']),
  KelimeKarti(kelime: 'Matematik', yasakliKelimeler: ['Sayı', 'Hesap', 'Geometri', 'Cebir', 'İlim']),
  KelimeKarti(kelime: 'Fizik', yasakliKelimeler: ['Bilim', 'Enerji', 'Hareket', 'Kuvvet', 'Deney']),
  KelimeKarti(kelime: 'Kimya', yasakliKelimeler: ['Bilim', 'Maddenin', 'Reaksiyon', 'Element', 'Deney']),
  KelimeKarti(kelime: 'Biyoloji', yasakliKelimeler: ['Bilim', 'Yaşam', 'Hücre', 'Bitki', 'Hayvan']),
  KelimeKarti(kelime: 'Coğrafya', yasakliKelimeler: ['Dünya', 'Harita', 'Kıta', 'Ülke', 'Doğa']),
  KelimeKarti(kelime: 'Felsefe', yasakliKelimeler: ['Düşünce', 'Sorular', 'Varlık', 'Ahlak', 'Bilgelik']),

  // Teknoloji ve İletişim
  KelimeKarti(kelime: 'Mobil Uygulama', yasakliKelimeler: ['Telefon', 'Yazılım', 'Dokunmatik', 'İndirme', 'Uygulama']),
  KelimeKarti(kelime: 'Siber Güvenlik', yasakliKelimeler: ['Bilgisayar', 'Güvenlik', 'Virüs', 'Şifre', 'Koruma']),
  KelimeKarti(kelime: 'Dijital Dönüşüm', yasakliKelimeler: ['Teknoloji', 'Değişim', 'Şirket', 'İnovasyon', 'Dijital']),

  // Sağlık ve Tıp
  KelimeKarti(kelime: 'Cerrah', yasakliKelimeler: ['Doktor', 'Ameliyat', 'Kesme', 'İyileştirme', 'Hastane']),
  KelimeKarti(kelime: 'Radyoloji', yasakliKelimeler: ['X-Ray', 'Görüntü', 'Doktor', 'Film', 'Teşhis']),
  KelimeKarti(kelime: 'Anestezi', yasakliKelimeler: ['Uyuşturma', 'Ağrı', 'Doktor', 'Ameliyat', 'Uyku']),
  KelimeKarti(kelime: 'Fizyoloji', yasakliKelimeler: ['Vücut', 'İşlev', 'Organ', 'Bilim', 'Sağlık']),
  KelimeKarti(kelime: 'Patoloji', yasakliKelimeler: ['Hastalık', 'Doktor', 'Teşhis', 'Laboratuvar', 'Mikroskop']),
  KelimeKarti(kelime: 'Farmakoloji', yasakliKelimeler: ['İlaç', 'Bilim', 'Etki', 'Doktor', 'Tedavi']),

  // Çevre ve Sürdürülebilirlik
  KelimeKarti(kelime: 'Fosil Yakıt', yasakliKelimeler: ['Petrol', 'Kömür', 'Gaz', 'Enerji', 'Kirletici']),
  KelimeKarti(kelime: 'Yenilenebilir Enerji', yasakliKelimeler: ['Güneş', 'Rüzgar', 'Su', 'Temiz', 'Sonsuz']),
  KelimeKarti(kelime: 'Geri Dönüşüm', yasakliKelimeler: ['Çöp', 'Kağıt', 'Plastik', 'Cam', 'Temiz']),
  KelimeKarti(kelime: 'Biyolojik Çeşitlilik', yasakliKelimeler: ['Hayvan', 'Bitki', 'Tür', 'Çevre', 'Doğa']),
  KelimeKarti(kelime: 'Ozon Tabakası', yasakliKelimeler: ['Atmosfer', 'Korunma', 'Güneş', 'Delik', 'Gaz']),
  KelimeKarti(kelime: 'Sürdürülebilir', yasakliKelimeler: ['Uzun', 'Vadeli', 'Çevre', 'Doğa', 'Koruma']),

  // Sanat ve Kültür
  KelimeKarti(kelime: 'Gotik', yasakliKelimeler: ['Sanat', 'Orta Çağ', 'Katedral', 'Yüksek', 'Uç']),
  KelimeKarti(kelime: 'Postmodern', yasakliKelimeler: ['Sanat', 'Modern', 'Sonrası', 'Çeşitli', 'Çağdaş']),
  KelimeKarti(kelime: 'Minimalizm', yasakliKelimeler: ['Sanat', 'Basit', 'Az', 'Beyaz', 'Modern']),
  KelimeKarti(kelime: 'Ekspresyonizm', yasakliKelimeler: ['Sanat', 'Duygu', 'Renk', 'İfade', 'Almanya']),
  KelimeKarti(kelime: 'Sembolizm', yasakliKelimeler: ['Sanat', 'Sembol', 'Gizem', 'Rüya', '19']),
  KelimeKarti(kelime: 'Pop Art', yasakliKelimeler: ['Sanat', 'Popüler', 'Renkli', 'Modern', 'Amerika']),
  KelimeKarti(kelime: 'Street Art', yasakliKelimeler: ['Duvar', 'Şehir', 'Sanat', 'Grafiti', 'Modern']),

  // Mitoloji ve Din
  KelimeKarti(kelime: 'Mitoloji', yasakliKelimeler: ['Tanrı', 'Kahraman', 'Masal', 'Eski', 'Hikaye']),
  KelimeKarti(kelime: 'Olimpos', yasakliKelimeler: ['Tanrı', 'Yunan', 'Dağ', 'Zeus', 'Mitoloji']),
  KelimeKarti(kelime: 'Valhalla', yasakliKelimeler: ['Tanrı', 'İskandinav', 'Cennet', 'Viking', 'Savaş']),
  KelimeKarti(kelime: 'Nirvana', yasakliKelimeler: ['Budizm', 'Cennet', 'Aydınlanma', 'Sonsuz', 'Huzur']),
  KelimeKarti(kelime: 'Zikir', yasakliKelimeler: ['Din', 'Dua', 'Tekrar', 'Allah', 'Hatırlama']),

  // Dil ve İletişim
  KelimeKarti(kelime: 'Dil Bilimi', yasakliKelimeler: ['Dil', 'Bilim', 'Konuşma', 'Yazı', 'Araştırma']),
  KelimeKarti(kelime: 'Edebiyat', yasakliKelimeler: ['Yazı', 'Kitap', 'Şiir', 'Roman', 'Sanat']),
  KelimeKarti(kelime: 'Gazetecilik', yasakliKelimeler: ['Haber', 'Gazete', 'Röportaj', 'Yayın', 'Medya']),
  KelimeKarti(kelime: 'Radyo', yasakliKelimeler: ['Ses', 'Dalga', 'Yayın', 'Dinleme', 'Müzik']),
  KelimeKarti(kelime: 'Sinema', yasakliKelimeler: ['Film', 'Salon', 'İzleme', 'Yayın', 'Sanat']),
  KelimeKarti(kelime: 'Tiyatro', yasakliKelimeler: ['Sahne', 'Oyuncu', 'İzleyici', 'Gösteri', 'Sanat']),

  // Ekonomi ve Finans
  KelimeKarti(kelime: 'Merkez Bankası', yasakliKelimeler: ['Para', 'Faiz', 'Devlet', 'Kontrol', 'Ekonomi']),
  KelimeKarti(kelime: 'Hisse Senedi', yasakliKelimeler: ['Şirket', 'Borsa', 'Yatırım', 'Para', 'Sahip']),
  KelimeKarti(kelime: 'Tahvil', yasakliKelimeler: ['Borç', 'Faiz', 'Devlet', 'Yatırım', 'Para']),
  KelimeKarti(kelime: 'Emeklilik', yasakliKelimeler: ['Yaş', 'Para', 'Çalışma', 'Fon', 'Gelecek']),
  KelimeKarti(kelime: 'Tasarruf', yasakliKelimeler: ['Para', 'Biriktirme', 'Gelecek', 'Yatırım', 'Az']),

  // Sosyal ve Siyasi
  KelimeKarti(kelime: 'Anayasa', yasakliKelimeler: ['Yasa', 'Devlet', 'Hak', 'Özgürlük', 'Temel']),
  KelimeKarti(kelime: 'Sivil Toplum', yasakliKelimeler: ['Dernek', 'Vakıf', 'Gönüllü', 'Demokrasi', 'Katılım']),
  KelimeKarti(kelime: 'Lobicilik', yasakliKelimeler: ['Etki', 'Siyaset', 'Grup', 'İçin', 'Çalışma']),

  // Modern Kavramlar
  KelimeKarti(kelime: 'Kripto Para', yasakliKelimeler: ['Bitcoin', 'Dijital', 'Para', 'Madencilik', 'Blokzincir']),
  KelimeKarti(kelime: 'Pandemi', yasakliKelimeler: ['Dünya', 'Hastalık', 'Virüs', 'Karantina', 'Sağlık']),
  KelimeKarti(kelime: 'İklim Krizi', yasakliKelimeler: ['Dünya', 'Isınma', 'Çevre', 'Değişim', 'Tehlike']),

  // Bilimsel Kavramlar

  // Eğitim ve Kariyer
  KelimeKarti(kelime: 'Üniversite', yasakliKelimeler: ['Yüksek', 'Öğretim', 'Öğrenci', 'Fakülte', 'Diploma']),
  KelimeKarti(kelime: 'Lisans', yasakliKelimeler: ['Derece', 'Üniversite', '4', 'Yıl', 'Diploma']),
  KelimeKarti(kelime: 'Yüksek Lisans', yasakliKelimeler: ['Derece', 'Üniversite', '2', 'Yıl', 'Tez']),
  KelimeKarti(kelime: 'Doktora', yasakliKelimeler: ['Derece', 'Üniversite', '4+', 'Yıl', 'Tez']),
  KelimeKarti(kelime: 'Kariyer', yasakliKelimeler: ['İş', 'Meslek', 'Gelişme', 'Başarı', 'Zaman']),
  KelimeKarti(kelime: 'CV', yasakliKelimeler: ['Özgeçmiş', 'İş', 'Başvuru', 'Deneyim', 'Eğitim']),

  // Günlük Yaşam ve Teknoloji
  KelimeKarti(kelime: 'Akıllı Ev', yasakliKelimeler: ['Teknoloji', 'Otomasyon', 'Sensör', 'Uzaktan', 'Kontrol']),
  KelimeKarti(kelime: 'Elektrikli Araç', yasakliKelimeler: ['Pil', 'Çevre', 'Temiz', 'Enerji', 'Şarj']),
  KelimeKarti(kelime: 'Otonom', yasakliKelimeler: ['Kendiliğinden', 'Sürücü', 'Teknoloji', 'Robot', 'Akıllı']),

  // Sanat ve Eğlence
  KelimeKarti(kelime: 'YouTube', yasakliKelimeler: ['Video', 'İzleme', 'Kanal', 'Yükleme', 'İçerik']),
  KelimeKarti(kelime: 'Podcast', yasakliKelimeler: ['Ses', 'Dinleme', 'Konuşma', 'İçerik', 'Mikrofon']),
  KelimeKarti(kelime: 'Gaming', yasakliKelimeler: ['Oyun', 'Bilgisayar', 'Konsol', 'Eğlence', 'Sanal']),
  KelimeKarti(kelime: 'Streaming', yasakliKelimeler: ['Canlı', 'Yayın', 'İnternet', 'İzleme', 'Platform']),

  // Sağlık ve Fitness
  KelimeKarti(kelime: 'Meditasyon', yasakliKelimeler: ['Zihin', 'Dinginlik', 'Nefes', 'Odaklanma', 'Stres']),
  KelimeKarti(kelime: 'Pilates', yasakliKelimeler: ['Vücut', 'Esneklik', 'Kontrol', 'Egzersiz', 'Zemin']),
  KelimeKarti(kelime: 'CrossFit', yasakliKelimeler: ['Egzersiz', 'Yoğun', 'Grup', 'Fonksiyonel', 'Spor']),
  KelimeKarti(kelime: 'HIIT', yasakliKelimeler: ['Egzersiz', 'Yüksek', 'Yoğunluk', 'Kısa', 'Zaman']),
  KelimeKarti(kelime: 'Kardiyo', yasakliKelimeler: ['Kalp', 'Nabız', 'Koşu', 'Bisiklet', 'Sağlık']),

  // Çevre ve Doğa
  KelimeKarti(kelime: 'Ormansızlaşma', yasakliKelimeler: ['Ağaç', 'Kesim', 'Çevre', 'Doğa', 'Zarar']),
  KelimeKarti(kelime: 'Su Döngüsü', yasakliKelimeler: ['Yağmur', 'Buharlaşma', 'Bulut', 'Nehir', 'Doğa']),
  KelimeKarti(kelime: 'Gıda Zinciri', yasakliKelimeler: ['Hayvan', 'Bitki', 'Avcı', 'Kurbağa', 'Doğa']),
  KelimeKarti(kelime: 'Habitat', yasakliKelimeler: ['Yaşam', 'Alan', 'Hayvan', 'Bitki', 'Doğa']),

  // Son Modern Kavramlar
  KelimeKarti(kelime: 'Work From Home', yasakliKelimeler: ['Ev', 'Çalışma', 'Ofis', 'Uzaktan', 'Pandemi']),
  KelimeKarti(kelime: 'Digital Nomad', yasakliKelimeler: ['Çalışma', 'Seyahat', 'İnternet', 'Serbest', 'Dünya']),
  KelimeKarti(kelime: 'Influencer', yasakliKelimeler: ['Sosyal', 'Medya', 'Takipçi', 'İçerik', 'Pazarlama']),
  KelimeKarti(kelime: 'Startup', yasakliKelimeler: ['Şirket', 'Yeni', 'Teknoloji', 'Girişim', 'Yatırım']),
  KelimeKarti(kelime: 'Freelancer', yasakliKelimeler: ['Serbest', 'Çalışma', 'Proje', 'Müşteri', 'Esnek']),
  KelimeKarti(kelime: 'Gig Economy', yasakliKelimeler: ['İş', 'Geçici', 'Platform', 'Esnek', 'Gelir']),
  KelimeKarti(kelime: 'Remote Work', yasakliKelimeler: ['Uzaktan', 'Çalışma', 'Ofis', 'İnternet', 'Esnek']),
  KelimeKarti(kelime: 'Co-Working', yasakliKelimeler: ['Ortak', 'Çalışma', 'Ofis', 'Paylaşılan', 'Alan']),
];

final List<KelimeKarti> premiumKelimeler = [
  ...ornekKartlar,
  ...premiumKategorilerToplami,
  ...ortaSeviyePremiumKelimeler,
];

List<KelimeKarti> karisikPremiumKelimeler() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumKelimeler);
  kopya.shuffle();
  return kopya;
}

// Premium havuz için tüm premium kelimeler (ana kelime havuzu dahil)
final List<KelimeKarti> premiumHavuzKelimeler = [
  ...ornekKartlar,  // Ana kelime havuzu
  ...premiumKategorilerToplami,  // Premium kategoriler
  ...ortaSeviyePremiumKelimeler,  // Orta seviye premium kelimeler
];

List<KelimeKarti> karisikPremiumHavuz() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumHavuzKelimeler);
  kopya.shuffle();
  return kopya;
}

// Belirli premium kategorilerinden karışık liste döndür (çoklu seçim destekli)
List<KelimeKarti> karisikPremiumKategorilerinden(Set<PremiumKategori> kategoriler) {
  if (kategoriler.isEmpty) return karisikPremiumHavuz(); // Premium havuz için sadece premium kelimeler
  final List<KelimeKarti> birlesik = [];
  for (final PremiumKategori k in kategoriler) {
    birlesik.addAll(premiumKategoriListesi(k));
  }
  birlesik.shuffle();
  return birlesik;
}


