import 'package:flutter/material.dart';

void main() {
  runApp(const HeroApp());
}

// =====================================================
// MODEL DATA PAHLAWAN
// =====================================================

class HeroData {
  final String name;
  final String image;
  final String origin;
  final String lifetime;
  final String biography;

  const HeroData({
    required this.name,
    required this.image,
    required this.origin,
    required this.lifetime,
    required this.biography,
  });
}

// =====================================================
// DATA 15 PAHLAWAN
// =====================================================

const List<HeroData> heroes = [
  HeroData(
    name: 'Ir. Soekarno',
    image: 'assets/soekarno.jpg',
    origin: 'Jawa Timur',
    lifetime: '1901 - 1970',
    biography:
        'Ir. Soekarno adalah Proklamator Kemerdekaan Indonesia dan Presiden pertama Republik Indonesia. Beliau berperan penting dalam perjuangan kemerdekaan serta perumusan dasar negara Indonesia.',
  ),

  HeroData(
    name: 'Mohammad Hatta',
    image: 'assets/hatta.jpg',
    origin: 'Sumatera Barat',
    lifetime: '1902 - 1980',
    biography:
        'Mohammad Hatta adalah Proklamator Kemerdekaan Indonesia dan Wakil Presiden pertama Republik Indonesia. Beliau dikenal sebagai tokoh penting dalam perjuangan kemerdekaan dan pengembangan demokrasi Indonesia.',
  ),

  HeroData(
    name: 'Jenderal Sudirman',
    image: 'assets/sudirman.jpg',
    origin: 'Jawa Tengah',
    lifetime: '1916 - 1950',
    biography:
        'Jenderal Sudirman merupakan Panglima Besar Tentara Nasional Indonesia. Beliau memimpin perjuangan mempertahankan kemerdekaan Indonesia, termasuk melalui perang gerilya.',
  ),

  HeroData(
    name: 'Ki Hajar Dewantara',
    image: 'assets/ki_hajar.jpg',
    origin: 'Yogyakarta',
    lifetime: '1889 - 1959',
    biography:
        'Ki Hajar Dewantara adalah tokoh pendidikan nasional Indonesia dan pendiri Perguruan Taman Siswa. Beliau memperjuangkan pendidikan yang dapat diakses oleh masyarakat Indonesia.',
  ),

  HeroData(
    name: 'R.A. Kartini',
    image: 'assets/kartini.jpg',
    origin: 'Jawa Tengah',
    lifetime: '1879 - 1904',
    biography:
        'R.A. Kartini merupakan tokoh yang memperjuangkan pendidikan dan emansipasi perempuan Indonesia. Pemikiran dan surat-suratnya menjadi inspirasi bagi perkembangan pendidikan perempuan.',
  ),

  HeroData(
    name: 'Cut Nyak Dhien',
    image: 'assets/cut_nyak_dien.jpg',
    origin: 'Aceh',
    lifetime: '1848 - 1908',
    biography:
        'Cut Nyak Dhien adalah pejuang perempuan dari Aceh yang melawan penjajahan Belanda. Beliau terus berjuang bersama pasukan Aceh dalam perang yang berlangsung selama bertahun-tahun.',
  ),

  HeroData(
    name: 'Cut Nyak Meutia',
    image: 'assets/cut_nyak_meutia.jpg',
    origin: 'Aceh',
    lifetime: '1870 - 1910',
    biography:
        'Cut Nyak Meutia adalah pahlawan nasional dari Aceh yang berjuang melawan Belanda. Beliau dikenal karena keberanian dan kegigihannya dalam mempertahankan wilayah Aceh.',
  ),

  HeroData(
    name: 'Pangeran Diponegoro',
    image: 'assets/diponegoro.jpg',
    origin: 'Yogyakarta',
    lifetime: '1785 - 1855',
    biography:
        'Pangeran Diponegoro adalah pemimpin Perang Jawa yang berlangsung pada tahun 1825 hingga 1830. Perjuangannya menjadi salah satu perlawanan besar terhadap pemerintahan kolonial Belanda.',
  ),

  HeroData(
    name: 'Pattimura',
    image: 'assets/pattimura.jpg',
    origin: 'Maluku',
    lifetime: '1783 - 1817',
    biography:
        'Pattimura atau Thomas Matulessy adalah pejuang dari Maluku yang memimpin perlawanan terhadap Belanda pada tahun 1817. Ia menjadi simbol perjuangan rakyat Maluku.',
  ),

  HeroData(
    name: 'Sultan Hasanuddin',
    image: 'assets/hassanudin.jpg',
    origin: 'Sulawesi Selatan',
    lifetime: '1631 - 1670',
    biography:
        'Sultan Hasanuddin adalah Sultan Gowa yang terkenal karena perlawanannya terhadap VOC. Karena keberaniannya, beliau mendapat julukan Ayam Jantan dari Timur.',
  ),

  HeroData(
    name: 'Tuanku Imam Bonjol',
    image: 'assets/imam_bonjol.jpg',
    origin: 'Sumatera Barat',
    lifetime: '1772 - 1864',
    biography:
        'Tuanku Imam Bonjol merupakan pemimpin perjuangan dalam Perang Padri di Sumatera Barat. Beliau memimpin perlawanan terhadap kolonial Belanda dan menjadi salah satu tokoh penting dari Minangkabau.',
  ),

  HeroData(
    name: 'Bung Tomo',
    image: 'assets/bung_tomo.jpg',
    origin: 'Jawa Timur',
    lifetime: '1920 - 1981',
    biography:
        'Bung Tomo adalah tokoh penting dalam Pertempuran Surabaya tahun 1945. Melalui pidato dan perjuangannya, beliau membangkitkan semangat rakyat Surabaya untuk mempertahankan kemerdekaan.',
  ),

  HeroData(
    name: 'Dewi Sartika',
    image: 'assets/dewi_sartika.jpg',
    origin: 'Jawa Barat',
    lifetime: '1884 - 1947',
    biography:
        'Dewi Sartika adalah tokoh pendidikan dan pelopor pendidikan bagi perempuan di Indonesia. Beliau mendirikan Sakola Istri yang kemudian berkembang menjadi sekolah bagi kaum perempuan.',
  ),

  HeroData(
    name: 'Frans Kaisiepo',
    image: 'assets/frans_kaisiepo.jpg',
    origin: 'Papua',
    lifetime: '1921 - 1979',
    biography:
        'Frans Kaisiepo merupakan tokoh perjuangan dari Papua yang berperan dalam mempertahankan integrasi Papua dengan Indonesia. Beliau juga pernah menjadi Gubernur Papua.',
  ),

  HeroData(
    name: 'I Gusti Ngurah Rai',
    image: 'assets/ngurah_rai.jpg',
    origin: 'Bali',
    lifetime: '1917 - 1946',
    biography:
        'I Gusti Ngurah Rai adalah pejuang kemerdekaan dari Bali dan pemimpin pasukan Ciung Wanara. Beliau memimpin perjuangan melawan Belanda dalam Puputan Margarana.',
  ),
];

// =====================================================
// MAIN APP
// =====================================================

class HeroApp extends StatelessWidget {
  const HeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pahlawan Nasional',

      theme: ThemeData(
        brightness: Brightness.light,

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B0000),
        ),

        scaffoldBackgroundColor:
            const Color(0xFFF5F5F5),

        useMaterial3: true,
      ),

      home: const DashboardPage(),
    );
  }
}

// =====================================================
// DASHBOARD
// =====================================================

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() =>
      _DashboardPageState();
}

class _DashboardPageState
    extends State<DashboardPage> {

  String searchQuery = '';

  String selectedRegion = 'Semua';

  // ===================================================
  // DAFTAR FILTER DAERAH
  // ===================================================

  final List<String> regions = [
    'Semua',
    'Jawa',
    'Sumatera',
    'Aceh',
    'Sulawesi',
    'Maluku',
    'Bali',
    'Papua',
  ];

  // ===================================================
  // FILTER PAHLAWAN
  // ===================================================

  List<HeroData> get filteredHeroes {
    final query = searchQuery
        .trim()
        .toLowerCase();

    return heroes.where((hero) {
      // FILTER SEARCH
      final matchesSearch =
          query.isEmpty ||
          hero.name
              .toLowerCase()
              .contains(query) ||
          hero.origin
              .toLowerCase()
              .contains(query);

      // FILTER DAERAH
      bool matchesRegion = true;

      if (selectedRegion != 'Semua') {
        matchesRegion = hero.origin
            .toLowerCase()
            .contains(
              selectedRegion.toLowerCase(),
            );
      }

      return matchesSearch && matchesRegion;
    }).toList();
  }

  // ===================================================
  // RESET FILTER
  // ===================================================

  void resetFilter() {
    setState(() {
      searchQuery = '';
      selectedRegion = 'Semua';
    });
  }

  @override
  Widget build(BuildContext context) {
    final filtered = filteredHeroes;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color(0xFF8B0000),

        foregroundColor:
            Colors.white,

        centerTitle: true,

        title: const Text(
          'PAHLAWAN NASIONAL',

          style: TextStyle(
            fontWeight:
                FontWeight.bold,

            letterSpacing: 1,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding:
            const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const SizedBox(height: 5),

            // =================================================
            // HEADER
            // =================================================

            Container(
              width: double.infinity,

              padding:
                  const EdgeInsets.all(22),

              decoration:
                  BoxDecoration(
                color:
                    const Color(0xFF8B0000),

                borderRadius:
                    BorderRadius.circular(
                  18,
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(
                      0.08,
                    ),

                    blurRadius: 10,

                    offset:
                        const Offset(
                      0,
                      5,
                    ),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                children: [

                  Container(
                    width: 50,
                    height: 50,

                    decoration:
                        BoxDecoration(
                      color: Colors.white
                          .withOpacity(
                        0.15,
                      ),

                      borderRadius:
                          BorderRadius
                              .circular(
                        14,
                      ),
                    ),

                    child: const Icon(
                      Icons
                          .account_balance,

                      color:
                          Colors.white,

                      size: 28,
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  const Text(
                    'Mengenal Pahlawan Indonesia',

                    style:
                        TextStyle(
                      color:
                          Colors.white,

                      fontSize: 23,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 7,
                  ),

                  const Text(
                    'Kenali tokoh-tokoh yang berjasa dalam sejarah perjuangan Indonesia.',

                    style:
                        TextStyle(
                      color:
                          Colors.white70,

                      fontSize: 13,

                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // =================================================
            // JUDUL DAFTAR
            // =================================================

            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.end,

              children: [

                const Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                    children: [

                      Text(
                        'Daftar Pahlawan',

                        style:
                            TextStyle(
                          fontSize: 23,

                          fontWeight:
                              FontWeight
                                  .bold,
                        ),
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      Text(
                        '15 tokoh perjuangan Indonesia',

                        style:
                            TextStyle(
                          color:
                              Colors.grey,

                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                // RESET
                if (searchQuery
                        .isNotEmpty ||
                    selectedRegion !=
                        'Semua')
                  TextButton(
                    onPressed:
                        resetFilter,

                    child:
                        const Text(
                      'Reset',
                      style:
                          TextStyle(
                        color: Color(
                          0xFF8B0000,
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(
              height: 15,
            ),

            // =================================================
            // SEARCH
            // =================================================

            TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery =
                      value;
                });
              },

              decoration:
                  InputDecoration(
                hintText:
                    'Cari nama atau daerah asal...',

                prefixIcon:
                    const Icon(
                  Icons.search,

                  color:
                      Color(0xFF8B0000),
                ),

                suffixIcon:
                    searchQuery
                            .isNotEmpty
                        ? IconButton(
                            icon:
                                const Icon(
                              Icons.clear,
                            ),

                            onPressed: () {
                              setState(
                                () {
                                  searchQuery =
                                      '';
                                },
                              );
                            },
                          )
                        : null,

                filled: true,

                fillColor:
                    Colors.white,

                contentPadding:
                    const EdgeInsets
                        .symmetric(
                  vertical: 14,

                  horizontal: 16,
                ),

                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    14,
                  ),

                  borderSide:
                      BorderSide.none,
                ),

                enabledBorder:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    14,
                  ),

                  borderSide:
                      BorderSide(
                    color:
                        Colors.grey
                            .shade200,
                  ),
                ),

                focusedBorder:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    14,
                  ),

                  borderSide:
                      const BorderSide(
                    color:
                        Color(0xFF8B0000),

                    width: 1.5,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            // =================================================
            // FILTER DAERAH
            // =================================================

            SizedBox(
              height: 42,

              child: ListView
                  .separated(
                scrollDirection:
                    Axis.horizontal,

                itemCount:
                    regions.length,

                separatorBuilder:
                    (context, index) =>
                        const SizedBox(
                  width: 8,
                ),

                itemBuilder:
                    (context, index) {

                  final region =
                      regions[index];

                  final isSelected =
                      selectedRegion ==
                          region;

                  return ChoiceChip(
                    label:
                        Text(region),

                    selected:
                        isSelected,

                    onSelected:
                        (selected) {
                      setState(() {
                        selectedRegion =
                            region;
                      });
                    },

                    selectedColor:
                        const Color(
                      0xFF8B0000,
                    ),

                    backgroundColor:
                        Colors.white,

                    labelStyle:
                        TextStyle(
                      color:
                          isSelected
                              ? Colors.white
                              : Colors
                                  .black87,

                      fontWeight:
                          isSelected
                              ? FontWeight
                                  .bold
                              : FontWeight
                                  .normal,

                      fontSize: 12,
                    ),

                    side:
                        BorderSide(
                      color:
                          isSelected
                              ? const Color(
                                  0xFF8B0000,
                                )
                              : Colors
                                  .grey
                                  .shade300,
                    ),

                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius
                              .circular(
                        20,
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            // =================================================
            // JUMLAH HASIL
            // =================================================

            Text(
              '${filtered.length} pahlawan',

              style:
                  const TextStyle(
                color:
                    Colors.grey,

                fontSize: 13,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // =================================================
            // TIDAK ADA HASIL
            // =================================================

            if (filtered.isEmpty)
              Container(
                width:
                    double.infinity,

                padding:
                    const EdgeInsets
                        .symmetric(
                  vertical: 50,

                  horizontal: 20,
                ),

                decoration:
                    BoxDecoration(
                  color:
                      Colors.white,

                  borderRadius:
                      BorderRadius
                          .circular(
                    16,
                  ),
                ),

                child:
                    const Column(
                  children: [

                    Icon(
                      Icons.search_off,

                      size: 55,

                      color:
                          Colors.grey,
                    ),

                    SizedBox(
                      height: 12,
                    ),

                    Text(
                      'Pahlawan tidak ditemukan',

                      style:
                          TextStyle(
                        fontSize: 16,

                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      'Coba gunakan kata kunci atau daerah lain.',

                      style:
                          TextStyle(
                        color:
                            Colors.grey,

                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

            // =================================================
            // GRID PAHLAWAN
            // =================================================

            if (filtered.isNotEmpty)
              GridView.builder(
                shrinkWrap: true,

                physics:
                    const NeverScrollableScrollPhysics(),

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,

                  crossAxisSpacing: 12,

                  mainAxisSpacing: 12,

                  // Tinggi card tetap
                  mainAxisExtent: 215,
                ),

                itemCount:
                    filtered.length,

                itemBuilder:
                    (context, index) {

                  final hero =
                      filtered[index];

                  return _HeroCard(
                    hero: hero,

                    onTap: () {
                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  DetailPage(
                            hero: hero,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),

            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

// =====================================================
// HERO CARD
// =====================================================

class _HeroCard
    extends StatefulWidget {

  final HeroData hero;

  final VoidCallback onTap;

  const _HeroCard({
    required this.hero,
    required this.onTap,
  });

  @override
  State<_HeroCard> createState() =>
      _HeroCardState();
}

class _HeroCardState
    extends State<_HeroCard> {

  bool isHovering = false;

  @override
  Widget build(
      BuildContext context) {

    return MouseRegion(
      cursor:
          SystemMouseCursors.click,

      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },

      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },

      child: AnimatedContainer(
        duration:
            const Duration(
          milliseconds: 180,
        ),

        transform:
            Matrix4.translationValues(
          0,
          isHovering ? -4 : 0,
          0,
        ),

        child: Material(
          color:
              Colors.transparent,

          child: InkWell(
            borderRadius:
                BorderRadius.circular(
              14,
            ),

            onTap:
                widget.onTap,

            child: Container(
              decoration:
                  BoxDecoration(
                color:
                    Colors.white,

                borderRadius:
                    BorderRadius.circular(
                  14,
                ),

                border:
                    Border.all(
                  color:
                      isHovering
                          ? const Color(
                              0xFF8B0000,
                            )
                          : Colors
                              .grey
                              .shade200,
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(
                      isHovering
                          ? 0.12
                          : 0.04,
                    ),

                    blurRadius:
                        isHovering
                            ? 12
                            : 6,

                    offset:
                        const Offset(
                      0,
                      3,
                    ),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                children: [

                  // =========================================
                  // FOTO
                  // =========================================

                  SizedBox(
                    height: 125,

                    width:
                        double.infinity,

                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius
                              .vertical(
                        top: Radius
                            .circular(
                          14,
                        ),
                      ),

                      child: Container(
                        color:
                            const Color(
                          0xFFF0F0F0,
                        ),

                        child:
                            Image.asset(
                          widget.hero
                              .image,

                          width:
                              double.infinity,

                          height:
                              double.infinity,

                          // Foto utuh
                          fit:
                              BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  // =========================================
                  // INFORMASI
                  // =========================================

                  Padding(
                    padding:
                        const EdgeInsets
                            .all(8),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,

                      children: [

                        Row(
                          children: [

                            Expanded(
                              child:
                                  Text(
                                widget.hero
                                    .name,

                                maxLines:
                                    1,

                                overflow:
                                    TextOverflow
                                        .ellipsis,

                                style:
                                    const TextStyle(
                                  fontWeight:
                                      FontWeight
                                          .bold,

                                  fontSize:
                                      13,
                                ),
                              ),
                            ),

                            const SizedBox(
                              width: 4,
                            ),

                            Icon(
                              Icons
                                  .arrow_forward_ios,

                              size: 10,

                              color:
                                  isHovering
                                      ? const Color(
                                          0xFF8B0000,
                                        )
                                      : Colors
                                          .grey,
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 4,
                        ),

                        Row(
                          children: [

                            const Icon(
                              Icons
                                  .location_on,

                              size: 11,

                              color:
                                  Color(
                                0xFF8B0000,
                              ),
                            ),

                            const SizedBox(
                              width: 3,
                            ),

                            Expanded(
                              child:
                                  Text(
                                widget.hero
                                    .origin,

                                maxLines:
                                    1,

                                overflow:
                                    TextOverflow
                                        .ellipsis,

                                style:
                                    const TextStyle(
                                  color:
                                      Colors
                                          .grey,

                                  fontSize:
                                      10,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 2,
                        ),

                        Row(
                          children: [

                            const Icon(
                              Icons
                                  .calendar_today,

                              size: 10,

                              color:
                                  Color(
                                0xFF8B0000,
                              ),
                            ),

                            const SizedBox(
                              width: 3,
                            ),

                            Text(
                              widget.hero
                                  .lifetime,

                              style:
                                  const TextStyle(
                                color:
                                    Colors
                                        .grey,

                                fontSize:
                                    10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// =====================================================
// DETAIL PAHLAWAN
// =====================================================

class DetailPage
    extends StatelessWidget {

  final HeroData hero;

  const DetailPage({
    super.key,
    required this.hero,
  });

  @override
  Widget build(
      BuildContext context) {

    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          'Detail Pahlawan',

          style:
              TextStyle(
            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),

      body:
          SingleChildScrollView(
        child:
            Column(
          crossAxisAlignment:
              CrossAxisAlignment
                  .start,

          children: [

            // =================================================
            // FOTO DETAIL
            // =================================================

            Container(
              width:
                  double.infinity,

              height:
                  400,

              color:
                  Colors.white,

              child:
                  Image.asset(
                hero.image,

                // Tidak crop
                fit:
                    BoxFit.contain,
              ),
            ),

            // =================================================
            // INFORMASI
            // =================================================

            Padding(
              padding:
                  const EdgeInsets
                      .all(20),

              child:
                  Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                children: [

                  Text(
                    hero.name,

                    style:
                        const TextStyle(
                      fontSize:
                          28,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height:
                        18,
                  ),

                  // =========================================
                  // ASAL + LIFE TIME
                  // =========================================

                  Row(
                    children: [

                      Expanded(
                        child:
                            _InfoBox(
                          icon:
                              Icons
                                  .location_on,

                          title:
                              'Asal',

                          value:
                              hero.origin,
                        ),
                      ),

                      const SizedBox(
                        width:
                            12,
                      ),

                      Expanded(
                        child:
                            _InfoBox(
                          icon:
                              Icons
                                  .calendar_today,

                          title:
                              'Life Time',

                          value:
                              hero.lifetime,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height:
                        28,
                  ),

                  // =========================================
                  // BIOGRAFI
                  // =========================================

                  const Text(
                    'Biografi Singkat',

                    style:
                        TextStyle(
                      fontSize:
                          20,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height:
                        10,
                  ),

                  Text(
                    hero.biography,

                    style:
                        const TextStyle(
                      fontSize:
                          16,

                      height:
                          1.6,

                      color:
                          Colors.black87,
                    ),
                  ),

                  const SizedBox(
                    height:
                        20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =====================================================
// INFO BOX
// =====================================================

class _InfoBox
    extends StatelessWidget {

  final IconData icon;

  final String title;

  final String value;

  const _InfoBox({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(
      BuildContext context) {

    return Container(
      padding:
          const EdgeInsets.all(
        14,
      ),

      decoration:
          BoxDecoration(
        color:
            Colors.white,

        borderRadius:
            BorderRadius.circular(
          12,
        ),

        border:
            Border.all(
          color:
              Colors.grey.shade200,
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(
              0.03,
            ),

            blurRadius:
                5,

            offset:
                const Offset(
              0,
              2,
            ),
          ),
        ],
      ),

      child:
          Column(
        crossAxisAlignment:
            CrossAxisAlignment
                .start,

        children: [

          Icon(
            icon,

            color:
                const Color(
              0xFF8B0000,
            ),

            size:
                22,
          ),

          const SizedBox(
            height:
                8,
          ),

          Text(
            title,

            style:
                const TextStyle(
              fontSize:
                  12,

              color:
                  Colors.grey,
            ),
          ),

          const SizedBox(
            height:
                3,
          ),

          Text(
            value,

            style:
                const TextStyle(
              fontWeight:
                  FontWeight.bold,

              fontSize:
                  14,
            ),
          ),
        ],
      ),
    );
  }
}