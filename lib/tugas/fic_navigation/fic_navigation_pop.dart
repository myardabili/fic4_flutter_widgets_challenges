import 'package:flutter/material.dart';

class FICNavigationPop extends StatefulWidget {
  const FICNavigationPop({super.key});

  @override
  State<FICNavigationPop> createState() => _FICNavigationPopState();
}

class _FICNavigationPopState extends State<FICNavigationPop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Navigation Pop"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("go back (pop)".toUpperCase()),
            )
          ],
        ),
      ),
    );
  }
}
