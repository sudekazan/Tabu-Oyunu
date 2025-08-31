import '../kelimeler.dart';

// Free plan için özel kelime listesi - daha zor ve eğlenceli kelimeler
final List<KelimeKarti> freeKelimeler = [
  // Teknoloji ve Modern Hayat
  const KelimeKarti(kelime: 'Algoritma', yasakliKelimeler: ['Bilgisayar', 'Program', 'Kod', 'Hesaplama', 'Adım']),
  const KelimeKarti(kelime: 'Yapay Zeka', yasakliKelimeler: ['Robot', 'Makine', 'Öğrenme', 'Akıllı', 'AI']),
  const KelimeKarti(kelime: 'Blockchain', yasakliKelimeler: ['Bitcoin', 'Kripto', 'Zincir', 'Dijital', 'Para']),
  const KelimeKarti(kelime: 'Metaverse', yasakliKelimeler: ['Sanal', 'Dünya', 'VR', 'Dijital', 'Evren']),
  const KelimeKarti(kelime: 'Podcast', yasakliKelimeler: ['Ses', 'Yayın', 'Dinle', 'Program', 'Radyo']),
  
  // Psikoloji ve Duygular
  const KelimeKarti(kelime: 'Empati', yasakliKelimeler: ['Anlayış', 'Duygu', 'Hissetmek', 'Acı', 'Paylaşmak']),
  const KelimeKarti(kelime: 'Nostalji', yasakliKelimeler: ['Özlem', 'Geçmiş', 'Hatıra', 'Eski', 'Anı']),
  const KelimeKarti(kelime: 'Fobia', yasakliKelimeler: ['Korku', 'Panik', 'Kaygı', 'Aşırı', 'Hastalık']),
  const KelimeKarti(kelime: 'Karizma', yasakliKelimeler: ['Çekicilik', 'Etki', 'Lider', 'Büyüleyici', 'Güç']),
  const KelimeKarti(kelime: 'Motivasyon', yasakliKelimeler: ['İstek', 'Güdü', 'Heves', 'Enerji', 'İtici']),
  
  // Sanat ve Kültür
  const KelimeKarti(kelime: 'Minimalizm', yasakliKelimeler: ['Sade', 'Az', 'Basit', 'Temiz', 'Sanat']),
  const KelimeKarti(kelime: 'Vintage', yasakliKelimeler: ['Eski', 'Klasik', 'Retro', 'Antika', 'Geçmiş']),
  const KelimeKarti(kelime: 'Freestyle', yasakliKelimeler: ['Serbest', 'Doğaçlama', 'Rap', 'Müzik', 'Özgür']),
  const KelimeKarti(kelime: 'Stand-up', yasakliKelimeler: ['Komedi', 'Sahne', 'Güldürü', 'Tek', 'Kişi']),
  const KelimeKarti(kelime: 'Graffiti', yasakliKelimeler: ['Duvar', 'Boyama', 'Sanat', 'Sokak', 'Sprey']),
  
  // Yemek ve Gastronomi
  const KelimeKarti(kelime: 'Sushi', yasakliKelimeler: ['Japonya', 'Balık', 'Pirinç', 'Çiğ', 'Yemek']),
  const KelimeKarti(kelime: 'Cappuccino', yasakliKelimeler: ['Kahve', 'Süt', 'Köpük', 'İtalya', 'İçecek']),
  const KelimeKarti(kelime: 'Bruschetta', yasakliKelimeler: ['Ekmek', 'Domates', 'İtalya', 'Atıştırmalık', 'Kızarmış']),
  const KelimeKarti(kelime: 'Smoothie', yasakliKelimeler: ['Meyve', 'İçecek', 'Karışım', 'Sağlıklı', 'Blender']),
  const KelimeKarti(kelime: 'Fondue', yasakliKelimeler: ['Peynir', 'Eritme', 'İsviçre', 'Çatal', 'Batırma']),
  
  // Spor ve Aktiviteler
  const KelimeKarti(kelime: 'Parkour', yasakliKelimeler: ['Atlama', 'Engel', 'Hareket', 'Şehir', 'Akrobasi']),
  const KelimeKarti(kelime: 'Pilates', yasakliKelimeler: ['Egzersiz', 'Esneklik', 'Denge', 'Nefes', 'Yoga']),
  const KelimeKarti(kelime: 'Crossfit', yasakliKelimeler: ['Antrenman', 'Yoğun', 'Kas', 'Güç', 'Spor']),
  const KelimeKarti(kelime: 'Bungee', yasakliKelimeler: ['Atlama', 'Ip', 'Yükseklik', 'Adrenalin', 'Extreme']),
  const KelimeKarti(kelime: 'Rafting', yasakliKelimeler: ['Nehir', 'Bot', 'Su', 'Akıntı', 'Macera']),
  
  // Müzik ve Dans
  const KelimeKarti(kelime: 'Beatbox', yasakliKelimeler: ['Ağız', 'Ritim', 'Ses', 'Müzik', 'Taklit']),
  const KelimeKarti(kelime: 'Breakdance', yasakliKelimeler: ['Dans', 'Döner', 'Zemin', 'Hip-hop', 'Akrobasi']),
  const KelimeKarti(kelime: 'Karaoke', yasakliKelimeler: ['Şarkı', 'Mikrofon', 'Söyleme', 'Eğlence', 'Japonya']),
  const KelimeKarti(kelime: 'Remix', yasakliKelimeler: ['Müzik', 'Karışım', 'Yeniden', 'Düzenleme', 'DJ']),
  const KelimeKarti(kelime: 'Akustik', yasakliKelimeler: ['Ses', 'Doğal', 'Elektrik', 'Yok', 'Gitar']),
  
  // Moda ve Stil
  const KelimeKarti(kelime: 'Haute Couture', yasakliKelimeler: ['Moda', 'Lüks', 'Dikiş', 'Pahalı', 'Fransız']),
  const KelimeKarti(kelime: 'Streetwear', yasakliKelimeler: ['Sokak', 'Moda', 'Rahat', 'Gençlik', 'Stil']),
  const KelimeKarti(kelime: 'Accessory', yasakliKelimeler: ['Aksesuar', 'Takı', 'Ek', 'Süs', 'Tamamlayıcı']),
  const KelimeKarti(kelime: 'Trendy', yasakliKelimeler: ['Moda', 'Popüler', 'Güncel', 'Şık', 'Modern']),
  const KelimeKarti(kelime: 'Outfit', yasakliKelimeler: ['Kıyafet', 'Kombin', 'Giyim', 'Stil', 'Görünüm']),
  
  // Doğa ve Çevre
  const KelimeKarti(kelime: 'Ekoloji', yasakliKelimeler: ['Doğa', 'Çevre', 'Denge', 'Yaşam', 'Bilim']),
  const KelimeKarti(kelime: 'Sürdürülebilir', yasakliKelimeler: ['Devam', 'Çevre', 'Gelecek', 'Koruma', 'Yeşil']),
  const KelimeKarti(kelime: 'Organik', yasakliKelimeler: ['Doğal', 'Kimyasal', 'Yok', 'Sağlıklı', 'Tarım']),
  const KelimeKarti(kelime: 'Biyoçeşitlilik', yasakliKelimeler: ['Tür', 'Çeşitlilik', 'Doğa', 'Hayvan', 'Bitki']),
  const KelimeKarti(kelime: 'Karbon Ayak İzi', yasakliKelimeler: ['Çevre', 'Kirlilik', 'Gaz', 'Etki', 'İklim']),
  
  // Felsefe ve Düşünce
  const KelimeKarti(kelime: 'Paradoks', yasakliKelimeler: ['Çelişki', 'Mantık', 'Garip', 'Ters', 'Düşünce']),
  const KelimeKarti(kelime: 'Skeptik', yasakliKelimeler: ['Şüpheci', 'İnanmama', 'Sorgulama', 'Kuşku', 'Eleştiri']),
  const KelimeKarti(kelime: 'Optimist', yasakliKelimeler: ['İyimser', 'Pozitif', 'Umutlu', 'Güzel', 'Görme']),
  const KelimeKarti(kelime: 'Pesimist', yasakliKelimeler: ['Kötümser', 'Negatif', 'Umutsuz', 'Kötü', 'Görme']),
  const KelimeKarti(kelime: 'Nihilist', yasakliKelimeler: ['Hiçlik', 'Anlamsızlık', 'Boş', 'Değersiz', 'Felsefe']),
  
  // Ekonomi ve İş Dünyası
  const KelimeKarti(kelime: 'Startup', yasakliKelimeler: ['Girişim', 'Yeni', 'Şirket', 'Teknoloji', 'İş']),
  const KelimeKarti(kelime: 'Freelancer', yasakliKelimeler: ['Serbest', 'Çalışan', 'Bağımsız', 'Proje', 'İş']),
  const KelimeKarti(kelime: 'Networking', yasakliKelimeler: ['Ağ', 'Bağlantı', 'İlişki', 'İş', 'Tanışma']),
  const KelimeKarti(kelime: 'Brainstorming', yasakliKelimeler: ['Beyin', 'Fırtına', 'Fikir', 'Üretme', 'Grup']),
  const KelimeKarti(kelime: 'Outsourcing', yasakliKelimeler: ['Dışarıdan', 'Hizmet', 'Alma', 'İş', 'Yaptırma']),
  
  // Seyahat ve Macera
  const KelimeKarti(kelime: 'Backpacker', yasakliKelimeler: ['Sırt', 'Çanta', 'Gezgin', 'Ucuz', 'Seyahat']),
  const KelimeKarti(kelime: 'Hostel', yasakliKelimeler: ['Konaklama', 'Ucuz', 'Gençlik', 'Pansiyon', 'Ortak']),
  const KelimeKarti(kelime: 'Safari', yasakliKelimeler: ['Afrika', 'Hayvan', 'Gözlem', 'Doğa', 'Gezisi']),
  const KelimeKarti(kelime: 'Cruise', yasakliKelimeler: ['Gemi', 'Tatil', 'Deniz', 'Lüks', 'Yolculuk']),
  const KelimeKarti(kelime: 'Trekking', yasakliKelimeler: ['Yürüyüş', 'Dağ', 'Doğa', 'Uzun', 'Macera']),
  
  // Sosyal Medya ve İletişim
  const KelimeKarti(kelime: 'Influencer', yasakliKelimeler: ['Etkileyici', 'Sosyal', 'Medya', 'Takipçi', 'Fenomen']),
  const KelimeKarti(kelime: 'Hashtag', yasakliKelimeler: ['Etiket', 'Kare', 'İşaret', 'Sosyal', 'Medya']),
  const KelimeKarti(kelime: 'Viral', yasakliKelimeler: ['Yayılma', 'Hızlı', 'Popüler', 'İnternet', 'Video']),
  const KelimeKarti(kelime: 'Story', yasakliKelimeler: ['Hikaye', '24', 'Saat', 'Instagram', 'Geçici']),
  const KelimeKarti(kelime: 'Meme', yasakliKelimeler: ['Komik', 'Resim', 'İnternet', 'Paylaşım', 'Espri']),
  
  // Bilim ve Teknoloji
  const KelimeKarti(kelime: 'Hologram', yasakliKelimeler: ['3D', 'Işık', 'Görüntü', 'Havada', 'Projeksiyon']),
  const KelimeKarti(kelime: 'Drone', yasakliKelimeler: ['İnsansız', 'Hava', 'Araç', 'Uzaktan', 'Kumanda']),
  const KelimeKarti(kelime: 'Biyometrik', yasakliKelimeler: ['Parmak', 'İzi', 'Tanıma', 'Güvenlik', 'Vücut']),
  const KelimeKarti(kelime: 'Nanotteknoloji', yasakliKelimeler: ['Küçük', 'Molekül', 'Atom', 'Teknoloji', 'Mikro']),
  const KelimeKarti(kelime: 'Genetik', yasakliKelimeler: ['Gen', 'Kalıtım', 'DNA', 'Özellik', 'Bilim']),
  
  // Oyun ve Eğlence
  const KelimeKarti(kelime: 'Speedrun', yasakliKelimeler: ['Hızlı', 'Oyun', 'Bitirme', 'Rekord', 'Zaman']),
  const KelimeKarti(kelime: 'Cosplay', yasakliKelimeler: ['Kostüm', 'Karakter', 'Taklit', 'Anime', 'Giyinme']),
  const KelimeKarti(kelime: 'Streaming', yasakliKelimeler: ['Yayın', 'Canlı', 'İzleme', 'Twitch', 'YouTube']),
  const KelimeKarti(kelime: 'Achievement', yasakliKelimeler: ['Başarı', 'Ödül', 'Oyun', 'Kazanma', 'Hedef']),
  const KelimeKarti(kelime: 'Multiplayer', yasakliKelimeler: ['Çok', 'Oyuncu', 'Beraber', 'Online', 'Oyun']),
  
  // Psikoloji ve Kişilik
  const KelimeKarti(kelime: 'İçedönük', yasakliKelimeler: ['Sessiz', 'Çekingen', 'İçine', 'Kapanık', 'Utangaç']),
  const KelimeKarti(kelime: 'Dışadönük', yasakliKelimeler: ['Sosyal', 'Konuşkan', 'Açık', 'Enerjik', 'Girişken']),
  const KelimeKarti(kelime: 'Perfeksiyonist', yasakliKelimeler: ['Mükemmel', 'Arayış', 'Titiz', 'Detaycı', 'Hassas']),
  const KelimeKarti(kelime: 'Procrastination', yasakliKelimeler: ['Erteleme', 'Tembellik', 'Geciktirme', 'İş', 'Bırakma']),
  const KelimeKarti(kelime: 'Multitasking', yasakliKelimeler: ['Çoklu', 'Görev', 'Aynı', 'Anda', 'Yapma']),
  
  // Sağlık ve Yaşam Tarzı
  const KelimeKarti(kelime: 'Detoks', yasakliKelimeler: ['Temizlik', 'Zehir', 'Atma', 'Arınma', 'Sağlık']),
  const KelimeKarti(kelime: 'Meditasyon', yasakliKelimeler: ['Düşünme', 'Sessizlik', 'Rahatlama', 'Zihin', 'Yoga']),
  const KelimeKarti(kelime: 'Wellness', yasakliKelimeler: ['İyilik', 'Sağlık', 'Hali', 'Ruh', 'Beden']),
  const KelimeKarti(kelime: 'Mindfulness', yasakliKelimeler: ['Farkındalık', 'Şimdi', 'An', 'Dikkat', 'Zihin']),
  const KelimeKarti(kelime: 'Life Coach', yasakliKelimeler: ['Yaşam', 'Koç', 'Rehber', 'Danışman', 'Gelişim']),
  
  // Sanat ve Tasarım
  const KelimeKarti(kelime: 'Typography', yasakliKelimeler: ['Yazı', 'Tipi', 'Font', 'Harf', 'Tasarım']),
  const KelimeKarti(kelime: 'Logo', yasakliKelimeler: ['Marka', 'İşaret', 'Simge', 'Şirket', 'Tasarım']),
  const KelimeKarti(kelime: 'Branding', yasakliKelimeler: ['Marka', 'İmaj', 'Kimlik', 'Tanıtım', 'Pazarlama']),
  const KelimeKarti(kelime: 'Layout', yasakliKelimeler: ['Düzen', 'Tasarım', 'Yerleştirme', 'Sayfa', 'Grafik']),
  const KelimeKarti(kelime: 'Portfolio', yasakliKelimeler: ['Çalışma', 'Dosya', 'Örnek', 'Koleksiyon', 'Sanat']),
  
  // Günlük Hayat ve Kolay Kelimeler
  const KelimeKarti(kelime: 'Selfie', yasakliKelimeler: ['Kendini', 'Çekme', 'Fotoğraf', 'Telefon', 'Kamera']),
  const KelimeKarti(kelime: 'WiFi', yasakliKelimeler: ['İnternet', 'Kablosuz', 'Bağlantı', 'Şifre', 'Ağ']),
  const KelimeKarti(kelime: 'Emoji', yasakliKelimeler: ['Yüz', 'İfade', 'Mesaj', 'Sembol', 'WhatsApp']),
  const KelimeKarti(kelime: 'Şarj', yasakliKelimeler: ['Batarya', 'Telefon', 'Kablo', 'Enerji', 'Doldurmak']),
  const KelimeKarti(kelime: 'Bluetooth', yasakliKelimeler: ['Kablosuz', 'Bağlantı', 'Kulaklık', 'Hoparlör', 'Mavi']),
  
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
];

List<KelimeKarti> karisikFreeKelimeler() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(freeKelimeler);
  kopya.shuffle();
  return kopya;
}


