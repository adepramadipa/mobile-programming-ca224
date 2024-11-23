import 'package:flutter/material.dart';

class AddAnimalScreen extends StatelessWidget {
  const AddAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Hewan Baru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Nama Hewan'),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Deskripsi Hewan'),
            ),
            ElevatedButton(
              onPressed: () {
                // Fungsi untuk menyimpan data hewan baru bisa ditambahkan di sini
                Navigator.pop(context);  // Kembali ke HomeScreen
              },
              child: const Text('Simpan Hewan'),
            ),
          ],
        ),
      ),
    );
  }
}
