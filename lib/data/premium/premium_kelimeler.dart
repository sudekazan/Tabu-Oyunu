import '../kelimeler.dart';
import 'kategoriler/index.dart';

// Orta seviye premium kelimeler - zor ama çok kolay olmayan
const List<KelimeKarti> ortaSeviyePremiumKelimeler = [
  // Bilim ve Teknoloji
  KelimeKarti(kelime: 'Nanoteknoloji', yasakliKelimeler: ['Küçük', 'Teknoloji', 'Atom', 'Malzeme', 'İleri']),
  KelimeKarti(kelime: 'Biyoteknoloji', yasakliKelimeler: ['Biyoloji', 'Teknoloji', 'DNA', 'Genetik', 'Sağlık']),
  KelimeKarti(kelime: 'Kuantum Bilimi', yasakliKelimeler: ['Fizik', 'Parçacık', 'Enerji', 'Atom', 'Küçük']),
  KelimeKarti(kelime: 'Yapay Zekâ', yasakliKelimeler: ['Bilgisayar', 'Akıllı', 'Makine', 'Algoritma', 'Otomasyon']),
  KelimeKarti(kelime: 'Gökbilim', yasakliKelimeler: ['Yıldız', 'Gezegen', 'Uzay', 'Teleskop', 'Evren']),
  KelimeKarti(kelime: 'Mikrobiyoloji', yasakliKelimeler: ['Mikrop', 'Hücre', 'Bakteri', 'Virüs', 'Laboratuvar']),
  KelimeKarti(kelime: 'Klimatoloji', yasakliKelimeler: ['İklim', 'Hava', 'Sıcaklık', 'Yağış', 'Dünya']),
  KelimeKarti(kelime: 'Nörobilim', yasakliKelimeler: ['Beyin', 'Sinir', 'Nöron', 'Düşünce', 'Bilim']),
  KelimeKarti(kelime: 'Genetik Mühendisliği', yasakliKelimeler: ['DNA', 'Gen', 'Modifikasyon', 'Bitki', 'Sağlık']),
  KelimeKarti(kelime: 'Robotik', yasakliKelimeler: ['Robot', 'Makine', 'Otomasyon', 'Kol', 'Sensör']),

  // Tarih ve Kültür
  KelimeKarti(kelime: 'Rönesans', yasakliKelimeler: ['Sanat', 'İtalya', 'Leonardo', 'Michelangelo', '14-17']),
  KelimeKarti(kelime: 'Endüstri Devrimi', yasakliKelimeler: ['Makine', 'Fabrika', 'İngiltere', '18-19', 'Teknoloji']),
  KelimeKarti(kelime: 'Haçlı Seferleri', yasakliKelimeler: ['Orta Çağ', 'Kutsal', 'Hıristiyan', 'Müslüman', 'Şövalye']),
  KelimeKarti(kelime: 'Aydınlanma Çağı', yasakliKelimeler: ['Akıl', 'Bilim', '18', 'Voltaire', 'Felsefe']),
  KelimeKarti(kelime: 'Sömürgecilik', yasakliKelimeler: ['Koloni', 'Avrupa', 'Afrika', 'Asya', 'İmparatorluk']),
  KelimeKarti(kelime: 'Kadın Hakları', yasakliKelimeler: ['Oy', 'Eşitlik', 'Seçim', 'Feminizm', 'Hak']),
  KelimeKarti(kelime: 'Uygarlık', yasakliKelimeler: ['Toplum', 'Kültür', 'Teknoloji', 'Şehir', 'Gelişme']),
  KelimeKarti(kelime: 'Demokrasi', yasakliKelimeler: ['Halk', 'Yönetim', 'Oy', 'Özgürlük', 'Hak']),
  KelimeKarti(kelime: 'İmparatorluk', yasakliKelimeler: ['Hükümdar', 'Toprak', 'Geniş', 'Yönetim', 'Güç']),
  KelimeKarti(kelime: 'Fetih', yasakliKelimeler: ['Savaş', 'Yenmek', 'Toprak', 'Kazanmak', 'Hükümdar']),

  // Spor ve Sağlık
  KelimeKarti(kelime: 'Fizyoterapi', yasakliKelimeler: ['Tedavi', 'Hareket', 'Ağrı', 'Rehabilitasyon', 'Sağlık']),
  KelimeKarti(kelime: 'Beslenme Bilimi', yasakliKelimeler: ['Yiyecek', 'Vitamin', 'Sağlık', 'Diyet', 'Besin']),
  KelimeKarti(kelime: 'Kardiyoloji', yasakliKelimeler: ['Kalp', 'Doktor', 'Hastalık', 'Tedavi', 'Kanın']),
  KelimeKarti(kelime: 'Psikoloji', yasakliKelimeler: ['Zihin', 'Davranış', 'Düşünce', 'İnsanın', 'Bilim']),
  KelimeKarti(kelime: 'İmmünoloji', yasakliKelimeler: ['Bağışıklık', 'Antikor', 'Virüs', 'Savunma', 'Sağlık']),
  KelimeKarti(kelime: 'Endokrinoloji', yasakliKelimeler: ['Hormon', 'Bez', 'Tiroid', 'Şeker', 'Doktor']),
  KelimeKarti(kelime: 'Diyetisyen', yasakliKelimeler: ['Beslenme', 'Sağlık', 'Yiyecek', 'Kilo', 'Uzman']),
  KelimeKarti(kelime: 'Maraton', yasakliKelimeler: ['Koşu', '42', 'Kilometre', 'Uzun', 'Dayanıklılık']),
  KelimeKarti(kelime: 'Triatlon', yasakliKelimeler: ['Yüzme', 'Bisiklet', 'Koşu', 'Üç', 'Spor']),
  KelimeKarti(kelime: 'Judo', yasakliKelimeler: ['Dövüş', 'Spor', 'Japon', 'Teknik', 'Yere']),

  // Sanat ve Müzik
  KelimeKarti(kelime: 'İmpressionizm', yasakliKelimeler: ['Sanat', 'Renk', 'Işık', 'Hızlı', 'Fırça']),
  KelimeKarti(kelime: 'Kübizm', yasakliKelimeler: ['Sanat', 'Şekil', 'Açı', 'Picasso', 'Modern']),
  KelimeKarti(kelime: 'Opera', yasakliKelimeler: ['Müzik', 'Sahne', 'Şarkı', 'Gösteri', 'İtalyan']),
  KelimeKarti(kelime: 'Senfoni', yasakliKelimeler: ['Müzik', 'Orkestra', 'Nota', 'Uzun', 'Besteci']),
  KelimeKarti(kelime: 'Bale', yasakliKelimeler: ['Dans', 'Sahne', 'Müzik', 'Ayak', 'Sanat']),
  KelimeKarti(kelime: 'Heykel', yasakliKelimeler: ['Sanat', 'Taş', 'Bronz', 'Şekil', 'Yontmak']),
  KelimeKarti(kelime: 'Seramik', yasakliKelimeler: ['Kil', 'Fırın', 'Çanak', 'Toprak', 'Sanat']),
  KelimeKarti(kelime: 'Mozaik', yasakliKelimeler: ['Taş', 'Renk', 'Duvar', 'Sanat', 'Parça']),
  KelimeKarti(kelime: 'Grafiti', yasakliKelimeler: ['Duvar', 'Renk', 'Şehir', 'Sanat', 'İllegal']),
  KelimeKarti(kelime: 'Animasyon', yasakliKelimeler: ['Çizgi', 'Film', 'Hareket', 'Bilgisayar', 'Sanat']),

  // Coğrafya ve Çevre
  KelimeKarti(kelime: 'Tektonik', yasakliKelimeler: ['Levha', 'Deprem', 'Dağ', 'Yer', 'Hareket']),
  KelimeKarti(kelime: 'Okyanus', yasakliKelimeler: ['Deniz', 'Büyük', 'Su', 'Derin', 'Dünya']),
  KelimeKarti(kelime: 'Çöl', yasakliKelimeler: ['Kum', 'Sıcak', 'Kurak', 'Bitki', 'Su']),
  KelimeKarti(kelime: 'Orman', yasakliKelimeler: ['Ağaç', 'Yeşil', 'Hayvan', 'Oksijen', 'Yağmur']),
  KelimeKarti(kelime: 'Buzul', yasakliKelimeler: ['Buz', 'Soğuk', 'Dağ', 'Eritmek', 'İklim']),
  KelimeKarti(kelime: 'Volkan', yasakliKelimeler: ['Dağ', 'Lav', 'Ateş', 'Patlama', 'Yer']),
  KelimeKarti(kelime: 'Fatih', yasakliKelimeler: ['İstabul', 'Osmanlı', 'Fetih', 'Sultan', 'Mehmet']),
  KelimeKarti(kelime: 'Marmara', yasakliKelimeler: ['Deniz', 'İstanbul', 'Bursa', 'Kocaeli', 'Adalar']),
  KelimeKarti(kelime: 'Kapadokya', yasakliKelimeler: ['Peri', 'Bacaları', 'Nevşehir', 'Taş', 'Balon']),
  KelimeKarti(kelime: 'Pamukkale', yasakliKelimeler: ['Beyaz', 'Traverten', 'Su', 'Denizli', 'Doğa']),

  // Ekonomi ve İş
  KelimeKarti(kelime: 'Enflasyon', yasakliKelimeler: ['Fiyat', 'Artış', 'Para', 'Alım', 'Güç']),
  KelimeKarti(kelime: 'Deflasyon', yasakliKelimeler: ['Fiyat', 'Düşüş', 'Para', 'Alım', 'Güç']),
  KelimeKarti(kelime: 'Borsa', yasakliKelimeler: ['Hisse', 'Satış', 'Alış', 'Para', 'Yatırım']),
  KelimeKarti(kelime: 'Kredi', yasakliKelimeler: ['Borç', 'Banka', 'Faiz', 'Para', 'Ödeme']),
  KelimeKarti(kelime: 'Vergi', yasakliKelimeler: ['Devlet', 'Para', 'Gelir', 'Ödeme', 'Yasal']),
  KelimeKarti(kelime: 'İhracat', yasakliKelimeler: ['Dış', 'Satış', 'Ürün', 'Yabancı', 'Ticaret']),
  KelimeKarti(kelime: 'İthalat', yasakliKelimeler: ['Dış', 'Alış', 'Ürün', 'Yabancı', 'Ticaret']),
  KelimeKarti(kelime: 'Girişimci', yasakliKelimeler: ['İş', 'Kurmak', 'Risk', 'Para', 'Başarı']),
  KelimeKarti(kelime: 'Pazarlama', yasakliKelimeler: ['Satış', 'Reklam', 'Müşteri', 'Ürün', 'İletişim']),
  KelimeKarti(kelime: 'Lojistik', yasakliKelimeler: ['Taşıma', 'Depo', 'Dağıtım', 'Nakliye', 'Zincir']),

  // Eğitim ve Bilim
  KelimeKarti(kelime: 'Pedagoji', yasakliKelimeler: ['Eğitim', 'Öğretim', 'Çocuk', 'Yöntem', 'Bilim']),
  KelimeKarti(kelime: 'Matematik', yasakliKelimeler: ['Sayı', 'Hesap', 'Geometri', 'Cebir', 'İlim']),
  KelimeKarti(kelime: 'Fizik', yasakliKelimeler: ['Bilim', 'Enerji', 'Hareket', 'Kuvvet', 'Deney']),
  KelimeKarti(kelime: 'Kimya', yasakliKelimeler: ['Bilim', 'Maddenin', 'Reaksiyon', 'Element', 'Deney']),
  KelimeKarti(kelime: 'Biyoloji', yasakliKelimeler: ['Bilim', 'Yaşam', 'Hücre', 'Bitki', 'Hayvan']),
  KelimeKarti(kelime: 'Coğrafya', yasakliKelimeler: ['Dünya', 'Harita', 'Kıta', 'Ülke', 'Doğa']),
  KelimeKarti(kelime: 'Tarih', yasakliKelimeler: ['Geçmiş', 'Olay', 'İnsanın', 'Zaman', 'Kronoloji']),
  KelimeKarti(kelime: 'Felsefe', yasakliKelimeler: ['Düşünce', 'Sorular', 'Varlık', 'Ahlak', 'Bilgelik']),
  KelimeKarti(kelime: 'Psikoloji', yasakliKelimeler: ['Zihin', 'Davranış', 'Düşünce', 'İnsanın', 'Bilim']),
  KelimeKarti(kelime: 'Sosyoloji', yasakliKelimeler: ['Toplum', 'İnsanın', 'Grup', 'Kültür', 'İlişki']),

  // Teknoloji ve İletişim
  KelimeKarti(kelime: 'İnternet', yasakliKelimeler: ['Ağ', 'Bilgi', 'Dünya', 'Bağlantı', 'Web']),
  KelimeKarti(kelime: 'Algoritma', yasakliKelimeler: ['Bilgisayar', 'Adım', 'Çözüm', 'Program', 'Matematik']),
  KelimeKarti(kelime: 'Veritabanı', yasakliKelimeler: ['Bilgi', 'Saklama', 'Tablo', 'Sorgu', 'Sistem']),
  KelimeKarti(kelime: 'Bulut Bilişim', yasakliKelimeler: ['İnternet', 'Saklama', 'Erişim', 'Sunucu', 'Veri']),
  KelimeKarti(kelime: 'Mobil Uygulama', yasakliKelimeler: ['Telefon', 'Yazılım', 'Dokunmatik', 'İndirme', 'Uygulama']),
  KelimeKarti(kelime: 'Sosyal Medya', yasakliKelimeler: ['İnternet', 'Paylaşım', 'Arkadaş', 'İletişim', 'Platform']),
  KelimeKarti(kelime: 'Siber Güvenlik', yasakliKelimeler: ['Bilgisayar', 'Güvenlik', 'Virüs', 'Şifre', 'Koruma']),
  KelimeKarti(kelime: 'Dijital Dönüşüm', yasakliKelimeler: ['Teknoloji', 'Değişim', 'Şirket', 'İnovasyon', 'Dijital']),

  // Sağlık ve Tıp
  KelimeKarti(kelime: 'Aşı', yasakliKelimeler: ['Hastalık', 'Korunma', 'Virüs', 'Doktor', 'İğne']),
  KelimeKarti(kelime: 'Antibiyotik', yasakliKelimeler: ['İlaç', 'Bakteri', 'Tedavi', 'Doktor', 'Enfeksiyon']),
  KelimeKarti(kelime: 'Cerrah', yasakliKelimeler: ['Doktor', 'Ameliyat', 'Kesme', 'İyileştirme', 'Hastane']),
  KelimeKarti(kelime: 'Radyoloji', yasakliKelimeler: ['X-Ray', 'Görüntü', 'Doktor', 'Film', 'Teşhis']),
  KelimeKarti(kelime: 'Anestezi', yasakliKelimeler: ['Uyuşturma', 'Ağrı', 'Doktor', 'Ameliyat', 'Uyku']),
  KelimeKarti(kelime: 'Fizyoloji', yasakliKelimeler: ['Vücut', 'İşlev', 'Organ', 'Bilim', 'Sağlık']),
  KelimeKarti(kelime: 'Patoloji', yasakliKelimeler: ['Hastalık', 'Doktor', 'Teşhis', 'Laboratuvar', 'Doktor']),
  KelimeKarti(kelime: 'Farmakoloji', yasakliKelimeler: ['İlaç', 'Bilim', 'Etki', 'Doktor', 'Tedavi']),

  // Çevre ve Sürdürülebilirlik
  KelimeKarti(kelime: 'Küresel Isınma', yasakliKelimeler: ['Sıcaklık', 'Dünya', 'İklim', 'Değişim', 'Gaz']),
  KelimeKarti(kelime: 'Fosil Yakıt', yasakliKelimeler: ['Petrol', 'Kömür', 'Gaz', 'Enerji', 'Kirletici']),
  KelimeKarti(kelime: 'Yenilenebilir Enerji', yasakliKelimeler: ['Güneş', 'Rüzgar', 'Su', 'Temiz', 'Sonsuz']),
  KelimeKarti(kelime: 'Geri Dönüşüm', yasakliKelimeler: ['Çöp', 'Kağıt', 'Plastik', 'Cam', 'Temiz']),
  KelimeKarti(kelime: 'Biyolojik Çeşitlilik', yasakliKelimeler: ['Hayvan', 'Bitki', 'Tür', 'Çevre', 'Doğa']),
  KelimeKarti(kelime: 'Ozon Tabakası', yasakliKelimeler: ['Atmosfer', 'Korunma', 'Güneş', 'Delik', 'Gaz']),
  KelimeKarti(kelime: 'Karbon Ayak İzi', yasakliKelimeler: ['Çevre', 'Kirletici', 'Gaz', 'İz', 'Azaltma']),
  KelimeKarti(kelime: 'Sürdürülebilir', yasakliKelimeler: ['Uzun', 'Vadeli', 'Çevre', 'Doğa', 'Koruma']),

  // Sanat ve Kültür
  KelimeKarti(kelime: 'Gotik', yasakliKelimeler: ['Sanat', 'Orta Çağ', 'Katedral', 'Yüksek', 'Uç']),
  KelimeKarti(kelime: 'Barok', yasakliKelimeler: ['Sanat', 'Süsleme', 'Detay', '17-18', 'Avrupa']),
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
  KelimeKarti(kelime: 'Cennet', yasakliKelimeler: ['Din', 'Ölümsüz', 'Mükafat', 'Tanrı', 'Mutluluk']),
  KelimeKarti(kelime: 'Cehennem', yasakliKelimeler: ['Din', 'Cezalandırma', 'Ateş', 'Şeytan', 'Korku']),
  KelimeKarti(kelime: 'Hac', yasakliKelimeler: ['Din', 'Mekke', 'İbadet', 'Müslüman', 'Ziyaret']),
  KelimeKarti(kelime: 'Zikir', yasakliKelimeler: ['Din', 'Dua', 'Tekrar', 'Allah', 'Hatırlama']),

  // Dil ve İletişim
  KelimeKarti(kelime: 'Dil Bilimi', yasakliKelimeler: ['Dil', 'Bilim', 'Konuşma', 'Yazı', 'Araştırma']),
  KelimeKarti(kelime: 'Sözlük', yasakliKelimeler: ['Kelime', 'Anlam', 'Kitap', 'Arama', 'Dil']),
  KelimeKarti(kelime: 'Edebiyat', yasakliKelimeler: ['Yazı', 'Kitap', 'Şiir', 'Roman', 'Sanat']),
  KelimeKarti(kelime: 'Gazetecilik', yasakliKelimeler: ['Haber', 'Gazete', 'Röportaj', 'Yayın', 'Medya']),
  KelimeKarti(kelime: 'Radyo', yasakliKelimeler: ['Ses', 'Dalga', 'Yayın', 'Dinleme', 'Müzik']),
  KelimeKarti(kelime: 'Televizyon', yasakliKelimeler: ['Görüntü', 'Ekran', 'Yayın', 'İzleme', 'Kanal']),
  KelimeKarti(kelime: 'Sinema', yasakliKelimeler: ['Film', 'Salon', 'İzleme', 'Yayın', 'Sanat']),
  KelimeKarti(kelime: 'Tiyatro', yasakliKelimeler: ['Sahne', 'Oyuncu', 'İzleyici', 'Gösteri', 'Sanat']),

  // Ekonomi ve Finans
  KelimeKarti(kelime: 'Merkez Bankası', yasakliKelimeler: ['Para', 'Faiz', 'Devlet', 'Kontrol', 'Ekonomi']),
  KelimeKarti(kelime: 'Hisse Senedi', yasakliKelimeler: ['Şirket', 'Borsa', 'Yatırım', 'Para', 'Sahip']),
  KelimeKarti(kelime: 'Tahvil', yasakliKelimeler: ['Borç', 'Faiz', 'Devlet', 'Yatırım', 'Para']),
  KelimeKarti(kelime: 'Sigorta', yasakliKelimeler: ['Korunma', 'Risk', 'Para', 'Ödeme', 'Güvenlik']),
  KelimeKarti(kelime: 'Emeklilik', yasakliKelimeler: ['Yaş', 'Para', 'Çalışma', 'Fon', 'Gelecek']),
  KelimeKarti(kelime: 'Tasarruf', yasakliKelimeler: ['Para', 'Biriktirme', 'Gelecek', 'Yatırım', 'Az']),
  KelimeKarti(kelime: 'Yatırım', yasakliKelimeler: ['Para', 'Kazanç', 'Risk', 'Büyütme', 'Gelecek']),

  // Sosyal ve Siyasi
  KelimeKarti(kelime: 'Anayasa', yasakliKelimeler: ['Yasa', 'Devlet', 'Hak', 'Özgürlük', 'Temel']),
  KelimeKarti(kelime: 'Parlamento', yasakliKelimeler: ['Milletvekili', 'Yasa', 'Devlet', 'Seçim', 'Oylama']),
  KelimeKarti(kelime: 'Başbakan', yasakliKelimeler: ['Hükümet', 'Lider', 'Devlet', 'Yönetim', 'Siyaset']),
  KelimeKarti(kelime: 'Cumhurbaşkanı', yasakliKelimeler: ['Devlet', 'Lider', 'Seçim', 'Başkomutan', 'Yönetim']),
  KelimeKarti(kelime: 'Mahkeme', yasakliKelimeler: ['Yargı', 'Hakim', 'Dava', 'Karar', 'Adalet']),
  KelimeKarti(kelime: 'Avukat', yasakliKelimeler: ['Hukuk', 'Dava', 'Savunma', 'Mahkeme', 'Yardım']),
  KelimeKarti(kelime: 'Sivil Toplum', yasakliKelimeler: ['Dernek', 'Vakıf', 'Gönüllü', 'Demokrasi', 'Katılım']),
  KelimeKarti(kelime: 'Lobicilik', yasakliKelimeler: ['Etki', 'Siyaset', 'Grup', 'İçin', 'Çalışma']),

  // Modern Kavramlar
  KelimeKarti(kelime: 'Blockchain', yasakliKelimeler: ['Kripto', 'Para', 'Güvenlik', 'Ağ', 'Dijital']),
  KelimeKarti(kelime: 'Kripto Para', yasakliKelimeler: ['Bitcoin', 'Dijital', 'Para', 'Madencilik', 'Blokzincir']),
  KelimeKarti(kelime: 'NFT', yasakliKelimeler: ['Dijital', 'Sanat', 'Sahip', 'Benzersiz', 'Token']),
  KelimeKarti(kelime: 'Metaverse', yasakliKelimeler: ['Sanal', 'Gerçeklik', 'Dünya', 'İnternet', 'Oyun']),
  KelimeKarti(kelime: 'Pandemi', yasakliKelimeler: ['Dünya', 'Hastalık', 'Virüs', 'Karantina', 'Sağlık']),
  KelimeKarti(kelime: 'İklim Krizi', yasakliKelimeler: ['Dünya', 'Isınma', 'Çevre', 'Değişim', 'Tehlike']),
  KelimeKarti(kelime: 'Sürdürülebilirlik', yasakliKelimeler: ['Çevre', 'Uzun', 'Vadeli', 'Doğa', 'Koruma']),

  // Bilimsel Kavramlar
  KelimeKarti(kelime: 'DNA', yasakliKelimeler: ['Gen', 'Kalıtım', 'Hücre', 'Çift', 'Sarmal']),
  KelimeKarti(kelime: 'RNA', yasakliKelimeler: ['Gen', 'Protein', 'Hücre', 'Tek', 'Sarmal']),
  KelimeKarti(kelime: 'Atom', yasakliKelimeler: ['Küçük', 'Parçacık', 'Çekirdek', 'Elektron', 'Madde']),
  KelimeKarti(kelime: 'Molekül', yasakliKelimeler: ['Atom', 'Birleşim', 'Madde', 'Küçük', 'Kimya']),
  KelimeKarti(kelime: 'Hücre', yasakliKelimeler: ['Yaşam', 'Küçük', 'Biyoloji', 'Vücut', 'Çekirdek']),
  KelimeKarti(kelime: 'Doktor', yasakliKelimeler: ['Sağlık', 'Hastane', 'Tedavi', 'Hasta', 'Beyaz']),
  KelimeKarti(kelime: 'Virüs', yasakliKelimeler: ['Hastalık', 'Mikrop', 'Bulaşıcı', 'Küçük', 'DNA']),
  KelimeKarti(kelime: 'Bakteri', yasakliKelimeler: ['Mikrop', 'Tek', 'Hücre', 'Hastalık', 'Çoğalma']),
  KelimeKarti(kelime: 'Mikrop', yasakliKelimeler: ['Küçük', 'Görünmez', 'Hastalık', 'Mikroskop', 'Canlı']),

  // Eğitim ve Kariyer
  KelimeKarti(kelime: 'Üniversite', yasakliKelimeler: ['Yüksek', 'Öğretim', 'Öğrenci', 'Fakülte', 'Diploma']),
  KelimeKarti(kelime: 'Lisans', yasakliKelimeler: ['Derece', 'Üniversite', '4', 'Yıl', 'Diploma']),
  KelimeKarti(kelime: 'Yüksek Lisans', yasakliKelimeler: ['Derece', 'Üniversite', '2', 'Yıl', 'Tez']),
  KelimeKarti(kelime: 'Doktora', yasakliKelimeler: ['Derece', 'Üniversite', '4+', 'Yıl', 'Tez']),
  KelimeKarti(kelime: 'Kariyer', yasakliKelimeler: ['İş', 'Meslek', 'Gelişme', 'Başarı', 'Zaman']),
  KelimeKarti(kelime: 'CV', yasakliKelimeler: ['Özgeçmiş', 'İş', 'Başvuru', 'Deneyim', 'Eğitim']),
  KelimeKarti(kelime: 'Mülakat', yasakliKelimeler: ['İş', 'Soru', 'Başvuru', 'Görüşme', 'İşe']),
  KelimeKarti(kelime: 'Terfi', yasakliKelimeler: ['Yükselme', 'İş', 'Pozisyon', 'Başarı', 'Zam']),

  // Günlük Yaşam ve Teknoloji
  KelimeKarti(kelime: 'Akıllı Ev', yasakliKelimeler: ['Teknoloji', 'Otomasyon', 'Sensör', 'Uzaktan', 'Kontrol']),
  KelimeKarti(kelime: 'Elektrikli Araç', yasakliKelimeler: ['Pil', 'Çevre', 'Temiz', 'Enerji', 'Şarj']),
  KelimeKarti(kelime: 'Otonom', yasakliKelimeler: ['Kendiliğinden', 'Sürücü', 'Teknoloji', 'Robot', 'Akıllı']),
  KelimeKarti(kelime: 'Drone', yasakliKelimeler: ['Uçan', 'Kamera', 'Kontrol', 'Hava', 'Teknoloji']),
  KelimeKarti(kelime: 'VR', yasakliKelimeler: ['Sanal', 'Gerçeklik', 'Gözlük', 'Deneyim', 'Teknoloji']),
  KelimeKarti(kelime: 'AR', yasakliKelimeler: ['Artırılmış', 'Gerçeklik', 'Telefon', 'Uygulama', 'Teknoloji']),
  KelimeKarti(kelime: '3D Yazıcı', yasakliKelimeler: ['Baskı', 'Katman', 'Nesne', 'Teknoloji', 'Malzeme']),
  KelimeKarti(kelime: 'Akıllı Saat', yasakliKelimeler: ['Bilek', 'Zaman', 'Sağlık', 'Bildirim', 'Adım']),

  // Sanat ve Eğlence
  KelimeKarti(kelime: 'Netflix', yasakliKelimeler: ['Dizi', 'Film', 'İnternet', 'Abonelik', 'İzleme']),
  KelimeKarti(kelime: 'Spotify', yasakliKelimeler: ['Müzik', 'Dinleme', 'Çalma', 'Liste', 'Abonelik']),
  KelimeKarti(kelime: 'Instagram', yasakliKelimeler: ['Fotoğraf', 'Sosyal', 'Medya', 'Beğeni', 'Hikaye']),
  KelimeKarti(kelime: 'TikTok', yasakliKelimeler: ['Video', 'Kısa', 'Dans', 'Müzik', 'Trend']),
  KelimeKarti(kelime: 'YouTube', yasakliKelimeler: ['Video', 'İzleme', 'Kanal', 'Yükleme', 'İçerik']),
  KelimeKarti(kelime: 'Podcast', yasakliKelimeler: ['Ses', 'Dinleme', 'Konuşma', 'İçerik', 'Mikrofon']),
  KelimeKarti(kelime: 'Gaming', yasakliKelimeler: ['Oyun', 'Bilgisayar', 'Konsol', 'Eğlence', 'Sanal']),
  KelimeKarti(kelime: 'Streaming', yasakliKelimeler: ['Canlı', 'Yayın', 'İnternet', 'İzleme', 'Platform']),

  // Sağlık ve Fitness
  KelimeKarti(kelime: 'Meditasyon', yasakliKelimeler: ['Zihin', 'Dinginlik', 'Nefes', 'Odaklanma', 'Stres']),
  KelimeKarti(kelime: 'Yoga', yasakliKelimeler: ['Esneklik', 'Pozisyon', 'Nefes', 'Zihin', 'Vücut']),
  KelimeKarti(kelime: 'Pilates', yasakliKelimeler: ['Vücut', 'Esneklik', 'Kontrol', 'Egzersiz', 'Zemin']),
  KelimeKarti(kelime: 'CrossFit', yasakliKelimeler: ['Egzersiz', 'Yoğun', 'Grup', 'Fonksiyonel', 'Spor']),
  KelimeKarti(kelime: 'HIIT', yasakliKelimeler: ['Egzersiz', 'Yüksek', 'Yoğunluk', 'Kısa', 'Zaman']),
  KelimeKarti(kelime: 'Kardiyo', yasakliKelimeler: ['Kalp', 'Nabız', 'Koşu', 'Bisiklet', 'Sağlık']),
  KelimeKarti(kelime: 'Protein', yasakliKelimeler: ['Besin', 'Kas', 'Gıda', 'Spor', 'Vücut']),
  KelimeKarti(kelime: 'Vitamin', yasakliKelimeler: ['Besin', 'Sağlık', 'Gıda', 'Vücut', 'Mineral']),

  // Çevre ve Doğa
  KelimeKarti(kelime: 'Ormansızlaşma', yasakliKelimeler: ['Ağaç', 'Kesim', 'Çevre', 'Doğa', 'Zarar']),
  KelimeKarti(kelime: 'Su Döngüsü', yasakliKelimeler: ['Yağmur', 'Buharlaşma', 'Bulut', 'Nehir', 'Doğa']),
  KelimeKarti(kelime: 'Gıda Zinciri', yasakliKelimeler: ['Hayvan', 'Bitki', 'Avcı', 'Kurbağa', 'Doğa']),
  KelimeKarti(kelime: 'Ekoloji', yasakliKelimeler: ['Çevre', 'Doğa', 'İlişki', 'Canlı', 'Denge']),
  KelimeKarti(kelime: 'Habitat', yasakliKelimeler: ['Yaşam', 'Alan', 'Hayvan', 'Bitki', 'Doğa']),
  KelimeKarti(kelime: 'Göç', yasakliKelimeler: ['Kuş', 'Hayvan', 'Mevsim', 'Uzak', 'Yol']),
  KelimeKarti(kelime: 'Mutasyon', yasakliKelimeler: ['Gen', 'Değişim', 'DNA', 'Yeni', 'Özellik']),
  KelimeKarti(kelime: 'Ekosistem', yasakliKelimeler: ['Çevre', 'Canlı', 'Denge', 'İlişki', 'Doğa']),

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


