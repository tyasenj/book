import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Future<Position>? position; // Future untuk menyimpan posisi

  @override
  void initState() {
    super.initState();
    position = getPosition(); // Inisialisasi Future saat widget dimulai
  }

  Future<Position> getPosition() async {
    // Pengecekan izin lokasi
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw 'Location services are disabled.';
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw 'Location permissions are denied.';
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw 'Location permissions are permanently denied.';
    }

    await Future.delayed(const Duration(seconds: 3)); // Simulasi delay
    return await Geolocator.getCurrentPosition(); // Ambil posisi perangkat
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location')),
      body: Center(
        child: FutureBuilder<Position>(
          future: position, // Future yang sedang diproses
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            // Menunggu hasil Future
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            // Jika Future selesai dan ada error
            else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                // Menampilkan pesan error jika terjadi kesalahan
                return Text('Something terrible happened: ${snapshot.error}');
              }
              // Menampilkan data posisi jika berhasil
              return Text(
                'Latitude: ${snapshot.data!.latitude}, Longitude: ${snapshot.data!.longitude}',
              );
            } else {
              return const Text(''); // Kondisi default lainnya
            }
          },
        ),
      ),
    );
  }
}
