import 'package:flutter/material.dart';

/// Ekranlar arası kaydırmalı geçişler için ortak yardımcı.
///
/// Önceden her ekran, hedef sayfa ve başlangıç yönü hariç birebir aynı
/// `PageRouteBuilder` + `SlideTransition` bloğunu kendi içinde kopyalıyordu.
class AppRoutes {
  AppRoutes._();

  // Argüman almayan ekranlar için isimli route'lar. Her ekranın nereden
  // nereye gidebildiği artık main.dart'taki tek bir route tablosundan
  // okunabiliyor; her çağrı noktasında ayrı ayrı MaterialPageRoute
  // kurulmasına gerek kalmıyor.
  //
  // OyunSayfasi ve SonucSayfasi her zaman önceki ekrandan zorunlu
  // parametreler aldığı için (takım adları, skorlar vb.) isimli route'a
  // dahil edilmedi; bu tip ekranlar için tip güvenliğini korumak amacıyla
  // [slide] ile doğrudan widget geçişi kullanılıyor.
  static const String kategoriler = '/kategoriler';
  static const String ayarlar = '/ayarlar';
  static const String premium = '/premium';

  static const Offset fromRight = Offset(1, 0);
  static const Offset fromLeft = Offset(-1, 0);
  static const Offset fromBottom = Offset(0, 1);

  /// [page]'i [begin] yönünden kayarak açan bir route döndürür.
  static PageRouteBuilder<T> slide<T>(
    Widget page, {
    Offset begin = fromRight,
    Curve curve = Curves.easeOut,
  }) {
    return PageRouteBuilder<T>(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween = Tween<Offset>(begin: begin, end: Offset.zero).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }
}
