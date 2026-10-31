import '../../kelimeler.dart';
import '../../free/kategoriler/cocuklar.dart';

// Premium Çocuklar: Daha geniş ve çeşitli, çocuklara uygun kelime haznesi
// Free çocuklar havuzu + aşağıdaki genişletilmiş liste birleştirilir.
const List<KelimeKarti> _extraPremiumCocuklar = [
  KelimeKarti(kelime: 'Kule', yasakliKelimeler: ['Uzun', 'Yüksek', 'Taş', 'Şato', 'Bina']),
  KelimeKarti(kelime: 'Çizgi Film', yasakliKelimeler: ['Televizyon', 'Karakter', 'Çocuk', 'Animasyon', 'İzlemek']),
  KelimeKarti(kelime: 'Roket', yasakliKelimeler: ['Uzay', 'Astronot', 'Fırlatma', 'Ay', 'Gök']),
  KelimeKarti(kelime: 'Deniz', yasakliKelimeler: ['Mavi', 'Kum', 'Dalg', 'Yüzmek', 'Yaz']),
  KelimeKarti(kelime: 'Dinozor', yasakliKelimeler: ['Eski', 'Kretase', 'Büyük', 'Fosil', 'Tiran']),
  KelimeKarti(kelime: 'Uzaylı', yasakliKelimeler: ['Yeşil', 'Gemi', 'Gezegen', 'UFO', 'Göz']),
  KelimeKarti(kelime: 'Prenses', yasakliKelimeler: ['Taç', 'Elbise', 'Şato', 'Masal', 'Balo']),
  KelimeKarti(kelime: 'Şövalye', yasakliKelimeler: ['Kalkan', 'Kılıç', 'Zırh', 'At', 'Şato']),
  KelimeKarti(kelime: 'Deniz Korsanı', yasakliKelimeler: ['Gemi', 'Harita', 'Hazine', 'Göz', 'Yama']),
  KelimeKarti(kelime: 'Akvaryum', yasakliKelimeler: ['Cam', 'Balık', 'Su', 'Hava', 'Kabarcık']),
  KelimeKarti(kelime: 'Kayık', yasakliKelimeler: ['Kürek', 'Su', 'Göl', 'Kıyı', 'Tahta']),
  KelimeKarti(kelime: 'Balerin', yasakliKelimeler: ['Dans', 'Etek', 'Müzik', 'Sahne', 'Puan']),
  KelimeKarti(kelime: 'Sirk', yasakliKelimeler: ['Palyaço', 'Çadır', 'Gösteri', 'Hayvan', 'Müzik']),
  KelimeKarti(kelime: 'Palyaço', yasakliKelimeler: ['Burun', 'Kırmızı', 'Komik', 'Sirk', 'Gülmek']),
  KelimeKarti(kelime: 'Yarış Arabası', yasakliKelimeler: ['Hız', 'Pist', 'Kask', 'Direksiyon', 'Kırmızı']),
  KelimeKarti(kelime: 'Uçurtma', yasakliKelimeler: ['Rüzgar', 'İp', 'Gök', 'Uçmak', 'Renkli']),
  KelimeKarti(kelime: 'Mangala', yasakliKelimeler: ['Taş', 'Oyun', 'Tahta', 'Zeka', 'Türkiye']),
  KelimeKarti(kelime: 'Marşmelov', yasakliKelimeler: ['Tatlı', 'Beyaz', 'Kamp', 'Ateş', 'Yumuşak']),
  KelimeKarti(kelime: 'Scooter', yasakliKelimeler: ['Elektrik', 'Ayak', 'Kask', 'Kaymak', 'Sürmek']),
  KelimeKarti(kelime: 'Kaykay', yasakliKelimeler: ['Park', 'Tekerlek', 'Trick', 'Tahta', 'Kask']),
  KelimeKarti(kelime: 'İtfaiye', yasakliKelimeler: ['Araba', 'Merdiven', 'Yangın', 'Su', 'Kask']),
  KelimeKarti(kelime: 'Astronot', yasakliKelimeler: ['Uzay', 'Kıyafet', 'Roket', 'Ay', 'Gezegen']),
  KelimeKarti(kelime: 'Güneş Sistemi', yasakliKelimeler: ['Gezegen', 'Güneş', 'Ay', 'Uzay', 'Yıldız']),
  KelimeKarti(kelime: 'Kutup Ayısı', yasakliKelimeler: ['Beyaz', 'Soğuk', 'Kuzey', 'Buz', 'Büyük']),
  KelimeKarti(kelime: 'Kedi Yavrusu', yasakliKelimeler: ['Küçük', 'Miyav', 'Oyun', 'Sevimli', 'Anne']),
  KelimeKarti(kelime: 'Köpek Yavrusu', yasakliKelimeler: ['Küçük', 'Hav', 'Oyun', 'Sadık', 'Anne']),
  KelimeKarti(kelime: 'Paylaşmak', yasakliKelimeler: ['Arkadaş', 'Oyuncak', 'Beraber', 'Sevgi', 'Kural']),
  KelimeKarti(kelime: 'Özür', yasakliKelimeler: ['Dilemek', 'Hata', 'Nazik', 'Söz', 'Arkadaş']),
  KelimeKarti(kelime: 'Merak', yasakliKelimeler: ['Soru', 'Göz', 'Keşfetmek', 'Bilmek', 'Neden']),
  KelimeKarti(kelime: 'Cesur', yasakliKelimeler: ['Korkmak', 'Güçlü', 'Kahraman', 'Yapmak', 'Denemek']),
  KelimeKarti(kelime: 'Karpuz Kabuğu', yasakliKelimeler: ['Yeşil', 'Meyve', 'Yaz', 'Dış', 'Kabuk']),
  KelimeKarti(kelime: 'Oyuncak Araba', yasakliKelimeler: ['Küçük', 'Tekerlek', 'Yarış', 'Direksiyon', 'Garaj']),
  KelimeKarti(kelime: 'Oyuncak Ayı', yasakliKelimeler: ['Peluş', 'Kahverengi', 'Sarılmak', 'Uyku', 'Sevimli']),
  KelimeKarti(kelime: 'Maske', yasakliKelimeler: ['Yüz', 'Kostüm', 'Parti', 'Takmak', 'Süper']),
  KelimeKarti(kelime: 'Fenerbahçe', yasakliKelimeler: ['Takım', 'Futbol', 'Sarı', 'Lacivert', 'Stad']),
  KelimeKarti(kelime: 'Galatasaray', yasakliKelimeler: ['Takım', 'Futbol', 'Sarı', 'Kırmızı', 'Stad']),
  KelimeKarti(kelime: 'Beşiktaş', yasakliKelimeler: ['Takım', 'Futbol', 'Siyah', 'Beyaz', 'Kartal']),
  KelimeKarti(kelime: 'Yapboz', yasakliKelimeler: ['Parça', 'Tamamlamak', 'Resim', 'Kutu', 'Masa']),
  KelimeKarti(kelime: 'Boya Kalemi', yasakliKelimeler: ['Renk', 'Resim', 'Kutu', 'Defter', 'Uç']),
  KelimeKarti(kelime: 'Suluboya', yasakliKelimeler: ['Su', 'Fırça', 'Renk', 'Resim', 'Kâğıt']),
  KelimeKarti(kelime: 'Kum Saati', yasakliKelimeler: ['Zaman', 'Tane', 'Ters', 'Cam', 'Akmak']),
  KelimeKarti(kelime: 'Dürbün', yasakliKelimeler: ['Bakmak', 'Uzak', 'Göz', 'İki', 'Kuş']),
  KelimeKarti(kelime: 'Kumanda', yasakliKelimeler: ['TV', 'Buton', 'Ses', 'Aç', 'Kapat']),
  KelimeKarti(kelime: 'Cam Fanus', yasakliKelimeler: ['Balık', 'Su', 'Cam', 'Yuvarlak', 'Ev']),
  KelimeKarti(kelime: 'Kurabiye', yasakliKelimeler: ['Tatlı', 'Yuvarlak', 'Bisküvi', 'Süt', 'Fırın']),
  KelimeKarti(kelime: 'Dondurma Arabası', yasakliKelimeler: ['Zil', 'Yaz', 'Tatlı', 'Külah', 'Sokak']),
  KelimeKarti(kelime: 'Kum Kalesi', yasakliKelimeler: ['Plaj', 'Kova', 'Kürek', 'Çocuk', 'Yaz']),
  KelimeKarti(kelime: 'Kar Tanesi', yasakliKelimeler: ['Kış', 'Beyaz', 'Soğuk', 'Desen', 'Gökyüzü']),
  KelimeKarti(kelime: 'Kardan Adam', yasakliKelimeler: ['Havuç', 'Şapka', 'Kış', 'Kar', 'Top']),
  KelimeKarti(kelime: 'Sürpriz Yumurta', yasakliKelimeler: ['Çikolata', 'Oyuncak', 'Açmak', 'Kutu', 'Hediye']),
  KelimeKarti(kelime: 'Hamak', yasakliKelimeler: ['Ağaç', 'Yatmak', 'Salınmak', 'Yaz', 'Dinlenmek']),
  KelimeKarti(kelime: 'Yoyo', yasakliKelimeler: ['İp', 'Yukarı', 'Aşağı', 'Oyun', 'El']),
  KelimeKarti(kelime: 'Zıpzıp Top', yasakliKelimeler: ['Zıplamak', 'Kauçuk', 'Küçük', 'Renkli', 'El']),
  KelimeKarti(kelime: 'Bumerang', yasakliKelimeler: ['Atmak', 'Geri', 'Kavis', 'Avustralya', 'Tahta']),
  KelimeKarti(kelime: 'Kayıkçı', yasakliKelimeler: ['Kürek', 'Göl', 'Su', 'Tekne', 'Çalışmak']),
  KelimeKarti(kelime: 'Zıpzıp Kurbağa', yasakliKelimeler: ['Yeşil', 'Su', 'Zıplamak', 'Göl', 'Ses']),
  KelimeKarti(kelime: 'Süper Kahraman', yasakliKelimeler: ['Uçmak', 'Maske', 'Pelerin', 'Güç', 'Şehir']),
  KelimeKarti(kelime: 'Pelerin', yasakliKelimeler: ['Süper', 'Kahraman', 'Rüzgar', 'Kıyafet', 'Uzun']),
  KelimeKarti(kelime: 'Sandviç', yasakliKelimeler: ['Ekmek', 'Peynir', 'Domates', 'Marul', 'Okul']),
  KelimeKarti(kelime: 'Şemsiyelik', yasakliKelimeler: ['Yağmur', 'Kapı', 'Giriş', 'Kuru', 'Bırakmak']),
  KelimeKarti(kelime: 'Mıknatıs', yasakliKelimeler: ['Çekmek', 'Demir', 'Kutup', 'Nesne', 'Oyun']),
  KelimeKarti(kelime: 'Kukla', yasakliKelimeler: ['El', 'Tiyatro', 'Oyun', 'Karakter', 'Sahne']),
  KelimeKarti(kelime: 'Saha', yasakliKelimeler: ['Oyun', 'Çizgi', 'Yeşil', 'Takım', 'Hakem']),
  KelimeKarti(kelime: 'Yıldönümü', yasakliKelimeler: ['Kutu', 'Hediye', 'Kutlama', 'Tarih', 'Sevgi']),
  KelimeKarti(kelime: 'Bal Peteği', yasakliKelimeler: ['Arı', 'Tatlı', 'Sarı', 'Kovan', 'Altıgen']),
  KelimeKarti(kelime: 'Arı', yasakliKelimeler: ['Kanat', 'Vız', 'Bal', 'Sarı', 'Siyah']),
  KelimeKarti(kelime: 'Solucan', yasakliKelimeler: ['Toprak', 'Kıvrılmak', 'Bahçe', 'Yağmur', 'Küçük']),
  KelimeKarti(kelime: 'Buz Pateni', yasakliKelimeler: ['Kış', 'Ayakkabı', 'Pist', 'Dönmek', 'Kaymak']),
  KelimeKarti(kelime: 'Salyangoz', yasakliKelimeler: ['Kabuk', 'Yavaş', 'İz', 'Bahçe', 'Yağmur']),
  KelimeKarti(kelime: 'Karpuz Şerbeti', yasakliKelimeler: ['Yaz', 'İçecek', 'Soğuk', 'Meyve', 'Tatlı']),
  KelimeKarti(kelime: 'Meyve Salatası', yasakliKelimeler: ['Kase', 'Karışık', 'Tatlı', 'Renkli', 'Kaşık']),
  KelimeKarti(kelime: 'Gökyüzü Feneri', yasakliKelimeler: ['Uçmak', 'Gece', 'Işık', 'Kâğıt', 'Dilek']),
  KelimeKarti(kelime: 'Kum Fırtınası', yasakliKelimeler: ['Çöl', 'Rüzgar', 'Toz', 'Kum', 'Gözlük']),
  KelimeKarti(kelime: 'Orkestra', yasakliKelimeler: ['Müzik', 'Çalgı', 'Şef', 'Sahne', 'Konser']),
  KelimeKarti(kelime: 'Küçük Prens', yasakliKelimeler: ['Kitap', 'Gezegen', 'Tilki', 'Gül', 'Yıldız']),
  KelimeKarti(kelime: 'Hazine Haritası', yasakliKelimeler: ['Ada', 'X', 'Korsan', 'Sandık', 'Yol']),
  KelimeKarti(kelime: 'Bulmaca', yasakliKelimeler: ['Kelime', 'Kare', 'Doldurmak', 'Zeka', 'Gazete']),
  KelimeKarti(kelime: 'Zıpzıp Oyuncak', yasakliKelimeler: ['Yay', 'Atlamak', 'Küçük', 'Renkli', 'El']),
  KelimeKarti(kelime: 'Top', yasakliKelimeler: ['Futbol', 'Basketbol', 'Zıplamak', 'Yuvarlak', 'Oyun']),
  KelimeKarti(kelime: 'Yol', yasakliKelimeler: ['Araba', 'Yürümek', 'Asfalt', 'Gidmek', 'Şerit']),
  KelimeKarti(kelime: 'Gökyüzü', yasakliKelimeler: ['Bulut', 'Mavi', 'Güneş', 'Uçak', 'Yıldız']),
  KelimeKarti(kelime: 'Çiçek', yasakliKelimeler: ['Renk', 'Kokmak', 'Yaprak', 'Saksı', 'Bahçe']),
  KelimeKarti(kelime: 'Kare', yasakliKelimeler: ['Dört', 'Köşe', 'Şekil', 'Eşit', 'Kenar']),
  KelimeKarti(kelime: 'Daire', yasakliKelimeler: ['Yuvarlak', 'Şekil', 'Teker', 'Saat', 'Çember']),
  KelimeKarti(kelime: 'Üçgen', yasakliKelimeler: ['Üç', 'Köşe', 'Şekil', 'Dik', 'Eşkenar']),
  KelimeKarti(kelime: 'Gülmek', yasakliKelimeler: ['Mutlu', 'Yüz', 'Ses', 'Neşe', 'Komik']),
  KelimeKarti(kelime: 'Ağlamak', yasakliKelimeler: ['Üzgün', 'Göz', 'Yaş', 'Ses', 'Hıçkırık']),
  KelimeKarti(kelime: 'Uyumak', yasakliKelimeler: ['Gece', 'Rüya', 'Yatak', 'Göz', 'Kapalı']),
  KelimeKarti(kelime: 'Uyanmak', yasakliKelimeler: ['Sabah', 'Zil', 'Göz', 'Açmak', 'Gün']),
  KelimeKarti(kelime: 'Yemek', yasakliKelimeler: ['Çatal', 'Kaşık', 'Tabak', 'Doymak', 'Mutfak']),
  KelimeKarti(kelime: 'İçmek', yasakliKelimeler: ['Bardak', 'Su', 'Süt', 'Ağz', 'Susuzluk']),
  KelimeKarti(kelime: 'Atmak', yasakliKelimeler: ['Fırlatmak', 'Top', 'Uzak', 'Kol', 'Saha']),
  KelimeKarti(kelime: 'Tutmak', yasakliKelimeler: ['Yakal', 'El', 'Sıkmak', 'Bırakmamak', 'Top']),
  KelimeKarti(kelime: 'İtmek', yasakliKelimeler: ['Kapı', 'El', 'Güç', 'Açmak', 'Sürmek']),
  KelimeKarti(kelime: 'Çekmek', yasakliKelimeler: ['Kapı', 'İp', 'Kuvvet', 'Yakına', 'Halat']),
  KelimeKarti(kelime: 'Gri', yasakliKelimeler: ['Renk', 'Bulut', 'Fare', 'Kedi', 'Duman']),
  // Hayvanlar +
  KelimeKarti(kelime: 'Baykuş', yasakliKelimeler: ['Gece', 'Göz', 'Uçmak', 'Kanat', 'Orman']),
  KelimeKarti(kelime: 'Tilki', yasakliKelimeler: ['Turuncu', 'Kuyruk', 'Orman', 'Kurnaz', 'Hayvan']),
  KelimeKarti(kelime: 'Leylek', yasakliKelimeler: ['Uzun', 'Bacak', 'Gag', 'Bahar', 'Göç']),
  KelimeKarti(kelime: 'Deve', yasakliKelimeler: ['Çöl', 'Kambur', 'Su', 'Sıcak', 'Hayvan']),
  KelimeKarti(kelime: 'Koala', yasakliKelimeler: ['Ağaç', 'Eukaliptüs', 'Gri', 'Avustralya', 'Sevimli']),
  KelimeKarti(kelime: 'Flamingo', yasakliKelimeler: ['Pembe', 'Uzun', 'Bacak', 'Su', 'Kuş']),
  KelimeKarti(kelime: 'Turna', yasakliKelimeler: ['Kuş', 'Uzun', 'Su', 'Göl', 'Beyaz']),
  KelimeKarti(kelime: 'Kiraz Kuşu', yasakliKelimeler: ['Kuş', 'Kırmızı', 'Ağaç', 'Meyve', 'Küçük']),
  // Doğa +
  KelimeKarti(kelime: 'Şelale', yasakliKelimeler: ['Su', 'Düşmek', 'Yüksek', 'Doğa', 'Ses']),
  KelimeKarti(kelime: 'Mağara', yasakliKelimeler: ['Karanlık', 'Taş', 'Yer', 'İçi', 'Soğuk']),
  KelimeKarti(kelime: 'Ada', yasakliKelimeler: ['Deniz', 'Kıyı', 'Kum', 'Küçük', 'Palmiye']),
  KelimeKarti(kelime: 'Palmiye', yasakliKelimeler: ['Ağaç', 'Yaz', 'Tatil', 'Yaprak', 'Sıcak']),
  KelimeKarti(kelime: 'Volkan', yasakliKelimeler: ['Dağ', 'Lav', 'Sıcak', 'Duman', 'Patlamak']),
  KelimeKarti(kelime: 'Mercan', yasakliKelimeler: ['Deniz', 'Renkli', 'Kaya', 'Balık', 'Resif']),
  // Ev & Okul +
  KelimeKarti(kelime: 'Süpürge', yasakliKelimeler: ['Temiz', 'Ev', 'Yer', 'Çekmek', 'Toz']),
  KelimeKarti(kelime: 'Paspas', yasakliKelimeler: ['Islak', 'Temiz', 'Yer', 'Ev', 'Mikrofiber']),
  KelimeKarti(kelime: 'Kilit', yasakliKelimeler: ['Anahtar', 'Kapı', 'Açmak', 'Güven', 'Metal']),
  KelimeKarti(kelime: 'Yorgan', yasakliKelimeler: ['Yatak', 'Sıcak', 'Kış', 'Battaniye', 'Uyku']),
  KelimeKarti(kelime: 'Mürekkep', yasakliKelimeler: ['Yazı', 'Kalem', 'Mavi', 'Şişe', 'Leke']),
  KelimeKarti(kelime: 'Poster', yasakliKelimeler: ['Duvar', 'Resim', 'Büyük', 'Sınıf', 'Bant']),
  // Yiyecek +
  KelimeKarti(kelime: 'Kekik', yasakliKelimeler: ['Yeşil', 'Koku', 'Yemek', 'Baharat', 'Ot']),
  KelimeKarti(kelime: 'Limonata', yasakliKelimeler: ['Sarı', 'İçecek', 'Soğuk', 'Yaz', 'Bardak']),
  KelimeKarti(kelime: 'Tost', yasakliKelimeler: ['Ekmek', 'Kaşar', 'Sıcak', 'Makine', 'Kahvaltı']),
  KelimeKarti(kelime: 'Waffle', yasakliKelimeler: ['Tatlı', 'Dilim', 'Çikolata', 'Meyve', 'Kare']),
  KelimeKarti(kelime: 'Lahana', yasakliKelimeler: ['Sebze', 'Yaprak', 'Yeşil', 'Dolma', 'Kış']),
  KelimeKarti(kelime: 'Pancar', yasakliKelimeler: ['Kırmızı', 'Sebze', 'Salata', 'Tatlı', 'Kök']),
  // Araçlar +
  KelimeKarti(kelime: 'Teleferik', yasakliKelimeler: ['Dağ', 'Kablo', 'Kabin', 'Kış', 'Yükseklik']),
  KelimeKarti(kelime: 'Uçan Balon', yasakliKelimeler: ['Sepet', 'Gökyüzü', 'Rüzgar', 'Renkli', 'Uçmak']),
  // Eylemler +
  KelimeKarti(kelime: 'Boyamak', yasakliKelimeler: ['Renk', 'Fırça', 'Resim', 'Kağıt', 'Su']),
  KelimeKarti(kelime: 'Kesmek', yasakliKelimeler: ['Makas', 'Kağıt', 'Tehlike', 'El', 'Dikkat']),
  KelimeKarti(kelime: 'Yapıştırmak', yasakliKelimeler: ['Tüp', 'Kağıt', 'Proje', 'Okul', 'El']),
  KelimeKarti(kelime: 'Çizmek', yasakliKelimeler: ['Kalem', 'Defter', 'Resim', 'Sanat', 'Renk']),
  KelimeKarti(kelime: 'Okumak', yasakliKelimeler: ['Kitap', 'Harf', 'Cümle', 'Kütüphane', 'Bilgi']),
  KelimeKarti(kelime: 'Yazmak', yasakliKelimeler: ['Kalem', 'Defter', 'Harf', 'Cümle', 'El']),
  KelimeKarti(kelime: 'Koşmak', yasakliKelimeler: ['Ayak', 'Hızlı', 'Park', 'Nefes', 'Yorgun']),

  // Daha Fazla Hayvan
  KelimeKarti(kelime: 'Geyik', yasakliKelimeler: ['Boynuz', 'Orman', 'Yeşil', 'Koşmak', 'Büyük']),
  KelimeKarti(kelime: 'Kertenkele', yasakliKelimeler: ['Kuyruk', 'Duvar', 'Güneş', 'Hızlı', 'Yeşil']),
  KelimeKarti(kelime: 'Fok', yasakliKelimeler: ['Deniz', 'Kar', 'Beyaz', 'Yüzmek', 'Top']),
  KelimeKarti(kelime: 'Yılan', yasakliKelimeler: ['Uzun', 'Kıvrılmak', 'Yere', 'Zehirli', 'Deri']),
  KelimeKarti(kelime: 'Kartal', yasakliKelimeler: ['Gök', 'Şahin', 'Yüksek', 'Göz', 'Güçlü']),

  // Eğlenceli Nesneler ve Oyunlar
  KelimeKarti(kelime: 'İpi Atlamak', yasakliKelimeler: ['İp', 'Zıplamak', 'Arkadaş', 'Oyun', 'Saymak']),
  KelimeKarti(kelime: 'Seksek', yasakliKelimeler: ['Taş', 'Zıplamak', 'Kare', 'Oyun', 'Park']),
  KelimeKarti(kelime: 'Bebek Bezi', yasakliKelimeler: ['Bebek', 'İslak', 'Temiz', 'Değiştirmek', 'Yumuşak']),
  KelimeKarti(kelime: 'Bebek Arabası', yasakliKelimeler: ['İtmek', 'Bebek', 'Tekerlek', 'Yürümek', 'Uyku']),
  KelimeKarti(kelime: 'Oyuncak Tren', yasakliKelimeler: ['Ray', 'Vagon', 'Çu', 'Düdük', 'Tahta']),
  KelimeKarti(kelime: 'Kukla Tiyatrosu', yasakliKelimeler: ['Sahne', 'Perde', 'Karakter', 'Hikaye', 'El']),
  KelimeKarti(kelime: 'Kutu Şehir', yasakliKelimeler: ['Kutu', 'Oyuncak', 'Ev', 'Yapmak', 'İnşa']),
  KelimeKarti(kelime: 'Lego', yasakliKelimeler: ['Parça', 'Yapmak', 'Blok', 'Renki', 'Oyun']),
  KelimeKarti(kelime: 'Hot Wheels', yasakliKelimeler: ['Araba', 'Hız', 'Yarış', 'Küçük', 'Metal']),
  KelimeKarti(kelime: 'Barbie', yasakliKelimeler: ['Bebek', 'Oyuncak', 'Kız', 'Saç', 'Giyinmek']),

  // Yiyecek ve Tatlılar
  KelimeKarti(kelime: 'Çikolata', yasakliKelimeler: ['Tatlı', 'Kahve', 'Eritmek', 'Kutu', 'Sıcak']),
  KelimeKarti(kelime: 'Şeker', yasakliKelimeler: ['Tatlı', 'Beyaz', 'Çubuk', 'Eritmek', 'Ağız']),
  KelimeKarti(kelime: 'Dondurma Külahı', yasakliKelimeler: ['Küre', 'Tatlı', 'Çubuk', 'Eritmek', 'Yaz']),
  KelimeKarti(kelime: 'Kumpir', yasakliKelimeler: ['Patates', 'Fırın', 'Peynir', 'Mısır', 'Büyük']),

  // Meyveler ve Sebzeler
  KelimeKarti(kelime: 'Böğürtlen', yasakliKelimeler: ['Mor', 'Tatlı', 'Çalı', 'Yaz', 'Orman']),
  KelimeKarti(kelime: 'Ahududu', yasakliKelimeler: ['Kırmızı', 'Tatlı', 'Çalı', 'Yaz', 'Yuvarlak']),
  KelimeKarti(kelime: 'Yaban Mersini', yasakliKelimeler: ['Mavi', 'Tatlı', 'Küçük', 'Orman', 'Yaz']),
  KelimeKarti(kelime: 'Kayısı', yasakliKelimeler: ['Turuncu', 'Tatlı', 'Çekirdek', 'Kuru', 'Yaz']),
  KelimeKarti(kelime: 'Erik', yasakliKelimeler: ['Mor', 'Tatlı', 'Çekirdek', 'Ağaç', 'Yaz']),
  KelimeKarti(kelime: 'Vişne', yasakliKelimeler: ['Kırmızı', 'Tatlı', 'Çekirdek', 'Salkım', 'Yaz']),
  KelimeKarti(kelime: 'Armut', yasakliKelimeler: ['Yeşil', 'Tatlı', 'Ağaç', 'Uzun', 'Yaz']),
  KelimeKarti(kelime: 'Ayva', yasakliKelimeler: ['Sarı', 'Sert', 'Tatlı', 'Kış', 'Komposto']),
  KelimeKarti(kelime: 'Mandalina', yasakliKelimeler: ['Turuncu', 'Küçük', 'Kabuk', 'Tatlı', 'Kış']),
  KelimeKarti(kelime: 'Greyfurt', yasakliKelimeler: ['Sarı', 'Büyük', 'Ekşi', 'Kabuk', 'Kış']),
  KelimeKarti(kelime: 'Avokado', yasakliKelimeler: ['Yeşil', 'Yağlı', 'Kabuk', 'Tohum', 'Tropik']),
  KelimeKarti(kelime: 'Kivi', yasakliKelimeler: ['Yeşil', 'Kabuk', 'Tatlı', 'Kış', 'Yuvarlak']),

  // Sebzeler
  KelimeKarti(kelime: 'Biber', yasakliKelimeler: ['Kırmızı', 'Yeşil', 'Sivri', 'Dolma', 'Tatlı']),
  KelimeKarti(kelime: 'Patates', yasakliKelimeler: ['Toprak', 'Altı', 'Kızartma', 'Fırın', 'Beyaz']),
  KelimeKarti(kelime: 'Havuç', yasakliKelimeler: ['Turuncu', 'Uzun', 'Toprak', 'Salata', 'Tavşan']),
  KelimeKarti(kelime: 'Salatalık', yasakliKelimeler: ['Yeşil', 'Uzun', 'Su', 'Salata', 'Soğuk']),
  KelimeKarti(kelime: 'Domates', yasakliKelimeler: ['Kırmızı', 'Yuvarlak', 'Salata', 'Sosu', 'Yaz']),
  KelimeKarti(kelime: 'Soğan', yasakliKelimeler: ['Beyaz', 'Katman', 'Gözyaşı', 'Pişirmek', 'Koku']),
  KelimeKarti(kelime: 'Sarımsak', yasakliKelimeler: ['Beyaz', 'Diş', 'Koku', 'Lezzet', 'Sağlık']),
  KelimeKarti(kelime: 'Ispanak', yasakliKelimeler: ['Yeşil', 'Yaprak', 'Pişirmek', 'Demir', 'Yemek']),
  KelimeKarti(kelime: 'Kereviz', yasakliKelimeler: ['Yeşil', 'Sap', 'Kök', 'Salata', 'Kırılgan']),
  KelimeKarti(kelime: 'Bezelye', yasakliKelimeler: ['Yeşil', 'Yuvarlak', 'Kabuk', 'Yemek', 'Bahçe']),

  // Duygular ve Davranışlar
  KelimeKarti(kelime: 'Mutlu', yasakliKelimeler: ['Gülümse', 'Neşe', 'Sevinç', 'Gülmek', 'Mutluluk']),
  KelimeKarti(kelime: 'Üzgün', yasakliKelimeler: ['Ağlamak', 'Hüzün', 'Gözyaşı', 'Keder', 'Kalp']),
  KelimeKarti(kelime: 'Korku', yasakliKelimeler: ['Korkmak', 'Titremek', 'Kaçmak', 'Hayalet', 'Gece']),
  KelimeKarti(kelime: 'Kızgın', yasakliKelimeler: ['Öfke', 'Bağırmak', 'Yüz', 'Kırmızı', 'Vurmak']),
  KelimeKarti(kelime: 'Heyecanlı', yasakliKelimeler: ['Atlamak', 'Neşe', 'Beklemek', 'Mutlu', 'Hızlı']),
  KelimeKarti(kelime: 'Sakin', yasakliKelimeler: ['Rahat', 'Dingin', 'Yavaş', 'Müzik', 'Uyku']),

  // Renkler ve Şekiller
  KelimeKarti(kelime: 'Altıgen', yasakliKelimeler: ['Şekil', 'Köşe', 'Bal Peteği', 'Altı', 'Düzenli']),
  KelimeKarti(kelime: 'Beşgen', yasakliKelimeler: ['Şekil', 'Köşe', 'Beş', 'Düzenli', 'Çokgen']),

  // Daha Fazla Oyun ve Eğlence
  KelimeKarti(kelime: 'Dokuz Taş', yasakliKelimeler: ['Taş', 'Top', 'Atmak', 'Yere', 'Oyun']),
  KelimeKarti(kelime: 'Çekiç Oyunu', yasakliKelimeler: ['Çekiç', 'Çivi', 'Vurmak', 'Zor', 'Güç']),
  KelimeKarti(kelime: 'Balık Tutma', yasakliKelimeler: ['Olta', 'Su', 'Balık', 'Sabır', 'Havuz']),
  KelimeKarti(kelime: 'Kağıt Uçak', yasakliKelimeler: ['Kağıt', 'Katlamak', 'Uçmak', 'Rüzgar', 'Uzun']),
  KelimeKarti(kelime: 'Sabun Köpüğü', yasakliKelimeler: ['Sabun', 'Köpürmek', 'Banyo', 'Yıkamak', 'Eğlence']),
  KelimeKarti(kelime: 'Su Topu', yasakliKelimeler: ['Su', 'Balon', 'Patlamak', 'Havuz', 'Yaz']),
  KelimeKarti(kelime: 'Kar Topu', yasakliKelimeler: ['Kar', 'Atmak', 'Kış', 'Yuvarlak', 'Beyaz']),

  // Evcil Hayvanlar ve Daha Fazla Hayvan
  KelimeKarti(kelime: 'Kanarya', yasakliKelimeler: ['Kuş', 'Sarı', 'Şarkı', 'Kafes', 'Uçmak']),
  KelimeKarti(kelime: 'Bülbül', yasakliKelimeler: ['Kuş', 'Şarkı', 'Güzel', 'Ses', 'Yeşil']),
  KelimeKarti(kelime: 'Sazan', yasakliKelimeler: ['Balık', 'Havuz', 'Yüzgeç', 'Uyku', 'Yemek']),
  KelimeKarti(kelime: 'Sümüklü Böcek', yasakliKelimeler: ['Yeşil', 'Yapışkan', 'Çiçek', 'Bahçe', 'Yavaş']),
  KelimeKarti(kelime: 'Ağustos Böceği', yasakliKelimeler: ['Ses', 'Yaz', 'Ağaç', 'Gece', 'Çırpı']),
  KelimeKarti(kelime: 'Akar', yasakliKelimeler: ['Küçük', 'Beyaz', 'Pamuk', 'Ağaç', 'Yün']),
  KelimeKarti(kelime: 'Çekirge', yasakliKelimeler: ['Yeşil', 'Zıplamak', 'Çimen', 'Ses', 'Bacak']),

  // Eğitim ve Öğrenme
  KelimeKarti(kelime: 'Alfabe', yasakliKelimeler: ['Harf', 'A', 'Z', 'Öğrenmek', 'Okul']),
  KelimeKarti(kelime: 'Rakam', yasakliKelimeler: ['Sayı', '0', '9', 'Matematik', 'Öğrenmek']),
  KelimeKarti(kelime: 'Dünya Küresi', yasakliKelimeler: ['Dünya', 'Mavi', 'Yuvarlak', 'Ülke', 'Kıta']),
  KelimeKarti(kelime: 'Sözlük', yasakliKelimeler: ['Kelime', 'Anlam', 'Harf', 'Aramak', 'Kitap']),
  KelimeKarti(kelime: 'Ansiklopedi', yasakliKelimeler: ['Bilgi', 'Kitap', 'Konu', 'Araştırma', 'Detay']),

  // Hava Durumu ve Mevsimler
  KelimeKarti(kelime: 'Fırtına', yasakliKelimeler: ['Şimşek', 'Gök Gürültüsü', 'Yağmur', 'Korku', 'Karanlık']),
  KelimeKarti(kelime: 'Çığ', yasakliKelimeler: ['Kar', 'Dağ', 'Düşmek', 'Tehlike', 'Kış']),
  KelimeKarti(kelime: 'Kasırga', yasakliKelimeler: ['Rüzgar', 'Güçlü', 'Dönmek', 'Yıkmak', 'Tehlike']),
  KelimeKarti(kelime: 'Kış', yasakliKelimeler: ['Soğuk', 'Kar', 'Kıyafet', 'Yılbaşı', 'Kalın']),
  KelimeKarti(kelime: 'Yaz', yasakliKelimeler: ['Sıcak', 'Deniz', 'Tatil', 'Buz', 'Güneş']),

  // Spor ve Hareket

  // Müzik ve Sanat
  KelimeKarti(kelime: 'Resim', yasakliKelimeler: ['Kağıt', 'Fırça', 'Renk', 'Sanat', 'Çizmek']),
  KelimeKarti(kelime: 'Heykel', yasakliKelimeler: ['Kil', 'Şekil', 'Sanat', 'Yoğurmak', 'Katı']),
  KelimeKarti(kelime: 'Dans', yasakliKelimeler: ['Müzik', 'Hareket', 'Ritmi', 'Sahne', 'Kostüm']),

  // Daha Fazla Yiyecek ve İçecek
  KelimeKarti(kelime: 'Hamburger', yasakliKelimeler: ['Köfte', 'Ekmek', 'Marul', 'Domates', 'Fast Food']),
  KelimeKarti(kelime: 'Pizza', yasakliKelimeler: ['Hamur', 'Peynir', 'Sos', 'Yuvarlak', 'Sıcak']),
  KelimeKarti(kelime: 'Makarna', yasakliKelimeler: ['Spagetti', 'Sos', 'Pişirmek', 'Çatal', 'İtalyan']),
  KelimeKarti(kelime: 'Pilav', yasakliKelimeler: ['Pirinç', 'Pilavlık', 'Sıcak', 'Yemek', 'Türk']),
  KelimeKarti(kelime: 'Kısır', yasakliKelimeler: ['Bulgur', 'Salata', 'Yoğurt', 'Nane', 'Soğuk']),
  KelimeKarti(kelime: 'Mercimek Çorbası', yasakliKelimeler: ['Kırmızı', 'Mercimek', 'Sıcak', 'Çorba', 'Yemek']),
  KelimeKarti(kelime: 'Kola', yasakliKelimeler: ['Gazlı', 'Tatlı', 'Kahve', 'Soğuk', 'İçecek']),
  KelimeKarti(kelime: 'Gazoz', yasakliKelimeler: ['Gazlı', 'Şişe', 'Meyve', 'Soğuk', 'İçecek']),

  // Daha Fazla Oyuncak ve Eğlence
  KelimeKarti(kelime: 'PlayStation', yasakliKelimeler: ['Oyun', 'Kumanda', 'Ekran', 'Video', 'Koltuk']),
  KelimeKarti(kelime: 'Xbox', yasakliKelimeler: ['Oyun', 'Kumanda', 'Microsoft', 'Video', 'Kırmızı']),
  KelimeKarti(kelime: 'Nintendo Switch', yasakliKelimeler: ['Oyun', 'Kumanda', 'Taşınabilir', 'Video', 'Kırmızı']),

  // Ev ve Aile
  KelimeKarti(kelime: 'Banyo', yasakliKelimeler: ['Sabun', 'Su', 'Ayna', 'Lavabo', 'Temiz']),
  KelimeKarti(kelime: 'Mutfak', yasakliKelimeler: ['Yemek', 'Pişirmek', 'Ocak', 'Tezgah', 'Fırın']),
  KelimeKarti(kelime: 'Oturma Odası', yasakliKelimeler: ['TV', 'Koltuk', 'Sofa', 'Masa', 'Aile']),
  KelimeKarti(kelime: 'Yatak Odası', yasakliKelimeler: ['Yatak', 'Uyku', 'Dolap', 'Yorgan', 'Rahat']),
  KelimeKarti(kelime: 'Çocuk Odası', yasakliKelimeler: ['Oyuncak', 'Yatak', 'Kitap', 'Masa', 'Çizim']),
  KelimeKarti(kelime: 'Balkon', yasakliKelimeler: ['Kapı', 'Dış', 'Hava', 'Çiçek', 'Oturmak']),

  // Zaman ve Takvim
  KelimeKarti(kelime: 'Gün', yasakliKelimeler: ['Güneş', '24 Saat', 'Gece', 'Sabah', 'Akşam']),
  KelimeKarti(kelime: 'Hafta', yasakliKelimeler: ['7 Gün', 'Pazar', 'Pazartesi', 'Cumartesi', 'Tatil']),
  KelimeKarti(kelime: 'Yıl', yasakliKelimeler: ['12 Ay', 'Doğum', 'Yeni', 'Eski', 'Tarih']),

  // Daha Fazla Renk ve Şekil
  KelimeKarti(kelime: 'Parlak', yasakliKelimeler: ['Işık', 'Güneş', 'Yüzey', 'Yansıtmak', 'Açık']),
  KelimeKarti(kelime: 'Yuvarlak', yasakliKelimeler: ['Top', 'Çember', 'Şekil', 'Daire', 'Tam']),
  KelimeKarti(kelime: 'Uzun', yasakliKelimeler: ['Kısa', 'Boy', 'Mesafe', 'Yol', 'Zaman']),
  KelimeKarti(kelime: 'Geniş', yasakliKelimeler: ['Dar', 'Yer', 'Oda', 'Açık', 'Büyük']),

  // Daha Fazla Hayvan
  KelimeKarti(kelime: 'Köstebek', yasakliKelimeler: ['Toprak', 'Kazmak', 'Karanlık', 'Göz', 'Küçük']),
  KelimeKarti(kelime: 'Sıçan', yasakliKelimeler: ['Kuyruk', 'Büyük', 'Fare', 'Orman', 'Gece']),
  KelimeKarti(kelime: 'Çakal', yasakliKelimeler: ['Köpek', 'Orman', 'Av', 'Gece', 'Ses']),
  KelimeKarti(kelime: 'Vaşak', yasakliKelimeler: ['Kedi', 'Vahşi', 'Orman', 'Av', 'Güzel']),
  KelimeKarti(kelime: 'Sansar', yasakliKelimeler: ['Küçük', 'Hızlı', 'Orman', 'Av', 'Kürk']),
  KelimeKarti(kelime: 'Porsuk', yasakliKelimeler: ['Şerit', 'Gece', 'Orman', 'Kazmak', 'Kürk']),
  KelimeKarti(kelime: 'Gelincik', yasakliKelimeler: ['Küçük', 'Orman', 'Gece', 'Av', 'Hızlı']),

  // Daha Fazla Kuş
  KelimeKarti(kelime: 'Serçe', yasakliKelimeler: ['Küçük', 'Gri', 'Şehir', 'Yuva', 'Çekirdek']),
  KelimeKarti(kelime: 'Güvercin', yasakliKelimeler: ['Beyaz', 'Şehir', 'Uçmak', 'Ekmek', 'Barış']),
  KelimeKarti(kelime: 'Karga', yasakliKelimeler: ['Siyah', 'Akıllı', 'Şehir', 'Ses', 'Hırsız']),
  KelimeKarti(kelime: 'Saksağan', yasakliKelimeler: ['Siyah', 'Beyaz', 'Şehir', 'Parlak', 'Nesne']),
  KelimeKarti(kelime: 'Kaz', yasakliKelimeler: ['Beyaz', 'Göç', 'Su', 'Uzun', 'Boyun']),
  KelimeKarti(kelime: 'Ördek', yasakliKelimeler: ['Sarı', 'Su', 'Yüzmek', 'Ses', 'Yavru']),

  // Son Eklenenler
  KelimeKarti(kelime: 'Rüya', yasakliKelimeler: ['Uyku', 'Gece', 'Hayal', 'Güzel', 'Görmek']),
  KelimeKarti(kelime: 'Kâbus', yasakliKelimeler: ['Uyku', 'Gece', 'Korku', 'Kötü', 'Uyandırmak']),
  KelimeKarti(kelime: 'Kral', yasakliKelimeler: ['Taç', 'Şato', 'Taht', 'Kraliçe', 'Yönetmek']),
  KelimeKarti(kelime: 'Kraliçe', yasakliKelimeler: ['Taç', 'Şato', 'Kral', 'Yönetmek', 'Güzel']),
  KelimeKarti(kelime: 'Prens', yasakliKelimeler: ['Şato', 'Prenses', 'Taç', 'Küçük', 'Kral']),

  // Daha Fazla Hayvan Türleri
  KelimeKarti(kelime: 'Gergedan', yasakliKelimeler: ['Boynuz', 'Koyu', 'Afrika', 'Büyük', 'Derisi']),
  KelimeKarti(kelime: 'Zebra', yasakliKelimeler: ['Şerit', 'Siyah', 'Beyaz', 'Afrika', 'At']),
  KelimeKarti(kelime: 'Hippopotam', yasakliKelimeler: ['Su', 'Ağır', 'Gri', 'Afrika', 'Büyük']),
  KelimeKarti(kelime: 'Jiraf', yasakliKelimeler: ['Boyun', 'Uzun', 'Leke', 'Afrika', 'Yüksek']),
  KelimeKarti(kelime: 'Şempanze', yasakliKelimeler: ['Maymun', 'Akıllı', 'Afrika', 'Kol', 'Kıllı']),
  KelimeKarti(kelime: 'Goril', yasakliKelimeler: ['Maymun', 'Güçlü', 'Siyah', 'Ormanda', 'Aile']),
  KelimeKarti(kelime: 'Lemur', yasakliKelimeler: ['Maymun', 'Madagaskar', 'Kuyruk', 'Gece', 'Göz']),
  KelimeKarti(kelime: 'Tukan', yasakliKelimeler: ['Gag', 'Büyük', 'Renkli', 'Orman', 'Gagalı']),

  // Daha Fazla Deniz Hayvanları
  KelimeKarti(kelime: 'Kalamar', yasakliKelimeler: ['Kol', 'On', 'Hızlı', 'Deniz', 'Karanlık']),
  KelimeKarti(kelime: 'Denizanası', yasakliKelimeler: ['Şeffaf', 'Yakmak', 'Deniz', 'Şapka', 'Kol']),
  KelimeKarti(kelime: 'Yıldız Balığı', yasakliKelimeler: ['Deniz', 'Yıldız', 'Renkli', 'Diken', 'Kum']),
  KelimeKarti(kelime: 'Kılıç Balığı', yasakliKelimeler: ['Kılıç', 'Hızlı', 'Deniz', 'Gag', 'Mavi']),
  KelimeKarti(kelime: 'İstiridye', yasakliKelimeler: ['Kabuk', 'İnci', 'Deniz', 'Açmak', 'Yemek']),

  // Daha Fazla Böcekler
  KelimeKarti(kelime: 'Karınca', yasakliKelimeler: ['Küçük', 'Koloni', 'Çalışkan', 'Siyah', 'Toprak']),
  KelimeKarti(kelime: 'Kırkayak', yasakliKelimeler: ['Bacak', 'Çok', 'Uzun', 'Toprak', 'Gece']),
  KelimeKarti(kelime: 'Örümcek', yasakliKelimeler: ['Ağ', 'Sekiz', 'Bacak', 'Av', 'Duvar']),
  KelimeKarti(kelime: 'Uğur Böceği', yasakliKelimeler: ['Kırmızı', 'Nokta', 'Şans', 'Kanat', 'Küçük']),
  KelimeKarti(kelime: 'Yusufçuk', yasakliKelimeler: ['Kanat', 'Şeffaf', 'Hızlı', 'Su', 'Böcek']),

  // Daha Fazla Meyveler
  KelimeKarti(kelime: 'Mango', yasakliKelimeler: ['Sarı', 'Tatlı', 'Tropik', 'Kabuk', 'İplik']),
  KelimeKarti(kelime: 'Hindistan Cevizi', yasakliKelimeler: ['Sert', 'Süt', 'Tropik', 'Ağaç', 'Kabuk']),
  KelimeKarti(kelime: 'Limon', yasakliKelimeler: ['Sarı', 'Ekşi', 'Kokulu', 'Kabuk', 'Suyu']),
  KelimeKarti(kelime: 'İncir', yasakliKelimeler: ['Mor', 'Tatlı', 'Tohum', 'Ağaç', 'Yaz']),
  KelimeKarti(kelime: 'Kavun', yasakliKelimeler: ['Turuncu', 'Tatlı', 'Büyük', 'Kabuk', 'Yaz']),

  // Daha Fazla Sebzeler
  KelimeKarti(kelime: 'Marul', yasakliKelimeler: ['Yeşil', 'Yaprak', 'Salata', 'Su', 'Taze']),
  KelimeKarti(kelime: 'Pırasa', yasakliKelimeler: ['Beyaz', 'Uzun', 'Pişirmek', 'Yemek', 'Yeşil']),
  KelimeKarti(kelime: 'Brokoli', yasakliKelimeler: ['Yeşil', 'Çiçek', 'Sağlık', 'Pişirmek', 'Mini']),

  // Daha Fazla Tatlılar ve Yiyecekler
  KelimeKarti(kelime: 'Dondurma', yasakliKelimeler: ['Soğuk', 'Tatlı', 'Külah', 'Çikolata', 'Yaz']),
  KelimeKarti(kelime: 'Gofret', yasakliKelimeler: ['Tatlı', 'Kare', 'Çikolata', 'Kırılgan', 'Paket']),
  KelimeKarti(kelime: 'Jelibon', yasakliKelimeler: ['Renkli', 'Tatlı', 'Şekil', 'Çekmek', 'Uç']),
  KelimeKarti(kelime: 'Şekerleme', yasakliKelimeler: ['Tatlı', 'Renkli', 'Paket', 'Çocuk', 'Ağız']),
  KelimeKarti(kelime: 'Sakız', yasakliKelimeler: ['Çiğnemek', 'Tatlı', 'Kabarcık', 'Paket', 'Nane']),
  KelimeKarti(kelime: 'Lolipop', yasakliKelimeler: ['Şeker', 'Çubuk', 'Renkli', 'Yuvarlak', 'Yalamak']),
  KelimeKarti(kelime: 'Karamela', yasakliKelimeler: ['Sert', 'Şeker', 'Tatlı', 'Ağız', 'Emmek']),

  // Daha Fazla İçecekler
  KelimeKarti(kelime: 'Kakao', yasakliKelimeler: ['Sıcak', 'Çikolata', 'Süt', 'Tatlı', 'Kış']),

  // Daha Fazla Meslekler
  KelimeKarti(kelime: 'Çiftçi', yasakliKelimeler: ['Tarla', 'Traktör', 'Bitki', 'Toprak', 'Hasat']),
  KelimeKarti(kelime: 'Balıkçı', yasakliKelimeler: ['Tekne', 'Deniz', 'Olta', 'Balık', 'Ağ']),
  KelimeKarti(kelime: 'Yangın Söndürücü', yasakliKelimeler: ['Kırmızı', 'Ateş', 'Su', 'Tüp', 'Güvenlik']),

  // Daha Fazla Spor Dalları
  KelimeKarti(kelime: 'Bale', yasakliKelimeler: ['Dans', 'Etek', 'Sahne', 'Müzik', 'Puan']),

  // Daha Fazla Müzik Aletleri
  KelimeKarti(kelime: 'Trombon', yasakliKelimeler: ['Nefes', 'Kaydır', 'Bakır', 'Müzik', 'Uzun']),
  KelimeKarti(kelime: 'Zil', yasakliKelimeler: ['Ses', 'Tokmak', 'Müzik', 'Yuvarlak', 'Çalmak']),
  KelimeKarti(kelime: 'Marakas', yasakliKelimeler: ['Sallamak', 'Ses', 'Top', 'Müzik', 'Ritim']),
  KelimeKarti(kelime: 'Teşbih', yasakliKelimeler: ['Tane', 'Dua', 'Müzik', 'Ses', 'İslam']),

  // Daha Fazla Oyunlar
  KelimeKarti(kelime: 'Jenga', yasakliKelimeler: ['Kule', 'Çekme', 'Düşürme', 'Ahşap', 'Oyun']),
  KelimeKarti(kelime: 'Uno', yasakliKelimeler: ['Kart', 'Renk', 'Sayı', 'Yer', 'Oyun']),
  KelimeKarti(kelime: 'Çocuk Bezi', yasakliKelimeler: ['Bebek', 'İslak', 'Temiz', 'Değiştir', 'Pamuk']),
  KelimeKarti(kelime: 'Oyuncak Telefon', yasakliKelimeler: ['Ahize', 'Ara', 'Ses', 'Plastik', 'Oyun']),
  KelimeKarti(kelime: 'Oyuncak Mikrofon', yasakliKelimeler: ['Şarkı', 'Ses', 'Sahne', 'Plastik', 'Oyun']),
  KelimeKarti(kelime: 'Oyuncak Davul', yasakliKelimeler: ['Tokmak', 'Ses', 'Ritim', 'Plastik', 'Oyun']),

  // Daha Fazla Eğitim Konuları
  KelimeKarti(kelime: 'Toplama', yasakliKelimeler: ['Artı', 'Eşit', 'Sonuç', 'Matematik', 'İşlem']),
  KelimeKarti(kelime: 'Çıkarma', yasakliKelimeler: ['Eksi', 'Eşit', 'Sonuç', 'Matematik', 'İşlem']),
  KelimeKarti(kelime: 'Çarpma', yasakliKelimeler: ['Çarpı', 'Eşit', 'Sonuç', 'Matematik', 'İşlem']),
  KelimeKarti(kelime: 'Bölme', yasakliKelimeler: ['Bölü', 'Eşit', 'Sonuç', 'Matematik', 'İşlem']),
  KelimeKarti(kelime: 'Şekil', yasakliKelimeler: ['Geometri', 'Köşe', 'Kenar', 'Çizmek', 'Matematik']),
  KelimeKarti(kelime: 'Renk', yasakliKelimeler: ['Kırmızı', 'Mavi', 'Yeşil', 'Sarı', 'Görmek']),

  // Daha Fazla Duygular ve Davranışlar
  KelimeKarti(kelime: 'Sevinç', yasakliKelimeler: ['Mutlu', 'Gülümse', 'Neşe', 'Sıçramak', 'Mutluluk']),
  KelimeKarti(kelime: 'Hüzün', yasakliKelimeler: ['Üzgün', 'Gözyaşı', 'Keder', 'Sessiz', 'Kalp']),
  KelimeKarti(kelime: 'Şaşkınlık', yasakliKelimeler: ['Göz', 'Açık', 'Ne', 'İnanmamak', 'Düşünmek']),
  KelimeKarti(kelime: 'Sürpriz', yasakliKelimeler: ['Şaşırmak', 'Hediye', 'Beklemediğim', 'Mutlu', 'Aniden']),
  KelimeKarti(kelime: 'Rahatlık', yasakliKelimeler: ['Konfor', 'Yumuşak', 'Dinlenmek', 'Sakin', 'Uyku']),
  KelimeKarti(kelime: 'Endişe', yasakliKelimeler: ['Kaygı', 'Düşünmek', 'Gelecek', 'Telaş', 'Kalp']),

  // Daha Fazla Ev ve Yaşam

  // Daha Fazla Doğa ve Çevre
  KelimeKarti(kelime: 'Nehir', yasakliKelimeler: ['Su', 'Akış', 'Köprü', 'Balık', 'Uzun']),
  KelimeKarti(kelime: 'Çöl', yasakliKelimeler: ['Kum', 'Sıcak', 'Kurak', 'Kaktüs', 'Sarı']),
  KelimeKarti(kelime: 'Çayır', yasakliKelimeler: ['Ot', 'Yeşil', 'Çiçek', 'Kuzu', 'Geniş']),
  KelimeKarti(kelime: 'Tarım', yasakliKelimeler: ['Toprak', 'Bitki', 'Ekme', 'Çiftçi', 'Hasat']),

  // Daha Fazla Teknik ve Bilim

  // Daha Fazla Zaman Kavramları
  KelimeKarti(kelime: 'Dün', yasakliKelimeler: ['Geçmiş', 'Önce', 'Tarih', 'Hatırlamak', 'Zaman']),
  KelimeKarti(kelime: 'Bugün', yasakliKelimeler: ['Şimdi', 'Güncel', 'Şu an', 'Yaşamak', 'Zaman']),
  KelimeKarti(kelime: 'Yarın', yasakliKelimeler: ['Gelecek', 'Sonra', 'Beklemek', 'Plan', 'Zaman']),
  KelimeKarti(kelime: 'Sabah', yasakliKelimeler: ['Erken', 'Güneş', 'Kalkmak', 'Kahvaltı', 'Gün']),
  KelimeKarti(kelime: 'Öğle', yasakliKelimeler: ['Gün', 'Orta', 'Yemek', 'Sıcak', 'Zaman']),
  KelimeKarti(kelime: 'Akşam', yasakliKelimeler: ['Geç', 'Yemek', 'Yorgun', 'Uyku', 'Gün']),
  KelimeKarti(kelime: 'Gece', yasakliKelimeler: ['Karanlık', 'Uyku', 'Yıldız', 'Sessiz', 'Zaman']),

  // Daha Fazla Sosyal Kavramlar
  KelimeKarti(kelime: 'Arkadaş', yasakliKelimeler: ['Beraber', 'Oyun', 'Okul', 'Gülmek', 'Paylaşmak']),
  KelimeKarti(kelime: 'Okul', yasakliKelimeler: ['Öğretmen', 'Öğrenci', 'Sınıf', 'Kitap', 'Öğrenmek']),
  KelimeKarti(kelime: 'Tatil', yasakliKelimeler: ['Dinlenmek', 'Yaz', 'Deniz', 'Mutlu', 'Zaman']),
  KelimeKarti(kelime: 'Bayram', yasakliKelimeler: ['Tatil', 'Şeker', 'Aile', 'Sevgi', 'Mutlu']),

  // Son Eklenenler
];

final List<KelimeKarti> premiumCocuklar = [
  ...freeCocuklar,
  ..._extraPremiumCocuklar,
];

List<KelimeKarti> karisikPremiumCocuklar() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumCocuklar);
  kopya.shuffle();
  return kopya;
}


