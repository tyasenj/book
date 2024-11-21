import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.brown.shade500; // Warna default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation Dialog Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context); // Menampilkan dialog untuk memilih warna
          },
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    // Menampilkan dialog untuk memilih warna
    await showDialog(
      barrierDismissible:
          false, // Menghindari penutupan dialog dengan klik di luar dialog
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            // Tombol untuk memilih warna merah
            TextButton(
              child: const Text('Pink'),
              onPressed: () {
                setState(() {
                  color = Colors.pink.shade500; // Menetapkan warna merah
                });
                Navigator.pop(context); // Menutup dialog
              },
            ),
            // Tombol untuk memilih warna hijau
            TextButton(
              child: const Text('Green'),
              onPressed: () {
                setState(() {
                  color = Colors.green.shade500; // Menetapkan warna hijau
                });
                Navigator.pop(context); // Menutup dialog
              },
            ),
            // Tombol untuk memilih warna biru
            TextButton(
              child: const Text('Brown'),
              onPressed: () {
                setState(() {
                  color = Colors.brown.shade500; // Menetapkan warna biru
                });
                Navigator.pop(context); // Menutup dialog
              },
            ),
          ],
        );
      },
    );
  }
}
