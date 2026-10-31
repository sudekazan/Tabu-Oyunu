import '../../kelimeler.dart';

// Ülkeler & Kültür Kategorisi - Geniş bilgi için ülkeler ve kültürler
const List<KelimeKarti> premiumUlkelerKultur = [
  // AVRUPA ÜLKELERİ
  KelimeKarti(kelime: 'İngiltere', yasakliKelimeler: ['Londra', 'Kraliyet', 'Çay', 'Futbol', 'Tarih']),
  KelimeKarti(kelime: 'Yunanistan', yasakliKelimeler: ['Atina', 'Akropolis', 'Deniz', 'Mitoloji', 'Tarih']),

  // ASYA ÜLKELERİ
  KelimeKarti(kelime: 'Çin', yasakliKelimeler: ['Pekin', 'Duvar', 'Çay', 'Teknoloji', 'Tarih']),
  KelimeKarti(kelime: 'Güney Kore', yasakliKelimeler: ['Seul', 'K-pop', 'Samsung', 'K-beauty', 'Teknoloji']),
  KelimeKarti(kelime: 'Tayland', yasakliKelimeler: ['Bangkok', 'Tapınak', 'Yemek', 'Turistik', 'Gülümseyen']),
  KelimeKarti(kelime: 'Vietnam', yasakliKelimeler: ['Hanoi', 'Pho', 'Komünizm', 'Tarih', 'Deniz']),
  KelimeKarti(kelime: 'Endonezya', yasakliKelimeler: ['Cakarta', 'Ada', 'Volkan', 'Turistik', 'Çeşitli']),

  // AMERİKA ÜLKELERİ
  KelimeKarti(kelime: 'Amerika Birleşik Devletleri', yasakliKelimeler: ['Washington', 'Hollywood', 'Özgürlük', 'Güçlü', 'Çeşitli']),
  KelimeKarti(kelime: 'Kanada', yasakliKelimeler: ['Ottawa', 'Kış', 'Hokey', 'Açık', 'İki Dilli']),
  KelimeKarti(kelime: 'Arjantin', yasakliKelimeler: ['Buenos Aires', 'Tango', 'Futbol', 'Gaucho', 'Tarih']),
  KelimeKarti(kelime: 'Meksika', yasakliKelimeler: ['Mexico City', 'Maya', 'Taco', 'Kaktüs', 'Tarih']),

  // AFRİKA ÜLKELERİ
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
  KelimeKarti(kelime: 'Madrid', yasakliKelimeler: ['İspanya', 'Futbol', 'Şehir', 'Sıcak', 'Tarih']),
  KelimeKarti(kelime: 'Londra', yasakliKelimeler: ['İngiltere', 'Big Ben', 'Kraliyet', 'Şehir', 'Tarih']),
  KelimeKarti(kelime: 'Moskova', yasakliKelimeler: ['Rusya', 'Kremlin', 'Kış', 'Şehir', 'Büyük']),
  KelimeKarti(kelime: 'Tokyo', yasakliKelimeler: ['Japonya', 'Teknoloji', 'Şehir', 'Yoğun', 'Modern']),

  // KÜLTÜREL ÖZELLİKLER
  KelimeKarti(kelime: 'Flamenko', yasakliKelimeler: ['İspanya', 'Dans', 'Müzik', 'Tutku', 'Kültür']),
  KelimeKarti(kelime: 'Carnaval', yasakliKelimeler: ['Brezilya', 'Rio', 'Renkli', 'Festival', 'Dans']),
  KelimeKarti(kelime: 'Oktoberfest', yasakliKelimeler: ['Almanya', 'Münih', 'Bira', 'Festival', 'Ekim']),

  // DİNLER VE İNANÇLAR
  KelimeKarti(kelime: 'Hristiyanlık', yasakliKelimeler: ['İsa', 'İncil', 'Çarmıh', 'Kilise', 'Dünya']),
  KelimeKarti(kelime: 'İslam', yasakliKelimeler: ['Kur\'an', 'Peygamber', 'Mekke', 'Dünya', 'İnanç']),
  KelimeKarti(kelime: 'Budizm', yasakliKelimeler: ['Buddha', 'Aydınlanma', 'Meditasyon', 'Asya', 'Barış']),
  KelimeKarti(kelime: 'Hinduizm', yasakliKelimeler: ['Hindistan', 'Karma', 'Reenkarnasyon', 'Tanrı', 'Kutsal']),
  KelimeKarti(kelime: 'Yahudilik', yasakliKelimeler: ['Musevi', 'Torah', 'Kudüs', 'Tarih', 'İnanç']),

  // TARİHİ MEDENİYETLER
  KelimeKarti(kelime: 'Roma İmparatorluğu', yasakliKelimeler: ['Sezar', 'Gladyatör', 'Kolezyum', 'Büyük', 'Tarih']),

  // MODERN KÜLTÜR
  KelimeKarti(kelime: 'Hollywood', yasakliKelimeler: ['Amerika', 'Film', 'Yıldız', 'Kırmızı', 'Halısı']),
  KelimeKarti(kelime: 'Broadway', yasakliKelimeler: ['New York', 'Tiyatro', 'Müzikal', 'Sahne', 'Şov']),
  KelimeKarti(kelime: 'Carnival', yasakliKelimeler: ['Venedik', 'Maske', 'Festival', 'Tarih', 'Gelenek']),

  // GELENEKLER VE FESTİVALLER
  KelimeKarti(kelime: 'Diwali', yasakliKelimeler: ['Hindistan', 'Işık', 'Festival', 'Yeni Yıl', 'Lamba']),
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

  // ULUSLARARASI ÖRGÜTLER
  KelimeKarti(kelime: 'Birleşmiş Milletler', yasakliKelimeler: ['BM', 'Dünya', 'Barış', 'New York', 'Diplomasi']),
  KelimeKarti(kelime: 'Avrupa Birliği', yasakliKelimeler: ['AB', 'Avrupa', 'Euro', 'Birlik', 'Ekonomi']),
  KelimeKarti(kelime: 'NATO', yasakliKelimeler: ['Askeri', 'İttifak', 'Savunma', 'Avrupa', 'Amerika']),

  // EKONOMİK GÜÇLER
  KelimeKarti(kelime: 'G7', yasakliKelimeler: ['Ülkeler', 'Zengin', 'Dünya', 'Ekonomi', 'Gelişmiş']),
  KelimeKarti(kelime: 'BRICS', yasakliKelimeler: ['Gelişen', 'Ekonomi', 'Dünya', 'Güç', 'Ülkeler']),
  KelimeKarti(kelime: 'OECD', yasakliKelimeler: ['Ekonomi', 'Gelişmiş', 'Ülkeler', 'İstatistik', 'Politika']),

  // KÜLTÜREL DEĞERLER
  KelimeKarti(kelime: 'Misafirperverlik', yasakliKelimeler: ['Türk', 'Kültür', 'İkram', 'Gelenek', 'Değer']),
  KelimeKarti(kelime: 'Çay Kültürü', yasakliKelimeler: ['Türk', 'İkram', 'Sohbet', 'Gelenek', 'Toplumsal']),
  KelimeKarti(kelime: 'Aile Bağları', yasakliKelimeler: ['Türk', 'Gelenek', 'Değer', 'Toplum', 'Önemli']),

  // MODERN ŞEHİRLER
  KelimeKarti(kelime: 'Dubai', yasakliKelimeler: ['BAE', 'Modern', 'Gökyüzü', 'Lüks', 'Çöl']),
  KelimeKarti(kelime: 'Singapur', yasakliKelimeler: ['Asya', 'Modern', 'Temiz', 'Ada', 'Ticaret']),
  KelimeKarti(kelime: 'Hong Kong', yasakliKelimeler: ['Çin', 'Ada', 'Ticaret', 'Modern', 'Viktoriya']),
  KelimeKarti(kelime: 'Şanghay', yasakliKelimeler: ['Çin', 'Modern', 'Ekonomi', 'Nüfus', 'Gelecek']),

  // TARİHİ ŞEKİLLER

  // MODERN LİDERLER
  KelimeKarti(kelime: 'Angela Merkel', yasakliKelimeler: ['Almanya', 'Şansölye', 'Kadın', 'Güçlü', 'Avrupa']),
  KelimeKarti(kelime: 'Justin Trudeau', yasakliKelimeler: ['Kanada', 'Başbakan', 'Genç', 'Liberal', 'Fotojenik']),
  KelimeKarti(kelime: 'Jacinda Ardern', yasakliKelimeler: ['Yeni Zelanda', 'Başbakan', 'Kadın', 'Genç', 'Lider']),

  // YENI EKLENEN KELIMELER
  KelimeKarti(kelime: 'Portekiz', yasakliKelimeler: ['Lizbon', 'Fado', 'Okyanus', 'Keşif', 'Avrupa']),
  KelimeKarti(kelime: 'İsviçre', yasakliKelimeler: ['Alp', 'Çikolata', 'Saat', 'Tarafsız', 'Peynir']),
  KelimeKarti(kelime: 'Avusturya', yasakliKelimeler: ['Viyana', 'Alp', 'Müzik', 'Mozart', 'Avrupa']),
  KelimeKarti(kelime: 'Belçika', yasakliKelimeler: ['Brüksel', 'Çikolata', 'Waffle', 'Bira', 'Avrupa']),
  KelimeKarti(kelime: 'Polonya', yasakliKelimeler: ['Varşova', 'Avrupa', 'Pierogi', 'Tarih', 'Slav']),
  KelimeKarti(kelime: 'Pakistan', yasakliKelimeler: ['İslamabad', 'Güney Asya', 'Nükleer', 'Urduca', 'Himalaya']),
  KelimeKarti(kelime: 'Bangladeş', yasakliKelimeler: ['Dakka', 'Nehir', 'Güney Asya', 'Pamuk', 'Yoğun Nüfus']),
  KelimeKarti(kelime: 'Filipinler', yasakliKelimeler: ['Manila', 'Ada', 'Pasifik', 'Tropikal', 'Jeepney']),
  KelimeKarti(kelime: 'Malezya', yasakliKelimeler: ['Kuala Lumpur', 'Petronas Kuleleri', 'Tropikal', 'Asya', 'Muson']),
  KelimeKarti(kelime: 'Şili', yasakliKelimeler: ['Santiago', 'And Dağları', 'Uzun', 'Güney Amerika', 'Ekmek']),
  KelimeKarti(kelime: 'Peru', yasakliKelimeler: ['Lima', 'And Dağları', 'Lama', 'Güney Amerika', 'Patates']),
  KelimeKarti(kelime: 'Kolombiya', yasakliKelimeler: ['Bogota', 'Kahve', 'Güney Amerika', 'Amazon', 'Arepa']),
  KelimeKarti(kelime: 'Küba', yasakliKelimeler: ['Havana', 'Puro', 'Karayip', 'Sosyalizm', 'Salsa']),
  KelimeKarti(kelime: 'İzlanda', yasakliKelimeler: ['Reykjavik', 'Volkan', 'Buzul', 'Kuzey', 'Aurora']),
  KelimeKarti(kelime: 'İrlanda', yasakliKelimeler: ['Dublin', 'Yeşil', 'Ada', 'Guinness', 'Kelt']),
  KelimeKarti(kelime: 'İskoçya', yasakliKelimeler: ['Edinburgh', 'Etek', 'Gayda', 'Highland', 'Göl']),
  KelimeKarti(kelime: 'Tunus', yasakliKelimeler: ['Tunus Şehri', 'Kartaca', 'Kuzey Afrika', 'Akdeniz', 'Arapça']),
  KelimeKarti(kelime: 'Cezayir', yasakliKelimeler: ['Cezayir Şehri', 'Sahra', 'Kuzey Afrika', 'Fransızca', 'Petrol']),
  KelimeKarti(kelime: 'Etiyopya', yasakliKelimeler: ['Addis Ababa', 'Afrika Boynuzu', 'Kahve', 'Antik', 'Yüksek Rakım']),
  KelimeKarti(kelime: 'Umman', yasakliKelimeler: ['Muskat', 'Körfez', 'Çöl', 'Petrol', 'Arap']),
  KelimeKarti(kelime: 'Katar', yasakliKelimeler: ['Doha', 'Körfez', 'Doğalgaz', 'Dünya Kupası', 'Çöl']),
  KelimeKarti(kelime: 'Kuveyt', yasakliKelimeler: ['Körfez', 'Petrol', 'Çöl', 'Arap', 'Emirlik']),
  KelimeKarti(kelime: 'Lübnan', yasakliKelimeler: ['Beyrut', 'Akdeniz', 'Sedir', 'Çeşitlilik', 'Orta Doğu']),
  KelimeKarti(kelime: 'Suriye', yasakliKelimeler: ['Şam', 'Orta Doğu', 'Antik', 'Savaş', 'Komşu']),
  KelimeKarti(kelime: 'Irak', yasakliKelimeler: ['Bağdat', 'Mezopotamya', 'Petrol', 'Orta Doğu', 'Dicle']),
  KelimeKarti(kelime: 'Afganistan', yasakliKelimeler: ['Kabil', 'Dağlık', 'Orta Asya', 'Tarih', 'Savaş']),
  KelimeKarti(kelime: 'Nepal', yasakliKelimeler: ['Katmandu', 'Everest', 'Himalaya', 'Budizm', 'Dağcılık']),
  KelimeKarti(kelime: 'Sri Lanka', yasakliKelimeler: ['Kolombo', 'Ada', 'Çay', 'Hint Okyanusu', 'Fil']),
  KelimeKarti(kelime: 'Myanmar', yasakliKelimeler: ['Yangon', 'Pagoda', 'Güneydoğu Asya', 'Budist', 'Nehir']),
  KelimeKarti(kelime: 'Kamboçya', yasakliKelimeler: ['Phnom Penh', 'Angkor Wat', 'Güneydoğu Asya', 'Tapınak', 'Tarih']),
  KelimeKarti(kelime: 'Laos', yasakliKelimeler: ['Vientiane', 'Nehir', 'Güneydoğu Asya', 'Dağlık', 'Budist']),
  KelimeKarti(kelime: 'Özbekistan', yasakliKelimeler: ['Taşkent', 'Orta Asya', 'İpek Yolu', 'Semerkant', 'Türk']),
  KelimeKarti(kelime: 'Azerbaycan', yasakliKelimeler: ['Bakü', 'Kafkasya', 'Petrol', 'Türk', 'Hazar']),
  KelimeKarti(kelime: 'Gürcistan', yasakliKelimeler: ['Tiflis', 'Kafkasya', 'Şarap', 'Dağlık', 'Eski']),
  KelimeKarti(kelime: 'Ermenistan', yasakliKelimeler: ['Erivan', 'Kafkasya', 'Dağlık', 'Eski', 'Hristiyan']),
  KelimeKarti(kelime: 'Ukrayna', yasakliKelimeler: ['Kiev', 'Buğday', 'Avrupa', 'Savaş', 'Slav']),
  KelimeKarti(kelime: 'Macaristan', yasakliKelimeler: ['Budapeşte', 'Avrupa', 'Termal', 'Goulash', 'Tuna']),
  KelimeKarti(kelime: 'Romanya', yasakliKelimeler: ['Bükreş', 'Transilvanya', 'Avrupa', 'Kale', 'Slav Değil']),
  KelimeKarti(kelime: 'Bulgaristan', yasakliKelimeler: ['Sofya', 'Balkan', 'Gül Yağı', 'Avrupa', 'Yoğurt']),
  KelimeKarti(kelime: 'Hırvatistan', yasakliKelimeler: ['Zagreb', 'Adriyatik', 'Ada', 'Balkan', 'Turizm']),
  KelimeKarti(kelime: 'Slovenya', yasakliKelimeler: ['Ljubljana', 'Alp', 'Mağara', 'Göl', 'Küçük']),
  KelimeKarti(kelime: 'Letonya', yasakliKelimeler: ['Riga', 'Baltık', 'Orman', 'Avrupa', 'Kuzey']),
  KelimeKarti(kelime: 'Litvanya', yasakliKelimeler: ['Vilnius', 'Baltık', 'Avrupa', 'Kuzey', 'Orman']),
  KelimeKarti(kelime: 'Estonya', yasakliKelimeler: ['Tallinn', 'Baltık', 'Dijital', 'Kuzey', 'Orman']),
  KelimeKarti(kelime: 'Malta', yasakliKelimeler: ['Valetta', 'Ada', 'Akdeniz', 'Küçük', 'Şövalye']),
  KelimeKarti(kelime: 'Kıbrıs', yasakliKelimeler: ['Lefkoşa', 'Ada', 'Akdeniz', 'Bölünmüş', 'Portakal']),
  KelimeKarti(kelime: 'Lüksemburg', yasakliKelimeler: ['Küçük', 'Avrupa', 'Banka', 'Zengin', 'Üç Dil']),
  KelimeKarti(kelime: 'Burj Khalifa', yasakliKelimeler: ['Dubai', 'Gökdelen', 'Dünyanın En Yükseği', 'BAE', 'Çelik']),
  KelimeKarti(kelime: 'Sidney Opera Binası', yasakliKelimeler: ['Avustralya', 'Beyaz', 'Yelken', 'Liman', 'Mimari']),
  KelimeKarti(kelime: 'Petra', yasakliKelimeler: ['Ürdün', 'Kayaya Oyma', 'Antik', 'Çöl', 'Nebatiler']),
  KelimeKarti(kelime: 'Machu Picchu', yasakliKelimeler: ['Peru', 'And Dağları', 'İnka', 'Taş', 'Yüksek']),
  KelimeKarti(kelime: 'Niagara Şelalesi', yasakliKelimeler: ['Kanada', 'ABD', 'Şelale', 'Su', 'Sınır']),
  KelimeKarti(kelime: 'Chichen Itza', yasakliKelimeler: ['Meksika', 'Maya', 'Piramit', 'Antik', 'Tapınak']),
  KelimeKarti(kelime: 'Stonehenge', yasakliKelimeler: ['İngiltere', 'Taş', 'Antik', 'Daire', 'Gizem']),
  KelimeKarti(kelime: 'Kremlin', yasakliKelimeler: ['Moskova', 'Kale', 'Rusya', 'Kızıl Meydan', 'Hükümet']),
  KelimeKarti(kelime: 'Sagrada Familia', yasakliKelimeler: ['Barcelona', 'Gaudi', 'Kilise', 'İnşaat', 'Mimari']),
  KelimeKarti(kelime: 'Alhambra', yasakliKelimeler: ['İspanya', 'Saray', 'Arap', 'Granada', 'Mimari']),
  KelimeKarti(kelime: 'Almanca', yasakliKelimeler: ['Dil', 'Almanya', 'Avusturya', 'Gramer', 'Avrupa']),
  KelimeKarti(kelime: 'İtalyanca', yasakliKelimeler: ['Dil', 'İtalya', 'Opera', 'Latin', 'Avrupa']),
  KelimeKarti(kelime: 'Portekizce', yasakliKelimeler: ['Dil', 'Portekiz', 'Brezilya', 'Latin', 'Avrupa']),
  KelimeKarti(kelime: 'Rusça', yasakliKelimeler: ['Dil', 'Rusya', 'Kiril', 'Slav', 'Avrasya']),
  KelimeKarti(kelime: 'Japonca', yasakliKelimeler: ['Dil', 'Japonya', 'Kanji', 'Asya', 'Hece']),
  KelimeKarti(kelime: 'Korece', yasakliKelimeler: ['Dil', 'Kore', 'Hangul', 'Asya', 'Alfabe']),
  KelimeKarti(kelime: 'Şintoizm', yasakliKelimeler: ['Japonya', 'Tapınak', 'Doğa', 'İnanç', 'Ruh']),
  KelimeKarti(kelime: 'Taoizm', yasakliKelimeler: ['Çin', 'Felsefe', 'Denge', 'Yin Yang', 'İnanç']),
  KelimeKarti(kelime: 'Sihizm', yasakliKelimeler: ['Hindistan', 'Sarık', 'İnanç', 'Punjab', 'Din']),
  KelimeKarti(kelime: 'Konfüçyüsçülük', yasakliKelimeler: ['Çin', 'Ahlak', 'Felsefe', 'Öğretmen', 'Düzen']),
  KelimeKarti(kelime: 'Noel', yasakliKelimeler: ['Hristiyan', 'Aralık', 'Hediye', 'Ağaç', 'Noel Baba']),
  KelimeKarti(kelime: 'Paskalya', yasakliKelimeler: ['Hristiyan', 'Yumurta', 'Tavşan', 'Bahar', 'Kutlama']),
  KelimeKarti(kelime: 'Şükran Günü', yasakliKelimeler: ['Amerika', 'Hindi', 'Kasım', 'Aile', 'Şükür']),
  KelimeKarti(kelime: 'Çin Yeni Yılı', yasakliKelimeler: ['Çin', 'Fener', 'Ejderha', 'Takvim', 'Kutlama']),
  KelimeKarti(kelime: 'Cadılar Bayramı', yasakliKelimeler: ['Amerika', 'Kabak', 'Kostüm', 'Ekim', 'Şeker']),
  KelimeKarti(kelime: 'Dünya Sağlık Örgütü', yasakliKelimeler: ['Uluslararası', 'Sağlık', 'Birleşmiş Milletler', 'Pandemi', 'Kuruluş']),
  KelimeKarti(kelime: 'Kızılhaç', yasakliKelimeler: ['Yardım', 'Afet', 'Uluslararası', 'Gönüllü', 'Sağlık']),
  KelimeKarti(kelime: 'Kızılay', yasakliKelimeler: ['Türkiye', 'Yardım', 'Afet', 'Gönüllü', 'Kan']),
  KelimeKarti(kelime: 'İpek Yolu', yasakliKelimeler: ['Ticaret', 'Çin', 'Kervan', 'Tarih', 'Asya']),
  KelimeKarti(kelime: 'Kervan', yasakliKelimeler: ['Deve', 'Çöl', 'Tacir', 'Yol', 'Konaklama']),
  KelimeKarti(kelime: 'Firavun', yasakliKelimeler: ['Mısır', 'Piramit', 'Kral', 'Antik', 'Nil']),
  KelimeKarti(kelime: 'Sultan', yasakliKelimeler: ['Osmanlı', 'Hükümdar', 'Saray', 'Taht', 'Fermanla']),
  KelimeKarti(kelime: 'Vikinglik', yasakliKelimeler: ['İskandinav', 'Gemi', 'Savaşçı', 'Kuzey', 'Fetih']),
  KelimeKarti(kelime: 'Gladyatör', yasakliKelimeler: ['Roma', 'Arena', 'Dövüş', 'Köle', 'Kolezyum']),
  KelimeKarti(kelime: 'Reggae', yasakliKelimeler: ['Jamaika', 'Müzik', 'Bob Marley', 'Ritim', 'Rahat']),
  KelimeKarti(kelime: 'Safari', yasakliKelimeler: ['Afrika', 'Hayvan', 'Gezi', 'Savan', 'Doğa']),
  KelimeKarti(kelime: 'Fil Yolu', yasakliKelimeler: ['Afrika', 'Göç', 'Hayvan', 'Savan', 'Sürü']),
];

List<KelimeKarti> karisikUlkelerKultur() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumUlkelerKultur);
  kopya.shuffle();
  return kopya;
}
