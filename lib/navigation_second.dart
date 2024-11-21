import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Pink'),
              onPressed: () {
                // Mengirimkan warna merah kembali ke halaman pertama
                Navigator.pop(context, Colors.pink.shade300);
              },
            ),
            ElevatedButton(
              child: const Text('Purple'),
              onPressed: () {
                // Mengirimkan warna hijau kembali ke halaman pertama
                Navigator.pop(context, Colors.purple.shade300);
              },
            ),
            ElevatedButton(
              child: const Text('Yellow'),
              onPressed: () {
                // Mengirimkan warna biru kembali ke halaman pertama
                Navigator.pop(context, Colors.yellow.shade300);
              },
            ),
          ],
        ),
      ),
    );
  }
}
