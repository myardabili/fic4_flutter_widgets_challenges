import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/fic_navigation/fic_navigation_pop.dart';

class FICNavigationPus extends StatefulWidget {
  const FICNavigationPus({super.key});

  @override
  State<FICNavigationPus> createState() => _FICNavigationPusState();
}

class _FICNavigationPusState extends State<FICNavigationPus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Navigation Push"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const FICNavigationPop();
                }));
              },
              child: Text(
                "go to other page".toUpperCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
