import 'package:flutter/material.dart';

class FICScaffoldWidget extends StatelessWidget {
  const FICScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Scaffold"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Ini adalah bagian dari body"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
