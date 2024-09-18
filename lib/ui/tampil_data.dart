import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor:
            Colors.blue, // Set warna latar belakang AppBar menjadi biru
        foregroundColor: Colors.white, // Set warna teks AppBar menjadi putih
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun",
              style: const TextStyle(
                fontSize: 16, // Ukuran font
                fontWeight: FontWeight.bold, // Ketebalan font
              ),
            ),
          ],
        ),
      ),
    );
  }
}
