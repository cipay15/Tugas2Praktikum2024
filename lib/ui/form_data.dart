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
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxNama(),
            SizedBox(height: 16.0),
            _textboxNIM(),
            SizedBox(height: 16.0),
            _textboxTahun(),
            SizedBox(height: 24.0),
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
        border: OutlineInputBorder(),
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
        border: OutlineInputBorder(),
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
        border: OutlineInputBorder(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      controller: _tahunController,
    );
  }

  Widget _tombolSimpan() {
    return SizedBox(
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
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
