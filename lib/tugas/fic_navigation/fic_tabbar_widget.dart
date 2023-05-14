import 'package:flutter/material.dart';

class FICTabbarWidget extends StatefulWidget {
  const FICTabbarWidget({super.key});

  @override
  State<FICTabbarWidget> createState() => _FICTabbarWidgetState();
}

class _FICTabbarWidgetState extends State<FICTabbarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Tabbar"),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
            Tab(
              icon: Icon(Icons.directions_ferry),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.lightGreen[300],
            child: const Center(
              child: Text("Tab 1"),
            ),
          ),
          Container(
            color: Colors.lime[300],
            child: const Center(
              child: Text("Tab 2"),
            ),
          ),
          Container(
            color: Colors.purple[200],
            child: const Center(
              child: Text("Tab 3"),
            ),
          ),
        ],
      ),
    );
  }
}
