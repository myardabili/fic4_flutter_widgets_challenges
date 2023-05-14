import 'package:flutter/material.dart';

class FICDrawerWidget extends StatefulWidget {
  const FICDrawerWidget({super.key});

  @override
  State<FICDrawerWidget> createState() => _FICDrawerWidgetState();
}

class _FICDrawerWidgetState extends State<FICDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Drawer"),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  accountName: const Text(
                    "Yusuf",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: const Text(
                    "yusuf@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text("Menu 1"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Menu 2"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "FIC - Drawer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
