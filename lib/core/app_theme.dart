import 'package:flutter/material.dart';

/// Uygulamanın marka renkleri ve tekrar eden gradient/stil tanımları.
///
/// Önceden her ekran kendi içinde `Color(0xFF6A1B9A)` / `Color(0xFFFF7043)`
/// değerlerini ve aynı arka plan gradient'ini tekrar tekrar tanımlıyordu.
/// Marka rengi değiştirileceği zaman tek bir dosyayı güncellemek yeterli.
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF6A1B9A);
  static const Color secondary = Color(0xFFFF7043);
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
}
