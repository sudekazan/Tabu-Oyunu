import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'l10n/app_localizations.dart';
import 'screens/giris_ekrani.dart';
import 'screens/kategoriler_sayfasi.dart';
import 'screens/ayarlar_screens.dart';
import 'screens/premium_satin_alma_ekrani.dart';
import 'core/app_routes.dart';
import 'core/reklam_servisi.dart';
import 'core/premium_satin_alma_servisi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // AdMob'u sadece mobil platformlarda başlat
  if (!kIsWeb) {
    await ReklamServisi.initialize();
    
    // Premium satın alma servisini başlat
    await PremiumSatinAlmaServisi.initialize();
  }
  
  runApp(const TabuUygulamasi());
}

class TabuUygulamasi extends StatelessWidget {
  const TabuUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabu Oyunu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      // Şu an sadece Türkçe destekleniyor, ama metinler artık sabit string
      // olarak dosyalara serpilmek yerine lib/l10n/app_tr.arb'den geliyor;
      // yeni bir dil eklemek tek bir .arb dosyası + çeviri kadar iş.
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const GirisEkraniSayfasi(),
      // Argüman almayan ekranlar için isimli route tablosu. Hangi
      // ekranların doğrudan erişilebilir olduğu burada tek bakışta görülüyor.
      routes: {
        AppRoutes.kategoriler: (context) => const KategorilerSayfasi(),
        AppRoutes.ayarlar: (context) => const AyarlarEkrani(),
        AppRoutes.premium: (context) => const PremiumSatinAlmaEkrani(),
      },
    );
  }
}


