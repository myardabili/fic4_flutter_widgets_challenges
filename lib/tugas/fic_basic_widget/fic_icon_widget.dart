import 'package:flutter/material.dart';

class FICIconWidget extends StatelessWidget {
  const FICIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Icon"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Icon(
              Icons.share,
              size: 32,
            ),
            SizedBox(
              height: 12,
            ),
            Icon(
              Icons.favorite,
              size: 36,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
