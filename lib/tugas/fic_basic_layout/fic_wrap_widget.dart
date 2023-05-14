import 'package:flutter/material.dart';

class FICWrapWidget extends StatelessWidget {
  FICWrapWidget({super.key});

  final List<Color> colors = [
    Colors.blue,
    Colors.black,
    Colors.amber,
    Colors.cyan,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.grey,
    Colors.orange,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Wrap"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: colors.map(
                (color) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.grey,
                        ),
                        color: color,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset.zero,
                            blurRadius: 15,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
