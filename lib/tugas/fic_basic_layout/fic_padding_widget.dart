import 'package:flutter/material.dart';

class FICPaddingWidget extends StatelessWidget {
  const FICPaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Padding"),
        centerTitle: true,
      ),
      body: Container(
        height: 500,
        width: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.amber,
        ),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                  bottom: 40,
                ),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
