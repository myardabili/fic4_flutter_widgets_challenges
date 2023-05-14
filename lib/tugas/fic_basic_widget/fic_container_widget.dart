import 'package:flutter/material.dart';

class FICContainerWidget extends StatelessWidget {
  const FICContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Container"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset.zero,
                color: Colors.black.withOpacity(0.2),
                blurRadius: 15,
              )
            ]),
      ),
    );
  }
}
