import '../data/kelimeler.dart';

/// Tabu oyununun saf (Flutter'dan bağımsız) kurallarını yönetir: skor,
/// sıradaki kelimeye geçiş, pas hakkı sayacı ve tur/takım değişimi.
///
/// Önceden bütün bu mantık `_OyunSayfasiState` içinde UI koduyla (dialog,
/// reklam çağrıları, animasyonlar) iç içe geçmişti; bu yüzden hiçbir birim
/// testi yazılamıyordu. Reklam gösterme/dialog açma gibi ekran-seviyesi
/// kararlar kasıtlı olarak burada değil, widget'ta bırakıldı — bu sınıf
/// sadece "oyunun kuralları ne diyor" sorusuna cevap verir.
class GameEngine {
  GameEngine({
    required this.takim1Adi,
    required this.takim2Adi,
    required this.oyunSuresi,
    required this.bitisPuani,
    required int baslangicPasHakki,
    List<KelimeKarti> kartlar = const [],
    Set<int>? kullanilanIndeksler,
  })  : kalanPasHakki = baslangicPasHakki,
        _kartlar = kartlar,
        kullanilanIndeksler = kullanilanIndeksler ?? <int>{};

  final String takim1Adi;
  final String takim2Adi;
  final int oyunSuresi;
  final int bitisPuani;

  List<KelimeKarti> _kartlar;
  List<KelimeKarti> get kartlar => _kartlar;

  /// Kelime havuzu değiştiğinde (plan/kategori değişimi) çağrılır.
  void kartlariDegistir(List<KelimeKarti> yeniKartlar) {
    _kartlar = yeniKartlar;
    mevcutKelimeIndex = 0;
  }

  /// Hangi kelime index'lerinin bu kategori için daha önce gösterildiği.
  /// Widget bu set'i SharedPreferences'a kaydeder/oradan yükler; motor
  /// sadece mantığı (sonraki kelimeyi seçme, tükenince sıfırlama) uygular.
  final Set<int> kullanilanIndeksler;

  int mevcutKelimeIndex = 0;
  int aktifTakimIndex = 0;

  int takim1Skor = 0;
  int takim2Skor = 0;
  int takim1ToplamSkor = 0;
  int takim2ToplamSkor = 0;

  int kalanPasHakki;

  final List<String> turDogruKelimeler = [];
  final List<String> turPasKelimeler = [];

  KelimeKarti? get mevcutKelime => _kartlar.isEmpty ? null : _kartlar[mevcutKelimeIndex];

  String get aktifTakimAdi => aktifTakimIndex == 0 ? takim1Adi : takim2Adi;
  int get aktifTakimSkor => aktifTakimIndex == 0 ? takim1Skor : takim2Skor;
  int get aktifTakimToplamSkor => aktifTakimIndex == 0 ? takim1ToplamSkor : takim2ToplamSkor;

  /// Oyunun bitiş koşulu: bir takımın TOPLAM skoru bitiş puanına ulaştı mı?
  /// (Turun kendi skoruna değil — aksi halde bir takımın oyunu bitirmesi
  /// için tek bir turda bitiş puanına ulaşması gerekirdi.)
  bool get oyunBittiMi => takim1ToplamSkor >= bitisPuani || takim2ToplamSkor >= bitisPuani;

  /// Kullanılmamış bir sonraki kelimeye geçer. Havuzdaki tüm kelimeler
  /// kullanıldıysa seti temizleyip baştan başlar.
  void sonrakiKelime() {
    if (_kartlar.isEmpty) return;
    int nextIndex = mevcutKelimeIndex;
    bool found = false;
    for (int i = 0; i < _kartlar.length; i++) {
      nextIndex = (nextIndex + 1) % _kartlar.length;
      if (!kullanilanIndeksler.contains(nextIndex)) {
        found = true;
        break;
      }
    }
    if (!found) {
      kullanilanIndeksler.clear();
      nextIndex = (mevcutKelimeIndex + 1) % _kartlar.length;
    }
    mevcutKelimeIndex = nextIndex;
    kullanilanIndeksler.add(mevcutKelimeIndex);
  }

  /// İlk kelimeyi kullanılmış olarak işaretler (tur başlarken bir kez
  /// çağrılır).
  void ilkKelimeyiIsaretle() {
    kullanilanIndeksler.add(mevcutKelimeIndex);
  }

  /// Doğru cevap verildiğinde çağrılır. Oyunun bu cevapla bittiğini
  /// (`true`) veya devam ettiğini (`false`) döner; oyun bitmediyse
  /// otomatik olarak sıradaki kelimeye geçer.
  bool dogruCevapVer() {
    final kelime = mevcutKelime;
    if (kelime != null) turDogruKelimeler.add(kelime.kelime);
    if (aktifTakimIndex == 0) {
      takim1Skor++;
      takim1ToplamSkor++;
    } else {
      takim2Skor++;
      takim2ToplamSkor++;
    }
    if (oyunBittiMi) return true;
    sonrakiKelime();
    return false;
  }

  /// "Tabu" cezası: aktif takımın skorundan 1 düşer ve sıradaki kelimeye
  /// geçilir.
  void tabuCezasiUygula() {
    if (aktifTakimIndex == 0) {
      takim1Skor -= 1;
      takim1ToplamSkor -= 1;
    } else {
      takim2Skor -= 1;
      takim2ToplamSkor -= 1;
    }
    sonrakiKelime();
  }

  bool get pasHakkiVarMi => kalanPasHakki > 0;

  /// Normal pas hakkı kullanır (sadece [pasHakkiVarMi] true iken çağrılmalı).
  void pasKullan() {
    if (kalanPasHakki <= 0) return;
    kalanPasHakki--;
    _pasKelimesiEkleVeGec();
  }

  /// Sınırsız pas hakkı olan premium kullanıcılar için: sayaç düşmeden
  /// sıradaki kelimeye geçer.
  void sinirsizPasKullan() {
    _pasKelimesiEkleVeGec();
  }

  /// Reklam izleyerek kazanılan ekstra pas hakkını uygular.
  void ekstraPasHakkiVer({int adet = 1}) {
    kalanPasHakki = adet;
    _pasKelimesiEkleVeGec();
  }

  void _pasKelimesiEkleVeGec() {
    final kelime = mevcutKelime;
    if (kelime != null) turPasKelimeler.add(kelime.kelime);
    sonrakiKelime();
  }

  /// Yeni bir tur/takım değişimi için round-bazlı durumu sıfırlar.
  /// [sirayiDegistir] true ise aktif takım da değişir (örn. süre bitince
  /// veya "Diğer Takım Başlasın" denince); takımların kendi tur skorunu
  /// sıfırlamak çağıranın sorumluluğundadır (bkz. [turSkorunuSifirla]).
  void yeniTurAyarlariniUygula({required int pasHakki, bool sirayiDegistir = false}) {
    if (sirayiDegistir) {
      aktifTakimIndex = (aktifTakimIndex + 1) % 2;
    }
    kalanPasHakki = pasHakki;
    turDogruKelimeler.clear();
    turPasKelimeler.clear();
  }

  /// Biten turun tur-skorunu sıfırlar (toplam skor korunur).
  void turSkorunuSifirla() {
    if (aktifTakimIndex == 0) {
      takim1Skor = 0;
    } else {
      takim2Skor = 0;
    }
  }
}
