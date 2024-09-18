import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, //
      ),
      body: Container(
        padding:
            const EdgeInsets.all(16.0), // Increased padding for better spacing
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Make widgets take full width
          children: [
            _textboxNama(),
            SizedBox(height: 16.0), // Add space between fields
            _textboxNIM(),
            SizedBox(height: 16.0), // Add space between fields
            _textboxTahun(),
            SizedBox(height: 24.0), // Add space before the button
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        border: OutlineInputBorder(), // Add a border to the text field
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        border: OutlineInputBorder(), // Add a border to the text field
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      controller: _nimController,
    );
  }

  Widget _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        border: OutlineInputBorder(), // Add a border to the text field
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      controller: _tahunController,
    );
  }

  Widget _tombolSimpan() {
    return SizedBox(
      width: double.infinity, // Membuat tombol mengambil lebar penuh
      child: ElevatedButton(
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TampilData(
                nama: nama,
                nim: nim,
                tahun: tahun,
              ),
            ),
          );
        },
        child: const Text('Simpan'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Set warna tombol menjadi biru
          foregroundColor: Colors.white, // Set warna teks tombol menjadi putih
          elevation: 8, // Menambahkan bayangan pada tombol
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(16.0), // Sudut tombol yang membulat
          ),
          padding: const EdgeInsets.symmetric(
              vertical: 16.0), // Menyesuaikan tinggi tombol
          textStyle: const TextStyle(
            fontSize: 18, // Ukuran font
            fontWeight: FontWeight.bold, // Ketebalan font
          ),
        ),
      ),
    );
  }
}
