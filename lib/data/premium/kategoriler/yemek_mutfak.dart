import '../../kelimeler.dart';

// Yemek & Mutfak Kategorisi - Günlük yemekler ve mutfak kültürü
const List<KelimeKarti> premiumYemekMutfak = [
  // TÜRK MUTFAĞI
  KelimeKarti(kelime: 'Kebap', yasakliKelimeler: ['Et', 'Şiş', 'Mangal', 'Köfte', 'Türk']),
  KelimeKarti(kelime: 'Pilav', yasakliKelimeler: ['Pirinç', 'Sarı', 'Tereyağı', 'Bulgur', 'Yemek']),
  KelimeKarti(kelime: 'Çorba', yasakliKelimeler: ['Sıcak', 'Kaşık', 'Mercimek', 'Tarhana', 'Yemek']),
  KelimeKarti(kelime: 'Kumpir', yasakliKelimeler: ['Patates', 'Fırın', 'İç Harç', 'Kaşar', 'İstanbul']),
  KelimeKarti(kelime: 'Döner', yasakliKelimeler: ['Et', 'Yufka', 'Lahmacun', 'İskender', 'Türk']),
  KelimeKarti(kelime: 'Baklava', yasakliKelimeler: ['Tatlı', 'Fıstık', 'Şerbet', 'Yufka', 'Gaziantep']),
  KelimeKarti(kelime: 'Lahmacun', yasakliKelimeler: ['Yufka', 'Kıyma', 'Pide', 'İstanbul', 'Türk']),
  KelimeKarti(kelime: 'İskender', yasakliKelimeler: ['Et', 'Yoğurt', 'Domates', 'Bursa', 'Türk']),
  KelimeKarti(kelime: 'Mantı', yasakliKelimeler: ['Kayseri', 'Kıyma', 'Yoğurt', 'Sarımısaklı', 'Türk']),
  KelimeKarti(kelime: 'Köfte', yasakliKelimeler: ['Kıyma', 'Soğan', 'Baharat', 'Mangal', 'Türk']),

  // DÜNYA MUTFAKLARI
  KelimeKarti(kelime: 'Pizza', yasakliKelimeler: ['İtalya', 'Peynir', 'Domates', 'Hamur', 'Margarita']),
  KelimeKarti(kelime: 'Burger', yasakliKelimeler: ['Amerika', 'Köfte', 'Ekmek', 'Salata', 'Fast Food']),
  KelimeKarti(kelime: 'Sushi', yasakliKelimeler: ['Japonya', 'Balık', 'Pirinç', 'Yosun', 'Çubuk']),
  KelimeKarti(kelime: 'Taco', yasakliKelimeler: ['Meksika', 'Mısır', 'Et', 'Baharat', 'Limon']),
  KelimeKarti(kelime: 'Paella', yasakliKelimeler: ['İspanya', 'Deniz Ürünleri', 'Sarıçalı', 'Pirinç', 'Valencia']),
  KelimeKarti(kelime: 'Curry', yasakliKelimeler: ['Hindistan', 'Baharat', 'Sıcak', 'Tavuk', 'Kokulu']),
  KelimeKarti(kelime: 'Falafel', yasakliKelimeler: ['Ortadoğu', 'Nohut', 'Kızartma', 'Tahini', 'Pita']),
  KelimeKarti(kelime: 'Pasta', yasakliKelimeler: ['İtalya', 'Makarna', 'Sos', 'Peynir', 'Carbonara']),
  KelimeKarti(kelime: 'Kimchi', yasakliKelimeler: ['Güney Kore', 'Lahana', 'Fermente', 'Acı', 'Pilav']),
  KelimeKarti(kelime: 'Pad Thai', yasakliKelimeler: ['Tayland', 'Makarna', 'Fıstık', 'Krevet', 'Sıcak']),

  // TATLI VE İÇECEKLER
  KelimeKarti(kelime: 'Çay', yasakliKelimeler: ['Türk', 'Sıcak', 'Bardak', 'Limon', 'Peynir']),
  KelimeKarti(kelime: 'Kahve', yasakliKelimeler: ['Türk', 'Espresso', 'Fincan', 'Küçük', 'Sert']),
  KelimeKarti(kelime: 'Çikolata', yasakliKelimeler: ['Tatlı', 'Kakao', 'Sütlü', 'Bitter', 'Bar']),
  KelimeKarti(kelime: 'Dondurma', yasakliKelimeler: ['Soğuk', 'Tatlı', 'Külah', 'Çikolata', 'Vanilya']),
  KelimeKarti(kelime: 'Meyve Suyu', yasakliKelimeler: ['Portakal', 'Elma', 'Cam', 'Taze', 'Vitamin']),
  KelimeKarti(kelime: 'Gazoz', yasakliKelimeler: ['Kola', 'Şişe', 'Gazlı', 'Soğuk', 'İçecek']),
  KelimeKarti(kelime: 'Ayran', yasakliKelimeler: ['Yoğurt', 'Su', 'Türk', 'Cam', 'Soğuk']),
  KelimeKarti(kelime: 'Komposto', yasakliKelimeler: ['Meyve', 'Şeker', 'Su', 'Kavanoz', 'Türk']),
  KelimeKarti(kelime: 'Lokum', yasakliKelimeler: ['Tatlı', 'Şeker', 'Fıstık', 'İstanbul', 'Türk']),
  KelimeKarti(kelime: 'Kadayıf', yasakliKelimeler: ['Tatlı', 'Şerbet', 'Fıstık', 'Tel', 'Türk']),

  // YEMEK MALZEMELERİ
  KelimeKarti(kelime: 'Domates', yasakliKelimeler: ['Kırmızı', 'Salata', 'Sos', 'Taze', 'Sebze']),
  KelimeKarti(kelime: 'Soğan', yasakliKelimeler: ['Beyaz', 'Sarı', 'Yemek', 'Pişirme', 'Ağlama']),
  KelimeKarti(kelime: 'Sarımsak', yasakliKelimeler: ['Beyaz', 'Kokulu', 'Yemek', 'Bağlık', 'Türk']),
  KelimeKarti(kelime: 'Zeytinyağı', yasakliKelimeler: ['Sıvı', 'Altın', 'Salata', 'Türk', 'Ege']),
  KelimeKarti(kelime: 'Bulgur', yasakliKelimeler: ['Pirinç', 'Pilav', 'Kısır', 'Türk', 'Tahıl']),
  KelimeKarti(kelime: 'Mercimek', yasakliKelimeler: ['Kırmızı', 'Yeşil', 'Çorba', 'Pilav', 'Bitki']),
  KelimeKarti(kelime: 'Nohut', yasakliKelimeler: ['Yuvarlak', 'Pilav', 'Kuru', 'Falafel', 'Bitki']),
  KelimeKarti(kelime: 'Kıyma', yasakliKelimeler: ['Et', 'Döner', 'Köfte', 'Kıyma', 'Türk']),
  KelimeKarti(kelime: 'Peynir', yasakliKelimeler: ['Beyaz', 'Kaşar', 'Tuzlu', 'Kahvaltı', 'Türk']),
  KelimeKarti(kelime: 'Yoğurt', yasakliKelimeler: ['Beyaz', 'Süt', 'Kase', 'Türk', 'Kahvaltı']),

  // MUTFAK ARAÇLARI
  KelimeKarti(kelime: 'Tencere', yasakliKelimeler: ['Çorba', 'Yemek', 'Kapak', 'Pişirme', 'Mutfak']),
  KelimeKarti(kelime: 'Tava', yasakliKelimeler: ['Kızartma', 'Yağ', 'Yumurta', 'Mutfak', 'Sıcak']),
  KelimeKarti(kelime: 'Bıçak', yasakliKelimeler: ['Kesme', 'Keskin', 'Mutfak', 'Tehlike', 'Çatal']),
  KelimeKarti(kelime: 'Çatal', yasakliKelimeler: ['Yemek', 'Metal', 'Tabağa', 'Sap', 'Kaşık']),
  KelimeKarti(kelime: 'Kaşık', yasakliKelimeler: ['Yemek', 'Çorba', 'Metal', 'Sap', 'Çatal']),
  KelimeKarti(kelime: 'Tabak', yasakliKelimeler: ['Yuvarlak', 'Yemek', 'Porselen', 'Temiz', 'Masa']),
  KelimeKarti(kelime: 'Bardak', yasakliKelimeler: ['Su', 'Cam', 'İçme', 'Şeffaf', 'Kırılabilir']),
  KelimeKarti(kelime: 'Fincan', yasakliKelimeler: ['Kahve', 'Çay', 'Küçük', 'Kulp', 'Porselen']),

  // YEMEK TİPLERİ
  KelimeKarti(kelime: 'Kahvaltı', yasakliKelimeler: ['Sabah', 'Yumurta', 'Peynir', 'Ekmek', 'Türk']),
  KelimeKarti(kelime: 'Öğle Yemeği', yasakliKelimeler: ['Günlük', 'Ana', 'Yemek', 'Çorba', 'Et']),
  KelimeKarti(kelime: 'Akşam Yemeği', yasakliKelimeler: ['Gece', 'Aile', 'Yemek', 'Soğuk', 'Hafif']),
  KelimeKarti(kelime: 'Ara Öğün', yasakliKelimeler: ['Atıştırma', 'Meyve', 'Kuruyemiş', 'Küçük', 'Açlık']),
  KelimeKarti(kelime: 'Fast Food', yasakliKelimeler: ['Hızlı', 'Burger', 'Pizza', 'Amerika', 'Hazır']),

  // DÜNYA YEMEKLERİ DEVAM
  KelimeKarti(kelime: 'Hamburger', yasakliKelimeler: ['Amerika', 'Köfte', 'Ekmek', 'Salata', 'Big Mac']),
  KelimeKarti(kelime: 'Hot Dog', yasakliKelimeler: ['Amerika', 'Sosis', 'Ekmek', 'Hardal', 'Sokak']),
  KelimeKarti(kelime: 'Fish and Chips', yasakliKelimeler: ['İngiltere', 'Balık', 'Patates', 'Kızartma', 'Gazete']),
  KelimeKarti(kelime: 'Poutine', yasakliKelimeler: ['Kanada', 'Patates', 'Peynir', 'Gravy', 'Soğuk']),
  KelimeKarti(kelime: 'Dim Sum', yasakliKelimeler: ['Çin', 'Buhar', 'Lokma', 'Çeşit', 'Çay']),
  KelimeKarti(kelime: 'Ramen', yasakliKelimeler: ['Japonya', 'Çorba', 'Makarna', 'Et', 'Soğan']),
  KelimeKarti(kelime: 'Pho', yasakliKelimeler: ['Vietnam', 'Çorba', 'Makarna', 'Et', 'Nane']),

  // TÜRK TATLILARI
  KelimeKarti(kelime: 'Künefe', yasakliKelimeler: ['Kayseri', 'Tel', 'Peynir', 'Şerbet', 'Sıcak']),
  KelimeKarti(kelime: 'Sütlaç', yasakliKelimeler: ['Pirinç', 'Süt', 'Fırın', 'Tarçın', 'Türk']),
  KelimeKarti(kelime: 'Kazandibi', yasakliKelimeler: ['Fırın', 'Süt', 'Karamel', 'Türk', 'Tatlı']),
  KelimeKarti(kelime: 'Revani', yasakliKelimeler: ['İrmik', 'Şerbet', 'Fıstık', 'Türk', 'Tatlı']),
  KelimeKarti(kelime: 'Halva', yasakliKelimeler: ['Tahın', 'Şeker', 'Susam', 'Türk', 'Tatlı']),

  // MEYVE VE SEBZELER
  KelimeKarti(kelime: 'Elma', yasakliKelimeler: ['Kırmızı', 'Yeşil', 'Yuvarlak', 'Ağaç', 'Meyve']),
  KelimeKarti(kelime: 'Armut', yasakliKelimeler: ['Yeşil', 'Sert', 'Ağaç', 'Uzun', 'Meyve']),
  KelimeKarti(kelime: 'Portakal', yasakliKelimeler: ['Turuncu', 'Yuvarlak', 'Sıkma', 'Vitamin', 'Ağaç']),
  KelimeKarti(kelime: 'Limon', yasakliKelimeler: ['Sarı', 'Asit', 'Çay', 'Balık', 'Ağaç']),
  KelimeKarti(kelime: 'Çilek', yasakliKelimeler: ['Kırmızı', 'Küçük', 'Yaz', 'Tatlı', 'Bitki']),
  KelimeKarti(kelime: 'Muz', yasakliKelimeler: ['Sarı', 'Uzun', 'Tropikal', 'Kabuk', 'Meyve']),
  KelimeKarti(kelime: 'Patates', yasakliKelimeler: ['Yuvarlak', 'Toprak', 'Kızartma', 'Hafta', 'Yemek']),
  KelimeKarti(kelime: 'Salatalık', yasakliKelimeler: ['Yeşil', 'Uzun', 'Su', 'Salata', 'Taze']),
  KelimeKarti(kelime: 'Biber', yasakliKelimeler: ['Kırmızı', 'Yeşil', 'Sivri', 'Dolma', 'Sebze']),

  // BAHARATLAR
  KelimeKarti(kelime: 'Kırmızı Biber', yasakliKelimeler: ['Acı', 'Toz', 'Yemek', 'Kırmızı', 'Baharat']),
  KelimeKarti(kelime: 'Karabiber', yasakliKelimeler: ['Siyah', 'Toz', 'Acı', 'Yemek', 'Baharat']),
  KelimeKarti(kelime: 'Kimyon', yasakliKelimeler: ['Toz', 'Kokulu', 'Yemek', 'Türk', 'Baharat']),
  KelimeKarti(kelime: 'Nane', yasakliKelimeler: ['Yeşil', 'Kokulu', 'Çay', 'Yemek', 'Bitki']),
  KelimeKarti(kelime: 'Kekik', yasakliKelimeler: ['Yeşil', 'Kurutulmuş', 'Yemek', 'Türk', 'Baharat']),

  // MUTFAK KAVRAMLARI
  KelimeKarti(kelime: 'Pişirme', yasakliKelimeler: ['Sıcak', 'Tencere', 'Yemek', 'Zaman', 'Mutfak']),
  KelimeKarti(kelime: 'Kızartma', yasakliKelimeler: ['Yağ', 'Sıcak', 'Altın', 'Tava', 'Hızlı']),
  KelimeKarti(kelime: 'Haşlama', yasakliKelimeler: ['Su', 'Kaynama', 'Sebze', 'Yumuşak', 'Mutfak']),
  KelimeKarti(kelime: 'Fırınlama', yasakliKelimeler: ['Sıcak', 'Kapalı', 'Altın', 'Fırın', 'Yavaş']),
  KelimeKarti(kelime: 'Buharlama', yasakliKelimeler: ['Su', 'Kapalı', 'Sağlıklı', 'Yeşil', 'Hafif']),

  // YEMEK TARİFLERİ
  KelimeKarti(kelime: 'Salata', yasakliKelimeler: ['Yeşil', 'Sebze', 'Zeytinyağı', 'Hafif', 'Yaz']),
  KelimeKarti(kelime: 'Çiğ Köfte', yasakliKelimeler: ['Bulgur', 'Kıyma', 'Baharat', 'Salata', 'Türk']),
  KelimeKarti(kelime: 'Menemen', yasakliKelimeler: ['Yumurta', 'Domates', 'Soğan', 'Türk', 'Sabah']),
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
  KelimeKarti(kelime: 'Kurban Bayramı', yasakliKelimeler: ['Et', 'Kurban', 'Lokum', 'Helva', 'Türk']),
  KelimeKarti(kelime: 'Aile Yemeği', yasakliKelimeler: ['Birlikte', 'Masa', 'Sohbet', 'Türk', 'Gelenek']),
  KelimeKarti(kelime: 'Konukseverlik', yasakliKelimeler: ['Misafir', 'İkram', 'Türk', 'Gelenek', 'Çay']),
  KelimeKarti(kelime: 'Mutfak', yasakliKelimeler: ['Yemek', 'Pişirme', 'Alet', 'Ev', 'Merkez']),

  // YENİ TÜRK YEMEKLERİ
  KelimeKarti(kelime: 'Testi Kebabı', yasakliKelimeler: ['Kayseri', 'Kil', 'Testi', 'Et', 'Fırın']),
  KelimeKarti(kelime: 'Etli Ekmek', yasakliKelimeler: ['Kayseri', 'Pide', 'Et', 'Soğan', 'Fırın']),
  KelimeKarti(kelime: 'İmam Bayıldı', yasakliKelimeler: ['Patlıcan', 'Soğan', 'Sarımısak', 'Zeytinyağı', 'Fırın']),
  KelimeKarti(kelime: 'Karnıyarık', yasakliKelimeler: ['Patlıcan', 'Et', 'Soğan', 'Fırın', 'Türk']),
  KelimeKarti(kelime: 'Zeytinyağlı Sarma', yasakliKelimeler: ['Yaprak', 'Pirinç', 'Zeytinyağı', 'Nane', 'Soğan']),
  KelimeKarti(kelime: 'İçli Köfte', yasakliKelimeler: ['Urfa', 'Bulgur', 'Et', 'Ceviz', 'Şeker']),
  KelimeKarti(kelime: 'Kısır', yasakliKelimeler: ['Bulgur', 'Nane', 'Salatalık', 'Domates', 'Nar']),
  KelimeKarti(kelime: 'Yoğurtlu Semizotu', yasakliKelimeler: ['Semizotu', 'Yoğurt', 'Sarımısak', 'Zeytinyağı', 'Nane']),
  KelimeKarti(kelime: 'Mercimek Köftesi', yasakliKelimeler: ['Kırmızı', 'Bulgur', 'Soğan', 'Maydanoz', 'Yeşil']),
  KelimeKarti(kelime: 'Çiğ Köfte', yasakliKelimeler: ['Kıyma', 'Bulgur', 'Soğan', 'Baharat', 'Salata']),

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
  KelimeKarti(kelime: 'Aşure', yasakliKelimeler: ['Tatlı', 'Buğday', 'Nohut', 'Şerbet', 'Türk']),
  KelimeKarti(kelime: 'Muhallebi', yasakliKelimeler: ['Tatlı', 'Pirinç', 'Süt', 'Şeker', 'Türk']),
  KelimeKarti(kelime: 'Kemalpaşa', yasakliKelimeler: ['Tatlı', 'İzmir', 'Turşu', 'Şerbet', 'Karpuz']),
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
  KelimeKarti(kelime: 'Limonata', yasakliKelimeler: ['Limon', 'Şeker', 'Su', 'Soğuk', 'İçecek']),
  KelimeKarti(kelime: 'Şıra', yasakliKelimeler: ['Üzüm', 'Şeker', 'Fermente', 'İlk', 'Aşama']),
  KelimeKarti(kelime: 'Kefir', yasakliKelimeler: ['Süt', 'Fermente', 'Probiyotik', 'Türk', 'İçecek']),
  KelimeKarti(kelime: 'Sahlep', yasakliKelimeler: ['Orkide', 'Sıcak', 'Tarçın', 'Tatlı', 'İçecek']),
  KelimeKarti(kelime: 'Malt', yasakliKelimeler: ['Arpa', 'Şeker', 'İçecek', 'Enerji', 'Tatlı']),

  // YENİ MEYVE VE SEBZELER
  KelimeKarti(kelime: 'Karpuz', yasakliKelimeler: ['Kırmızı', 'Tatlı', 'Su', 'Yaz', 'Büyük']),
  KelimeKarti(kelime: 'Kavun', yasakliKelimeler: ['Tatlı', 'Sarı', 'Yaz', 'Su', 'Meyve']),
  KelimeKarti(kelime: 'Üzüm', yasakliKelimeler: ['Salkım', 'Şarap', 'Kuru', 'Tatlı', 'Meyve']),
  KelimeKarti(kelime: 'İncir', yasakliKelimeler: ['Tatlı', 'Kuru', 'Ağaç', 'Yaz', 'Meyve']),
  KelimeKarti(kelime: 'Kivi', yasakliKelimeler: ['Yeşil', 'Tatlı', 'Kıllı', 'Yeni Zelanda', 'Meyve']),
  KelimeKarti(kelime: 'Ananas', yasakliKelimeler: ['Tropikal', 'Tatlı', 'Kabuk', 'Çekirdek', 'Meyve']),
  KelimeKarti(kelime: 'Avokado', yasakliKelimeler: ['Yeşil', 'Yağlı', 'Guacamole', 'Tropikal', 'Meyve']),
  KelimeKarti(kelime: 'Enginar', yasakliKelimeler: ['Yeşil', 'Diken', 'Haşlama', 'Zeytinyağı', 'Sebze']),
  KelimeKarti(kelime: 'Kereviz', yasakliKelimeler: ['Yeşil', 'Sap', 'Kök', 'Hafif', 'Sebze']),
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
  KelimeKarti(kelime: 'Mercimek Çorbası', yasakliKelimeler: ['Mercimek', 'Soğan', 'Havuç', 'Limon', 'Türk']),
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
  KelimeKarti(kelime: 'Baklava', yasakliKelimeler: ['Ortadoğu', 'Yufka', 'Fıstık', 'Şerbet', 'Tatlı']),

  // YENİ MUTFAK ARAÇLARI
  KelimeKarti(kelime: 'Mikser', yasakliKelimeler: ['Çırpma', 'Hızlı', 'Hamur', 'Elektrik', 'Mutfak']),
  KelimeKarti(kelime: 'Blender', yasakliKelimeler: ['Öğütme', 'Karıştırma', 'Smoothie', 'Elektrik', 'Mutfak']),
  KelimeKarti(kelime: 'Fırın', yasakliKelimeler: ['Sıcak', 'Pişirme', 'Kapalı', 'Elektrik', 'Mutfak']),
  KelimeKarti(kelime: 'Mikrodalga', yasakliKelimeler: ['Hızlı', 'Isıtma', 'Dalgalar', 'Elektrik', 'Mutfak']),
  KelimeKarti(kelime: 'Buzdolabı', yasakliKelimeler: ['Soğuk', 'Saklama', 'Yemek', 'Elektrik', 'Mutfak']),
  KelimeKarti(kelime: 'Bulaşık Makinesi', yasakliKelimeler: ['Yıkama', 'Otomatik', 'Su', 'Elektrik', 'Mutfak']),
  KelimeKarti(kelime: 'Çay Makinesi', yasakliKelimeler: ['Çay', 'Dem', 'Otomatik', 'Elektrik', 'Türk']),
  KelimeKarti(kelime: 'Kahve Makinesi', yasakliKelimeler: ['Kahve', 'Espresso', 'Otomatik', 'Elektrik', 'Mutfak']),

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
  KelimeKarti(kelime: 'Gözleme', yasakliKelimeler: ['Hamur', 'İç', 'Haç', 'Tava', 'Türk']),
  KelimeKarti(kelime: 'Börek', yasakliKelimeler: ['Yufka', 'İç', 'Peynir', 'Fırın', 'Türk']),
  KelimeKarti(kelime: 'Su Böreği', yasakliKelimeler: ['Yufka', 'Su', 'Peynir', 'Fırın', 'Türk']),
  KelimeKarti(kelime: 'Kol Böreği', yasakliKelimeler: ['Yufka', 'Kol', 'Peynir', 'Fırın', 'Türk']),
  KelimeKarti(kelime: 'Sigara Böreği', yasakliKelimeler: ['Yufka', 'Sigara', 'Peynir', 'Kızartma', 'Türk']),
  KelimeKarti(kelime: 'Poğaça', yasakliKelimeler: ['Hamur', 'Peynir', 'Fırın', 'Yuvarlak', 'Türk']),
  KelimeKarti(kelime: 'Simit', yasakliKelimeler: ['Halka', 'Susam', 'İstanbul', 'Türk', 'Sabah']),
  KelimeKarti(kelime: 'Açma', yasakliKelimeler: ['Hamur', 'Susam', 'Fırın', 'Yuvarlak', 'Türk']),
  KelimeKarti(kelime: 'Çörek', yasakliKelimeler: ['Hamur', 'Şeker', 'Fırın', 'Halka', 'Türk']),

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
  KelimeKarti(kelime: 'Sous Vide', yasakliKelimeler: ['Su', 'Kontrol', 'Hassas', 'Pişirme', 'Modern']),
  KelimeKarti(kelime: 'Emülsiyon', yasakliKelimeler: ['Karışım', 'Yağ', 'Su', 'Sabun', 'Teknik']),
  KelimeKarti(kelime: 'Redüksiyon', yasakliKelimeler: ['Kaynatma', 'Yoğuşturma', 'Sos', 'Lezzet', 'Teknik']),
  KelimeKarti(kelime: 'Konfit', yasakliKelimeler: ['Yağ', 'Pişirme', 'Yavaş', 'Et', 'Teknik']),
  KelimeKarti(kelime: 'Sous Vide Pişirme', yasakliKelimeler: ['Su', 'Kontrol', 'Hassas', 'Modern', 'Teknik']),

];

List<KelimeKarti> karisikYemekMutfak() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumYemekMutfak);
  kopya.shuffle();
  return kopya;
}
