import '../../kelimeler.dart';

// Ülkeler & Kültür Kategorisi - Geniş bilgi için ülkeler ve kültürler
const List<KelimeKarti> premiumUlkelerKultur = [
  // AVRUPA ÜLKELERİ
  KelimeKarti(kelime: 'Fransa', yasakliKelimeler: ['Paris', 'Eyfel', 'Şarap', 'Lüks', 'Romantik']),
  KelimeKarti(kelime: 'Almanya', yasakliKelimeler: ['Berlin', 'Bira', 'Arabalar', 'Tarih', 'Dünya Kupası']),
  KelimeKarti(kelime: 'İtalya', yasakliKelimeler: ['Roma', 'Pizza', 'Venedik', 'Sanat', 'Tarih']),
  KelimeKarti(kelime: 'İspanya', yasakliKelimeler: ['Madrid', 'Futbol', 'Flamenko', 'Paella', 'Güneş']),
  KelimeKarti(kelime: 'İngiltere', yasakliKelimeler: ['Londra', 'Kraliyet', 'Çay', 'Futbol', 'Tarih']),
  KelimeKarti(kelime: 'Rusya', yasakliKelimeler: ['Moskova', 'Kremlin', 'Kış', 'Büyük', 'Tarih']),
  KelimeKarti(kelime: 'Türkiye', yasakliKelimeler: ['İstanbul', 'Çay', 'Tarih', 'Deniz', 'Köprü']),
  KelimeKarti(kelime: 'Yunanistan', yasakliKelimeler: ['Atina', 'Akropolis', 'Deniz', 'Mitoloji', 'Tarih']),

  // ASYA ÜLKELERİ
  KelimeKarti(kelime: 'Japonya', yasakliKelimeler: ['Tokyo', 'Teknoloji', 'Samuray', 'Kiraz Çiçeği', 'Kültürel']),
  KelimeKarti(kelime: 'Çin', yasakliKelimeler: ['Pekin', 'Duvar', 'Çay', 'Teknoloji', 'Tarih']),
  KelimeKarti(kelime: 'Hindistan', yasakliKelimeler: ['Yeni Delhi', 'Baharat', 'Yoga', 'Tacı Mahal', 'Renk']),
  KelimeKarti(kelime: 'Güney Kore', yasakliKelimeler: ['Seul', 'K-pop', 'Samsung', 'K-beauty', 'Teknoloji']),
  KelimeKarti(kelime: 'Tayland', yasakliKelimeler: ['Bangkok', 'Tapınak', 'Yemek', 'Turistik', 'Gülümseyen']),
  KelimeKarti(kelime: 'Vietnam', yasakliKelimeler: ['Hanoi', 'Pho', 'Komünizm', 'Tarih', 'Deniz']),
  KelimeKarti(kelime: 'Endonezya', yasakliKelimeler: ['Cakarta', 'Ada', 'Volkan', 'Turistik', 'Çeşitli']),

  // AMERİKA ÜLKELERİ
  KelimeKarti(kelime: 'Amerika Birleşik Devletleri', yasakliKelimeler: ['Washington', 'Hollywood', 'Özgürlük', 'Güçlü', 'Çeşitli']),
  KelimeKarti(kelime: 'Kanada', yasakliKelimeler: ['Ottawa', 'Kış', 'Hokey', 'Açık', 'İki Dilli']),
  KelimeKarti(kelime: 'Brezilya', yasakliKelimeler: ['Brasilia', 'Futbol', 'Carnaval', 'Amazon', 'Renkli']),
  KelimeKarti(kelime: 'Arjantin', yasakliKelimeler: ['Buenos Aires', 'Tango', 'Futbol', 'Gaucho', 'Tarih']),
  KelimeKarti(kelime: 'Meksika', yasakliKelimeler: ['Mexico City', 'Maya', 'Taco', 'Kaktüs', 'Tarih']),

  // AFRİKA ÜLKELERİ
  KelimeKarti(kelime: 'Mısır', yasakliKelimeler: ['Kahire', 'Piramit', 'Nil', 'Farao', 'Tarih']),
  KelimeKarti(kelime: 'Güney Afrika', yasakliKelimeler: ['Pretoria', 'Mandela', 'Safari', 'Renkli', 'Çeşitli']),
  KelimeKarti(kelime: 'Kenya', yasakliKelimeler: ['Nairobi', 'Safari', 'Maraton', 'Çay', 'Vahşi']),
  KelimeKarti(kelime: 'Fas', yasakliKelimeler: ['Rabat', 'Çöl', 'Baharat', 'Tarih', 'Medeniyet']),
  KelimeKarti(kelime: 'Nijerya', yasakliKelimeler: ['Abuja', 'Petrol', 'Nüfus', 'Çeşitli', 'Afrika']),

  // ORTA DOĞU ÜLKELERİ
  KelimeKarti(kelime: 'Suudi Arabistan', yasakliKelimeler: ['Riyad', 'Petrol', 'Mekke', 'Kabe', 'İslam']),
  KelimeKarti(kelime: 'İran', yasakliKelimeler: ['Tahran', 'Şah', 'Petrol', 'Tarih', 'Medeniyet']),
  KelimeKarti(kelime: 'İsrail', yasakliKelimeler: ['Tel Aviv', 'Tarih', 'Teknoloji', 'Çöl', 'Din']),
  KelimeKarti(kelime: 'Ürdün', yasakliKelimeler: ['Amman', 'Petra', 'Tarih', 'Çöl', 'Misafirperver']),

  // AVUSTRALYA VE OKYANUSYA
  KelimeKarti(kelime: 'Avustralya', yasakliKelimeler: ['Sidney', 'Kanguru', 'Çöl', 'Opera', 'Spor']),
  KelimeKarti(kelime: 'Yeni Zelanda', yasakliKelimeler: ['Wellington', 'Yüzüklerin Efendisi', 'Dağ', 'Yelken', 'Koyun']),

  // BAŞKENTLER
  KelimeKarti(kelime: 'Paris', yasakliKelimeler: ['Fransa', 'Eyfel', 'Şehir', 'Romantik', 'Tarih']),
  KelimeKarti(kelime: 'Berlin', yasakliKelimeler: ['Almanya', 'Duvar', 'Tarih', 'Şehir', 'Bölünmüş']),
  KelimeKarti(kelime: 'Roma', yasakliKelimeler: ['İtalya', 'Kolezyum', 'Papa', 'Tarih', 'Şehir']),
  KelimeKarti(kelime: 'Madrid', yasakliKelimeler: ['İspanya', 'Futbol', 'Şehir', 'Sıcak', 'Tarih']),
  KelimeKarti(kelime: 'Londra', yasakliKelimeler: ['İngiltere', 'Big Ben', 'Kraliyet', 'Şehir', 'Tarih']),
  KelimeKarti(kelime: 'Moskova', yasakliKelimeler: ['Rusya', 'Kremlin', 'Kış', 'Şehir', 'Büyük']),
  KelimeKarti(kelime: 'İstanbul', yasakliKelimeler: ['Türkiye', 'Köprü', 'Tarih', 'Şehir', 'İki Kıta']),
  KelimeKarti(kelime: 'Tokyo', yasakliKelimeler: ['Japonya', 'Teknoloji', 'Şehir', 'Yoğun', 'Modern']),

  // KÜLTÜREL ÖZELLİKLER
  KelimeKarti(kelime: 'Samuray', yasakliKelimeler: ['Japonya', 'Savaşçı', 'Kılıç', 'Bushido', 'Tarih']),
  KelimeKarti(kelime: 'Flamenko', yasakliKelimeler: ['İspanya', 'Dans', 'Müzik', 'Tutku', 'Kültür']),
  KelimeKarti(kelime: 'Tango', yasakliKelimeler: ['Arjantin', 'Dans', 'Romantik', 'Müzik', 'Şehir']),
  KelimeKarti(kelime: 'Carnaval', yasakliKelimeler: ['Brezilya', 'Rio', 'Renkli', 'Festival', 'Dans']),
  KelimeKarti(kelime: 'Oktoberfest', yasakliKelimeler: ['Almanya', 'Münih', 'Bira', 'Festival', 'Ekim']),

  // DİNLER VE İNANÇLAR
  KelimeKarti(kelime: 'Hristiyanlık', yasakliKelimeler: ['İsa', 'İncil', 'Çarmıh', 'Kilise', 'Dünya']),
  KelimeKarti(kelime: 'İslam', yasakliKelimeler: ['Kur\'an', 'Peygamber', 'Mekke', 'Dünya', 'İnanç']),
  KelimeKarti(kelime: 'Budizm', yasakliKelimeler: ['Buddha', 'Aydınlanma', 'Meditasyon', 'Asya', 'Barış']),
  KelimeKarti(kelime: 'Hinduizm', yasakliKelimeler: ['Hindistan', 'Karma', 'Reenkarnasyon', 'Tanrı', 'Kutsal']),
  KelimeKarti(kelime: 'Yahudilik', yasakliKelimeler: ['Musevi', 'Torah', 'Kudüs', 'Tarih', 'İnanç']),

  // TARİHİ MEDENİYETLER
  KelimeKarti(kelime: 'Antik Yunan', yasakliKelimeler: ['Demokrasi', 'Filozof', 'Olimpiyat', 'Tanrı', 'Tarih']),
  KelimeKarti(kelime: 'Roma İmparatorluğu', yasakliKelimeler: ['Sezar', 'Gladyatör', 'Kolezyum', 'Büyük', 'Tarih']),
  KelimeKarti(kelime: 'Osmanlı İmparatorluğu', yasakliKelimeler: ['İstanbul', 'Padişah', 'Tarih', 'Büyük', 'İmparatorluk']),
  KelimeKarti(kelime: 'Maya Uygarlığı', yasakliKelimeler: ['Orta Amerika', 'Piramit', 'Takvim', 'Tarih', 'Kaybolmuş']),
  KelimeKarti(kelime: 'Aztekler', yasakliKelimeler: ['Meksika', 'Tenochtitlan', 'Tanrı', 'Tarih', 'Savaşçı']),

  // MODERN KÜLTÜR
  KelimeKarti(kelime: 'Hollywood', yasakliKelimeler: ['Amerika', 'Film', 'Yıldız', 'Kırmızı', 'Halısı']),
  KelimeKarti(kelime: 'Broadway', yasakliKelimeler: ['New York', 'Tiyatro', 'Müzikal', 'Sahne', 'Şov']),
  KelimeKarti(kelime: 'Carnival', yasakliKelimeler: ['Venedik', 'Maske', 'Festival', 'Tarih', 'Gelenek']),
  KelimeKarti(kelime: 'Oktoberfest', yasakliKelimeler: ['Münih', 'Bira', 'Festival', 'Almanya', 'Ekim']),

  // GELENEKLER VE FESTİVALLER
  KelimeKarti(kelime: 'Diwali', yasakliKelimeler: ['Hindistan', 'Işık', 'Festival', 'Yeni Yıl', 'Hindistan']),
  KelimeKarti(kelime: 'Ramazan', yasakliKelimeler: ['İslam', 'Oruç', 'İftar', 'Müslüman', 'Ay']),
  KelimeKarti(kelime: 'Hanuka', yasakliKelimeler: ['Yahudi', 'Işık', 'Festival', '8 Gün', 'Tarih']),
  KelimeKarti(kelime: 'Holi', yasakliKelimeler: ['Hindistan', 'Renk', 'Festival', 'Bahar', 'Su']),
  KelimeKarti(kelime: 'Songkran', yasakliKelimeler: ['Tayland', 'Su', 'Yeni Yıl', 'Festival', 'Gelenek']),

  // DİLLER
  KelimeKarti(kelime: 'İspanyolca', yasakliKelimeler: ['İspanya', 'Latin Amerika', 'Romantik', 'Dünya', 'Konuşulan']),
  KelimeKarti(kelime: 'Fransızca', yasakliKelimeler: ['Fransa', 'Romantik', 'Dünya', 'Konuşulan', 'Lüks']),
  KelimeKarti(kelime: 'Arapça', yasakliKelimeler: ['Ortadoğu', 'İslam', 'Kur\'an', 'Dünya', 'Konuşulan']),
  KelimeKarti(kelime: 'Çince', yasakliKelimeler: ['Çin', 'Mandarin', 'Dünya', 'Konuşulan', 'Tarih']),
  KelimeKarti(kelime: 'Hintçe', yasakliKelimeler: ['Hindistan', 'Dünya', 'Konuşulan', 'Bollywood', 'Tarih']),

  // DOĞAL HARİKALAR
  KelimeKarti(kelime: 'Amazon Ormanı', yasakliKelimeler: ['Brezilya', 'Yağmur', 'Çeşitlilik', 'Dünya', 'Vahşi']),
  KelimeKarti(kelime: 'Nil Nehri', yasakliKelimeler: ['Mısır', 'Uzun', 'Dünya', 'Tarih', 'Nehir']),
  KelimeKarti(kelime: 'Sahara Çölü', yasakliKelimeler: ['Afrika', 'Büyük', 'Çöl', 'Dünya', 'Kum']),
  KelimeKarti(kelime: 'Himalaya Dağları', yasakliKelimeler: ['Asya', 'Yüksek', 'Dünya', 'Karlı', 'Dağ']),
  KelimeKarti(kelime: 'Büyük Okyanus Bariyeri', yasakliKelimeler: ['Avustralya', 'Mercan', 'Dünya', 'Deniz', 'Rif']),

  // ÜNİVERSİTE ŞEHİRLERİ
  KelimeKarti(kelime: 'Oxford', yasakliKelimeler: ['İngiltere', 'Üniversite', 'Tarih', 'Eski', 'Akademik']),
  KelimeKarti(kelime: 'Cambridge', yasakliKelimeler: ['İngiltere', 'Üniversite', 'Tarih', 'Rekabet', 'Akademik']),
  KelimeKarti(kelime: 'Harvard', yasakliKelimeler: ['Amerika', 'Üniversite', 'İvory League', 'Tarih', 'Prestij']),
  KelimeKarti(kelime: 'Sorbonne', yasakliKelimeler: ['Fransa', 'Üniversite', 'Paris', 'Tarih', 'Akademik']),
  KelimeKarti(kelime: 'Tokyo Üniversitesi', yasakliKelimeler: ['Japonya', 'Üniversite', 'Tokyo', 'Prestij', 'Akademik']),

  // KÜLTÜREL İKONLAR
  KelimeKarti(kelime: 'Eiffel Kulesi', yasakliKelimeler: ['Paris', 'Fransa', 'Demir', 'Ünlü', 'Turistik']),
  KelimeKarti(kelime: 'Tac Mahal', yasakliKelimeler: ['Hindistan', 'Aşk', 'Mermer', 'Tarih', 'Ünlü']),
  KelimeKarti(kelime: 'Çin Seddi', yasakliKelimeler: ['Çin', 'Tarih', 'Uzun', 'Savunma', 'Ünlü']),
  KelimeKarti(kelime: 'Kolezyum', yasakliKelimeler: ['Roma', 'İtalya', 'Tarih', 'Arena', 'Ünlü']),
  KelimeKarti(kelime: 'Akropolis', yasakliKelimeler: ['Atina', 'Yunanistan', 'Tarih', 'Parthenon', 'Ünlü']),

  // MODERN ÜLKELER
  KelimeKarti(kelime: 'İsveç', yasakliKelimeler: ['Stokholm', 'IKEA', 'Viking', 'İskandinav', 'Soğuk']),
  KelimeKarti(kelime: 'Norveç', yasakliKelimeler: ['Oslo', 'Fjord', 'Viking', 'Petrol', 'Kış']),
  KelimeKarti(kelime: 'Danimarka', yasakliKelimeler: ['Kopenhag', 'Lego', 'Bisiklet', 'İskandinav', 'Mutlu']),
  KelimeKarti(kelime: 'Finlandiya', yasakliKelimeler: ['Helsinki', 'Sauna', 'Orman', 'İskandinav', 'Kış']),
  KelimeKarti(kelime: 'Hollanda', yasakliKelimeler: ['Amsterdam', 'Bisiklet', 'Tulip', 'Su', 'Yel Değirmenleri']),

  // KITA BİLGİLERİ
  KelimeKarti(kelime: 'Avrupa', yasakliKelimeler: ['Kıta', 'Tarih', 'Kültür', 'Çeşitli', 'Dünya']),
  KelimeKarti(kelime: 'Asya', yasakliKelimeler: ['Kıta', 'Büyük', 'Çeşitli', 'Nüfus', 'Dünya']),
  KelimeKarti(kelime: 'Afrika', yasakliKelimeler: ['Kıta', 'Sıcak', 'Çöl', 'Vahşi', 'Dünya']),
  KelimeKarti(kelime: 'Amerika', yasakliKelimeler: ['Kıta', 'Büyük', 'Çeşitli', 'Okyanus', 'Dünya']),
  KelimeKarti(kelime: 'Avustralya', yasakliKelimeler: ['Kıta', 'Ada', 'Hayvan', 'Çöl', 'Dünya']),

  // ULUSLARARASI ÖRGÜTLER
  KelimeKarti(kelime: 'Birleşmiş Milletler', yasakliKelimeler: ['BM', 'Dünya', 'Barış', 'New York', 'Diplomasi']),
  KelimeKarti(kelime: 'Avrupa Birliği', yasakliKelimeler: ['AB', 'Avrupa', 'Euro', 'Birlik', 'Ekonomi']),
  KelimeKarti(kelime: 'NATO', yasakliKelimeler: ['Askeri', 'İttifak', 'Savunma', 'Avrupa', 'Amerika']),

  // EKONOMİK GÜÇLER
  KelimeKarti(kelime: 'G7', yasakliKelimeler: ['Ülkeler', 'Zengin', 'Dünya', 'Ekonomi', 'Gelişmiş']),
  KelimeKarti(kelime: 'BRICS', yasakliKelimeler: ['Gelişen', 'Ekonomi', 'Dünya', 'Güç', 'Ülkeler']),
  KelimeKarti(kelime: 'OECD', yasakliKelimeler: ['Ekonomi', 'Gelişmiş', 'Ülkeler', 'İstatistik', 'Politika']),

  // KÜLTÜREL DEĞERLER
  KelimeKarti(kelime: 'UNESCO', yasakliKelimeler: ['Dünya', 'Miras', 'Kültür', 'Eğitim', 'Koruma']),
  KelimeKarti(kelime: 'Misafirperverlik', yasakliKelimeler: ['Türk', 'Kültür', 'İkram', 'Gelenek', 'Değer']),
  KelimeKarti(kelime: 'Çay Kültürü', yasakliKelimeler: ['Türk', 'İkram', 'Sohbet', 'Gelenek', 'Toplumsal']),
  KelimeKarti(kelime: 'Aile Bağları', yasakliKelimeler: ['Türk', 'Gelenek', 'Değer', 'Toplum', 'Önemli']),

  // MODERN ŞEHİRLER
  KelimeKarti(kelime: 'Dubai', yasakliKelimeler: ['BAE', 'Modern', 'Gökyüzü', 'Lüks', 'Çöl']),
  KelimeKarti(kelime: 'Singapur', yasakliKelimeler: ['Asya', 'Modern', 'Temiz', 'Ada', 'Ticaret']),
  KelimeKarti(kelime: 'Hong Kong', yasakliKelimeler: ['Çin', 'Ada', 'Ticaret', 'Modern', 'Viktoriya']),
  KelimeKarti(kelime: 'Şanghay', yasakliKelimeler: ['Çin', 'Modern', 'Ekonomi', 'Nüfus', 'Gelecek']),

  // TARİHİ ŞEKİLLER
  KelimeKarti(kelime: 'Mahatma Gandhi', yasakliKelimeler: ['Hindistan', 'Bağımsızlık', 'Barış', 'İngiltere', 'Direniş']),
  KelimeKarti(kelime: 'Martin Luther King', yasakliKelimeler: ['Amerika', 'Sivil Haklar', 'Rüya', 'Irkçılık', 'Konuşma']),
  KelimeKarti(kelime: 'Nelson Mandela', yasakliKelimeler: ['Güney Afrika', 'Apartheid', 'Özgürlük', 'Hapis', 'Nobel']),

  // MODERN LİDERLER
  KelimeKarti(kelime: 'Angela Merkel', yasakliKelimeler: ['Almanya', 'Şansölye', 'Kadın', 'Güçlü', 'Avrupa']),
  KelimeKarti(kelime: 'Justin Trudeau', yasakliKelimeler: ['Kanada', 'Başbakan', 'Genç', 'Liberal', 'Fotojenik']),
  KelimeKarti(kelime: 'Jacinda Ardern', yasakliKelimeler: ['Yeni Zelanda', 'Başbakan', 'Kadın', 'Genç', 'Lider']),
];

List<KelimeKarti> karisikUlkelerKultur() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumUlkelerKultur);
  kopya.shuffle();
  return kopya;
}
