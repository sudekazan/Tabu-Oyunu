import '../../kelimeler.dart';

// Yemek & Mutfak Kategorisi - Günlük yemekler ve mutfak kültürü
const List<KelimeKarti> premiumYemekMutfak = [
  // TÜRK MUTFAĞI
  KelimeKarti(kelime: 'Kebap', yasakliKelimeler: ['Et', 'Şiş', 'Mangal', 'Köfte', 'Türk']),
  KelimeKarti(kelime: 'Çorba', yasakliKelimeler: ['Sıcak', 'Kaşık', 'Mercimek', 'Tarhana', 'Yemek']),

  // DÜNYA MUTFAKLARI
  KelimeKarti(kelime: 'Burger', yasakliKelimeler: ['Amerika', 'Köfte', 'Ekmek', 'Salata', 'Fast Food']),
  KelimeKarti(kelime: 'Sushi', yasakliKelimeler: ['Japonya', 'Balık', 'Pirinç', 'Yosun', 'Çubuk']),
  KelimeKarti(kelime: 'Taco', yasakliKelimeler: ['Meksika', 'Mısır', 'Et', 'Baharat', 'Limon']),
  KelimeKarti(kelime: 'Paella', yasakliKelimeler: ['İspanya', 'Deniz Ürünleri', 'Sarıçalı', 'Pirinç', 'Valencia']),
  KelimeKarti(kelime: 'Curry', yasakliKelimeler: ['Hindistan', 'Baharat', 'Sıcak', 'Tavuk', 'Kokulu']),
  KelimeKarti(kelime: 'Falafel', yasakliKelimeler: ['Ortadoğu', 'Nohut', 'Kızartma', 'Tahini', 'Pita']),
  KelimeKarti(kelime: 'Kimchi', yasakliKelimeler: ['Güney Kore', 'Lahana', 'Fermente', 'Acı', 'Pilav']),
  KelimeKarti(kelime: 'Pad Thai', yasakliKelimeler: ['Tayland', 'Makarna', 'Fıstık', 'Krevet', 'Sıcak']),

  // TATLI VE İÇECEKLER
  KelimeKarti(kelime: 'Komposto', yasakliKelimeler: ['Meyve', 'Şeker', 'Su', 'Kavanoz', 'Türk']),
  KelimeKarti(kelime: 'Lokum', yasakliKelimeler: ['Tatlı', 'Şeker', 'Fıstık', 'İstanbul', 'Türk']),
  KelimeKarti(kelime: 'Kadayıf', yasakliKelimeler: ['Tatlı', 'Şerbet', 'Fıstık', 'Tel', 'Türk']),

  // YEMEK MALZEMELERİ
  KelimeKarti(kelime: 'Zeytinyağı', yasakliKelimeler: ['Sıvı', 'Altın', 'Salata', 'Türk', 'Ege']),
  KelimeKarti(kelime: 'Bulgur', yasakliKelimeler: ['Pirinç', 'Pilav', 'Kısır', 'Türk', 'Tahıl']),
  KelimeKarti(kelime: 'Mercimek', yasakliKelimeler: ['Kırmızı', 'Yeşil', 'Çorba', 'Pilav', 'Bitki']),
  KelimeKarti(kelime: 'Nohut', yasakliKelimeler: ['Yuvarlak', 'Pilav', 'Kuru', 'Falafel', 'Bitki']),
  KelimeKarti(kelime: 'Kıyma', yasakliKelimeler: ['Et', 'Döner', 'Köfte', 'Çekilmiş', 'Türk']),

  // MUTFAK ARAÇLARI

  // YEMEK TİPLERİ
  KelimeKarti(kelime: 'Kahvaltı', yasakliKelimeler: ['Sabah', 'Yumurta', 'Peynir', 'Ekmek', 'Türk']),
  KelimeKarti(kelime: 'Öğle Yemeği', yasakliKelimeler: ['Günlük', 'Ana', 'Yemek', 'Çorba', 'Et']),
  KelimeKarti(kelime: 'Akşam Yemeği', yasakliKelimeler: ['Gece', 'Aile', 'Yemek', 'Soğuk', 'Hafif']),
  KelimeKarti(kelime: 'Ara Öğün', yasakliKelimeler: ['Atıştırma', 'Meyve', 'Kuruyemiş', 'Küçük', 'Açlık']),
  KelimeKarti(kelime: 'Fast Food', yasakliKelimeler: ['Hızlı', 'Burger', 'Pizza', 'Amerika', 'Hazır']),

  // DÜNYA YEMEKLERİ DEVAM
  KelimeKarti(kelime: 'Hot Dog', yasakliKelimeler: ['Amerika', 'Sosis', 'Ekmek', 'Hardal', 'Sokak']),
  KelimeKarti(kelime: 'Fish and Chips', yasakliKelimeler: ['İngiltere', 'Balık', 'Patates', 'Kızartma', 'Gazete']),
  KelimeKarti(kelime: 'Poutine', yasakliKelimeler: ['Kanada', 'Patates', 'Peynir', 'Gravy', 'Soğuk']),
  KelimeKarti(kelime: 'Dim Sum', yasakliKelimeler: ['Çin', 'Buhar', 'Lokma', 'Çeşit', 'Çay']),
  KelimeKarti(kelime: 'Ramen', yasakliKelimeler: ['Japonya', 'Çorba', 'Makarna', 'Et', 'Soğan']),
  KelimeKarti(kelime: 'Pho', yasakliKelimeler: ['Vietnam', 'Çorba', 'Makarna', 'Et', 'Nane']),

  // TÜRK TATLILARI
  KelimeKarti(kelime: 'Revani', yasakliKelimeler: ['İrmik', 'Şerbet', 'Fıstık', 'Türk', 'Tatlı']),
  KelimeKarti(kelime: 'Halva', yasakliKelimeler: ['Tahın', 'Şeker', 'Susam', 'Türk', 'Tatlı']),

  // MEYVE VE SEBZELER

  // BAHARATLAR
  KelimeKarti(kelime: 'Kırmızı Biber', yasakliKelimeler: ['Acı', 'Toz', 'Yemek', 'Kırmızı', 'Baharat']),
  KelimeKarti(kelime: 'Karabiber', yasakliKelimeler: ['Siyah', 'Toz', 'Acı', 'Yemek', 'Baharat']),
  KelimeKarti(kelime: 'Kimyon', yasakliKelimeler: ['Toz', 'Kokulu', 'Yemek', 'Türk', 'Baharat']),
  KelimeKarti(kelime: 'Nane', yasakliKelimeler: ['Yeşil', 'Kokulu', 'Çay', 'Yemek', 'Bitki']),

  // MUTFAK KAVRAMLARI
  KelimeKarti(kelime: 'Pişirme', yasakliKelimeler: ['Sıcak', 'Tencere', 'Yemek', 'Zaman', 'Mutfak']),
  KelimeKarti(kelime: 'Kızartma', yasakliKelimeler: ['Yağ', 'Sıcak', 'Altın', 'Tava', 'Hızlı']),
  KelimeKarti(kelime: 'Haşlama', yasakliKelimeler: ['Su', 'Kaynama', 'Sebze', 'Yumuşak', 'Mutfak']),
  KelimeKarti(kelime: 'Fırınlama', yasakliKelimeler: ['Sıcak', 'Kapalı', 'Altın', 'Fırın', 'Yavaş']),
  KelimeKarti(kelime: 'Buharlama', yasakliKelimeler: ['Su', 'Kapalı', 'Sağlıklı', 'Yeşil', 'Hafif']),

  // YEMEK TARİFLERİ
  KelimeKarti(kelime: 'Salata', yasakliKelimeler: ['Yeşil', 'Sebze', 'Zeytinyağı', 'Hafif', 'Yaz']),
  KelimeKarti(kelime: 'Mercimek Köftesi', yasakliKelimeler: ['Kırmızı', 'Bulgur', 'Salata', 'Yeşil', 'Türk']),
  KelimeKarti(kelime: 'Yaprak Sarma', yasakliKelimeler: ['Asma', 'Yaprağı', 'İç Harç', 'Pirinç', 'Türk']),

  // İÇECEKLER DEVAM
  KelimeKarti(kelime: 'Türk Kahvesi', yasakliKelimeler: ['Koyu', 'Fincan', 'Kum', 'Fali', 'Türk']),
  KelimeKarti(kelime: 'Salep', yasakliKelimeler: ['Sıcak', 'Kış', 'Tarçın', 'Tatlı', 'İçecek']),
  KelimeKarti(kelime: 'Boza', yasakliKelimeler: ['Tahıl', 'Fermente', 'Tatlı', 'Türk', 'Kış']),
  KelimeKarti(kelime: 'Şalgam Suyu', yasakliKelimeler: ['Mor', 'Acı', 'Adana', 'İçecek', 'Türk']),
  KelimeKarti(kelime: 'Sahlep', yasakliKelimeler: ['Orkide', 'Sıcak', 'Tatlı', 'Kış', 'İçecek']),

  // DÜNYA TATLILARI
  KelimeKarti(kelime: 'Tiramisu', yasakliKelimeler: ['İtalya', 'Kahve', 'Maskarpone', 'Bisküvi', 'Tatlı']),
  KelimeKarti(kelime: 'Tarte Tatin', yasakliKelimeler: ['Fransa', 'Elma', 'Karamel', 'Ters', 'Tatlı']),
  KelimeKarti(kelime: 'Crème Brûlée', yasakliKelimeler: ['Fransa', 'Krema', 'Şeker', 'Yanık', 'Tatlı']),
  KelimeKarti(kelime: 'Cheesecake', yasakliKelimeler: ['Amerika', 'Peynir', 'Taban', 'Tatlı', 'Soğuk']),
  KelimeKarti(kelime: 'Macaron', yasakliKelimeler: ['Fransa', 'Çift', 'Renkli', 'Fıstık', 'Tatlı']),

  // YEMEK KÜLTÜRÜ
  KelimeKarti(kelime: 'Ramazan', yasakliKelimeler: ['Oruç', 'İftar', 'Sahur', 'Pide', 'Türk']),
  KelimeKarti(kelime: 'Aile Yemeği', yasakliKelimeler: ['Birlikte', 'Masa', 'Sohbet', 'Türk', 'Gelenek']),
  KelimeKarti(kelime: 'Konukseverlik', yasakliKelimeler: ['Misafir', 'İkram', 'Türk', 'Gelenek', 'Çay']),

  // YENİ TÜRK YEMEKLERİ
  KelimeKarti(kelime: 'Testi Kebabı', yasakliKelimeler: ['Kayseri', 'Kil', 'Testi', 'Et', 'Fırın']),
  KelimeKarti(kelime: 'Etli Ekmek', yasakliKelimeler: ['Kayseri', 'Pide', 'Et', 'Soğan', 'Fırın']),
  KelimeKarti(kelime: 'İmam Bayıldı', yasakliKelimeler: ['Patlıcan', 'Soğan', 'Sarımısak', 'Zeytinyağı', 'Fırın']),
  KelimeKarti(kelime: 'Zeytinyağlı Sarma', yasakliKelimeler: ['Yaprak', 'Pirinç', 'Zeytinyağı', 'Nane', 'Soğan']),
  KelimeKarti(kelime: 'İçli Köfte', yasakliKelimeler: ['Urfa', 'Bulgur', 'Et', 'Ceviz', 'Şeker']),
  KelimeKarti(kelime: 'Yoğurtlu Semizotu', yasakliKelimeler: ['Semizotu', 'Yoğurt', 'Sarımısak', 'Zeytinyağı', 'Nane']),

  // YENİ DÜNYA YEMEKLERİ
  KelimeKarti(kelime: 'Bibimbap', yasakliKelimeler: ['Güney Kore', 'Pirinç', 'Sebze', 'Et', 'Yumurta']),
  KelimeKarti(kelime: 'Tom Yum', yasakliKelimeler: ['Tayland', 'Çorba', 'Karides', 'Limon', 'Ot']),
  KelimeKarti(kelime: 'Butter Chicken', yasakliKelimeler: ['Hindistan', 'Tavuk', 'Tereyağı', 'Baharat', 'Yoğurt']),
  KelimeKarti(kelime: 'Ratatouille', yasakliKelimeler: ['Fransa', 'Sebze', 'Fırın', 'Provence', 'Zeytinyağı']),
  KelimeKarti(kelime: 'Miso Çorbası', yasakliKelimeler: ['Japonya', 'Fermente', 'Tofu', 'Yeşil', 'Soğan']),
  KelimeKarti(kelime: 'Feijoada', yasakliKelimeler: ['Brezilya', 'Fasulye', 'Et', 'Turşu', 'Pirinç']),
  KelimeKarti(kelime: 'Ceviche', yasakliKelimeler: ['Peru', 'Balık', 'Limon', 'Soğan', 'Mısır']),
  KelimeKarti(kelime: 'Pierogi', yasakliKelimeler: ['Polonya', 'Hamur', 'Doldurma', 'Patates', 'Peynir']),
  KelimeKarti(kelime: 'Spanakopita', yasakliKelimeler: ['Yunanistan', 'Ispanak', 'Feta', 'Yufka', 'Zeytinyağı']),
  KelimeKarti(kelime: 'Borscht', yasakliKelimeler: ['Ukrayna', 'Pancar', 'Çorba', 'Krema', 'Et']),

  // YENİ TATLI VE İÇECEKLER
  KelimeKarti(kelime: 'Tavuk Göğsü', yasakliKelimeler: ['Tatlı', 'Şerbet', 'Hindistan', 'Ceviz', 'Türk']),
  KelimeKarti(kelime: 'Muhallebi', yasakliKelimeler: ['Tatlı', 'Pirinç', 'Süt', 'Şeker', 'Türk']),
  KelimeKarti(kelime: 'Şöbiyet', yasakliKelimeler: ['Tatlı', 'Gaziantep', 'Fıstık', 'Şerbet', 'Türk']),
  KelimeKarti(kelime: 'Trileçe', yasakliKelimeler: ['Tatlı', 'İzmir', 'Yoğurt', 'Şerbet', 'Türk']),
  KelimeKarti(kelime: 'İrmik Helvası', yasakliKelimeler: ['Tatlı', 'İrmik', 'Şerbet', 'Fıstık', 'Türk']),
  KelimeKarti(kelime: 'Pahlava', yasakliKelimeler: ['Tatlı', 'Yufka', 'Fıstık', 'Şerbet', 'Türk']),
  KelimeKarti(kelime: 'Ekmek Kadayıfı', yasakliKelimeler: ['Tatlı', 'Ekmek', 'Şerbet', 'Fıstık', 'Türk']),
  KelimeKarti(kelime: 'Fıstıklı Baklava', yasakliKelimeler: ['Tatlı', 'Gaziantep', 'Fıstık', 'Şerbet', 'Türk']),

  // YENİ İÇECEKLER
  KelimeKarti(kelime: 'Demlik', yasakliKelimeler: ['Çay', 'Dem', 'Bardak', 'İki', 'Katlı']),
  KelimeKarti(kelime: 'Semaver', yasakliKelimeler: ['Çay', 'Sıcak', 'Su', 'Demlik', 'Eski']),
  KelimeKarti(kelime: 'Meyve Nektarı', yasakliKelimeler: ['Meyve', 'Şeker', 'Su', 'Kutu', 'İçecek']),
  KelimeKarti(kelime: 'Şıra', yasakliKelimeler: ['Üzüm', 'Şeker', 'Fermente', 'İlk', 'Aşama']),
  KelimeKarti(kelime: 'Malt', yasakliKelimeler: ['Arpa', 'Şeker', 'İçecek', 'Enerji', 'Tatlı']),

  // YENİ MEYVE VE SEBZELER
  KelimeKarti(kelime: 'Enginar', yasakliKelimeler: ['Yeşil', 'Diken', 'Haşlama', 'Zeytinyağı', 'Sebze']),
  KelimeKarti(kelime: 'Pazı', yasakliKelimeler: ['Yeşil', 'Yaprak', 'Haşlama', 'Zeytinyağı', 'Sebze']),

  // YENİ BAHARATLAR VE MALZEMELER
  KelimeKarti(kelime: 'Safran', yasakliKelimeler: ['Pahalı', 'Sarı', 'Pilav', 'Çiçek', 'Baharat']),
  KelimeKarti(kelime: 'Zencefil', yasakliKelimeler: ['Kök', 'Sıcak', 'Çay', 'Baharat', 'Şifa']),
  KelimeKarti(kelime: 'Tarçın', yasakliKelimeler: ['Kabuk', 'Tatlı', 'Çay', 'Baharat', 'Ağaç']),
  KelimeKarti(kelime: 'Kişniş', yasakliKelimeler: ['Yeşil', 'Tohum', 'Baharat', 'Çorba', 'Yemek']),
  KelimeKarti(kelime: 'Muskat', yasakliKelimeler: ['Fıstık', 'Tatlı', 'Baharat', 'Ceviz', 'Hindistan']),
  KelimeKarti(kelime: 'Çemen', yasakliKelimeler: ['Tohum', 'Acı', 'Baharat', 'Türk', 'Mutfağı']),
  KelimeKarti(kelime: 'İsot', yasakliKelimeler: ['Peynir', 'Baharat', 'Türk', 'Mutfağı', 'Kırmızı']),
  KelimeKarti(kelime: 'Sumak', yasakliKelimeler: ['Kırmızı', 'Asit', 'Baharat', 'Türk', 'Mutfağı']),
  KelimeKarti(kelime: 'Pul Biber', yasakliKelimeler: ['Kırmızı', 'Acı', 'Baharat', 'Türk', 'Mutfağı']),

  // YENİ YEMEK TARİFLERİ
  KelimeKarti(kelime: 'Patates Köftesi', yasakliKelimeler: ['Patates', 'Kıyma', 'Soğan', 'Baharat', 'Türk']),
  KelimeKarti(kelime: 'Kıymalı Pırasa', yasakliKelimeler: ['Pırasa', 'Kıyma', 'Pirinç', 'Zeytinyağı', 'Türk']),
  KelimeKarti(kelime: 'Etli Lahana Sarma', yasakliKelimeler: ['Lahana', 'Kıyma', 'Pirinç', 'Haşlama', 'Türk']),
  KelimeKarti(kelime: 'Tavuklu Pilav', yasakliKelimeler: ['Pilav', 'Tavuk', 'Sebze', 'Nohut', 'Türk']),
  KelimeKarti(kelime: 'Balık Tava', yasakliKelimeler: ['Balık', 'Limon', 'Zeytinyağı', 'Soğan', 'Türk']),
  KelimeKarti(kelime: 'Karnabahar Kızartma', yasakliKelimeler: ['Karnabahar', 'Yağ', 'Tuz', 'Sıcak', 'Türk']),
  KelimeKarti(kelime: 'Ezogelin Çorbası', yasakliKelimeler: ['Mercimek', 'Bulgur', 'Nane', 'Limon', 'Türk']),
  KelimeKarti(kelime: 'Domates Çorbası', yasakliKelimeler: ['Domates', 'Krema', 'Tereyağı', 'Un', 'Türk']),
  KelimeKarti(kelime: 'Tarhana Çorbası', yasakliKelimeler: ['Tarhana', 'Yoğurt', 'Nane', 'Tuz', 'Türk']),

  // YENİ DÜNYA TATLILARI
  KelimeKarti(kelime: 'Panna Cotta', yasakliKelimeler: ['İtalya', 'Krema', 'Jöle', 'Tatlı', 'Soğuk']),
  KelimeKarti(kelime: 'Profiterol', yasakliKelimeler: ['Fransa', 'Krema', 'Çikolata', 'Tatlı', 'Fırın']),
  KelimeKarti(kelime: 'Churros', yasakliKelimeler: ['İspanya', 'Çubuk', 'Şeker', 'Tatlı', 'Kızartma']),
  KelimeKarti(kelime: 'Cannoli', yasakliKelimeler: ['İtalya', 'Tüp', 'Ricotta', 'Çikolata', 'Sicilya']),
  KelimeKarti(kelime: 'Mille-Feuille', yasakliKelimeler: ['Fransa', 'Katman', 'Krema', 'Hamur', 'Tatlı']),
  KelimeKarti(kelime: 'Black Forest', yasakliKelimeler: ['Almanya', 'Çikolata', 'Kiraz', 'Krema', 'Tatlı']),
  KelimeKarti(kelime: 'Sachertorte', yasakliKelimeler: ['Avusturya', 'Çikolata', 'Marmelat', 'Tatlı', 'Viyana']),

  // YENİ MUTFAK ARAÇLARI
  KelimeKarti(kelime: 'Çay Makinesi', yasakliKelimeler: ['Çay', 'Dem', 'Otomatik', 'Elektrik', 'Türk']),

  // YENİ PİŞİRME YÖNTEMLERİ
  KelimeKarti(kelime: 'Sous Vide', yasakliKelimeler: ['Su', 'Kapalı', 'Hassas', 'Sıcaklık', 'Yöntem']),
  KelimeKarti(kelime: 'Sous-Vide', yasakliKelimeler: ['Fransızca', 'Su', 'Kontrol', 'Hassas', 'Pişirme']),
  KelimeKarti(kelime: 'Sous Vide Pişirme', yasakliKelimeler: ['Su', 'Kapalı', 'Hassas', 'Sıcaklık', 'Profesyonel']),
  KelimeKarti(kelime: 'Grill', yasakliKelimeler: ['Sıcak', 'Şarap', 'Köfte', 'Et', 'Yöntem']),
  KelimeKarti(kelime: 'Mangal', yasakliKelimeler: ['Açık', 'Hava', 'Köfte', 'Et', 'Türk']),
  KelimeKarti(kelime: 'Mangal Keyfi', yasakliKelimeler: ['Türk', 'Sosyal', 'Et', 'İkram', 'Gelenek']),
  KelimeKarti(kelime: 'Barbekü', yasakliKelimeler: ['Amerikan', 'Et', 'Sebze', 'Sos', 'Sosyal']),

  // YENİ YEMEK TÜRLERİ
  KelimeKarti(kelime: 'Vegan', yasakliKelimeler: ['Bitki', 'Bazlı', 'Et', 'Yok', 'Sağlıklı']),
  KelimeKarti(kelime: 'Vejetaryen', yasakliKelimeler: ['Et', 'Yok', 'Bitki', 'Süt', 'Peynir']),
  KelimeKarti(kelime: 'Glutensiz', yasakliKelimeler: ['Buğday', 'Yok', 'Çölyak', 'Tahıl', 'Diyet']),
  KelimeKarti(kelime: 'Organik', yasakliKelimeler: ['Doğal', 'Kimyasal', 'Yok', 'Sağlıklı', 'Üretim']),
  KelimeKarti(kelime: 'Slow Food', yasakliKelimeler: ['Yavaş', 'Lezzet', 'Geleneksel', 'Kaliteli', 'Hareket']),
  KelimeKarti(kelime: 'Molecular Gastronomi', yasakliKelimeler: ['Bilim', 'Kimya', 'Yenilikçi', 'Teknik', 'Pişirme']),

  // YENİ DÜNYA MUTFAKLARI DEVAM
  KelimeKarti(kelime: 'Enchilada', yasakliKelimeler: ['Meksika', 'Mısır', 'Et', 'Peynir', 'Baharat']),
  KelimeKarti(kelime: 'Quesadilla', yasakliKelimeler: ['Meksika', 'Mısır', 'Peynir', 'Et', 'Kızartma']),
  KelimeKarti(kelime: 'Empanada', yasakliKelimeler: ['Arjantin', 'Hamur', 'Et', 'Sebze', 'Kızartma']),
  KelimeKarti(kelime: 'Arepa', yasakliKelimeler: ['Kolombiya', 'Mısır', 'Peynir', 'Doldurma', 'Güney Amerika']),
  KelimeKarti(kelime: 'Moqueca', yasakliKelimeler: ['Brezilya', 'Balık', 'Hindistan', 'Cevizi', 'Kırmızı']),
  KelimeKarti(kelime: 'Jerk Chicken', yasakliKelimeler: ['Jamaika', 'Tavuk', 'Baharat', 'Marine', 'Kızartma']),
  KelimeKarti(kelime: 'Bunny Chow', yasakliKelimeler: ['Güney Afrika', 'Ekmek', 'Curry', 'Tavuk', 'Köken']),

  // YENİ TÜRK HAMUR İŞLERİ
  KelimeKarti(kelime: 'Su Böreği', yasakliKelimeler: ['Yufka', 'Su', 'Peynir', 'Fırın', 'Türk']),
  KelimeKarti(kelime: 'Kol Böreği', yasakliKelimeler: ['Yufka', 'Kol', 'Peynir', 'Fırın', 'Türk']),
  KelimeKarti(kelime: 'Sigara Böreği', yasakliKelimeler: ['Yufka', 'Sigara', 'Peynir', 'Kızartma', 'Türk']),
  KelimeKarti(kelime: 'Açma', yasakliKelimeler: ['Hamur', 'Susam', 'Fırın', 'Yuvarlak', 'Türk']),

  // YENİ İÇECEKLER DEVAM
  KelimeKarti(kelime: 'Naneli Çay', yasakliKelimeler: ['Nane', 'Sıcak', 'Türk', 'Gelenek', 'İkram']),
  KelimeKarti(kelime: 'Ihlamur', yasakliKelimeler: ['Çiçek', 'Sıcak', 'Şifa', 'Türk', 'İçecek']),
  KelimeKarti(kelime: 'Ada Çayı', yasakliKelimeler: ['Karadeniz', 'Siyah', 'Türk', 'Kaliteli', 'İçecek']),
  KelimeKarti(kelime: 'Kış Çayı', yasakliKelimeler: ['Karışım', 'Baharat', 'Sıcak', 'Türk', 'Gelenek']),
  KelimeKarti(kelime: 'Kahveli Türk Kahvesi', yasakliKelimeler: ['Kahve', 'Fincan', 'Türk', 'Gelenek', 'Fali']),
  KelimeKarti(kelime: 'Türk Çayı', yasakliKelimeler: ['Demlik', 'Bardak', 'Türk', 'Siyah', 'Gelenek']),

  // YENİ YEMEK KÜLTÜRÜ
  KelimeKarti(kelime: 'Ramazan Sofrası', yasakliKelimeler: ['İftar', 'Sahur', 'Oruç', 'Aile', 'Türk']),
  KelimeKarti(kelime: 'Kurban Bayramı Yemeği', yasakliKelimeler: ['Et', 'Pilav', 'Kurban', 'Aile', 'Türk']),
  KelimeKarti(kelime: 'Pazar Yemeği', yasakliKelimeler: ['Hafta', 'Aile', 'Çorba', 'Pilav', 'Türk']),
  KelimeKarti(kelime: 'Misafir İkramı', yasakliKelimeler: ['Çay', 'Lokum', 'Türk', 'Gelenek', 'Konuk']),
  KelimeKarti(kelime: 'Eid al-Fitr', yasakliKelimeler: ['Ramazan', 'Şeker', 'İftar', 'Müslüman', 'Bayram']),
  KelimeKarti(kelime: 'Thanksgiving', yasakliKelimeler: ['Amerika', 'Hindistan', 'Pilav', 'Tavuk', 'Aile']),

  // YENİ BAHARATLAR DEVAM
  KelimeKarti(kelime: 'Kardamom', yasakliKelimeler: ['Tohum', 'Baharat', 'Tatlı', 'Çay', 'Hindistan']),
  KelimeKarti(kelime: 'Küçük Hindistan Cevizi', yasakliKelimeler: ['Tohum', 'Baharat', 'Tatlı', 'Çay', 'Asya']),
  KelimeKarti(kelime: 'Kakule', yasakliKelimeler: ['Tohum', 'Baharat', 'Acı', 'Türk', 'Mutfağı']),
  KelimeKarti(kelime: 'Mahlep', yasakliKelimeler: ['Tohum', 'Baharat', 'Tatlı', 'Çekirdek', 'Türk']),

  // YENİ YEMEK TARZLARI
  KelimeKarti(kelime: 'Gourmet', yasakliKelimeler: ['Lüks', 'Kaliteli', 'Lezzet', 'Profesyonel', 'Mutfak']),
  KelimeKarti(kelime: 'Street Food', yasakliKelimeler: ['Sokak', 'Hızlı', 'Ucuz', 'Lezzet', 'Dünya']),
  KelimeKarti(kelime: 'Fine Dining', yasakliKelimeler: ['Yüksek', 'Mutfak', 'Servis', 'Lüks', 'Restoran']),
  KelimeKarti(kelime: 'Comfort Food', yasakliKelimeler: ['Rahat', 'Geleneksel', 'Aile', 'Yemek', 'Huzur']),
  KelimeKarti(kelime: 'Fusion', yasakliKelimeler: ['Karışım', 'Mutfak', 'Yenilikçi', 'Kültürel', 'Lezzet']),

  // YENİ MUTFAK TEKNİKLERİ
  KelimeKarti(kelime: 'Emülsiyon', yasakliKelimeler: ['Karışım', 'Yağ', 'Su', 'Sabun', 'Teknik']),
  KelimeKarti(kelime: 'Redüksiyon', yasakliKelimeler: ['Kaynatma', 'Yoğuşturma', 'Sos', 'Lezzet', 'Teknik']),
  KelimeKarti(kelime: 'Konfit', yasakliKelimeler: ['Yağ', 'Pişirme', 'Yavaş', 'Et', 'Teknik']),

];

List<KelimeKarti> karisikYemekMutfak() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumYemekMutfak);
  kopya.shuffle();
  return kopya;
}
