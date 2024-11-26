import 'package:flutter/material.dart';
import 'package:myapp/pages/create_comment.dart';

class ListCommentsPage extends StatelessWidget {
  const ListCommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10, // Jumlah komentar (contoh statis)
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Text("U$index"), // Placeholder user avatar
            ),
            title: Text("User $index"),
            subtitle: Text("This is comment $index."),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateCommentPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
