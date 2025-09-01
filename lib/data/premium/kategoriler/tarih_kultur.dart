import '../../kelimeler.dart';

// Tarih & Kültür Kategorisi
// Tarih figürleri, olaylar, medeniyetler
const List<KelimeKarti> premiumTarihKultur = [
  // TÜRK TARİHİ
  KelimeKarti(kelime: 'Atatürk', yasakliKelimeler: ['Mustafa Kemal', 'Kurtuluş', 'Savaş', 'Lider', 'Reform']),
  KelimeKarti(kelime: 'Osmanlı İmparatorluğu', yasakliKelimeler: ['Padişah', 'İstanbul', 'Fatih', 'İmparatorluk', 'Tarih']),
  KelimeKarti(kelime: 'Fatih Sultan Mehmet', yasakliKelimeler: ['İstanbul', 'Fetih', 'Padişah', 'Top', 'Bizans']),
  KelimeKarti(kelime: 'Kurtuluş Savaşı', yasakliKelimeler: ['Milli', 'Mücadele', 'Atatürk', 'İstiklal', 'İşgal']),
  KelimeKarti(kelime: 'Çanakkale Savaşı', yasakliKelimeler: ['Mustafa Kemal', 'Anzak', 'Çanakkale', 'Kahramanlık', 'Deniz']),
  KelimeKarti(kelime: '29 Ekim', yasakliKelimeler: ['Cumhuriyet', 'Atatürk', 'İlan', 'Türkiye', 'Bayram']),
  KelimeKarti(kelime: 'Türk Dil Kurumu', yasakliKelimeler: ['Atatürk', 'Dil', 'Reform', 'Türkçe', 'Harf']),
  KelimeKarti(kelime: 'İnkılaplar', yasakliKelimeler: ['Atatürk', 'Reform', 'Değişim', 'Modern', 'Türkiye']),
  KelimeKarti(kelime: 'Milli Eğitim', yasakliKelimeler: ['Atatürk', 'Öğretim', 'Okul', 'Çocuk', 'Gelecek']),

  // DÜNYA TARİHİ - LİDERLER
  KelimeKarti(kelime: 'Napolyon Bonaparte', yasakliKelimeler: ['Fransa', 'İmparator', 'Savaş', 'Avrupa', 'Korsika']),
  KelimeKarti(kelime: 'Julius Caesar', yasakliKelimeler: ['Roma', 'İmparator', 'Sezar', 'Galya', 'Antik']),
  KelimeKarti(kelime: 'İskender', yasakliKelimeler: ['Büyük', 'Makedonya', 'Fetih', 'İmparatorluk', 'Aristoteles']),
  KelimeKarti(kelime: 'Kleopatra', yasakliKelimeler: ['Mısır', 'Kraliçe', 'Antik', 'Roma', 'Sezar']),
  KelimeKarti(kelime: 'Mahatma Gandhi', yasakliKelimeler: ['Hindistan', 'Bağımsızlık', 'Barış', 'İngiltere', 'Direniş']),
  KelimeKarti(kelime: 'Martin Luther King', yasakliKelimeler: ['Amerika', 'Sivil', 'Haklar', 'Rüya', 'Irkçılık']),
  KelimeKarti(kelime: 'Nelson Mandela', yasakliKelimeler: ['Güney Afrika', 'Apartheid', 'Özgürlük', 'Hapis', 'Nobel']),
  KelimeKarti(kelime: 'Churchill', yasakliKelimeler: ['İngiltere', 'Başbakan', 'II. Dünya Savaşı', 'Hitler', 'Konuşma']),
  KelimeKarti(kelime: 'Roosevelt', yasakliKelimeler: ['Amerika', 'Başkan', 'New Deal', 'Depresyon', 'Franklin']),

  // TARİHİ OLAYLAR
  KelimeKarti(kelime: 'I. Dünya Savaşı', yasakliKelimeler: ['1914', '1918', 'Çanakkale', 'Trench', 'Müttefik']),
  KelimeKarti(kelime: 'II. Dünya Savaşı', yasakliKelimeler: ['1939', '1945', 'Hitler', 'Nazi', 'Atom']),
  KelimeKarti(kelime: 'Fransız İhtilali', yasakliKelimeler: ['1789', 'Devrim', 'Krallık', 'Guillotine', 'Haklar']),
  KelimeKarti(kelime: 'Sanayi Devrimi', yasakliKelimeler: ['İngiltere', 'Makine', 'Fabrika', 'Buhar', 'Teknoloji']),
  KelimeKarti(kelime: 'Amerikan Bağımsızlık', yasakliKelimeler: ['1776', 'İngiltere', 'Koloni', 'Declaration', 'Washington']),
  KelimeKarti(kelime: 'Ay\'a İlk Ayak Basma', yasakliKelimeler: ['Apollo', 'Armstrong', '1969', 'NASA', 'Ay']),
  KelimeKarti(kelime: 'Berlin Duvarı', yasakliKelimeler: ['Almanya', 'Soğuk Savaş', 'Düşüş', '1989', 'Bölünme']),
  KelimeKarti(kelime: 'Gül Devrimi', yasakliKelimeler: ['Gürcistan', '2003', 'Barışçıl', 'İhtilal', 'Saakaşvili']),

  // ANTİK UYGARLIKLAR
  KelimeKarti(kelime: 'Antik Yunan', yasakliKelimeler: ['Demokrasi', 'Filozof', 'Olimpiyat', 'Tanrı', 'Akropolis']),
  KelimeKarti(kelime: 'Antik Roma', yasakliKelimeler: ['İmparatorluk', 'Gladyatör', 'Kolosseum', 'Sezar', 'Lupercalia']),
  KelimeKarti(kelime: 'Antik Mısır', yasakliKelimeler: ['Firavun', 'Nil', 'Piramit', 'Mumya', 'Hieroglif']),
  KelimeKarti(kelime: 'Aztekler', yasakliKelimeler: ['Meksika', 'Maya', 'İnkalar', 'Tanrı', 'Fetih']),
  KelimeKarti(kelime: 'Maya Uygarlığı', yasakliKelimeler: ['Orta Amerika', 'Takvim', 'Piramit', 'Hieroglif', 'Aztek']),
  KelimeKarti(kelime: 'İnkalar', yasakliKelimeler: ['Peru', 'And', 'Dağları', 'İmparatorluk', 'Machu Picchu']),
  KelimeKarti(kelime: 'Hititler', yasakliKelimeler: ['Anadolu', 'Demir', 'Kral', 'Çivi', 'Yazısı']),
  KelimeKarti(kelime: 'Fenikeliler', yasakliKelimeler: ['Denizci', 'Alfabe', 'Lübnan', 'Ticaret', 'Kartaca']),
  KelimeKarti(kelime: 'Pers İmparatorluğu', yasakliKelimeler: ['Darius', 'İran', 'Zerdüşt', 'Büyük', 'Kral']),

  // İSLAM TARİHİ
  KelimeKarti(kelime: 'Hz. Muhammed', yasakliKelimeler: ['Peygamber', 'Kur\'an', 'Mekke', 'Medine', 'İslam']),
  KelimeKarti(kelime: 'Hz. Ali', yasakliKelimeler: ['Halife', 'Dört', 'Khalife', 'Peygamber', 'Torunu']),
  KelimeKarti(kelime: 'Hz. Ömer', yasakliKelimeler: ['Halife', 'İkinci', 'Fetih', 'Adalet', 'Müslüman']),
  KelimeKarti(kelime: 'Hicret', yasakliKelimeler: ['Mekke', 'Medine', 'Peygamber', 'Göç', 'Miladi']),
  KelimeKarti(kelime: 'Fetih', yasakliKelimeler: ['İstanbul', 'Fatih', 'Bizans', 'Mehmet', '1453']),
  KelimeKarti(kelime: 'Haçlı Seferleri', yasakliKelimeler: ['Kudüs', 'Hristiyan', 'Müslüman', 'Kutsal', 'Toprak']),

  // MODERN TARİH
  KelimeKarti(kelime: 'Soğuk Savaş', yasakliKelimeler: ['ABD', 'SSCB', 'Komünizm', 'Kapitalizm', 'Nükleer']),
  KelimeKarti(kelime: 'Auschwitz', yasakliKelimeler: ['Nazi', 'Kamp', 'Yahudi', 'Savaş', 'Holokost']),
  KelimeKarti(kelime: 'Hiroşima', yasakliKelimeler: ['Atom', 'Bomba', 'Japonya', 'Nagasaki', 'ABD']),
  KelimeKarti(kelime: 'Marshall Planı', yasakliKelimeler: ['ABD', 'Avrupa', 'Yardım', 'Ekonomi', 'Savaş']),
  KelimeKarti(kelime: 'Apartheid', yasakliKelimeler: ['Güney Afrika', 'Irkçılık', 'Mandela', 'Sistem', 'Beyaz']),
  KelimeKarti(kelime: 'Küba Füze Krizi', yasakliKelimeler: ['Kennedy', 'Kruşçev', 'Nükleer', '1962', 'Kriz']),

  // KÜLTÜREL DEVRİMLER
  KelimeKarti(kelime: 'Rönesans', yasakliKelimeler: ['İtalya', 'Sanat', 'Leonardo', 'İnsancılık', 'Yeniden']),
  KelimeKarti(kelime: 'Aydınlanma', yasakliKelimeler: ['Akıl', 'Bilim', 'Voltaire', 'Rousseau', 'Çağı']),
  KelimeKarti(kelime: 'Endüstri Devrimi', yasakliKelimeler: ['Makine', 'Fabrika', 'Buhar', 'İngiltere', 'Teknoloji']),
  KelimeKarti(kelime: 'Bilimsel Devrim', yasakliKelimeler: ['Galileo', 'Newton', 'Keşif', 'Bilim', 'Yöntem']),

  // BİLİM İNSANLARI
  KelimeKarti(kelime: 'Galileo Galilei', yasakliKelimeler: ['Teleskop', 'Dünya', 'Güneş', 'Fizik', 'İtalya']),
  KelimeKarti(kelime: 'Isaac Newton', yasakliKelimeler: ['Yerçekimi', 'Elma', 'Yasalar', 'Fizik', 'İngiltere']),
  KelimeKarti(kelime: 'Albert Einstein', yasakliKelimeler: ['Görecelik', 'E=mc²', 'Atom', 'Fizik', 'Nobel']),
  KelimeKarti(kelime: 'Marie Curie', yasakliKelimeler: ['Radyum', 'Polonyum', 'Radyasyon', 'Kadın', 'Nobel']),
  KelimeKarti(kelime: 'Charles Darwin', yasakliKelimeler: ['Evrim', 'Türlerin', 'Kökeni', 'Beagle', 'İngiltere']),
  KelimeKarti(kelime: 'Nikola Tesla', yasakliKelimeler: ['Elektrik', 'Akım', 'Bobin', 'Serbest', 'Enerji']),
  KelimeKarti(kelime: 'Thomas Edison', yasakliKelimeler: ['Ampul', 'İcat', 'Elektrik', 'Fonograf', 'ABD']),
  KelimeKarti(kelime: 'Alexander Graham Bell', yasakliKelimeler: ['Telefon', 'İcat', 'İşitme', 'Engelli', 'İskoçya']),

  // SANAT VE EDEBİYAT
  KelimeKarti(kelime: 'Leonardo da Vinci', yasakliKelimeler: ['Mona Lisa', 'Uçan', 'Makine', 'Rönesans', 'İtalya']),
  KelimeKarti(kelime: 'Pablo Picasso', yasakliKelimeler: ['Kübizm', 'İspanya', 'Sanatçı', 'Guernica', 'Resim']),
  KelimeKarti(kelime: 'William Shakespeare', yasakliKelimeler: ['İngiltere', 'Tiyatro', 'Romeo', 'Juliet', 'Soneler']),
  KelimeKarti(kelime: 'Homeros', yasakliKelimeler: ['İlyada', 'Odysseia', 'Antik', 'Yunan', 'Şair']),
  KelimeKarti(kelime: 'Dante Alighieri', yasakliKelimeler: ['İlahi', 'Komedi', 'Cennet', 'Cehennem', 'İtalya']),
  KelimeKarti(kelime: 'Victor Hugo', yasakliKelimeler: ['Sefiller', 'Notre Dame', 'Fransa', 'Yazar', 'Devrim']),
  KelimeKarti(kelime: 'Fyodor Dostoyevski', yasakliKelimeler: ['Suç', 'Ceza', 'Rusya', 'Yazar', 'Psikoloji']),

  // KEŞİFLER VE İCATLAR
  KelimeKarti(kelime: 'Amerika\'nın Keşfi', yasakliKelimeler: ['Kolomb', '1492', 'Yeni', 'Dünya', 'Gemiler']),
  KelimeKarti(kelime: 'Dünya\'nın Yuvarlaklığı', yasakliKelimeler: ['Galileo', 'Güneş', 'Merkez', 'Gök', 'Cisim']),
  KelimeKarti(kelime: 'Penisilin', yasakliKelimeler: ['Antibiyotik', 'Fleming', 'Mantar', 'Bakteri', 'İlaç']),
  KelimeKarti(kelime: 'DNA Yapısı', yasakliKelimeler: ['Watson', 'Crick', 'Çift', 'Sarmal', 'Genetik']),

  // SAVAŞLAR VE BARIŞLAR
  KelimeKarti(kelime: 'Truva Savaşı', yasakliKelimeler: ['Homeros', 'İlyada', 'Aşil', 'Hektor', 'At']),
  KelimeKarti(kelime: 'Vietnam Savaşı', yasakliKelimeler: ['ABD', 'Komünizm', 'Güney', 'Kuzey', 'Protesto']),
  KelimeKarti(kelime: 'Kore Savaşı', yasakliKelimeler: ['1950', 'Güney', 'Kuzey', 'ABD', 'Çin']),
  KelimeKarti(kelime: 'Yom Kippur Savaşı', yasakliKelimeler: ['İsrail', 'Arap', '1973', 'Suriye', 'Mısır']),

  // DİNLER VE İNANÇLAR
  KelimeKarti(kelime: 'Buddha', yasakliKelimeler: ['Budizm', 'Aydınlanma', 'Hindistan', 'Siddhartha', 'Barış']),
  KelimeKarti(kelime: 'İsa Mesih', yasakliKelimeler: ['Hristiyanlık', 'İncil', 'Çarmıh', 'Diriliş', 'Tanrı']),
  KelimeKarti(kelime: 'Musa', yasakliKelimeler: ['Tevrat', 'İsrail', 'Kızıldeniz', 'On Emir', 'Peygamber']),
  KelimeKarti(kelime: 'Zerdüşt', yasakliKelimeler: ['Ateş', 'İran', 'İyilik', 'Kötülük', 'Düalizm']),

  // MODERN DÖNEM
  KelimeKarti(kelime: 'İnternet', yasakliKelimeler: ['Bilgi', 'İletişim', 'Dünya', 'Web', 'Ağ']),
  KelimeKarti(kelime: 'Bilgisayar', yasakliKelimeler: ['Elektronik', 'Program', 'Veri', 'İşlemci', 'Ekran']),
  KelimeKarti(kelime: 'Mobil Telefon', yasakliKelimeler: ['Cep', 'İletişim', 'Dokunmatik', 'Uygulama', 'Akıllı']),
  KelimeKarti(kelime: 'Sosyal Medya', yasakliKelimeler: ['Facebook', 'Twitter', 'İnstagram', 'İletişim', 'Paylaşım']),

  // EK TARİHİ ŞEKİLLER
  KelimeKarti(kelime: 'Marcus Aurelius', yasakliKelimeler: ['Roma', 'İmparator', 'Filozof', 'Düşünceler', 'Marcus']),
  KelimeKarti(kelime: 'Konfüçyüs', yasakliKelimeler: ['Çin', 'Filozof', 'Ahlak', 'Öğretim', 'Konfüçyüsçülük']),
  KelimeKarti(kelime: 'Sokrates', yasakliKelimeler: ['Yunan', 'Filozof', 'Bilgelik', 'Ölüm', 'Platon']),
  KelimeKarti(kelime: 'Platon', yasakliKelimeler: ['Yunan', 'Filozof', 'İdeal', 'Devlet', 'Akademi']),
  KelimeKarti(kelime: 'Aristoteles', yasakliKelimeler: ['Yunan', 'Filozof', 'Mantık', 'Bilim', 'İskender']),
  KelimeKarti(kelime: 'Avicenna', yasakliKelimeler: ['İbn-i Sina', 'Doktor', 'Filozof', 'İslam', 'Tıp']),
  KelimeKarti(kelime: 'İbn-i Haldun', yasakliKelimeler: ['Tarih', 'Mukaddime', 'Uygarlık', 'Sosyal', 'Bilimler']),

  // OSMANLI DÖNEMİ
  KelimeKarti(kelime: 'Yavuz Sultan Selim', yasakliKelimeler: ['Halife', 'Kılıç', 'Ridaniye', 'Şah', 'İsmail']),
  KelimeKarti(kelime: 'Kanuni Sultan Süleyman', yasakliKelimeler: ['Muhteşem', 'Kanun', 'İmparatorluk', 'Macaristan', 'Sefer']),
  KelimeKarti(kelime: 'Mimar Sinan', yasakliKelimeler: ['Mimar', 'Camii', 'Kubbe', 'Osmanlı', 'Usta']),
  KelimeKarti(kelime: 'Piri Reis', yasakliKelimeler: ['Harita', 'Denizci', 'Kitab', 'Bahriye', 'Reis']),
  KelimeKarti(kelime: 'Evliya Çelebi', yasakliKelimeler: ['Seyahatname', 'Gezgin', 'Osmanlı', 'Tarih', 'Yazar']),

  // CUMHURİYET DÖNEMİ
  KelimeKarti(kelime: 'İsmet İnönü', yasakliKelimeler: ['İkinci', 'Başkan', 'Başbakan', 'Atatürk', 'İnönü']),
  KelimeKarti(kelime: 'Celal Bayar', yasakliKelimeler: ['Üçüncü', 'Başkan', 'DP', 'İktisat', 'Bayar']),
  KelimeKarti(kelime: 'Halide Edip Adıvar', yasakliKelimeler: ['Yazar', 'Siyasetçi', 'Kadın', 'Kurtuluş', 'Milli']),
  KelimeKarti(kelime: 'Halit Ziya Uşaklıgil', yasakliKelimeler: ['Mai ve Siyah', 'Servet-i Fünun', 'Yazar', 'Edebiyat', 'Türkçe']),

  // AVRUPA TARİHİ
  KelimeKarti(kelime: 'Karl Marx', yasakliKelimeler: ['Komünizm', 'Kapital', 'Engels', 'İşçi', 'Devrim']),
  KelimeKarti(kelime: 'Friedrich Nietzsche', yasakliKelimeler: ['Filozof', 'Tanrı', 'Ölü', 'Übermensch', 'Almanya']),
  KelimeKarti(kelime: 'Voltaire', yasakliKelimeler: ['Aydınlanma', 'Fransa', 'Yazar', 'Felsefe', 'Eleştiri']),
  KelimeKarti(kelime: 'Jean-Jacques Rousseau', yasakliKelimeler: ['Toplum Sözleşmesi', 'Filozof', 'Fransa', 'Doğa', 'İnsanı']),

  // AMERİKA TARİHİ
  KelimeKarti(kelime: 'Abraham Lincoln', yasakliKelimeler: ['Başkan', 'Kölelik', 'İç Savaş', 'Suikast', 'ABD']),
  KelimeKarti(kelime: 'George Washington', yasakliKelimeler: ['Kurucu', 'Başkan', 'Bağımsızlık', 'Ordu', 'ABD']),
  KelimeKarti(kelime: 'Christopher Columbus', yasakliKelimeler: ['Keşif', 'Amerika', 'İspanya', 'Denizci', 'Yeni']),
  KelimeKarti(kelime: 'Martin Luther', yasakliKelimeler: ['Reform', 'Kilise', 'Protestan', 'Almanya', 'Tezler']),

  // ASYA TARİHİ
  KelimeKarti(kelime: 'Çin Seddi', yasakliKelimeler: ['Çin', 'Duvar', 'İmparatorluk', 'Savunma', 'Tarih']),
  KelimeKarti(kelime: 'Maharaja', yasakliKelimeler: ['Hindistan', 'Kral', 'Tac Mahal', 'Gandhi', 'Bağımsızlık']),
  KelimeKarti(kelime: 'Samuray', yasakliKelimeler: ['Japonya', 'Savaşçı', 'Bushido', 'Kılıç', 'Shogun']),

  // AFRIKA TARİHİ
  KelimeKarti(kelime: 'Kahire', yasakliKelimeler: ['Mısır', 'Nil', 'Piramit', 'İslam', 'Tarih']),
  KelimeKarti(kelime: 'Zimbabve', yasakliKelimeler: ['Taş Kent', 'Afrika', 'Ruins', 'İmparatorluk', 'Tarih']),

  // KÜLTÜREL KAVRAMLAR
  KelimeKarti(kelime: 'Demokrasi', yasakliKelimeler: ['Halk', 'Yönetim', 'Seçim', 'Yunan', 'Hak']),
  KelimeKarti(kelime: 'Feodalite', yasakliKelimeler: ['Derebey', 'Toprak', 'Orta Çağ', 'Avrupa', 'Sistem']),
  KelimeKarti(kelime: 'Rönesans', yasakliKelimeler: ['Yeniden Doğuş', 'Sanat', 'İtalya', 'Bilim', 'İnsancılık']),
  KelimeKarti(kelime: 'Barok', yasakliKelimeler: ['Sanat', 'Müzik', 'Avrupa', '17. yüzyıl', 'Süsleme']),
  KelimeKarti(kelime: 'Romantizm', yasakliKelimeler: ['Sanat', 'Duygu', 'Doğa', '19. yüzyıl', 'Hareket']),

  // MODERN OLAYLAR
  KelimeKarti(kelime: 'Arap Baharı', yasakliKelimeler: ['2011', 'Tunus', 'İhtilal', 'Ortadoğu', 'Değişim']),
  KelimeKarti(kelime: 'Brexit', yasakliKelimeler: ['İngiltere', 'AB', 'Referandum', 'Johnson', 'Avrupa']),
  KelimeKarti(kelime: 'Paris İklim Anlaşması', yasakliKelimeler: ['İklim', 'Sıcaklık', 'Dünya', 'CO2', 'Anlaşma']),

  // BİLİMSEL KEŞİFLER TARİHİ
  KelimeKarti(kelime: 'Mikroskop', yasakliKelimeler: ['Keşif', 'Hücre', 'Leeuwenhoek', 'Mikrop', 'Bilim']),
  KelimeKarti(kelime: 'Teleskop', yasakliKelimeler: ['Galileo', 'Gök', 'Cisim', 'Uzay', 'Keşif']),
  KelimeKarti(kelime: 'Röntgen', yasakliKelimeler: ['X-ışını', 'Kemik', 'Radyasyon', 'Tıbbi', 'Keşif']),
  KelimeKarti(kelime: 'Antibiyotik', yasakliKelimeler: ['Penisilin', 'Fleming', 'Bakteri', 'İlaç', 'Tedavi']),

  // SAVAŞ TEKNOLOJİLERİ
  KelimeKarti(kelime: 'Tank', yasakliKelimeler: ['I. Dünya Savaşı', 'Zırhlı', 'Top', 'Hareketli', 'Savaş']),
  KelimeKarti(kelime: 'Uçak', yasakliKelimeler: ['Wright', 'Kardeşler', 'Hava', '1903', 'Keşif']),
  KelimeKarti(kelime: 'Radar', yasakliKelimeler: ['Savaş', 'Hava', 'Savunma', 'II. Dünya Savaşı', 'Teknoloji']),
  KelimeKarti(kelime: 'Atom Bombası', yasakliKelimeler: ['Nükleer', 'Hiroşima', 'Enerji', 'Fisyon', 'Yıkım']),

  // EK KÜLTÜREL UNSURLAR
  KelimeKarti(kelime: 'Olimpiyat', yasakliKelimeler: ['Spor', 'Oyunlar', 'Antik Yunan', 'Modern', 'Barış']),
  KelimeKarti(kelime: 'Nobel Ödülü', yasakliKelimeler: ['Alfred Nobel', 'Barış', 'Bilim', 'Edebiyat', 'İcat']),
  KelimeKarti(kelime: 'UNESCO', yasakliKelimeler: ['Dünya', 'Miras', 'Eğitim', 'Bilim', 'Kültür']),
  KelimeKarti(kelime: 'FIFA', yasakliKelimeler: ['Futbol', 'Dünya Kupası', 'Organizasyon', 'Uluslararası', 'Spor']),
];

List<KelimeKarti> karisikTarihKultur() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumTarihKultur);
  kopya.shuffle();
  return kopya;
}
