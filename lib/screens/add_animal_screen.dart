import 'package:flutter/material.dart';
import 'package:logger/logger.dart';  // Import logger

class AddAnimalScreen extends StatefulWidget {
  const AddAnimalScreen({super.key});

  @override
  _AddAnimalScreenState createState() => _AddAnimalScreenState();
}

class _AddAnimalScreenState extends State<AddAnimalScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final Logger _logger = Logger();  // Initialize logger

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
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nama Hewan'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Deskripsi Hewan'),
            ),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                String description = _descriptionController.text;

                // Log data instead of print
                _logger.i('Nama Hewan: $name, Deskripsi: $description');
                Navigator.pop(context);  // Return to the previous screen (HomeScreen)
              },
              child: const Text('Simpan Hewan'),
            ),
          ],
        ),
      ),
    );
  }
}
