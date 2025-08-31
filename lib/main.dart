import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_fonts/google_fonts.dart';
import 'screens/giris_ekrani.dart';
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
      home: const GirisEkraniSayfasi(),
    );
  }
}


