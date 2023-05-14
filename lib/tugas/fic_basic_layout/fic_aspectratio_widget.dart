import 'package:flutter/material.dart';

class FICAspectRatio extends StatefulWidget {
  const FICAspectRatio({super.key});

  @override
  State<FICAspectRatio> createState() => _FICAspectRatioState();
}

class _FICAspectRatioState extends State<FICAspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Aspectratio"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 180 / 240,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
