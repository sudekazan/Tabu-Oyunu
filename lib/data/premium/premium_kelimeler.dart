import '../kelimeler.dart';
import 'kategoriler/index.dart';

final List<KelimeKarti> premiumKelimeler = [
  ...ornekKartlar,
  ...premiumKategorilerToplami,
];

List<KelimeKarti> karisikPremiumKelimeler() {
  final List<KelimeKarti> kopya = List<KelimeKarti>.from(premiumKelimeler);
  kopya.shuffle();
  return kopya;
}

// Belirli premium kategorilerinden karışık liste döndür (çoklu seçim destekli)
List<KelimeKarti> karisikPremiumKategorilerinden(Set<PremiumKategori> kategoriler) {
  if (kategoriler.isEmpty) return karisikPremiumKelimeler();
  final List<KelimeKarti> birlesik = [];
  for (final PremiumKategori k in kategoriler) {
    birlesik.addAll(premiumKategoriListesi(k));
  }
  birlesik.shuffle();
  return birlesik;
}


