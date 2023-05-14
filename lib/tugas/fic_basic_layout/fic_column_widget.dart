import 'package:flutter/material.dart';

class FICColumnWIdget extends StatelessWidget {
  const FICColumnWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Column Widget"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Stylish Chair",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rp 350.000",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
                color: Color(0xFF9A9390),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
