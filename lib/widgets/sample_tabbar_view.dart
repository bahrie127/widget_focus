import 'package:flutter/material.dart';

class SampleTabbarView extends StatefulWidget {
  const SampleTabbarView({super.key});

  @override
  State<SampleTabbarView> createState() => _SampleTabbarViewState();
}

class _SampleTabbarViewState extends State<SampleTabbarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbar mixin'),
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
      body: TabBarView(controller: _tabController, children: [
        Center(
          child: Text('Tab 1'),
        ),
        Center(
          child: Text('Tab 2'),
        ),
        Center(
          child: Text('Tab 3'),
        ),
      ]),
    );
  }
}
