class KelimeKarti {
  final String kelime;
  final List<String> yasakliKelimeler;

  const KelimeKarti({
    required this.kelime,
    required this.yasakliKelimeler,
  });

  factory KelimeKarti.fromJson(Map<String, dynamic> json) {
    return KelimeKarti(
      kelime: json['kelime'] as String,
      yasakliKelimeler: List<String>.from(json['yasakliKelimeler'] as List),
    );
  }
}
