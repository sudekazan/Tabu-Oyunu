import '../kelimeler.dart';

// Free plan için özel kelime listesi - orta seviye ve eğlenceli kelimeler
final List<KelimeKarti> freeKelimeler = [
  // Teknoloji ve Modern Hayat (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Bilgisayar', yasakliKelimeler: ['Makine', 'Ekran', 'Klavye', 'Program', 'İnternet']),
  const KelimeKarti(kelime: 'Robot', yasakliKelimeler: ['Makine', 'Otomatik', 'Kol', 'Akıllı', 'Teknoloji']),
  const KelimeKarti(kelime: 'İnternet', yasakliKelimeler: ['Ağ', 'Bilgi', 'Dünya', 'Bağlantı', 'Web']),
  const KelimeKarti(kelime: 'Telefon', yasakliKelimeler: ['Cep', 'Arama', 'Mesaj', 'Dokunmatik', 'Uygulama']),
  const KelimeKarti(kelime: 'Televizyon', yasakliKelimeler: ['Ekran', 'İzleme', 'Kanal', 'Uzaktan', 'Program']),

  // Duygular ve Psikoloji (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Duygu', yasakliKelimeler: ['Hiss', 'İç', 'Kalb', 'Mutlu', 'Üzgün']),
  const KelimeKarti(kelime: 'Hatıra', yasakliKelimeler: ['Geçmiş', 'Anı', 'Bellek', 'Eski', 'Zaman']),
  const KelimeKarti(kelime: 'Cesaret', yasakliKelimeler: ['Korkusuz', 'Güçlü', 'Yiğit', 'Bravlık', 'Cesur']),
  const KelimeKarti(kelime: 'İstek', yasakliKelimeler: ['İsteme', 'Arzu', 'Heves', 'Merak', 'İçten']),
  
  // Sanat ve Kültür (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Sade', yasakliKelimeler: ['Basit', 'Az', 'Temiz', 'Minimal', 'Yalın']),
  const KelimeKarti(kelime: 'Eski', yasakliKelimeler: ['Klasik', 'Antika', 'Geçmiş', 'Tarihi', 'Kullanılan']),
  const KelimeKarti(kelime: 'Serbest', yasakliKelimeler: ['Özgür', 'Bağımsız', 'Kısıtlamasız', 'Özgürlük', 'Açık']),
  const KelimeKarti(kelime: 'Komedi', yasakliKelimeler: ['Güldürü', 'Eğlence', 'Şaka', 'Gülme', 'Mizah']),
  const KelimeKarti(kelime: 'Duvar', yasakliKelimeler: ['Boyama', 'Sanat', 'Yazı', 'Resim', 'Sprey']),
  
  // Yemek ve Gastronomi (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Kahve', yasakliKelimeler: ['Sıcak', 'İçecek', 'Sabah', 'Çekirdek', 'Fincan']),
  const KelimeKarti(kelime: 'Çay', yasakliKelimeler: ['Sıcak', 'İçecek', 'Dem', 'Bardak', 'Türk']),
  const KelimeKarti(kelime: 'Ekmek', yasakliKelimeler: ['Un', 'Fırın', 'Beyaz', 'Dilim', 'Yemek']),
  const KelimeKarti(kelime: 'Meyve', yasakliKelimeler: ['Tatlı', 'Vitamin', 'Yenilebilir', 'Ağaç', 'Sağlıklı']),
  const KelimeKarti(kelime: 'Peynir', yasakliKelimeler: ['Süt', 'Beyaz', 'Tuz', 'Ekmek', 'Fare']),
  
  // Spor ve Aktiviteler (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Koşu', yasakliKelimeler: ['Hızlı', 'Ayak', 'Nefes', 'Maraton', 'Ter']),
  const KelimeKarti(kelime: 'Yoga', yasakliKelimeler: ['Esneklik', 'Pozisyon', 'Nefes', 'Dinginlik', 'Vücut']),
  const KelimeKarti(kelime: 'Jimnastik', yasakliKelimeler: ['Egzersiz', 'Vücut', 'Esneklik', 'Hareket', 'Spor']),
  const KelimeKarti(kelime: 'Yüzme', yasakliKelimeler: ['Su', 'Havuz', 'Kol', 'Bacak', 'Nefes']),
  const KelimeKarti(kelime: 'Bisiklet', yasakliKelimeler: ['Pedal', 'Tekerlek', 'Sürmek', 'Hız', 'Zincir']),
  
  // Müzik ve Dans (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Şarkı', yasakliKelimeler: ['Müzik', 'Söyleme', 'Söz', 'Melodi', 'Ses']),
  const KelimeKarti(kelime: 'Dans', yasakliKelimeler: ['Hareket', 'Müzik', 'Ritmi', 'Vücut', 'Eğlence']),
  const KelimeKarti(kelime: 'Müzik', yasakliKelimeler: ['Ses', 'Nota', 'Melodi', 'Enstrüman', 'Dinleme']),
  const KelimeKarti(kelime: 'Mikrofon', yasakliKelimeler: ['Ses', 'Yükseltme', 'Konuşma', 'Şarkı', 'Sahne']),
  const KelimeKarti(kelime: 'Gitar', yasakliKelimeler: ['Tel', 'Çalma', 'Müzik', 'Nota', 'Parmak']),
  
  // Moda ve Stil (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Şık', yasakliKelimeler: ['Güzel', 'Moda', 'Giyim', 'Stil', 'Görünüş']),
  const KelimeKarti(kelime: 'Rahat', yasakliKelimeler: ['Konforlu', 'Giysi', 'Kolay', 'Giyim', 'Hareket']),
  const KelimeKarti(kelime: 'Takı', yasakliKelimeler: ['Aksesuar', 'Kolye', 'Küpe', 'Süs', 'Giyim']),
  const KelimeKarti(kelime: 'Yeni', yasakliKelimeler: ['Modern', 'Güncel', 'Moda', 'Trend', 'Stil']),
  const KelimeKarti(kelime: 'Kombin', yasakliKelimeler: ['Uyumlu', 'Giysi', 'Renk', 'Stil', 'Moda']),
  
  // Doğa ve Çevre (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Doğa', yasakliKelimeler: ['Yeşil', 'Ağaç', 'Hayvan', 'Çiçek', 'Güzel']),
  const KelimeKarti(kelime: 'Çevre', yasakliKelimeler: ['Temiz', 'Doğa', 'Koruma', 'Yeşil', 'Sağlık']),
  const KelimeKarti(kelime: 'Doğal', yasakliKelimeler: ['Gerçek', 'Kimyasal', 'Yok', 'Saf', 'Orijinal']),
  const KelimeKarti(kelime: 'Hayvan', yasakliKelimeler: ['Canlı', 'Doğa', 'Yavru', 'Beslenme', 'Koruma']),
  const KelimeKarti(kelime: 'Bitki', yasakliKelimeler: ['Yeşil', 'Doğa', 'Çiçek', 'Yaprak', 'Büyüme']),
  
  // Felsefe ve Düşünce (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Düşünce', yasakliKelimeler: ['Beyin', 'Akıl', 'Fikir', 'Zihin', 'Bilinç']),
  const KelimeKarti(kelime: 'Şüphe', yasakliKelimeler: ['Kuşku', 'İnanmama', 'Soru', 'Merak', 'Eleştiri']),
  const KelimeKarti(kelime: 'Umut', yasakliKelimeler: ['İyimser', 'Pozitif', 'Beklenti', 'Gelecek', 'İnanç']),
  const KelimeKarti(kelime: 'Umutsuz', yasakliKelimeler: ['Kötümser', 'Negatif', 'Kayıtsız', 'Pes', 'Kötü']),
  const KelimeKarti(kelime: 'Anlam', yasakliKelimeler: ['Maksat', 'Amaç', 'Değer', 'Önem', 'Bilinç']),
  
  // Ekonomi ve İş Dünyası (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'İş', yasakliKelimeler: ['Çalışma', 'Para', 'Meslek', 'Şirket', 'Kazanç']),
  const KelimeKarti(kelime: 'Para', yasakliKelimeler: ['Kazanç', 'Alışveriş', 'Banka', 'Birim', 'Değer']),
  const KelimeKarti(kelime: 'Şirket', yasakliKelimeler: ['İş', 'Çalışan', 'Patron', 'Ofis', 'Firma']),
  const KelimeKarti(kelime: 'Fikir', yasakliKelimeler: ['Düşünce', 'Beyin', 'Yeni', 'İcat', 'Yaratıcılık']),
  const KelimeKarti(kelime: 'Satış', yasakliKelimeler: ['Alış', 'Ticaret', 'Müşteri', 'Ürün', 'Kazanç']),
  
  // Seyahat ve Macera (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Tatil', yasakliKelimeler: ['Dinlenme', 'Seyahat', 'Gezme', 'İzin', 'Rahatlama']),
  const KelimeKarti(kelime: 'Otel', yasakliKelimeler: ['Konaklama', 'Oda', 'Yatak', 'Gezgin', 'Rezervasyon']),
  const KelimeKarti(kelime: 'Deniz', yasakliKelimeler: ['Mavi', 'Kum', 'Yüzme', 'Tatil', 'Plaj']),
  const KelimeKarti(kelime: 'Dağ', yasakliKelimeler: ['Yüksek', 'Doğa', 'Tırmanma', 'Kar', 'Gezme']),
  const KelimeKarti(kelime: 'Gezme', yasakliKelimeler: ['Seyahat', 'Görme', 'Yeni', 'Yer', 'Keşfetme']),
  
  // Sosyal Medya ve İletişim (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'İnternet', yasakliKelimeler: ['Bilgisayar', 'Ağ', 'Bilgi', 'Web', 'Bağlantı']),
  const KelimeKarti(kelime: 'Mesaj', yasakliKelimeler: ['İletişim', 'Gönderme', 'Alma', 'Yazma', 'Konuşma']),
  const KelimeKarti(kelime: 'Arkadaş', yasakliKelimeler: ['Dost', 'Tanış', 'Grup', 'Birlikte', 'Sohbet']),
  const KelimeKarti(kelime: 'Paylaşım', yasakliKelimeler: ['Gönderme', 'Görme', 'Bilgi', 'İnternet', 'Fotoğraf']),
  const KelimeKarti(kelime: 'Fotoğraf', yasakliKelimeler: ['Resim', 'Çekme', 'Kamera', 'Görme', 'Hatıra']),
  
  // Bilim ve Teknoloji (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Resim', yasakliKelimeler: ['Görüntü', 'Çizme', 'Renk', 'Kağıt', 'Sanat']),
  const KelimeKarti(kelime: 'Uçak', yasakliKelimeler: ['Hava', 'Pilot', 'Yolcu', 'Gök', 'Uçuş']),
  const KelimeKarti(kelime: 'Güvenlik', yasakliKelimeler: ['Koruma', 'Emniyet', 'Tehlike', 'Korku', 'Kalkan']),
  const KelimeKarti(kelime: 'Küçük', yasakliKelimeler: ['Büyük', 'Az', 'Mini', 'Ufak', 'İnce']),
  const KelimeKarti(kelime: 'Bilim', yasakliKelimeler: ['Araştırma', 'Keşif', 'Deney', 'Bilgi', 'Öğrenme']),
  
  // Oyun ve Eğlence (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Oyun', yasakliKelimeler: ['Eğlence', 'Çocuk', 'Zevk', 'Oynamak', 'Süre']),
  const KelimeKarti(kelime: 'Eğlence', yasakliKelimeler: ['Zevk', 'Oyun', 'Gülme', 'Mutluluk', 'Dinlenme']),
  const KelimeKarti(kelime: 'Film', yasakliKelimeler: ['İzleme', 'Salon', 'Hikaye', 'Oyuncu', 'Kamera']),
  const KelimeKarti(kelime: 'Müzik', yasakliKelimeler: ['Dinleme', 'Nota', 'Şarkı', 'Enstrüman', 'Ses']),
  const KelimeKarti(kelime: 'Spor', yasakliKelimeler: ['Oyun', 'Vücut', 'Egzersiz', 'Takım', 'Maç']),
  
  // Psikoloji ve Kişilik (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Sessiz', yasakliKelimeler: ['Sakin', 'Konuşmama', 'Dikkatli', 'Dinleme', 'Kibar']),
  const KelimeKarti(kelime: 'Konuşkan', yasakliKelimeler: ['Sohbet', 'Arkadaş', 'Gülme', 'Enerjik', 'Açık']),
  const KelimeKarti(kelime: 'Titiz', yasakliKelimeler: ['Dikkatli', 'Düzenli', 'Mükemmel', 'Hassas', 'Özen']),
  const KelimeKarti(kelime: 'Tembel', yasakliKelimeler: ['Yavaş', 'Dinlenme', 'Uyuma', 'İstememe', 'Rahat']),
  const KelimeKarti(kelime: 'Çalışkan', yasakliKelimeler: ['Çaba', 'Azim', 'Başarı', 'Çalışma', 'Gayret']),
  
  // Sağlık ve Yaşam Tarzı (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Sağlık', yasakliKelimeler: ['Doktor', 'İlaç', 'Hasta', 'Vücut', 'İyileşme']),
  const KelimeKarti(kelime: 'Dinlenme', yasakliKelimeler: ['Uyku', 'Rahatlama', 'Yorgun', 'Oturma', 'Zevk']),
  const KelimeKarti(kelime: 'Spor', yasakliKelimeler: ['Egzersiz', 'Vücut', 'Sağlık', 'Koşu', 'Bisiklet']),
  const KelimeKarti(kelime: 'Uyku', yasakliKelimeler: ['Yatak', 'Gece', 'Dinlenme', 'Rüya', 'Yorgun']),
  const KelimeKarti(kelime: 'Gıda', yasakliKelimeler: ['Yemek', 'Beslenme', 'Vitamin', 'Sağlık', 'Besin']),
  
  // Sanat ve Tasarım (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Resim', yasakliKelimeler: ['Çizme', 'Renk', 'Kağıt', 'Fırça', 'Sanat']),
  const KelimeKarti(kelime: 'Çizim', yasakliKelimeler: ['Kalem', 'Kağıt', 'Resim', 'Çizme', 'Sanat']),
  const KelimeKarti(kelime: 'Renk', yasakliKelimeler: ['Boyama', 'Çok', 'Güzel', 'Çeşitli', 'Sanat']),
  const KelimeKarti(kelime: 'Şekil', yasakliKelimeler: ['Geometrik', 'Yuvarlak', 'Kare', 'Üçgen', 'Çizim']),
  const KelimeKarti(kelime: 'Sanat', yasakliKelimeler: ['Resim', 'Çizim', 'Müzik', 'Dans', 'Yaratıcılık']),
  
  // Günlük Hayat ve Kolay Kelimeler (Kolaylaştırılmış)
  const KelimeKarti(kelime: 'Fotoğraf', yasakliKelimeler: ['Çekme', 'Kamera', 'Resim', 'Görme', 'Hatıra']),
  const KelimeKarti(kelime: 'İnternet', yasakliKelimeler: ['Bilgisayar', 'Bilgi', 'Ağ', 'Web', 'Bağlantı']),
  const KelimeKarti(kelime: 'Yüz', yasakliKelimeler: ['İfade', 'Gülümseme', 'Bakış', 'Göz', 'Burun']),
  const KelimeKarti(kelime: 'Telefon', yasakliKelimeler: ['Arama', 'Konuşma', 'Dokunmatik', 'Mesaj', 'Uygulama']),
  const KelimeKarti(kelime: 'Kulaklık', yasakliKelimeler: ['Dinleme', 'Müzik', 'Ses', 'Kulak', 'Kablo']),
  
  // Yemek ve İçecek (Kolay)
  const KelimeKarti(kelime: 'Hamburger', yasakliKelimeler: ['Et', 'Ekmek', 'Fast', 'Food', 'Amerikan']),
  const KelimeKarti(kelime: 'Pizza', yasakliKelimeler: ['İtalya', 'Hamur', 'Peynir', 'Dilim', 'Yuvarlak']),
  const KelimeKarti(kelime: 'Çikolata', yasakliKelimeler: ['Kakao', 'Tatlı', 'Kahverengi', 'Şeker', 'Süt']),
  const KelimeKarti(kelime: 'Dondurma', yasakliKelimeler: ['Soğuk', 'Tatlı', 'Yaz', 'Külah', 'Vanilyalı']),
  const KelimeKarti(kelime: 'Popcorn', yasakliKelimeler: ['Mısır', 'Sinema', 'Patlamış', 'Tuz', 'Beyaz']),
  
  // Eğlence ve Hobiler
  const KelimeKarti(kelime: 'Puzzle', yasakliKelimeler: ['Yapboz', 'Parça', 'Birleştirme', 'Resim', 'Oyun']),
  const KelimeKarti(kelime: 'Karaoke', yasakliKelimeler: ['Şarkı', 'Mikrofon', 'Söyleme', 'Eğlence', 'Japonya']),
  const KelimeKarti(kelime: 'Bowling', yasakliKelimeler: ['Top', 'Kegel', 'Pist', 'Strike', 'Spor']),
  const KelimeKarti(kelime: 'Bingo', yasakliKelimeler: ['Sayı', 'Kart', 'Çekiliş', 'Oyun', 'Kazanma']),
  const KelimeKarti(kelime: 'Barbeku', yasakliKelimeler: ['Et', 'Mangal', 'Dışarıda', 'Pişirme', 'Yaz']),
  
  // Ev ve Günlük Eşyalar
  const KelimeKarti(kelime: 'Kumanda', yasakliKelimeler: ['TV', 'Uzaktan', 'Buton', 'Kanal', 'Değiştirme']),
  const KelimeKarti(kelime: 'Mikrodalga', yasakliKelimeler: ['Fırın', 'Isıtma', 'Mutfak', 'Hızlı', 'Elektrik']),
  const KelimeKarti(kelime: 'Aspiratör', yasakliKelimeler: ['Temizlik', 'Süpürge', 'Toz', 'Emme', 'Gürültü']),
  const KelimeKarti(kelime: 'Çamaşır Makinesi', yasakliKelimeler: ['Yıkama', 'Deterjan', 'Su', 'Döner', 'Temiz']),
  const KelimeKarti(kelime: 'Buzdolabı', yasakliKelimeler: ['Soğuk', 'Yemek', 'Saklama', 'Mutfak', 'Elektrik']),
  
  // Sosyal Aktiviteler
  const KelimeKarti(kelime: 'Piknik', yasakliKelimeler: ['Doğa', 'Yemek', 'Örtü', 'Park', 'Aile']),
  const KelimeKarti(kelime: 'Kamp', yasakliKelimeler: ['Çadır', 'Doğa', 'Ateş', 'Gece', 'Uyuma']),
  const KelimeKarti(kelime: 'Plaj', yasakliKelimeler: ['Deniz', 'Kum', 'Güneş', 'Mayo', 'Yüzme']),
  const KelimeKarti(kelime: 'Sinema', yasakliKelimeler: ['Film', 'İzleme', 'Karanlık', 'Bilet', 'Perde']),
  const KelimeKarti(kelime: 'Alışveriş', yasakliKelimeler: ['Market', 'Satın', 'Alma', 'Para', 'Çanta']),
  
  // Ulaşım
  const KelimeKarti(kelime: 'Taksi', yasakliKelimeler: ['Sarı', 'Araç', 'Şoför', 'Para', 'Gitmek']),
  const KelimeKarti(kelime: 'Otobüs', yasakliKelimeler: ['Toplu', 'Taşıma', 'Durak', 'Bilet', 'Büyük']),
  const KelimeKarti(kelime: 'Metro', yasakliKelimeler: ['Yeraltı', 'Tren', 'İstasyon', 'Hızlı', 'Şehir']),
  const KelimeKarti(kelime: 'Bisiklet', yasakliKelimeler: ['Pedal', 'Tekerlek', 'Sürmek', 'Zincir', 'Spor']),
  const KelimeKarti(kelime: 'Scooter', yasakliKelimeler: ['Elektrikli', 'Ayakta', 'Sürmek', 'Hızlı', 'Martı']),
  
  // Hava Durumu ve Doğa
  const KelimeKarti(kelime: 'Gökkuşağı', yasakliKelimeler: ['Renk', 'Yağmur', 'Güneş', 'Gökyüzü', 'Yedi']),
  const KelimeKarti(kelime: 'Kar Tanesi', yasakliKelimeler: ['Beyaz', 'Soğuk', 'Kış', 'Düşme', 'Altıgen']),
  const KelimeKarti(kelime: 'Şimşek', yasakliKelimeler: ['Işık', 'Gök', 'Gürültü', 'Fırtına', 'Çakma']),
  const KelimeKarti(kelime: 'Rüzgar', yasakliKelimeler: ['Hava', 'Esme', 'Yaprak', 'Uçurma', 'Serin']),
  const KelimeKarti(kelime: 'Bulut', yasakliKelimeler: ['Gökyüzü', 'Beyaz', 'Yağmur', 'Gölge', 'Yüzen']),
  
  // Duygular ve Hisler
  const KelimeKarti(kelime: 'Mutluluk', yasakliKelimeler: ['Sevinç', 'Gülümseme', 'İyi', 'Hissetme', 'Pozitif']),
  const KelimeKarti(kelime: 'Heyecan', yasakliKelimeler: ['Coşku', 'Beklenti', 'Enerji', 'Çarpıntı', 'İstek']),
  const KelimeKarti(kelime: 'Merak', yasakliKelimeler: ['Bilmek', 'İsteme', 'Soru', 'Sorma', 'İlgi']),
  const KelimeKarti(kelime: 'Şaşkınlık', yasakliKelimeler: ['Hayret', 'Beklememe', 'Ağız', 'Açık', 'Kalma']),
  const KelimeKarti(kelime: 'Gurur', yasakliKelimeler: ['Övünme', 'Başarı', 'Göğüs', 'Germe', 'Kibir']),
  
  // Spor (Kolay)
  const KelimeKarti(kelime: 'Futbol', yasakliKelimeler: ['Top', 'Kale', 'Gol', 'Ayak', 'Oyun']),
  const KelimeKarti(kelime: 'Basketbol', yasakliKelimeler: ['Potada', 'Sayı', 'Zıplama', 'El', 'Turuncu']),
  const KelimeKarti(kelime: 'Yüzme', yasakliKelimeler: ['Su', 'Havuz', 'Deniz', 'Nefes', 'Kol']),
  const KelimeKarti(kelime: 'Koşu', yasakliKelimeler: ['Hızlı', 'Yürüme', 'Nefes', 'Ayak', 'Ter']),
  const KelimeKarti(kelime: 'Tenis', yasakliKelimeler: ['Raket', 'Top', 'Kort', 'Sarı', 'Vuruş']),
  
  // Müzik Aletleri (Kolay)
  const KelimeKarti(kelime: 'Gitar', yasakliKelimeler: ['Tel', 'Çalma', 'Müzik', 'Ses', 'Parmak']),
  const KelimeKarti(kelime: 'Piyano', yasakliKelimeler: ['Tuş', 'Siyah', 'Beyaz', 'Basma', 'Klasik']),
  const KelimeKarti(kelime: 'Davul', yasakliKelimeler: ['Vurma', 'Ritim', 'Çubuk', 'Gürültü', 'Yuvarlak']),
  const KelimeKarti(kelime: 'Flüt', yasakliKelimeler: ['Üfleme', 'Delik', 'İnce', 'Uzun', 'Nefes']),
  const KelimeKarti(kelime: 'Mikrofon', yasakliKelimeler: ['Ses', 'Yükseltme', 'Konuşma', 'Şarkı', 'Tutma']),
  
  // Çok Kolay Kelimeler - Herkesin Bildiği
  const KelimeKarti(kelime: 'Anne', yasakliKelimeler: ['Baba', 'Çocuk', 'Aile', 'Kadın', 'Sevgi']),
  const KelimeKarti(kelime: 'Baba', yasakliKelimeler: ['Anne', 'Çocuk', 'Aile', 'Erkek', 'Sevgi']),
  const KelimeKarti(kelime: 'Kardeş', yasakliKelimeler: ['Abla', 'Abi', 'Aile', 'Küçük', 'Büyük']),
  const KelimeKarti(kelime: 'Dede', yasakliKelimeler: ['Nine', 'Yaşlı', 'Aile', 'Büyük', 'Baba']),
  const KelimeKarti(kelime: 'Nine', yasakliKelimeler: ['Dede', 'Yaşlı', 'Aile', 'Büyük', 'Anne']),
  
  // Renkler
  const KelimeKarti(kelime: 'Kırmızı', yasakliKelimeler: ['Renk', 'Kan', 'Domates', 'Ateş', 'Elma']),
  const KelimeKarti(kelime: 'Mavi', yasakliKelimeler: ['Renk', 'Gökyüzü', 'Deniz', 'Soğuk', 'Lacivert']),
  const KelimeKarti(kelime: 'Sarı', yasakliKelimeler: ['Renk', 'Güneş', 'Altın', 'Limon', 'Taksi']),
  const KelimeKarti(kelime: 'Yeşil', yasakliKelimeler: ['Renk', 'Yaprak', 'Çimen', 'Doğa', 'Ağaç']),
  const KelimeKarti(kelime: 'Beyaz', yasakliKelimeler: ['Renk', 'Kar', 'Süt', 'Temiz', 'Açık']),
  const KelimeKarti(kelime: 'Siyah', yasakliKelimeler: ['Renk', 'Karanlık', 'Gece', 'Koyu', 'Kömür']),
  
  // Hayvanlar (Çok Kolay)
  const KelimeKarti(kelime: 'Köpek', yasakliKelimeler: ['Havlama', 'Kuyruk', 'Evcil', 'Sadık', 'Kemik']),
  const KelimeKarti(kelime: 'Kedi', yasakliKelimeler: ['Miyav', 'Pençe', 'Evcil', 'Süt', 'Fare']),
  const KelimeKarti(kelime: 'Kuş', yasakliKelimeler: ['Uçma', 'Kanat', 'Tüy', 'Yumurta', 'Ağaç']),
  const KelimeKarti(kelime: 'Balık', yasakliKelimeler: ['Su', 'Yüzme', 'Solungaç', 'Deniz', 'Akvaryum']),
  const KelimeKarti(kelime: 'At', yasakliKelimeler: ['Koşma', 'Binme', 'Nal', 'Yeleli', 'Çiftlik']),
  const KelimeKarti(kelime: 'İnek', yasakliKelimeler: ['Süt', 'Möö', 'Çiftlik', 'Boynuz', 'Et']),
  const KelimeKarti(kelime: 'Tavuk', yasakliKelimeler: ['Yumurta', 'Civciv', 'Gıdaklama', 'Çiftlik', 'Kanat']),
  
  // Vücut Bölümleri
  const KelimeKarti(kelime: 'Göz', yasakliKelimeler: ['Görme', 'Bakma', 'Kirpik', 'İki', 'Yüz']),
  const KelimeKarti(kelime: 'Kulak', yasakliKelimeler: ['Duyma', 'Ses', 'İki', 'Yüz', 'Kepçe']),
  const KelimeKarti(kelime: 'Burun', yasakliKelimeler: ['Koklama', 'Nefes', 'Yüz', 'Orta', 'Delik']),
  const KelimeKarti(kelime: 'Ağız', yasakliKelimeler: ['Konuşma', 'Yeme', 'Diş', 'Dil', 'Yüz']),
  const KelimeKarti(kelime: 'El', yasakliKelimeler: ['Parmak', 'Tutma', 'İki', 'Kol', 'Avuç']),
  const KelimeKarti(kelime: 'Ayak', yasakliKelimeler: ['Yürüme', 'Parmak', 'İki', 'Bacak', 'Ayakkabı']),
  
  // Yiyecekler (Çok Basit)
  const KelimeKarti(kelime: 'Ekmek', yasakliKelimeler: ['Un', 'Fırın', 'Dilim', 'Beyaz', 'Yeme']),
  const KelimeKarti(kelime: 'Su', yasakliKelimeler: ['İçme', 'Şeffaf', 'Hayat', 'Deniz', 'Bardak']),
  const KelimeKarti(kelime: 'Süt', yasakliKelimeler: ['Beyaz', 'İnek', 'İçme', 'Kalsiyum', 'Bardak']),
  const KelimeKarti(kelime: 'Yumurta', yasakliKelimeler: ['Tavuk', 'Sarısı', 'Beyazı', 'Pişirme', 'Omlet']),
  const KelimeKarti(kelime: 'Peynir', yasakliKelimeler: ['Süt', 'Beyaz', 'Tuz', 'Ekmek', 'Fare']),
  const KelimeKarti(kelime: 'Elma', yasakliKelimeler: ['Meyve', 'Kırmızı', 'Yeşil', 'Ağaç', 'Sağlık']),
  const KelimeKarti(kelime: 'Muz', yasakliKelimeler: ['Sarı', 'Meyve', 'Uzun', 'Kabuk', 'Maymun']),
  
  // Ev Eşyaları (Basit)
  const KelimeKarti(kelime: 'Masa', yasakliKelimeler: ['Oturma', 'Yemek', 'Üst', 'Dört', 'Ayak']),
  const KelimeKarti(kelime: 'Sandalye', yasakliKelimeler: ['Oturma', 'Masa', 'Dört', 'Ayak', 'Sırt']),
  const KelimeKarti(kelime: 'Yatak', yasakliKelimeler: ['Uyuma', 'Yastık', 'Yorgan', 'Oda', 'Yatma']),
  const KelimeKarti(kelime: 'Kapı', yasakliKelimeler: ['Giriş', 'Çıkış', 'Açma', 'Kapama', 'Anahtar']),
  const KelimeKarti(kelime: 'Pencere', yasakliKelimeler: ['Cam', 'Bakma', 'Işık', 'Hava', 'Açma']),
  const KelimeKarti(kelime: 'Lamba', yasakliKelimeler: ['Işık', 'Aydınlatma', 'Elektrik', 'Açma', 'Ampul']),
  
  // Okul ve Eğitim
  const KelimeKarti(kelime: 'Okul', yasakliKelimeler: ['Öğretmen', 'Öğrenci', 'Sınıf', 'Ders', 'Eğitim']),
  const KelimeKarti(kelime: 'Kalem', yasakliKelimeler: ['Yazma', 'Mürekkep', 'Kağıt', 'Mavi', 'Tutma']),
  const KelimeKarti(kelime: 'Kitap', yasakliKelimeler: ['Okuma', 'Sayfa', 'Yazı', 'Hikaye', 'Kağıt']),
  const KelimeKarti(kelime: 'Defter', yasakliKelimeler: ['Yazma', 'Sayfa', 'Çizgi', 'Okul', 'Kağıt']),
  const KelimeKarti(kelime: 'Silgi', yasakliKelimeler: ['Silme', 'Kalem', 'Hata', 'Pembe', 'Kauçuk']),
  const KelimeKarti(kelime: 'Cetvel', yasakliKelimeler: ['Ölçme', 'Çizgi', 'Uzun', 'Santim', 'Düz']),
  
  // Doğa ve Çevre (Basit)
  const KelimeKarti(kelime: 'Ağaç', yasakliKelimeler: ['Yaprak', 'Dal', 'Gövde', 'Yeşil', 'Orman']),
  const KelimeKarti(kelime: 'Çiçek', yasakliKelimeler: ['Güzel', 'Koku', 'Rengarenk', 'Bahçe', 'Yaprak']),
  const KelimeKarti(kelime: 'Güneş', yasakliKelimeler: ['Sıcak', 'Sarı', 'Işık', 'Gündüz', 'Gökyüzü']),
  const KelimeKarti(kelime: 'Ay', yasakliKelimeler: ['Gece', 'Beyaz', 'Gökyüzü', 'Yıldız', 'Hilal']),
  const KelimeKarti(kelime: 'Yıldız', yasakliKelimeler: ['Gece', 'Parlak', 'Gökyüzü', 'Küçük', 'Işık']),
  const KelimeKarti(kelime: 'Deniz', yasakliKelimeler: ['Su', 'Mavi', 'Balık', 'Dalga', 'Tuzlu']),
  const KelimeKarti(kelime: 'Dağ', yasakliKelimeler: ['Yüksek', 'Tırmanma', 'Tepe', 'Kar', 'Büyük']),
  
  // Oyuncaklar ve Oyunlar
  const KelimeKarti(kelime: 'Top', yasakliKelimeler: ['Yuvarlak', 'Atma', 'Futbol', 'Oynama', 'Zıplama']),
  const KelimeKarti(kelime: 'Bebek', yasakliKelimeler: ['Oyuncak', 'Kız', 'Oynama', 'Küçük', 'Sevimli']),
  const KelimeKarti(kelime: 'Araba', yasakliKelimeler: ['Tekerlek', 'Sürmek', 'Yol', 'Hızlı', 'Motor']),
  const KelimeKarti(kelime: 'Bisiklet', yasakliKelimeler: ['İki', 'Tekerlek', 'Pedal', 'Sürmek', 'Zincir']),
  const KelimeKarti(kelime: 'Topaç', yasakliKelimeler: ['Döner', 'Oyuncak', 'Çevirme', 'Renkli', 'Denge']),
  
  // Kıyafetler
  const KelimeKarti(kelime: 'Gömlek', yasakliKelimeler: ['Üst', 'Düğme', 'Kol', 'Yaka', 'Giyme']),
  const KelimeKarti(kelime: 'Pantolon', yasakliKelimeler: ['Alt', 'Bacak', 'Cep', 'Kemer', 'Giyme']),
  const KelimeKarti(kelime: 'Ayakkabı', yasakliKelimeler: ['Ayak', 'Giyme', 'Yürüme', 'Bağcık', 'Deri']),
  const KelimeKarti(kelime: 'Çorap', yasakliKelimeler: ['Ayak', 'Giyme', 'Ayakkabı', 'Çift', 'Örgü']),
  const KelimeKarti(kelime: 'Şapka', yasakliKelimeler: ['Kafa', 'Güneş', 'Koruma', 'Giyme', 'Üst']),

  // Yeni Kategoriler - Eklenen Orta Seviye Kelimeler

  // Ev ve Yaşam
  const KelimeKarti(kelime: 'Mutfak', yasakliKelimeler: ['Yemek', 'Pişirme', 'Tencere', 'Tezgah', 'Ocak']),
  const KelimeKarti(kelime: 'Banyo', yasakliKelimeler: ['Yıkama', 'Duş', 'Lavabo', 'Sabun', 'Ayna']),
  const KelimeKarti(kelime: 'Oda', yasakliKelimeler: ['Yatak', 'Kapı', 'Pencere', 'Duvar', 'Zemin']),
  const KelimeKarti(kelime: 'Salon', yasakliKelimeler: ['Oturma', 'Koltuk', 'TV', 'Konuk', 'Rahat']),
  const KelimeKarti(kelime: 'Bahçe', yasakliKelimeler: ['Çiçek', 'Ağaç', 'Çim', 'Hava', 'Dışarı']),
  const KelimeKarti(kelime: 'Garaj', yasakliKelimeler: ['Araba', 'Park', 'Tamir', 'Alet', 'Kapı']),
  const KelimeKarti(kelime: 'Merdiven', yasakliKelimeler: ['Çıkma', 'Basamak', 'Yukarı', 'Aşağı', 'Tırmanma']),
  const KelimeKarti(kelime: 'Çatı', yasakliKelimeler: ['Üst', 'Kiremit', 'Yağmur', 'Yüksek', 'Ev']),

  // Eğitim ve Öğrenme
  const KelimeKarti(kelime: 'Okul', yasakliKelimeler: ['Öğrenci', 'Öğretmen', 'Ders', 'Sınıf', 'Eğitim']),
  const KelimeKarti(kelime: 'Kitap', yasakliKelimeler: ['Okuma', 'Sayfa', 'Hikaye', 'Bilgi', 'Kütüphane']),
  const KelimeKarti(kelime: 'Kalem', yasakliKelimeler: ['Yazma', 'Kağıt', 'Mürekkep', 'Çizme', 'Uç']),
  const KelimeKarti(kelime: 'Defter', yasakliKelimeler: ['Yazma', 'Sayfa', 'Çizgi', 'Not', 'Okul']),
  const KelimeKarti(kelime: 'Tahta', yasakliKelimeler: ['Yazma', 'Sınıf', 'Silgi', 'Öğretmen', 'Duvar']),
  const KelimeKarti(kelime: 'Sınav', yasakliKelimeler: ['Soru', 'Cevap', 'Not', 'Stres', 'Başarı']),
  const KelimeKarti(kelime: 'Ödev', yasakliKelimeler: ['Ev', 'Yapma', 'Öğretmen', 'Zaman', 'Bitirme']),
  const KelimeKarti(kelime: 'Ders', yasakliKelimeler: ['Öğrenme', 'Konu', 'Anlama', 'Soru', 'Cevap']),

  // Aile ve İlişkiler
  const KelimeKarti(kelime: 'Aile', yasakliKelimeler: ['Anne', 'Baba', 'Çocuk', 'Kardeş', 'Birlik']),
  const KelimeKarti(kelime: 'Arkadaş', yasakliKelimeler: ['Dost', 'Oyun', 'Gülme', 'Birlikte', 'Konuşma']),
  const KelimeKarti(kelime: 'Komşu', yasakliKelimeler: ['Yan', 'Kapı', 'Selam', 'Yardım', 'Yakın']),
  const KelimeKarti(kelime: 'Akraba', yasakliKelimeler: ['Kuzen', 'Teyze', 'Amca', 'Aile', 'Yakın']),
  const KelimeKarti(kelime: 'Tanışma', yasakliKelimeler: ['İlk', 'Merhaba', 'El', 'Sıkma', 'Konuşma']),
  const KelimeKarti(kelime: 'Davet', yasakliKelimeler: ['Parti', 'Misafir', 'Gel', 'Yemek', 'Eğlence']),
  const KelimeKarti(kelime: 'Hediye', yasakliKelimeler: ['Doğum', 'Günü', 'Kutu', 'Sevindirme', 'Paket']),
  const KelimeKarti(kelime: 'Tebrik', yasakliKelimeler: ['Başarı', 'Teşekkür', 'Bravo', 'Övgü', 'Mutlu']),

  // Çalışma ve Meslek
  const KelimeKarti(kelime: 'Ofis', yasakliKelimeler: ['Çalışma', 'Masa', 'Bilgisayar', 'Şirket', 'Toplantı']),
  const KelimeKarti(kelime: 'Patron', yasakliKelimeler: ['Şef', 'Lider', 'Çalışan', 'Emir', 'Şirket']),
  const KelimeKarti(kelime: 'Maaş', yasakliKelimeler: ['Para', 'Ay', 'Çalışma', 'Kazanç', 'Ödeme']),
  const KelimeKarti(kelime: 'Tatil', yasakliKelimeler: ['İzin', 'Dinlenme', 'Yaz', 'Deniz', 'Rahatlama']),
  const KelimeKarti(kelime: 'Toplantı', yasakliKelimeler: ['Birlikte', 'Konuşma', 'Karar', 'Ofis', 'Grup']),
  const KelimeKarti(kelime: 'Proje', yasakliKelimeler: ['Plan', 'Yapma', 'Bitirme', 'Takım', 'Zaman']),
  const KelimeKarti(kelime: 'Rapor', yasakliKelimeler: ['Yazma', 'Sonuç', 'Bilgi', 'Sunum', 'İş']),
  const KelimeKarti(kelime: 'Zaman', yasakliKelimeler: ['Saat', 'Geçme', 'Hızlı', 'Yavaş', 'Değer']),

  // Alışveriş ve Para
  const KelimeKarti(kelime: 'Market', yasakliKelimeler: ['Alışveriş', 'Yiyecek', 'Raf', 'Sepet', 'Kasa']),
  const KelimeKarti(kelime: 'Fiyat', yasakliKelimeler: ['Para', 'Değer', 'Pahalı', 'Ucuz', 'Satış']),
  const KelimeKarti(kelime: 'İndirim', yasakliKelimeler: ['Ucuz', 'Satış', 'Kampanya', 'Fiyat', 'Azaltma']),
  const KelimeKarti(kelime: 'Nakit', yasakliKelimeler: ['Para', 'Cüzdan', 'Ödeme', 'Boş', 'Kart']),
  const KelimeKarti(kelime: 'Kart', yasakliKelimeler: ['Kredi', 'Banka', 'Ödeme', 'Şifre', 'Çekme']),
  const KelimeKarti(kelime: 'Fatura', yasakliKelimeler: ['Ödeme', 'Para', 'Ay', 'Elektrik', 'Su']),
  const KelimeKarti(kelime: 'Bütçe', yasakliKelimeler: ['Plan', 'Para', 'Harcama', 'Tasarruf', 'Ay']),
  const KelimeKarti(kelime: 'Tasarruf', yasakliKelimeler: ['Para', 'Biriktirme', 'Banka', 'Gelecek', 'Az']),

  // Sağlık ve Vücut
  const KelimeKarti(kelime: 'Diş', yasakliKelimeler: ['Ağız', 'Çürük', 'Fırçalama', 'Doktor', 'Beyaz']),
  const KelimeKarti(kelime: 'Saç', yasakliKelimeler: ['Kafa', 'Tarama', 'Kesme', 'Uzun', 'Kısa']),
  const KelimeKarti(kelime: 'Tırnak', yasakliKelimeler: ['El', 'Ayak', 'Kesme', 'Uzun', 'Parmak']),
  const KelimeKarti(kelime: 'Yüz', yasakliKelimeler: ['Bakma', 'Gülümseme', 'Göz', 'Burun', 'Ağız']),
  const KelimeKarti(kelime: 'Sıcak', yasakliKelimeler: ['Ateş', 'Yaz', 'Güneş', 'İçme', 'Soğuk']),
  const KelimeKarti(kelime: 'Soğuk', yasakliKelimeler: ['Kış', 'Buz', 'Titreme', 'Sıcak', 'Üşüme']),
  const KelimeKarti(kelime: 'Ağrı', yasakliKelimeler: ['Acı', 'Baş', 'Diş', 'Karın', 'İlaç']),
  const KelimeKarti(kelime: 'Yorgun', yasakliKelimeler: ['Tükenmiş', 'Uyku', 'Dinlenme', 'Enerji', 'Az']),

  // Doğa ve Hava
  const KelimeKarti(kelime: 'Rüzgar', yasakliKelimeler: ['Esme', 'Hava', 'Yaprak', 'Soğuk', 'Kuvvetli']),
  const KelimeKarti(kelime: 'Yağmur', yasakliKelimeler: ['Su', 'Gökyüzü', 'Şemsiye', 'Islak', 'Bulut']),
  const KelimeKarti(kelime: 'Kar', yasakliKelimeler: ['Beyaz', 'Soğuk', 'Kış', 'Yer', 'Düşme']),
  const KelimeKarti(kelime: 'Bulut', yasakliKelimeler: ['Gökyüzü', 'Beyaz', 'Yağmur', 'Gölge', 'Yüzen']),
  const KelimeKarti(kelime: 'Fırtına', yasakliKelimeler: ['Rüzgar', 'Yağmur', 'Şimşek', 'Kuvvetli', 'Tehlike']),
  const KelimeKarti(kelime: 'Gökkuşağı', yasakliKelimeler: ['Renk', 'Yağmur', 'Güneş', 'Gökyüzü', 'Yedi']),
  const KelimeKarti(kelime: 'Kuş', yasakliKelimeler: ['Uçma', 'Kanat', 'Tüy', 'Gagala', 'Gökyüzü']),
  const KelimeKarti(kelime: 'Köpek', yasakliKelimeler: ['Havlama', 'Kuyruk', 'Evcil', 'Sadık', 'Hayvan']),

  // Zaman ve Günlük Hayat
  const KelimeKarti(kelime: 'Sabah', yasakliKelimeler: ['Gün', 'Doğum', 'Kahvaltı', 'Uyandırma', 'Erken']),
  const KelimeKarti(kelime: 'Akşam', yasakliKelimeler: ['Gece', 'Yemek', 'Yorgun', 'Gün', 'Bitiş']),
  const KelimeKarti(kelime: 'Hafta', yasakliKelimeler: ['Gün', '7', 'Pazartesi', 'Cumartesi', 'Pazar']),
  const KelimeKarti(kelime: 'Ay', yasakliKelimeler: ['Zaman', '30', 'Takvim', 'Ayın', 'Dolu']),
  const KelimeKarti(kelime: 'Yıl', yasakliKelimeler: ['365', 'Doğum', 'Yeni', 'Eski', 'Geçmiş']),
  const KelimeKarti(kelime: 'Saat', yasakliKelimeler: ['Zaman', 'Gösterge', 'Geç', 'Gel', 'Akrep']),
  const KelimeKarti(kelime: 'Geç', yasakliKelimeler: ['Zaman', 'Sonra', 'Önce', 'Bekleme', 'Geçmiş']),
  const KelimeKarti(kelime: 'Erken', yasakliKelimeler: ['Zaman', 'Önce', 'Sabah', 'Vakit', 'Çabuk']),

  // Hareket ve Eylem
  const KelimeKarti(kelime: 'Yürüme', yasakliKelimeler: ['Ayak', 'Yavaş', 'Sokak', 'Mesafe', 'Adım']),
  const KelimeKarti(kelime: 'Koşma', yasakliKelimeler: ['Hızlı', 'Ayak', 'Nefes', 'Yorgun', 'Maraton']),
  const KelimeKarti(kelime: 'Atlama', yasakliKelimeler: ['Yukarı', 'Zıplama', 'Yüksek', 'İp', 'Sekme']),
  const KelimeKarti(kelime: 'Oturma', yasakliKelimeler: ['Sandalye', 'Dinlenme', 'Rahat', 'Yere', 'Çömelme']),
  const KelimeKarti(kelime: 'Kalkma', yasakliKelimeler: ['Ayağa', 'Yere', 'Oturma', 'Yavaş', 'Hızlı']),
  const KelimeKarti(kelime: 'Dönme', yasakliKelimeler: ['Çevrilme', 'Yuvarlak', 'Baş', 'Vücut', 'Sağa']),
  const KelimeKarti(kelime: 'Durma', yasakliKelimeler: ['Hareket', 'Sabit', 'Bekleme', 'Durak', 'Bekle']),
  const KelimeKarti(kelime: 'Bekleme', yasakliKelimeler: ['Zaman', 'Sabır', 'Sıra', 'Geç', 'Gel']),

  // Renkler ve Şekiller
  const KelimeKarti(kelime: 'Yuvarlak', yasakliKelimeler: ['Daire', 'Top', 'Tam', 'Keskin', 'Köşe']),
  const KelimeKarti(kelime: 'Kare', yasakliKelimeler: ['Dört', 'Köşe', 'Eşit', 'Kenar', 'Dikdörtgen']),
  const KelimeKarti(kelime: 'Üçgen', yasakliKelimeler: ['Üç', 'Köşe', 'Kenar', 'Şekil', 'Geometrik']),
  const KelimeKarti(kelime: 'Uzun', yasakliKelimeler: ['Kısa', 'Boy', 'Mesafe', 'Zaman', 'Bekleme']),
  const KelimeKarti(kelime: 'Kısa', yasakliKelimeler: ['Uzun', 'Küçük', 'Az', 'Hızlı', 'Zaman']),
  const KelimeKarti(kelime: 'Büyük', yasakliKelimeler: ['Küçük', 'Geniş', 'Yüksek', 'Ağır', 'Çok']),
  const KelimeKarti(kelime: 'Küçük', yasakliKelimeler: ['Büyük', 'Mini', 'Az', 'İnce', 'Dar']),
  const KelimeKarti(kelime: 'Ağır', yasakliKelimeler: ['Hafif', 'Kaldırma', 'Ağırlık', 'Zor', 'Çekme']),

  // Duygular ve Hissler (Ek)
  const KelimeKarti(kelime: 'Mutlu', yasakliKelimeler: ['Gülme', 'Sevinç', 'İyi', 'Memnun', 'Mutluluk']),
  const KelimeKarti(kelime: 'Üzgün', yasakliKelimeler: ['Ağlama', 'Keder', 'Kötü', 'Hüzün', 'Yas']),
  const KelimeKarti(kelime: 'Korku', yasakliKelimeler: ['Titreme', 'Tehlike', 'Korkma', 'Ürperme', 'Korkak']),
  const KelimeKarti(kelime: 'Sevinç', yasakliKelimeler: ['Mutlu', 'Gülme', 'Coşku', 'Neşe', 'Heyecan']),
  const KelimeKarti(kelime: 'Öfke', yasakliKelimeler: ['Kızgın', 'Sinirli', 'Bağırma', 'Darılma', 'Hiddet']),
  const KelimeKarti(kelime: 'Şaşkın', yasakliKelimeler: ['Hayret', 'Şaşırma', 'Anlamama', 'Şok', 'Ağız']),
  const KelimeKarti(kelime: 'Gurur', yasakliKelimeler: ['Övünme', 'Başarı', 'Göğüs', 'Germe', 'Kibir']),
  const KelimeKarti(kelime: 'Utanç', yasakliKelimeler: ['Yüz', 'Kızarma', 'Kötü', 'Hata', 'Mahcup']),

  // Yiyecek ve İçecek (Ek)
  const KelimeKarti(kelime: 'Sıcak', yasakliKelimeler: ['Çay', 'Kahve', 'Yemek', 'Fırın', 'Isı']),
  const KelimeKarti(kelime: 'Soğuk', yasakliKelimeler: ['Buz', 'Buzdolabı', 'İçecek', 'Hava', 'Kış']),
  const KelimeKarti(kelime: 'Tatlı', yasakliKelimeler: ['Şeker', 'Çikolata', 'Pasta', 'Lezzet', 'İyileşme']),
  const KelimeKarti(kelime: 'Acı', yasakliKelimeler: ['Baharat', 'Sivri', 'Sıcak', 'Lezzet', 'Zevk']),
  const KelimeKarti(kelime: 'Tuzlu', yasakliKelimeler: ['Tuz', 'Deniz', 'Lezzet', 'Çiğ', 'Salamura']),
  const KelimeKarti(kelime: 'Ekşi', yasakliKelimeler: ['Limon', 'Sirke', 'Lezzet', 'Keskin', 'Tat']),
  const KelimeKarti(kelime: 'Taze', yasakliKelimeler: ['Yeni', 'Çiğ', 'Yeşil', 'Güncel', 'Yenilenmiş']),
  const KelimeKarti(kelime: 'Bayat', yasakliKelimeler: ['Eski', 'Kuruma', 'Taze', 'Zaman', 'Geçmiş']),

  // Ev Eşyaları (Ek)
  const KelimeKarti(kelime: 'Fırın', yasakliKelimeler: ['Sıcak', 'Pişirme', 'Ekmek', 'Mutfak', 'Elektrik']),
  const KelimeKarti(kelime: 'Buzdolabı', yasakliKelimeler: ['Soğuk', 'Yiyecek', 'Saklama', 'Raf', 'Elektrik']),
  const KelimeKarti(kelime: 'Çamaşır', yasakliKelimeler: ['Yıkama', 'Makinesi', 'Giysi', 'Temiz', 'Su']),
  const KelimeKarti(kelime: 'Ütü', yasakliKelimeler: ['Sıcak', 'Giysi', 'Düzeltme', 'Kat', 'Açma']),
  const KelimeKarti(kelime: 'Süpürge', yasakliKelimeler: ['Temizlik', 'Zemin', 'Toz', 'Fırça', 'Elektrik']),
  const KelimeKarti(kelime: 'Vantilatör', yasakliKelimeler: ['Hava', 'Soğutma', 'Dönme', 'Yaz', 'Elektrik']),
  const KelimeKarti(kelime: 'Klima', yasakliKelimeler: ['Soğutma', 'Sıcak', 'Hava', 'Yaz', 'Elektrik']),
  const KelimeKarti(kelime: 'Isıtıcı', yasakliKelimeler: ['Sıcak', 'Kış', 'Oda', 'Elektrik', 'Sicak']),

  // Okul ve Öğrenme (Ek)
  const KelimeKarti(kelime: 'Öğretmen', yasakliKelimeler: ['Öğrenci', 'Ders', 'Anlatma', 'Soru', 'Cevap']),
  const KelimeKarti(kelime: 'Öğrenci', yasakliKelimeler: ['Okul', 'Ders', 'Öğrenme', 'Soru', 'Cevap']),
  const KelimeKarti(kelime: 'Sınıf', yasakliKelimeler: ['Öğrenci', 'Öğretmen', 'Tahta', 'Sıra', 'Ders']),
  const KelimeKarti(kelime: 'Teneffüs', yasakliKelimeler: ['Ara', 'Oyun', 'Bahçe', 'Yemek', 'Dinlenme']),
  const KelimeKarti(kelime: 'Kütüphane', yasakliKelimeler: ['Kitap', 'Okuma', 'Sessiz', 'Raf', 'Bilgi']),
  const KelimeKarti(kelime: 'Laboratuvar', yasakliKelimeler: ['Deney', 'Bilim', 'Mikroskop', 'Tüp', 'Araştırma']),
  const KelimeKarti(kelime: 'Kantin', yasakliKelimeler: ['Yemek', 'Öğrenci', 'Satın', 'Alma', 'Okul']),
  const KelimeKarti(kelime: 'Diploma', yasakliKelimeler: ['Başarı', 'Mezun', 'Belge', 'Ödül', 'Bitirme']),

  // Sosyal ve Toplumsal
  const KelimeKarti(kelime: 'Toplum', yasakliKelimeler: ['İnsan', 'Grup', 'Birlik', 'Kurallar', 'Yaşantı']),
  const KelimeKarti(kelime: 'Kurallar', yasakliKelimeler: ['Yasak', 'İzin', 'Uyma', 'Ceza', 'Toplum']),
  const KelimeKarti(kelime: 'Hak', yasakliKelimeler: ['Özgürlük', 'İnsanın', 'Temel', 'Koruma', 'Kanun']),
  const KelimeKarti(kelime: 'Görev', yasakliKelimeler: ['Sorumluluk', 'Yapma', 'İşi', 'Zorunlu', 'İş']),
  const KelimeKarti(kelime: 'Yardım', yasakliKelimeler: ['Destek', 'İmkan', 'Verme', 'Alma', 'İhtiyaç']),
  const KelimeKarti(kelime: 'Paylaşım', yasakliKelimeler: ['Verme', 'Alma', 'Birlikte', 'Adil', 'Eşit']),
  const KelimeKarti(kelime: 'Güven', yasakliKelimeler: ['İnanç', 'Emin', 'Güvenlik', 'Sakin', 'Rahat']),
  const KelimeKarti(kelime: 'Saygı', yasakliKelimeler: ['Hormet', 'Değer', 'Verme', 'Büyük', 'İnsanın']),

  // Modern Teknoloji
  const KelimeKarti(kelime: 'Akıllı', yasakliKelimeler: ['Telefon', 'Saat', 'Ev', 'Teknoloji', 'Otomatik']),
  const KelimeKarti(kelime: 'Uygulama', yasakliKelimeler: ['Telefon', 'Program', 'İndirme', 'Kullanma', 'Dokunmatik']),
  const KelimeKarti(kelime: 'Kamera', yasakliKelimeler: ['Fotoğraf', 'Video', 'Çekme', 'Telefon', 'Lens']),
  const KelimeKarti(kelime: 'Video', yasakliKelimeler: ['Kamera', 'İzleme', 'Film', 'Çekme', 'Ekran']),
  const KelimeKarti(kelime: 'Ses', yasakliKelimeler: ['Dinleme', 'Kulaklık', 'Müzik', 'Konuşma', 'Duyulma']),
  const KelimeKarti(kelime: 'Ekran', yasakliKelimeler: ['TV', 'Bilgisayar', 'Telefon', 'Görüntü', 'Dokunmatik']),
  const KelimeKarti(kelime: 'Pil', yasakliKelimeler: ['Batarya', 'Şarj', 'Enerji', 'Telefon', 'Bitme']),
  const KelimeKarti(kelime: 'Şarj', yasakliKelimeler: ['Pil', 'Batarya', 'Dolma', 'Elektrik', 'Kablo']),

  // Eğlence ve Boş Zaman
  const KelimeKarti(kelime: 'Sinema', yasakliKelimeler: ['Film', 'İzleme', 'Koltuk', 'Karanlık', 'Popcorn']),
  const KelimeKarti(kelime: 'Tiyatro', yasakliKelimeler: ['Sahne', 'Oyuncu', 'İzleyici', 'Gösteri', 'Perde']),
  const KelimeKarti(kelime: 'Konser', yasakliKelimeler: ['Müzik', 'Sahne', 'Dinleyici', 'Şarkıcı', 'Mikrofon']),
  const KelimeKarti(kelime: 'Festival', yasakliKelimeler: ['Eğlence', 'Kalabalık', 'Müzik', 'Yaz', 'Açıkhava']),
  const KelimeKarti(kelime: 'Müze', yasakliKelimeler: ['Tarih', 'Sanat', 'Eser', 'Bakma', 'Bilgi']),
  const KelimeKarti(kelime: 'Park', yasakliKelimeler: ['Yeşil', 'Oturma', 'Yürüyüş', 'Çocuk', 'Dinlenme']),
  const KelimeKarti(kelime: 'Kahve', yasakliKelimeler: ['İçme', 'Sohbet', 'Arkadaş', 'Oturma', 'Keyif']),
  const KelimeKarti(kelime: 'Kitap', yasakliKelimeler: ['Okuma', 'Hikaye', 'Bilgi', 'Rahat', 'Zevk']),

  // Ulaşım ve Yol
  const KelimeKarti(kelime: 'Otobüs', yasakliKelimeler: ['Toplu', 'Taşıma', 'Durak', 'Bilet', 'Şoför']),
  const KelimeKarti(kelime: 'Tren', yasakliKelimeler: ['Ray', 'Vagon', 'İstasyon', 'Hızlı', 'Yolcu']),
  const KelimeKarti(kelime: 'Uçak', yasakliKelimeler: ['Gökyüzü', 'Pilot', 'Yolcu', 'Havaalanı', 'Kanat']),
  const KelimeKarti(kelime: 'Gemi', yasakliKelimeler: ['Deniz', 'Yolcu', 'Kaptan', 'Liman', 'Dalga']),
  const KelimeKarti(kelime: 'Yol', yasakliKelimeler: ['Araba', 'Yürüme', 'Asfalt', 'Çizgi', 'Trafik']),
  const KelimeKarti(kelime: 'Köprü', yasakliKelimeler: ['Nehir', 'Geçiş', 'Yüksek', 'Destek', 'Yol']),
  const KelimeKarti(kelime: 'Trafik', yasakliKelimeler: ['Araba', 'Yavaş', 'Sıkışık', 'Işıklı', 'Korna']),
  const KelimeKarti(kelime: 'Benzin', yasakliKelimeler: ['Araba', 'İstasyon', 'Yakıt', 'Depo', 'Doldurma']),

  // Son Eklemeler - Günlük Hayat
  const KelimeKarti(kelime: 'Uyku', yasakliKelimeler: ['Yatak', 'Gece', 'Rüya', 'Dinlenme', 'Yorgun']),
  const KelimeKarti(kelime: 'Yemek', yasakliKelimeler: ['Acıkma', 'Yiyecek', 'Pişirme', 'Lezzet', 'Beslenme']),
  const KelimeKarti(kelime: 'İçecek', yasakliKelimeler: ['Su', 'Sıvı', 'İçme', 'Susama', 'Bardak']),
  const KelimeKarti(kelime: 'Konuşma', yasakliKelimeler: ['Söyleme', 'Dinleme', 'Sohbet', 'Ağız', 'Ses']),
  const KelimeKarti(kelime: 'Dinlenme', yasakliKelimeler: ['Rahatlama', 'Oturma', 'Uyku', 'Yorgun', 'Zevk']),
  const KelimeKarti(kelime: 'Çalışma', yasakliKelimeler: ['İş', 'Zor', 'Efor', 'Başarı', 'Yorgun']),
  const KelimeKarti(kelime: 'Oyun', yasakliKelimeler: ['Eğlence', 'Çocuk', 'Zevk', 'Oynamak', 'Süre']),
  const KelimeKarti(kelime: 'Eğlence', yasakliKelimeler: ['Zevk', 'Oyun', 'Gülme', 'Mutluluk', 'Rahatlama']),
];

List<KelimeKarti> karisikFreeKelimeler() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(freeKelimeler);
  kopya.shuffle();
  return kopya;
}


