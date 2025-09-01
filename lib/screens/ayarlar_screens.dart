import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'oyun_sayfasi.dart';
import '../core/plan.dart';
import '../core/reklam_servisi.dart';

class AyarlarEkrani extends StatefulWidget {
  final String initialTakim1Adi;
  final String initialTakim2Adi;
  final int initialOyunSuresi;
  final int initialPasHakki;
  final int initialBitisPuani;

  const AyarlarEkrani({
    super.key,
    this.initialTakim1Adi = 'Takım 1',
    this.initialTakim2Adi = 'Takım 2',
    this.initialOyunSuresi = 60,
    this.initialPasHakki = 3,
    this.initialBitisPuani = 30,
  });

  @override
  State<AyarlarEkrani> createState() => _AyarlarEkraniState();
}

class _AyarlarEkraniState extends State<AyarlarEkrani> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _takim1Controller;
  late final TextEditingController _takim2Controller;
  
  late int _oyunSuresi;
  late int _pasHakki;
  late int _bitisPuani;
  
  final List<int> _sureSecenekleri = [30, 60, 90, 120];
  final List<int> _pasSecenekleri = [1, 2, 3, 5];
  final List<int> _puanSecenekleri = [20, 30, 50, 100];

  int _adim = 1;
  PlanType _plan = PlanType.free;
  bool _unlimitedPass = false;

  // Responsive yardımcıları
  Size get _screenSize => MediaQuery.of(context).size;
  double get _screenWidth => _screenSize.width;
  bool get _isSmall => _screenWidth < 360;
  bool get _isMedium => _screenWidth >= 360 && _screenWidth < 600;

  EdgeInsets get _padAll => EdgeInsets.all(_isSmall ? 8 : _isMedium ? 12 : 16);
  EdgeInsets get _padOuter => EdgeInsets.all(_isSmall ? 8 : _isMedium ? 10 : 12);
  double get _titleFs => _isSmall ? 20 : _isMedium ? 22 : 24;
  double get _sectionTitleFs => _isSmall ? 20 : _isMedium ? 22 : 22; // Başlıkları büyüt
  double get _labelFs => _isSmall ? 14 : _isMedium ? 16 : 16;
  double get _buttonFs => _isSmall ? 16 : _isMedium ? 17 : 18;
  EdgeInsets get _padAllReducedVertical {
    final base = _isSmall ? 12.0 : _isMedium ? 16.0 : 24.0;
    return EdgeInsets.fromLTRB(base, base * 0.8, base, base * 0.8); // Üst-alt %20 azalt
  }

  @override
  void initState() {
    super.initState();
    _takim1Controller = TextEditingController(text: widget.initialTakim1Adi);
    _takim2Controller = TextEditingController(text: widget.initialTakim2Adi);
    _oyunSuresi = widget.initialOyunSuresi;
    _pasHakki = widget.initialPasHakki;
    _bitisPuani = widget.initialBitisPuani;
    _loadPlanPrefs();
  }

  Future<void> _loadPlanPrefs() async {
    final plan = await PlanManager.getPlan();
    final unlimited = await PlanManager.getUnlimitedPass();
    if (mounted) {
      setState(() {
        _plan = plan;
        // Free kullanıcılar için sınırsız pas otomatik olarak kapatılsın
        _unlimitedPass = plan == PlanType.premium ? unlimited : false;
      });
      
      // Free kullanıcılar için sınırsız pas ayarını güncelle
      if (plan == PlanType.free && unlimited) {
        await PlanManager.setUnlimitedPass(false);
      }
    }
  }

  @override
  void dispose() {
    _takim1Controller.dispose();
    _takim2Controller.dispose();
    super.dispose();
  }

  Widget _adimGovdesi() {
    if (_adim == 1) {
      return Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSectionTitle('Takım İsimleri', Icons.groups),
              const SizedBox(height: 6),
              FractionallySizedBox(
                widthFactor: 0.9,
                child: _buildInputCard(
                  controller: _takim1Controller,
                  label: '1. Takım',
                  icon: Icons.emoji_events,
                  color: const Color(0xFF6A1B9A),
                ),
              ),
              const SizedBox(height: 6),
              FractionallySizedBox(
                widthFactor: 0.9,
                child: _buildInputCard(
                  controller: _takim2Controller,
                  label: '2. Takım',
                  icon: Icons.emoji_events,
                  color: const Color(0xFFFF7043),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Oyun Ayarları', Icons.tune),
        const SizedBox(height: 8),

        _buildDiscreteSliderCard(
          title: 'Süre',
          subtitle: 'Saniye',
          items: _sureSecenekleri,
          value: _oyunSuresi,
          color: const Color(0xFF6A1B9A),
          onChanged: (v) => setState(() => _oyunSuresi = v),
        ),

        _buildDiscreteSliderCard(
          title: 'Pas Hakkı',
          subtitle: _unlimitedPass ? 'Sınırsız' : 'Adet',
          items: _pasSecenekleri,
          value: _pasHakki,
          color: const Color(0xFFFF7043),
          onChanged: (v) => setState(() => _pasHakki = v),
          showUnlimitedSwitch: true,
        ),

        _buildDiscreteSliderCard(
          title: 'Bitiş Puanı',
          subtitle: 'Puan',
          items: _puanSecenekleri,
          value: _bitisPuani,
          color: const Color(0xFF6A1B9A),
          onChanged: (v) => setState(() => _bitisPuani = v),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6A1B9A),
              Color(0xFFFF7043),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Üst Bar
              Container(
                padding: EdgeInsets.all(_isSmall ? 12 : _isMedium ? 14 : 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (_adim == 2) {
                          setState(() => _adim = 1);
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white, size: _isSmall ? 22 : _isMedium ? 24 : 28),
                    ),
                    SizedBox(width: _isSmall ? 10 : 16),
                    Text(
                      _adim == 1 ? 'Takım İsimleri' : 'Oyun Ayarları',
                      style: GoogleFonts.poppins(
                        fontSize: _titleFs,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              
              Expanded(
                child: Container(
                  margin: _padOuter,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFFFF3EC), // çok hafif sıcak ton
                      ],
                    ),
                    borderRadius: BorderRadius.circular(_isSmall ? 18 : 24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: _isSmall ? 14 : 20,
                        offset: Offset(0, _isSmall ? 6 : 10),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Dekoratif arka plan blob'ları
                      IgnorePointer(
                        child: Stack(
                          children: [
                            Positioned(
                              top: _isSmall ? 18 : 24,
                              left: _isSmall ? 18 : 24,
                              child: Container(
                                width: _isSmall ? 160 : 200,
                                height: _isSmall ? 160 : 200,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: RadialGradient(
                                    colors: [
                                      const Color(0xFF6A1B9A).withValues(alpha: 0.18),
                                      const Color(0xFF6A1B9A).withValues(alpha: 0.0),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: _isSmall ? 18 : 24,
                              right: _isSmall ? 18 : 24,
                              child: Container(
                                width: _isSmall ? 180 : 220,
                                height: _isSmall ? 180 : 220,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: RadialGradient(
                                    colors: [
                                      const Color(0xFFFF7043).withValues(alpha: 0.18),
                                      const Color(0xFFFF7043).withValues(alpha: 0.0),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // İçerik
                      Form(
                        key: _formKey,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return SingleChildScrollView(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                                child: Padding(
                                  padding: _padAllReducedVertical,
                                  child: Center(child: _adimGovdesi()),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(_isSmall ? 12 : _isMedium ? 14 : 16),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(0, -5)),
        ]),
        child: SizedBox(
          height: _isSmall ? 52 : 60,
          child: ElevatedButton(
            onPressed: () {
              if (_adim == 1) {
                if (_formKey.currentState!.validate()) {
                  setState(() => _adim = 2);
                }
                return;
              }
              // Tam sayfa reklam göster ve sonra oyunu başlat
              _showTamSayfaReklamVeOyunuBaslat();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6A1B9A),
              foregroundColor: Colors.white,
              elevation: 14,
              shadowColor: const Color(0xFF6A1B9A).withValues(alpha: 0.5),
              minimumSize: Size.fromHeight(_isSmall ? 56 : 64), // buton yüksekliği biraz arttı
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_isSmall ? 12 : 14)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(_adim == 1 ? Icons.navigate_next : Icons.play_circle_filled, size: _isSmall ? 26 : 30), // ikon büyüt
                SizedBox(width: _isSmall ? 8 : 12),
                Text(
                  _adim == 1 ? 'DEVAM' : 'OYUNU BAŞLAT',
                  style: GoogleFonts.poppins(
                    fontSize: _buttonFs,
                    fontWeight: FontWeight.bold, // yazı bold
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Tam sayfa reklam göster ve oyunu başlat
  Future<void> _showTamSayfaReklamVeOyunuBaslat() async {
    final interstitialAd = await ReklamServisi.createTamSayfaReklam();
    
    if (interstitialAd != null) {
      interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _oyunuBaslat();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _oyunuBaslat();
        },
      );
      
      await interstitialAd.show();
    } else {
      // Premium kullanıcı veya reklam yüklenemezse direkt oyunu başlat
      _oyunuBaslat();
    }
  }
  
  // Oyunu başlat
  void _oyunuBaslat() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OyunSayfasi(
          takim1Adi: _takim1Controller.text,
          takim2Adi: _takim2Controller.text,
          oyunSuresi: _oyunSuresi,
          pasHakki: (_unlimitedPass && _plan == PlanType.premium) ? 999999 : _pasHakki,
          bitisPuani: _bitisPuani,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF6A1B9A), size: _isSmall ? 22 : 26),
        SizedBox(width: _isSmall ? 8 : 12),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: _sectionTitleFs, // 20px ve üstü
            fontWeight: FontWeight.bold, // bold
            color: const Color(0xFF6A1B9A),
          ),
        ),
      ],
    );
  }

  Widget _buildInputCard({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_isSmall ? 14 : 16),
        border: Border.all(color: color.withValues(alpha: 0.25)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: _isSmall ? 10 : 14,
            spreadRadius: 1,
            offset: Offset(0, _isSmall ? 4 : 6),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Takım adı boş olamaz';
          }
          return null;
        },
        style: GoogleFonts.poppins(fontSize: _isSmall ? 15 : 16, fontWeight: FontWeight.w600), // Ana takım adı 16px semi-bold
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: color, size: _isSmall ? 20 : 24),
          prefixIconConstraints: BoxConstraints(minWidth: _isSmall ? 36 : 40),
          // Simetrik boşluk için şeffaf bir suffix ikon ekleyerek metni gerçek ortada tutuyoruz
          suffixIcon: Opacity(
            opacity: 0,
            child: Icon(icon, color: color, size: _isSmall ? 20 : 24),
          ),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: _isSmall ? 8 : 10), // daha da azalt
          labelStyle: GoogleFonts.poppins(
            fontSize: 14, // 14px
            fontWeight: FontWeight.w500, // medium
            color: color.withValues(alpha: 0.9), // daha belirgin ton
          ),
        ),
      ),
    );
  }

  Widget _buildDiscreteSliderCard({
    required String title,
    required String subtitle,
    required List<int> items,
    required int value,
    required Color color,
    required ValueChanged<int> onChanged,
    bool showUnlimitedSwitch = false,
  }) {
    final int currentIndex = items.indexOf(value);
    final double currentValue = currentIndex.toDouble();

    return Container(
      margin: _padOuter,
      padding: _padAll,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_isSmall ? 14 : 16),
        border: Border.all(color: color.withValues(alpha: 0.18)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: _isSmall ? 10 : 14,
            spreadRadius: 1,
            offset: Offset(0, _isSmall ? 4 : 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: _labelFs,
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                  SizedBox(width: _isSmall ? 6 : 8),
                  Text(
                    '($subtitle)',
                    style: GoogleFonts.poppins(
                      fontSize: _isSmall ? 12 : 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              if (showUnlimitedSwitch && _plan == PlanType.premium)
                Row(
                  children: [
                    Text(
                      'Sınırsız',
                      style: GoogleFonts.poppins(
                        fontSize: _isSmall ? 12 : 14,
                        color: _plan == PlanType.premium ? Colors.grey[700] : Colors.grey[400]
                      )
                    ),
                    Switch(
                      value: _unlimitedPass,
                      onChanged: _plan == PlanType.premium ? (v) async {
                        setState(() => _unlimitedPass = v);
                        await PlanManager.setUnlimitedPass(v);
                      } : null,
                      activeColor: _plan == PlanType.premium ? color : Colors.grey,
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: _isSmall ? 8 : 12),
          Container(
            height: 50,
            child: Slider(
              value: currentValue,
              min: 0,
              max: (items.length - 1).toDouble(),
              divisions: items.length - 1,
              label: showUnlimitedSwitch && _unlimitedPass ? 'Sınırsız' : '${items[currentIndex]} $subtitle',
              onChanged: showUnlimitedSwitch && _unlimitedPass ? null : (newValue) {
                final int newIndex = newValue.round();
                onChanged(items[newIndex]);
              },
              activeColor: color,
              inactiveColor: color.withValues(alpha: 0.3),
            ),
          ),
          SizedBox(height: _isSmall ? 4 : 8),
        ],
      ),
    );
  }

  // Kullanılmayan fonksiyon kaldırıldı
  /*Widget _buildPickerCard<T>({
    required String title,
    required String subtitle,
    required List<T> items,
    required T currentValue,
    required ValueChanged<int> onSelectedItemChanged,
  }) {
    final int initialIndex = items.indexOf(currentValue);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_isSmall ? 14 : 16),
        border: Border.all(color: const Color(0xFF6A1B9A).withValues(alpha: 0.18)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: _isSmall ? 10 : 14,
            spreadRadius: 1,
            offset: Offset(0, _isSmall ? 4 : 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(_isSmall ? 12 : 16, 12, _isSmall ? 12 : 16, 6),
            child: Row(
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: _labelFs,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF6A1B9A),
                  ),
                ),
                SizedBox(width: _isSmall ? 6 : 8),
                Text(
                  '($subtitle)',
                  style: GoogleFonts.poppins(
                    fontSize: _isSmall ? 12 : 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: _isSmall ? 132 : 152,
            child: CupertinoPicker(
              scrollController: FixedExtentScrollController(initialItem: initialIndex),
              itemExtent: _isSmall ? 40 : 44,
              magnification: 1.05,
              useMagnifier: true,
              onSelectedItemChanged: onSelectedItemChanged,
              children: items
                  .map((e) => Center(
                        child: Text(
                          '$e $subtitle',
                          style: GoogleFonts.poppins(fontSize: _labelFs),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDiscreteSliderCard({
    required String title,
    required String subtitle,
    required List<int> items,
    required int value,
    required Color color,
    required ValueChanged<int> onChanged,
  }) {
    final int index = items.indexOf(value).clamp(0, items.length - 1);
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(_isSmall ? 14 : 16),
        border: Border.all(color: color.withValues(alpha: 0.15)),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.08),
            blurRadius: _isSmall ? 6 : 8,
            offset: Offset(0, _isSmall ? 3 : 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(_isSmall ? 12 : 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: _labelFs,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
                SizedBox(width: _isSmall ? 6 : 8),
                Text(
                  '(${items[index]} $subtitle)',
                  style: GoogleFonts.poppins(
                    fontSize: _isSmall ? 12 : 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            SizedBox(height: _isSmall ? 4 : 6),
            Slider(
              value: index.toDouble(),
              min: 0,
              max: (items.length - 1).toDouble(),
              divisions: items.length - 1,
              activeColor: color,
              inactiveColor: color.withValues(alpha: 0.2),
              label: '${items[index]} $subtitle',
              onChanged: (d) => onChanged(items[d.round()]),
            ),
          ],
        ),
      ),
    );
  }*/
}


