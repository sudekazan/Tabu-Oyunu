import '../../kelimeler.dart';

// Film & Diziler Kategorisi - Güncel filmler ve diziler
const List<KelimeKarti> premiumFilmDiziler = [
  // NETFLIX ORİJİNAL DİZİLER
  KelimeKarti(kelime: 'Stranger Things', yasakliKelimeler: ['Netflix', 'Hawkins', 'Upside Down', '80\'ler', 'Kız']),
  KelimeKarti(kelime: 'The Witcher', yasakliKelimeler: ['Geralt', 'Ciri', 'Yennefer', 'Monster', 'Netflix']),
  KelimeKarti(kelime: 'Dark', yasakliKelimeler: ['Zaman', 'Döngüsü', 'Winden', 'Almanya', 'Netflix']),
  KelimeKarti(kelime: 'Money Heist', yasakliKelimeler: ['İspanya', 'Soygun', 'Kırmızı', 'Takım', 'Profesör']),
  KelimeKarti(kelime: 'Squid Game', yasakliKelimeler: ['Güney Kore', 'Oyun', 'Maske', 'Netflix', 'Ödül']),
  KelimeKarti(kelime: 'The Crown', yasakliKelimeler: ['Kraliçe', 'İngiltere', 'Elizabeth', 'Aile', 'Taht']),
  KelimeKarti(kelime: 'Bridgerton', yasakliKelimeler: ['Daphne', 'Simon', 'Dans', 'Regency', 'Aşk']),
  KelimeKarti(kelime: 'The Umbrella Academy', yasakliKelimeler: ['Süper Güç', 'Kardeşler', 'Zaman', 'Netflix', 'Vanya']),

  // MARVEL FİLMLERİ
  KelimeKarti(kelime: 'Avengers: Endgame', yasakliKelimeler: ['Thanos', 'Snap', 'Superhero', 'MCU', 'Final']),
  KelimeKarti(kelime: 'Iron Man', yasakliKelimeler: ['Tony Stark', 'Robert Downey Jr', 'Zırh', 'Genius', 'Billionaire']),
  KelimeKarti(kelime: 'Captain America', yasakliKelimeler: ['Steve Rogers', 'Shield', 'Patriot', 'Serum', 'Winter']),
  KelimeKarti(kelime: 'Black Widow', yasakliKelimeler: ['Scarlett Johansson', 'Spy', 'Widow', 'Red Room', 'Sister']),
  KelimeKarti(kelime: 'Spider-Man', yasakliKelimeler: ['Peter Parker', 'Örümcek', 'Ağ', 'Web', 'Swing']),
  KelimeKarti(kelime: 'Thor', yasakliKelimeler: ['Çekiç', 'Asgard', 'Tanrı', 'Fırtına', 'Mjolnir']),
  KelimeKarti(kelime: 'Hulk', yasakliKelimeler: ['Bruce Banner', 'Yeşil', 'Öfke', 'Scientist', 'Strong']),
  KelimeKarti(kelime: 'Doctor Strange', yasakliKelimeler: ['Magic', 'Portal', 'Surgeon', 'Strange', 'Reality']),

  // DC FİLMLERİ
  KelimeKarti(kelime: 'The Joker', yasakliKelimeler: ['Joaquin Phoenix', 'Chaos', 'Batman', 'Laugh', 'Clown']),
  KelimeKarti(kelime: 'Batman', yasakliKelimeler: ['Bruce Wayne', 'Dark Knight', 'Gotham', 'Justice', 'Vigilante']),
  KelimeKarti(kelime: 'Wonder Woman', yasakliKelimeler: ['Gal Gadot', 'Diana Prince', 'Amazon', 'Warrior', 'Princess']),
  KelimeKarti(kelime: 'Aquaman', yasakliKelimeler: ['Jason Momoa', 'Atlantis', 'Ocean', 'King', 'Trident']),
  KelimeKarti(kelime: 'The Flash', yasakliKelimeler: ['Barry Allen', 'Speed', 'Lightning', 'Time', 'Hero']),

  // TÜRK DİZİLERİ
  KelimeKarti(kelime: 'Diriliş Ertuğrul', yasakliKelimeler: ['Osmanlı', 'Ertuğrul', 'Bey', 'Halime', 'Kayı']),
  KelimeKarti(kelime: 'Muhteşem Yüzyıl', yasakliKelimeler: ['Kanuni', 'Hurrem', 'Saray', 'Osmanlı', 'Harem']),
  KelimeKarti(kelime: 'Çukur', yasakliKelimeler: ['Koçovalılar', 'İstanbul', 'Aile', 'Vatan', 'Savaş']),
  KelimeKarti(kelime: 'Sacred Games', yasakliKelimeler: ['Hindistan', 'Gangster', 'Polis', 'Sartaj', 'Gautam']),
  KelimeKarti(kelime: 'Lupin', yasakliKelimeler: ['Fransa', 'Hırsız', 'Arsène', 'Plan', 'Zeki']),

  // KLASİK TÜRK DİZİLERİ
  KelimeKarti(kelime: 'Aşk-ı Memnu', yasakliKelimeler: ['Behlül', 'Bihter', 'Adnan', 'Firdevs', 'Peyker']),
  KelimeKarti(kelime: 'Arka Sokaklar', yasakliKelimeler: ['Ekin', 'Defne', 'Volkan', 'Mahmut', 'Yasemin']),
  KelimeKarti(kelime: 'Kurtlar Vadisi', yasakliKelimeler: ['Polat', 'Memati', 'Aslan', 'Abdullah', 'Çakır']),
  KelimeKarti(kelime: 'Fatmagül\'ün Suçu Ne?', yasakliKelimeler: ['Kerim', 'Mustafa', 'Fatmagül', 'Rahmi', 'Mukaddes']),
  KelimeKarti(kelime: 'Hanımın Çiftliği', yasakliKelimeler: ['Hanım', 'Şevket', 'Meryem', 'Tarık', 'Çiftlik']),
  KelimeKarti(kelime: 'Kara Sevda', yasakliKelimeler: ['Kemal', 'Nihan', 'Tufan', 'Asu', 'Zeynep']),
  KelimeKarti(kelime: 'Öyle Bir Geçer Zaman ki', yasakliKelimeler: ['Nihat', 'Borç', 'Aşk', 'İntikam', 'Aile']),
  KelimeKarti(kelime: 'İki Hayat', yasakliKelimeler: ['Elif', 'İzzet', 'Leyla', 'Arman', 'İkiz']),
  KelimeKarti(kelime: 'Çalıkuşu', yasakliKelimeler: ['Feride', 'Kamran', 'Halide Edib', 'Roman', 'Aşk']),
  KelimeKarti(kelime: 'Ayrılsak da Beraberiz', yasakliKelimeler: ['İrem', 'Yiğit', 'Deniz', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Hayat Bilgisi', yasakliKelimeler: ['Yusuf', 'Pelin', 'Ece', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Adı Efsane', yasakliKelimeler: ['Kemal', 'Poyraz', 'Aksiyon', 'Polis', 'Mafya']),
  KelimeKarti(kelime: 'Son Yaz', yasakliKelimeler: ['İrem', 'Deniz', 'Gençlik', 'Romantik', 'Yaz']),
  KelimeKarti(kelime: 'Her Sevda Bir Vefa', yasakliKelimeler: ['Cemal', 'Derya', 'Romantik', 'Gençlik', 'Okul']),
  KelimeKarti(kelime: 'Yaz Gülü', yasakliKelimeler: ['Zeynep', 'Kemal', 'Romantik', 'Gençlik', 'Okul']),

  // DAHA FAZLA TÜRK DİZİSİ
  KelimeKarti(kelime: 'Kuzey Yıldızı İlk Aşk', yasakliKelimeler: ['Zeynep', 'Kuzey', 'Show TV', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Yalı Çapkını', yasakliKelimeler: ['Ferit', 'Defne', 'Show TV', 'Romantik', 'Komedi']),
  KelimeKarti(kelime: 'Love on the Mask', yasakliKelimeler: ['Yiğit', 'Nazlı', 'Show TV', 'Romantik', 'Doktor']),
  KelimeKarti(kelime: 'Aşk Mantık İntikam', yasakliKelimeler: ['Ezgi', 'Yaşar', 'Kanal D', 'Romantik', 'Aile']),
  KelimeKarti(kelime: 'Sıcak Kafa', yasakliKelimeler: ['Orkun', 'Ömer', 'Comedy', 'Arkadaş', 'İstanbul']),
  KelimeKarti(kelime: 'Sen Çal Kapımı', yasakliKelimeler: ['Eda', 'Serkan', 'Fox TV', 'Romantik', 'Ofis']),
  KelimeKarti(kelime: 'Doğduğun Ev Kaderindir', yasakliKelimeler: ['Zeynep', 'Vedat', 'Kanal D', 'Aile', 'Komedi']),
  KelimeKarti(kelime: 'Bağlı Kalpler', yasakliKelimeler: ['Aşk', 'Romantik', 'Gençlik', 'TRT', 'Okul']),
  KelimeKarti(kelime: 'İstanbullu Gelin', yasakliKelimeler: ['Faruk', 'Sultan', 'Star TV', 'Romantik', 'Aile']),
  KelimeKarti(kelime: 'Erkenci Kuş', yasakliKelimeler: ['Can', 'Sanem', 'Star TV', 'Reklam', 'Aşk']),
  KelimeKarti(kelime: 'Sefirin Kızı', yasakliKelimeler: ['Melek', 'Sancar', 'Star TV', 'Diplomat', 'Romantik']),
  KelimeKarti(kelime: 'Hayat Şarkısı', yasakliKelimeler: ['Derin', 'Mehmet', 'Kanal D', 'Romantik', 'Müzik']),
  KelimeKarti(kelime: 'Gülperi', yasakliKelimeler: ['Mete', 'Gülperi', 'Show TV', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Kızılcık Şerbeti', yasakliKelimeler: ['Şerife', 'Aziz', 'Show TV', 'Romantik', 'Tarihi']),
  KelimeKarti(kelime: 'Çarpışma', yasakliKelimeler: ['Yaşar', 'Kader', 'Kanal D', 'Romantik', 'Aksiyon']),

  // NETFLIX TÜRK ORİJİNAL DİZİLERİ
  KelimeKarti(kelime: 'Aşk 101', yasakliKelimeler: ['Kerem', 'Mert', 'Netflix', 'Üniversite', 'Romantik']),
  KelimeKarti(kelime: 'Çember', yasakliKelimeler: ['Aslı', 'Cem', 'Netflix', 'Gizem', 'Psikolojik']),
  KelimeKarti(kelime: 'Bir Kadın Bir Erkek', yasakliKelimeler: ['Deniz', 'Kemal', 'Netflix', 'Romantik', 'Komedi']),
  KelimeKarti(kelime: 'Hakan: Muhafız', yasakliKelimeler: ['Hakan', 'Koruma', 'Netflix', 'Aksiyon', 'Muhafız']),
  KelimeKarti(kelime: 'Aşkın Gören Gözü Yok', yasakliKelimeler: ['Bahar', 'Barış', 'Netflix', 'Romantik', 'Görüşme']),

  // TÜRK FİLMLERİ
  KelimeKarti(kelime: 'Arog', yasakliKelimeler: ['Cem Yılmaz', 'Bilim Kurgu', 'Komedi', 'Uzay', 'Film']),
  KelimeKarti(kelime: 'G.O.R.A.', yasakliKelimeler: ['Cem Yılmaz', 'Uzay', 'Komedi', 'Bilim Kurgu', 'Film']),
  KelimeKarti(kelime: 'Babam ve Oğlum', yasakliKelimeler: ['Çağan Irmak', 'Aile', 'Drama', 'Asker', 'Film']),
  KelimeKarti(kelime: 'Vizontele', yasakliKelimeler: ['Yılmaz Erdoğan', 'Komedi', 'Televizyon', '80\'ler', 'Film']),
  KelimeKarti(kelime: 'İzmir\'de Aşk Hikayeleri', yasakliKelimeler: ['İzmir', 'Romantik', 'Gençlik', 'Film', 'Aşk']),
  KelimeKarti(kelime: 'Kış Uykusu', yasakliKelimeler: ['Nuri Bilge Ceylan', 'Drama', 'Aile', 'Film', 'Kış']),
  KelimeKarti(kelime: 'Vurun Kahpeye', yasakliKelimeler: ['Haluk Bilginer', 'Komedi', 'Film', 'İtalyan', 'Mafya']),
  KelimeKarti(kelime: 'Deli Dumrul', yasakliKelimeler: ['Haluk Bilginer', 'Komedi', 'Film', 'Deli', 'Masal']),
  KelimeKarti(kelime: 'Romantik Komedi', yasakliKelimeler: ['Cem Yılmaz', 'Ezgi Mola', 'Komedi', 'Romantik', 'Film']),
  KelimeKarti(kelime: 'Organize İşler', yasakliKelimeler: ['Sarp Apak', 'Komedi', 'Mafya', 'Film', 'Organize']),
  KelimeKarti(kelime: 'Recep İvedik', yasakliKelimeler: ['Şahan Gökbakar', 'Komedi', 'Film', 'Recep', 'İvedik']),

  // TÜRK OYUNCULAR DEVAM
  KelimeKarti(kelime: 'Haluk Bilginer', yasakliKelimeler: ['Vurun Kahpeye', 'Winter Sleep', 'Deli Dumrul', 'Actor', 'Theater']),
  KelimeKarti(kelime: 'Cem Yılmaz', yasakliKelimeler: ['Arog', 'GORA', 'Comedy', 'Director', 'Actor']),
  KelimeKarti(kelime: 'Şahan Gökbakar', yasakliKelimeler: ['Kurtlar Vadisi', 'Polat', 'Memati', 'Actor', 'Series']),
  KelimeKarti(kelime: 'Engin Altan Düzyatan', yasakliKelimeler: ['Diriliş Ertuğrul', 'Ertuğrul Bey', 'Osman Bey', 'Actor', 'Series']),
  KelimeKarti(kelime: 'Hande Erçel', yasakliKelimeler: ['Sen Çal Kapımı', 'Hayat', 'Love on the Mask', 'Actress', 'Model']),
  KelimeKarti(kelime: 'Kerem Bürsin', yasakliKelimeler: ['Sen Çal Kapımı', 'Serkan', 'Actor', 'Romantik', 'Model']),
  KelimeKarti(kelime: 'Mert Yazıcıoğlu', yasakliKelimeler: ['Kuzey Yıldızı', 'Kuzey', 'Actor', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Alina Boz', yasakliKelimeler: ['Love on the Mask', 'Nazlı', 'Actress', 'Doktor', 'Romantik']),
  KelimeKarti(kelime: 'İrem Helvacıoğlu', yasakliKelimeler: ['Doğduğun Ev', 'Zeynep', 'Actress', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Serkan Çayoğlu', yasakliKelimeler: ['Yalı Çapkını', 'Ferit', 'Actor', 'Romantik', 'Komedi']),
  KelimeKarti(kelime: 'Simay Barlas', yasakliKelimeler: ['Aşk Mantık İntikam', 'Ezgi', 'Actress', 'Romantik', 'Aile']),
  KelimeKarti(kelime: 'Ayda Aksel', yasakliKelimeler: ['İstanbullu Gelin', 'Sultan', 'Actress', 'Romantik', 'Aile']),
  KelimeKarti(kelime: 'Murat Boz', yasakliKelimeler: ['Hayat Şarkısı', 'Mehmet', 'Singer', 'Actor', 'Romantik']),
  KelimeKarti(kelime: 'Gökçe Bahadır', yasakliKelimeler: ['Erkenci Kuş', 'Sanem', 'Actress', 'Reklam', 'Aşk']),
  KelimeKarti(kelime: 'Ahmet Mümtaz Taylan', yasakliKelimeler: ['Sefirin Kızı', 'Sancar', 'Actor', 'Diplomat', 'Romantik']),
  KelimeKarti(kelime: 'Elçin Sangu', yasakliKelimeler: ['Sefirin Kızı', 'Melek', 'Actress', 'Diplomat', 'Romantik']),
  KelimeKarti(kelime: 'Beren Saat', yasakliKelimeler: ['İnci', 'Hatice', 'Actress', 'Romantik', 'Aile']),
  KelimeKarti(kelime: 'Tolga Sarıtaş', yasakliKelimeler: ['Çukur', 'Vartolu', 'Actor', 'Koçovalı', 'Aksiyon']),
  KelimeKarti(kelime: 'Nejat İşler', yasakliKelimeler: ['Çukur', 'Mahmud', 'Actor', 'Koçovalı', 'Aile']),
  KelimeKarti(kelime: 'Aras Bulut İynemli', yasakliKelimeler: ['Çukur', 'İdris', 'Actor', 'Koçovalı', 'Genç']),

  // TÜRK KARAKTERLER
  KelimeKarti(kelime: 'Polat Alemdar', yasakliKelimeler: ['Şahan Gökbakar', 'Kurtlar Vadisi', 'Polat', 'Memati', 'Karakter']),
  KelimeKarti(kelime: 'Memati Baş', yasakliKelimeler: ['Şahan Gökbakar', 'Kurtlar Vadisi', 'Polat', 'Memati', 'Karakter']),
  KelimeKarti(kelime: 'Ertuğrul Bey', yasakliKelimeler: ['Engin Altan', 'Diriliş Ertuğrul', 'Osmanlı', 'Kayı', 'Karakter']),
  KelimeKarti(kelime: 'Halime Hatun', yasakliKelimeler: ['Esra Bilgiç', 'Diriliş Ertuğrul', 'Ertuğrul', 'Osmanlı', 'Karakter']),
  KelimeKarti(kelime: 'Hurrem Sultan', yasakliKelimeler: ['Meryem Uzerli', 'Muhteşem Yüzyıl', 'Kanuni', 'Saray', 'Karakter']),
  KelimeKarti(kelime: 'Kanuni Sultan Süleyman', yasakliKelimeler: ['Halit Ergenç', 'Muhteşem Yüzyıl', 'Hurrem', 'Osmanlı', 'Karakter']),
  KelimeKarti(kelime: 'Serkan Bolat', yasakliKelimeler: ['Kerem Bürsin', 'Sen Çal Kapımı', 'Eda', 'Ofis', 'Karakter']),
  KelimeKarti(kelime: 'Eda Yıldız', yasakliKelimeler: ['Hande Erçel', 'Sen Çal Kapımı', 'Serkan', 'Mimar', 'Karakter']),
  KelimeKarti(kelime: 'Ferit Şimsaroğlu', yasakliKelimeler: ['Serkan Çayoğlu', 'Yalı Çapkını', 'Defne', 'Romantik', 'Karakter']),
  KelimeKarti(kelime: 'Defne Topal', yasakliKelimeler: ['Simay Barlas', 'Yalı Çapkını', 'Ferit', 'Gençlik', 'Karakter']),
  KelimeKarti(kelime: 'Yiğit Aydın', yasakliKelimeler: ['Emre Kıvılcım', 'Love on the Mask', 'Nazlı', 'Doktor', 'Karakter']),
  KelimeKarti(kelime: 'Nazlı Pinar', yasakliKelimeler: ['Alina Boz', 'Love on the Mask', 'Yiğit', 'Doktor', 'Karakter']),
  KelimeKarti(kelime: 'Kuzey Tekinoğlu', yasakliKelimeler: ['Mert Yazıcıoğlu', 'Kuzey Yıldızı', 'Zeynep', 'Gençlik', 'Karakter']),
  KelimeKarti(kelime: 'Zeynep Ateş', yasakliKelimeler: ['İrem Helvacıoğlu', 'Kuzey Yıldızı', 'Kuzey', 'Gençlik', 'Karakter']),

  // KLASİK TÜRK DİZİ KARAKTERLERİ
  KelimeKarti(kelime: 'Behlül Haznedar', yasakliKelimeler: ['Kıvanç Tatlıtuğ', 'Aşk-ı Memnu', 'Bihter', 'Adnan', 'Karakter']),
  KelimeKarti(kelime: 'Bihter Yöreoğlu', yasakliKelimeler: ['Beren Saat', 'Aşk-ı Memnu', 'Behlül', 'Adnan', 'Karakter']),
  KelimeKarti(kelime: 'Adnan Ziyagil', yasakliKelimeler: ['Selçuk Yöntem', 'Aşk-ı Memnu', 'Firdevs', 'Nihat', 'Karakter']),
  KelimeKarti(kelime: 'Firdevs Yöreoğlu', yasakliKelimeler: ['Nebahat Çehre', 'Aşk-ı Memnu', 'Adnan', 'Bihter', 'Karakter']),
  KelimeKarti(kelime: 'Peyker Ziyagil', yasakliKelimeler: ['Nur Fettahoğlu', 'Aşk-ı Memnu', 'Nihat', 'Nihal', 'Karakter']),
  KelimeKarti(kelime: 'Ekin Koçovalı', yasakliKelimeler: ['Furkan Palalı', 'Arka Sokaklar', 'Defne', 'Volkan', 'Karakter']),
  KelimeKarti(kelime: 'Defne Koçovalı', yasakliKelimeler: ['Ezgi Asaroğlu', 'Arka Sokaklar', 'Ekin', 'Mahmut', 'Karakter']),
  KelimeKarti(kelime: 'Volkan Koçovalı', yasakliKelimeler: ['Kaan Urgancıoğlu', 'Arka Sokaklar', 'Ekin', 'Defne', 'Karakter']),
  KelimeKarti(kelime: 'Mahmut Koçovalı', yasakliKelimeler: ['Uğur Polat', 'Arka Sokaklar', 'Aile', 'İstanbul', 'Karakter']),
  KelimeKarti(kelime: 'Aslan Soylu', yasakliKelimeler: ['Erkan Petekkaya', 'Kurtlar Vadisi', 'Polat', 'Abdullah', 'Karakter']),
  KelimeKarti(kelime: 'Abdullah Çatlı', yasakliKelimeler: ['Erdoğan Aydemir', 'Kurtlar Vadisi', 'Polat', 'Memati', 'Karakter']),
  KelimeKarti(kelime: 'Kerim İlker', yasakliKelimeler: ['Burak Hakkı', 'Fatmagül', 'Mustafa', 'Rahmi', 'Karakter']),
  KelimeKarti(kelime: 'Mustafa Nalçalı', yasakliKelimeler: ['Engin Öztürk', 'Fatmagül', 'Kerim', 'Mukaddes', 'Karakter']),
  KelimeKarti(kelime: 'Fatmagül Ketenci', yasakliKelimeler: ['Beren Gökyıldız', 'Fatmagül', 'Suç', 'Rahmi', 'Karakter']),
  KelimeKarti(kelime: 'Rahmi Ketenci', yasakliKelimeler: ['Kaan Taşaner', 'Fatmagül', 'Mustafa', 'Mukaddes', 'Karakter']),
  KelimeKarti(kelime: 'Hanım Ağa', yasakliKelimeler: ['Banu Alkan', 'Hanımın Çiftliği', 'Şevket', 'Meryem', 'Karakter']),
  KelimeKarti(kelime: 'Şevket Ağa', yasakliKelimeler: ['Halil Ergün', 'Hanımın Çiftliği', 'Hanım', 'Tarık', 'Karakter']),
  KelimeKarti(kelime: 'Meryem', yasakliKelimeler: ['Meral Çetinkaya', 'Hanımın Çiftliği', 'Hanım', 'Şevket', 'Karakter']),
  KelimeKarti(kelime: 'Kemal Soydere', yasakliKelimeler: ['Burak Özçivit', 'Kara Sevda', 'Nihan', 'Tufan', 'Karakter']),
  KelimeKarti(kelime: 'Nihan Sevda', yasakliKelimeler: ['Neslihan Atagül', 'Kara Sevda', 'Kemal', 'Asu', 'Karakter']),
  KelimeKarti(kelime: 'Tufan Soydere', yasakliKelimeler: ['Kürşat Alnıaçık', 'Kara Sevda', 'Kemal', 'Nihan', 'Karakter']),
  KelimeKarti(kelime: 'Nihat Koç', yasakliKelimeler: ['Erdal Özyağcılar', 'Geçer Zaman', 'Borç', 'Aşk', 'Karakter']),
  KelimeKarti(kelime: 'Elif', yasakliKelimeler: ['Özge Özberk', 'İki Hayat', 'İzzet', 'Leyla', 'Karakter']),
  KelimeKarti(kelime: 'İzzet', yasakliKelimeler: ['Alp Navruz', 'İki Hayat', 'Elif', 'Arman', 'Karakter']),
  KelimeKarti(kelime: 'Feride', yasakliKelimeler: ['Songül Öden', 'Çalıkuşu', 'Kamran', 'Halide Edib', 'Karakter']),
  KelimeKarti(kelime: 'Kamran', yasakliKelimeler: ['Talat Bulut', 'Çalıkuşu', 'Feride', 'Roman', 'Karakter']),
  KelimeKarti(kelime: 'Poyraz Karayel', yasakliKelimeler: ['Kaan Urgancıoğlu', 'Adı Efsane', 'Kemal', 'Aksiyon', 'Karakter']),
  KelimeKarti(kelime: 'Kemal', yasakliKelimeler: ['Ahmet Saraçoğlu', 'Adı Efsane', 'Poyraz', 'Polis', 'Karakter']),
  KelimeKarti(kelime: 'Yusuf', yasakliKelimeler: ['Mert Ramazan Demir', 'Hayat Bilgisi', 'Pelin', 'Ece', 'Karakter']),
  KelimeKarti(kelime: 'Pelin', yasakliKelimeler: ['Aslı Bekiroğlu', 'Hayat Bilgisi', 'Yusuf', 'Ece', 'Karakter']),
  KelimeKarti(kelime: 'İrem', yasakliKelimeler: ['Gülçin Ergül', 'Ayrılsak da Beraberiz', 'Yiğit', 'Deniz', 'Karakter']),
  KelimeKarti(kelime: 'Yiğit', yasakliKelimeler: ['Onur Tuna', 'Ayrılsak da Beraberiz', 'İrem', 'Deniz', 'Karakter']),
  KelimeKarti(kelime: 'Cemal', yasakliKelimeler: ['Mehmet Ali Nuroğlu', 'Her Sevda Bir Vefa', 'Derya', 'Okul', 'Karakter']),
  KelimeKarti(kelime: 'Derya', yasakliKelimeler: ['Nihal Yalçın', 'Her Sevda Bir Vefa', 'Cemal', 'Romantik', 'Karakter']),

  // KLASİK TÜRK OYUNCULAR
  KelimeKarti(kelime: 'Kıvanç Tatlıtuğ', yasakliKelimeler: ['Aşk-ı Memnu', 'Behlül', 'Actor', 'Romantik', 'Model']),
  KelimeKarti(kelime: 'Beren Saat', yasakliKelimeler: ['Aşk-ı Memnu', 'Bihter', 'Actress', 'Romantik', 'Model']),
  KelimeKarti(kelime: 'Selçuk Yöntem', yasakliKelimeler: ['Aşk-ı Memnu', 'Adnan', 'Actor', 'Karakter', 'Tiyatro']),
  KelimeKarti(kelime: 'Nebahat Çehre', yasakliKelimeler: ['Aşk-ı Memnu', 'Firdevs', 'Actress', 'Karakter', 'Tiyatro']),
  KelimeKarti(kelime: 'Nur Fettahoğlu', yasakliKelimeler: ['Aşk-ı Memnu', 'Peyker', 'Actress', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Furkan Palalı', yasakliKelimeler: ['Arka Sokaklar', 'Ekin', 'Actor', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Ezgi Asaroğlu', yasakliKelimeler: ['Arka Sokaklar', 'Defne', 'Actress', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Uğur Polat', yasakliKelimeler: ['Arka Sokaklar', 'Mahmut', 'Actor', 'Aile', 'Koçovalı']),
  KelimeKarti(kelime: 'Erkan Petekkaya', yasakliKelimeler: ['Kurtlar Vadisi', 'Aslan', 'Actor', 'Polat', 'Memati']),
  KelimeKarti(kelime: 'Burak Hakkı', yasakliKelimeler: ['Fatmagül', 'Kerim', 'Actor', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Engin Öztürk', yasakliKelimeler: ['Fatmagül', 'Mustafa', 'Actor', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Beren Gökyıldız', yasakliKelimeler: ['Fatmagül', 'Fatmagül', 'Actress', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Banu Alkan', yasakliKelimeler: ['Hanımın Çiftliği', 'Hanım', 'Actress', 'Komedi', 'Romantik']),
  KelimeKarti(kelime: 'Burak Özçivit', yasakliKelimeler: ['Kara Sevda', 'Kemal', 'Actor', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Neslihan Atagül', yasakliKelimeler: ['Kara Sevda', 'Nihan', 'Actress', 'Romantik', 'Gençlik']),
  KelimeKarti(kelime: 'Songül Öden', yasakliKelimeler: ['Çalıkuşu', 'Feride', 'Actress', 'Romantik', 'Tarihi']),
  KelimeKarti(kelime: 'Kaan Urgancıoğlu', yasakliKelimeler: ['Poyraz', 'Adı Efsane', 'Actor', 'Aksiyon', 'Polis']),
  KelimeKarti(kelime: 'Mert Ramazan Demir', yasakliKelimeler: ['Hayat Bilgisi', 'Yusuf', 'Actor', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Gülçin Ergül', yasakliKelimeler: ['Ayrılsak da Beraberiz', 'İrem', 'Actress', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Mehmet Ali Nuroğlu', yasakliKelimeler: ['Her Sevda Bir Vefa', 'Cemal', 'Actor', 'Gençlik', 'Romantik']),

  // KLASİK FİLMLER
  KelimeKarti(kelime: 'The Godfather', yasakliKelimeler: ['Francis Ford Coppola', 'Mafia', 'Vito Corleone', 'Family', 'Crime']),
  KelimeKarti(kelime: 'Pulp Fiction', yasakliKelimeler: ['Quentin Tarantino', 'Non-linear', 'Vincent', 'Jules', 'Dance']),
  KelimeKarti(kelime: 'The Matrix', yasakliKelimeler: ['Neo', 'Red Pill', 'Reality', 'Simulation', 'Keanu']),
  KelimeKarti(kelime: 'Inception', yasakliKelimeler: ['Christopher Nolan', 'Dream', 'Cobb', 'Layer', 'Time']),
  KelimeKarti(kelime: 'Titanic', yasakliKelimeler: ['Leonardo DiCaprio', 'Kate Winslet', 'Gemisi', 'Iceberg', 'Love']),
  KelimeKarti(kelime: 'The Shawshank Redemption', yasakliKelimeler: ['Tim Robbins', 'Morgan Freeman', 'Prison', 'Hope', 'Redemption']),
  KelimeKarti(kelime: 'Forrest Gump', yasakliKelimeler: ['Tom Hanks', 'Run', 'Life', 'Chocolate', 'Destiny']),

  // YÖNETMENLER
  KelimeKarti(kelime: 'Christopher Nolan', yasakliKelimeler: ['Inception', 'Dark Knight', 'Interstellar', 'Director', 'Genius']),
  KelimeKarti(kelime: 'Steven Spielberg', yasakliKelimeler: ['Jurassic Park', 'E.T.', 'Schindler\'s List', 'Director', 'Blockbuster']),
  KelimeKarti(kelime: 'Martin Scorsese', yasakliKelimeler: ['Goodfellas', 'Taxi Driver', 'Casino', 'Director', 'Crime']),
  KelimeKarti(kelime: 'Quentin Tarantino', yasakliKelimeler: ['Pulp Fiction', 'Kill Bill', 'Inglourious Basterds', 'Director', 'Style']),
  KelimeKarti(kelime: 'Ridley Scott', yasakliKelimeler: ['Blade Runner', 'Gladiator', 'Alien', 'Director', 'Sci-Fi']),

  // OYUNCULAR
  KelimeKarti(kelime: 'Leonardo DiCaprio', yasakliKelimeler: ['Titanic', 'Oscar', 'Actor', ' Revenant', 'Inception']),
  KelimeKarti(kelime: 'Denzel Washington', yasakliKelimeler: ['Training Day', 'Malcolm X', 'Glory', 'Actor', 'Academy']),
  KelimeKarti(kelime: 'Meryl Streep', yasakliKelimeler: ['Sophie\'s Choice', 'Kramer vs Kramer', 'Actress', 'Academy', 'Awards']),
  KelimeKarti(kelime: 'Brad Pitt', yasakliKelimeler: ['Fight Club', 'Once Upon a Time', 'Moneyball', 'Actor', 'Charming']),
  KelimeKarti(kelime: 'Scarlett Johansson', yasakliKelimeler: ['Black Widow', 'Lost in Translation', 'Lucy', 'Actress', 'Marvel']),

  // TÜRK OYUNCULAR
  KelimeKarti(kelime: 'Haluk Bilginer', yasakliKelimeler: ['Vurun Kahpeye', 'Winter Sleep', 'Deli Dumrul', 'Actor', 'Theater']),
  KelimeKarti(kelime: 'Cem Yılmaz', yasakliKelimeler: ['Arog', 'GORA', 'Comedy', 'Director', 'Actor']),
  KelimeKarti(kelime: 'Şahan Gökbakar', yasakliKelimeler: ['Kurtlar Vadisi', 'Polat', 'Memati', 'Actor', 'Series']),
  KelimeKarti(kelime: 'Engin Altan Düzyatan', yasakliKelimeler: ['Diriliş Ertuğrul', 'Ertuğrul Bey', 'Osman Bey', 'Actor', 'Series']),
  KelimeKarti(kelime: 'Hande Erçel', yasakliKelimeler: ['Sen Çal Kapımı', 'Hayat', 'Love on the Mask', 'Actress', 'Model']),

  // DİZLERE ÖZEL
  KelimeKarti(kelime: 'Breaking Bad', yasakliKelimeler: ['Walter White', 'Heisenberg', 'Crystal', 'AMC', 'Crime']),
  KelimeKarti(kelime: 'Game of Thrones', yasakliKelimeler: ['Winter is Coming', 'Dragons', 'Throne', 'HBO', 'Fantasy']),
  KelimeKarti(kelime: 'The Mandalorian', yasakliKelimeler: ['Star Wars', 'Bounty Hunter', 'Baby Yoda', 'Disney+', 'Scum']),
  KelimeKarti(kelime: 'The Office', yasakliKelimeler: ['Michael Scott', 'Dunder Mifflin', 'Comedy', 'Mockumentary', 'NBC']),
  KelimeKarti(kelime: 'Friends', yasakliKelimeler: ['Central Perk', 'Monica', 'Rachel', 'Ross', 'Chandler']),
  KelimeKarti(kelime: 'The Big Bang Theory', yasakliKelimeler: ['Sheldon', 'Penny', 'Physics', 'Comic Books', 'Nerds']),
  KelimeKarti(kelime: 'Sherlock', yasakliKelimeler: ['Benedict Cumberbatch', 'Detective', 'Watson', 'Baker Street', 'Moriarty']),

  // TÜRK DİZİLERİ DEVAM
  KelimeKarti(kelime: 'Yalı Çapkını', yasakliKelimeler: ['Ferit', 'Defne', 'Show TV', 'Romantik', 'Komedi']),
  KelimeKarti(kelime: 'Love on the Mask', yasakliKelimeler: ['Yiğit', 'Nazlı', 'Show TV', 'Romantik', 'Doktor']),
  KelimeKarti(kelime: 'Aşk Mantık İntikam', yasakliKelimeler: ['Ezgi', 'Yaşar', 'Kanal D', 'Romantik', 'Aile']),
  KelimeKarti(kelime: 'Kuzey Yıldızı İlk Aşk', yasakliKelimeler: ['Zeynep', 'Kuzey', 'Show TV', 'Gençlik', 'Romantik']),
  KelimeKarti(kelime: 'Sıcak Kafa', yasakliKelimeler: ['Orkun', 'Ömer', 'Comedy', 'Arkadaş', 'İstanbul']),

  // NETFLIX FİLMLERİ
  KelimeKarti(kelime: 'Bird Box', yasakliKelimeler: ['Sandra Bullock', 'Göz', 'Apocalypse', 'Creatures', 'Netflix']),
  KelimeKarti(kelime: 'Extraction', yasakliKelimeler: ['Chris Hemsworth', 'Mercenary', 'Kidnapping', 'Action', 'Netflix']),
  KelimeKarti(kelime: 'The Irishman', yasakliKelimeler: ['Robert De Niro', 'Al Pacino', 'Joe Pesci', 'Mafia', 'Netflix']),
  KelimeKarti(kelime: 'Roma', yasakliKelimeler: ['Alfonso Cuarón', 'Mexico City', 'Black and White', 'Maid', 'Netflix']),

  // ANIMASYON FİLMLERİ
  KelimeKarti(kelime: 'Frozen', yasakliKelimeler: ['Elsa', 'Anna', 'Disney', 'Let It Go', 'Snow']),
  KelimeKarti(kelime: 'The Lion King', yasakliKelimeler: ['Simba', 'Mufasa', 'Hakuna Matata', 'Disney', 'Savannah']),
  KelimeKarti(kelime: 'Toy Story', yasakliKelimeler: ['Woody', 'Buzz Lightyear', 'Andy', 'Pixar', 'Toys']),
  KelimeKarti(kelime: 'Finding Nemo', yasakliKelimeler: ['Marlin', 'Dory', 'Clownfish', 'Pixar', 'Ocean']),
  KelimeKarti(kelime: 'Moana', yasakliKelimeler: ['Ocean', 'Wayfinder', 'Maui', 'Disney', 'Pacific']),

  // KORKU FİLMLERİ
  KelimeKarti(kelime: 'The Conjuring', yasakliKelimeler: ['Annabelle', 'Demon', 'Paranormal', 'Witch', 'Horror']),
  KelimeKarti(kelime: 'It', yasakliKelimeler: ['Pennywise', 'Clown', 'Losers Club', 'Horror', 'Remake']),
  KelimeKarti(kelime: 'Hereditary', yasakliKelimeler: ['Toni Collette', 'Family', 'Demon', 'Horror', 'Cult']),
  KelimeKarti(kelime: 'Get Out', yasakliKelimeler: ['Jordan Peele', 'Race', 'Horror', 'Comedy', 'Social']),

  // BİLİM KURGU FİLMLERİ
  KelimeKarti(kelime: 'Blade Runner 2049', yasakliKelimeler: ['Ryan Gosling', 'Replicant', 'Harrison Ford', 'Sci-Fi', 'Rain']),
  KelimeKarti(kelime: 'Arrival', yasakliKelimeler: ['Amy Adams', 'Aliens', 'Language', 'Sci-Fi', 'Contact']),
  KelimeKarti(kelime: 'Interstellar', yasakliKelimeler: ['Christopher Nolan', 'Black Hole', 'Murph', 'Space', 'Sci-Fi']),

  // KOMEDİ FİLMLERİ
  KelimeKarti(kelime: 'Superbad', yasakliKelimeler: ['Jonah Hill', 'Michael Cera', 'High School', 'Comedy', 'Teen']),
  KelimeKarti(kelime: 'The Hangover', yasakliKelimeler: ['Las Vegas', 'Bachelor Party', 'Comedy', 'Zach Galifianakis', 'Blackout']),
  KelimeKarti(kelime: 'Booksmart', yasakliKelimeler: ['Olivia Wilde', 'High School', 'Comedy', 'Female', 'Friendship']),

  // AKSIYON FİLMLERİ
  KelimeKarti(kelime: 'John Wick', yasakliKelimeler: ['Keanu Reeves', 'Assassin', 'Pension', 'Dog', 'Action']),
  KelimeKarti(kelime: 'Mad Max: Fury Road', yasakliKelimeler: ['George Miller', 'Post-apocalyptic', 'Furiosa', 'Action', 'Chase']),
  KelimeKarti(kelime: 'The Raid', yasakliKelimeler: ['Indonesia', 'Martial Arts', 'Police', 'Action', 'Apartment']),

  // ROMANTİK FİLMLER
  KelimeKarti(kelime: 'La La Land', yasakliKelimeler: ['Ryan Gosling', 'Emma Stone', 'Jazz', 'Dreams', 'Romance']),
  KelimeKarti(kelime: 'Crazy Rich Asians', yasakliKelimeler: ['Singapore', 'Family', 'Wedding', 'Romance', 'Culture']),
  KelimeKarti(kelime: 'To All the Boys I\'ve Loved Before', yasakliKelimeler: ['Lara Jean', 'Peter Kavinsky', 'Letters', 'Romance', 'Netflix']),

  // BELGESEL TİPİ
  KelimeKarti(kelime: 'Won\'t You Be My Neighbor?', yasakliKelimeler: ['Mr. Rogers', 'PBS', 'Children', 'Documentary', 'Kindness']),
  KelimeKarti(kelime: 'Free Solo', yasakliKelimeler: ['Alex Honnold', 'Rock Climbing', 'El Capitan', 'Documentary', 'Adventure']),
  KelimeKarti(kelime: 'Three Identical Strangers', yasakliKelimeler: ['Triplets', 'Adoption', 'Experiment', 'Documentary', 'Psychology']),
];

List<KelimeKarti> karisikFilmDiziler() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumFilmDiziler);
  kopya.shuffle();
  return kopya;
}
