import 'package:flutter/material.dart';
import 'add_animal_screen.dart'; // Mengimpor AddAnimalScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Hewan'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Menavigasi ke AddAnimalScreen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddAnimalScreen(),
              ),
            );
          },
          child: const Text('Tambah Hewan Baru'),
        ),
      ),
    );
  }
}
