export 'markalar.dart';
export 'cocuklar.dart';

import '../../kelimeler.dart';
import 'markalar.dart';
import 'cocuklar.dart';

// Premium tarafındaki kategori listelerini tek bir yerde birleştirir
final List<KelimeKarti> premiumKategorilerToplami = [
  ...premiumMarkalar,
  ...premiumCocuklar,
];

// Premium kategori tanımları (ileride yeni dosyalar eklendikçe genişletilir)
enum PremiumKategori {
  markalar,
  cocuklar,
}

const Map<PremiumKategori, String> premiumKategoriAdlari = {
  PremiumKategori.markalar: 'Markalar',
  PremiumKategori.cocuklar: 'Çocuklar',
};

List<KelimeKarti> premiumKategoriListesi(PremiumKategori kategori) {
  switch (kategori) {
    case PremiumKategori.markalar:
      return premiumMarkalar;
    case PremiumKategori.cocuklar:
      return premiumCocuklar;
  }
}


