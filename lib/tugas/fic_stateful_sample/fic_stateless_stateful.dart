import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/widget_lesson/stateful_sample/stateless_stateful_widget.dart';

class FICStatelessStateful extends StatefulWidget {
  const FICStatelessStateful({super.key});

  @override
  State<FICStatelessStateful> createState() => _FICStatelessStatefulState();
}

class _FICStatelessStatefulState extends State<FICStatelessStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Stateless Stateful"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Show text stateless",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ChangeTextWidget(),
          ],
        ),
      ),
    );
  }
}
