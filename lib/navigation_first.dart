import 'package:flutter/material.dart';
import 'navigation_second.dart'; // Pastikan mengimpor file navigation_second.dart yang akan dibuat

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700; // Menetapkan warna default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          color, // Mengubah warna latar belakang sesuai dengan warna yang dipilih
      appBar: AppBar(title: const Text('Navigation First Screen Tyase')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            // Memanggil metode untuk membuka halaman kedua dan menunggu hasil warna
            _navigateAndGetColor(context);
          },
        ),
      ),
    );
  }

  Future _navigateAndGetColor(BuildContext context) async {
    // Pindah ke halaman kedua dan menunggu hasil warna yang dipilih
    Color? selectedColor = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationSecond()),
    );

    // Jika ada warna yang dipilih, perbarui warna latar belakang
    if (selectedColor != null) {
      setState(() {
        color = selectedColor;
      });
    }
  }
}
