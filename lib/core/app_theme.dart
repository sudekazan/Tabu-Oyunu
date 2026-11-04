import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Uygulamanın marka renkleri ve tekrar eden gradient/stil tanımları.
///
/// Önceden her ekran kendi içinde `Color(0xFF6A1B9A)` / `Color(0xFFFF7043)`
/// değerlerini ve aynı arka plan gradient'ini tekrar tekrar tanımlıyordu.
/// Marka rengi değiştirileceği zaman tek bir dosyayı güncellemek yeterli.
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF6A1B9A);
  static const Color primaryDark = Color(0xFF4A1172);
  static const Color primarySoft = Color(0xFFEDE1F7);
  static const Color secondary = Color(0xFFFF7043);
  static const Color secondaryDark = Color(0xFFD84315);
}

class AppTheme {
  AppTheme._();

  /// Tüm ekranlarda kullanılan standart arka plan gradient'i
  /// (sol üstten sağ alta, mor -> turuncu).
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.primary, AppColors.secondary],
  );

  static const BoxDecoration backgroundDecoration = BoxDecoration(
    gradient: backgroundGradient,
  );

  /// Kartlar/gövdeler için kullanılan hafif sıcak tonlu beyaz gradient.
  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFFFFF), Color(0xFFFFF3EC)],
  );

  /// "Kil" (clay) tasarım dili: kalın kenarlık + bulanıklığı olmayan düz
  /// ofset gölge, oyuncağa benzer bir 3D/basılı görünüm verir. Kenarlık ve
  /// gölge rengi verilmezse dolgu renginin kendisi kullanılır.
  static BoxDecoration clayDecoration({
    Color background = Colors.white,
    Color? borderColor,
    Color? shadowColor,
    double borderWidth = 3,
    double radius = 22,
    double shadowOffset = 6,
  }) {
    final Color border = borderColor ?? background;
    return BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: border, width: borderWidth),
      boxShadow: [
        BoxShadow(color: shadowColor ?? border, offset: Offset(0, shadowOffset)),
      ],
    );
  }

  /// Başlık/buton metinleri için Fredoka — yuvarlak, oyuncu dostu bir font.
  static TextStyle heading({
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.w600,
    Color color = Colors.white,
    double? letterSpacing,
  }) {
    return GoogleFonts.fredoka(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
    );
  }

  /// Gövde metinleri için Nunito.
  static TextStyle body({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w600,
    Color color = Colors.black,
  }) {
    return GoogleFonts.nunito(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}
