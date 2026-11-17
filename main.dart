import 'package:flutter/material.dart';

// ============================================================
// Mini-Proyek PJBL-1 — Katalog Produk UMKM Sidoarjo
// Pola: model -> builder -> Card (+ detail via Navigator.push)
// ============================================================

// 1) Class model (min. 3 properti)
class Produk {
  final String nama;
  final int harga;
  final String kategori;
  final String deskripsi;
  final IconData ikon;

  const Produk({
    required this.nama,
    required this.harga,
    required this.kategori,
    required this.deskripsi,
    required this.ikon,
  });
}

// 2) Data dalam List (>= 8 item)
const daftarProduk = [
  Produk(
    nama: 'Nasi Ayam Manis',
    harga: 11000,
    kategori: 'Nasi Campur Bu Tutik',
    deskripsi: 'Nasi Putih, Ayam Manis, Sambal.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Kulit Crispy',
    harga: 11000,
    kategori: 'Nasi Campur Bu Tutik',
    deskripsi: 'Nasi Putih, Kulit Crispy, Sambal.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Ayam Crispy',
    harga: 11000,
    kategori: 'Nasi Campur Bu Tutik',
    deskripsi: 'Nasi Putih, Ayam Crispy, Sambal.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Campur',
    harga: 11000,
    kategori: 'Nasi Campur Bu Tutik',
    deskripsi: 'Nasi Putih, Sayuran, Oseng Tahu Tempe, Sambal.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Mie Gacoan',
    harga: 11000,
    kategori: 'Dapoer Mbak Yani',
    deskripsi: 'Mie Pedas dengan aneka level kepedasan.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Mie Ayam',
    harga: 11000,
    kategori: 'Dapoer Mbak Yani',
    deskripsi: 'Mie dengan kuah yang menyegarkan dan potongan ayam.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Ayam Hot Lava',
    harga: 13000,
    kategori: 'Dapoer Mbak Yani',
    deskripsi: 'Nasi putih dengan Ayam pedas beraneka level kepedasan.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Padang Ayam',
    harga: 13000,
    kategori: 'Dapoer Mbak Yani',
    deskripsi: 'Nasi putih yang disiram dengan saus padang yang berempah dan potongan ayam goreng',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Mie Jumbo',
    harga: 8000,
    kategori: 'Dapoer Mbak Yani',
    deskripsi: 'Mie instan double dengan harga yang terjangkau.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Goreng Ayam Katsu',
    harga: 13000,
    kategori: 'Nasi Goreng Blankon',
    deskripsi: 'Nasi goreng dengan ayam katsu yang lezat dan nikmat.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Goreng Ayam Kabita',
    harga: 11000,
    kategori: 'Nasi Goreng Blankon',
    deskripsi: 'Nasi goreng dengan ayam kabita yang lezat dan nikmat.',
    ikon: Icons.restaurant,
),
  Produk(
    nama: 'Nasi Goreng Nuget',
    harga: 13000,
    kategori: 'Nasi Goreng Blankon',
    deskripsi: 'Nasi goreng dengan nuget yang lezat dan nikmat.',
    ikon: Icons.restaurant,
),
  Produk(
    nama: 'Nasi Goreng Ayam Crispy',
    harga: 13000,
    kategori: 'Nasi Goreng Blankon',
    deskripsi: 'Nasi goreng dengan ayam Crispy yang lezat dan nikmat.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Ayam Geprek',
    harga: 13000,
    kategori: 'Dapoer 99',
    deskripsi: 'Nasi putih dengan ayam yang digeprek dengan sambal bawang yang nampol.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Penyet Tahu Tempe',
    harga: 9000,
    kategori: 'Dapoer 99',
    deskripsi: 'Nasi putih dengan potongan tahu tempe yang lezat dan sambal tomat yang segar.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Penyet Telur',
    harga: 11000,
    kategori: 'Dapoer 99',
    deskripsi: 'Nasi putih dengan telur dadar yang lezat dan sambal tomat yang segar.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Nasi Penyet Ayam',
    harga: 13000,
    kategori: 'Dapoer 99',
    deskripsi: 'Nasi putih dengan potongan ayam yang lezat dan sambal tomat yang segar.',
    ikon: Icons.restaurant,
  ),
  Produk(
    nama: 'Aneka Nutrisari',
    harga: 5000,
    kategori: 'Minuman',
    deskripsi: 'Aneka Nutrisari yang menyegarkan.',
    ikon: Icons.local_cafe,
  ),
  Produk(
    nama: 'Aneka Pop Ice',
    harga: 5000,
    kategori: 'Minuman',
    deskripsi: 'Aneka Pop Ice yang menyegarkan.',
    ikon: Icons.local_cafe,
  ),
  Produk(
    nama: 'Aneka Kopi',
    harga: 4000,
    kategori: 'Minuman',
    deskripsi: 'Aneka Kopi yang menyegarkan.',
    ikon: Icons.local_cafe,
  ),
  Produk(
    nama: 'Aneka Minuman Berenergi',
    harga: 5000,
    kategori: 'Minuman',
    deskripsi: 'Aneka Minuman Berenergi yang menyegarkan.',
    ikon: Icons.local_cafe,
  ),
    ];

// Pemformat harga: 350000 -> "Rp 350.000"
String formatRupiah(int nilai) {
  final s = nilai.toString();
  final buf = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) buf.write('.');
    buf.write(s[i]);
  }
  return 'Rp $buf';
}

void main() => runApp(const KatalogApp());

class KatalogApp extends StatelessWidget {
  const KatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Kantin 2 UMSIDA',
      debugShowCheckedModeBanner: false,
      // Tema Material 3 (ColorScheme.fromSeed)
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const HalamanKatalog(),
    );
  }
}

// ---------------- Halaman Katalog ----------------
class HalamanKatalog extends StatefulWidget {
  const HalamanKatalog({super.key});

  @override
  State<HalamanKatalog> createState() => _HalamanKatalogState();
}

class _HalamanKatalogState extends State<HalamanKatalog> {
  String _kategoriDipilih = 'Semua';

  List<String> get _kategori =>
      ['Semua', ...{for (final p in daftarProduk) p.kategori}];

  List<Produk> get _tampil => _kategoriDipilih == 'Semua'
      ? daftarProduk
      : daftarProduk.where((p) => p.kategori == _kategoriDipilih).toList();

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context).colorScheme;
    final data = _tampil;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Kantin 2 UMSIDA'),
        backgroundColor: tema.primaryContainer,
      ),
      body: Column(
        children: [
          // Filter kategori sederhana (nilai tambah)
          SizedBox(
            height: 56,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              itemCount: _kategori.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, i) {
                final k = _kategori[i];
                return ChoiceChip(
                  label: Text(k),
                  selected: _kategoriDipilih == k,
                  onSelected: (_) => setState(() => _kategoriDipilih = k),
                );
              },
            ),
          ),
          // Daftar dinamis: ListView.builder dibungkus Expanded
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i) {
                final p = data[i];
                return Card(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    leading: CircleAvatar(
                      backgroundColor: tema.secondaryContainer,
                      child: Icon(p.ikon, color: tema.onSecondaryContainer),
                    ),
                    title: Text(
                      p.nama,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text('${p.kategori}  •  ${formatRupiah(p.harga)}'),
                    trailing: const Icon(Icons.chevron_right),
                    // Buka halaman detail dengan data dikirim (P7)
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HalamanDetail(produk: p),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------- Halaman Detail ----------------
class HalamanDetail extends StatelessWidget {
  final Produk produk;

  const HalamanDetail({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: tema.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: tema.secondaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(produk.ikon,
                  size: 88, color: tema.onSecondaryContainer),
            ),
            const SizedBox(height: 20),
            Text(
              produk.nama,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Chip(label: Text(produk.kategori)),
            const SizedBox(height: 12),
            Text(
              formatRupiah(produk.harga),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: tema.primary, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            Text(produk.deskripsi,
                style: Theme.of(context).textTheme.bodyLarge),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}