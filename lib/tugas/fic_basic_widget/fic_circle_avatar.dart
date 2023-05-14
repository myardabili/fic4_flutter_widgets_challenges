import 'package:flutter/material.dart';

class FICCircleAvatar extends StatelessWidget {
  FICCircleAvatar({super.key});

  final List<Color> colors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Circle Avatar"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: colors[index],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
