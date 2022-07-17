import 'package:flutter/material.dart';

class SampleBottomNavbar extends StatefulWidget {
  const SampleBottomNavbar({super.key});

  @override
  State<SampleBottomNavbar> createState() => _SampleBottomNavbarState();
}

class _SampleBottomNavbarState extends State<SampleBottomNavbar> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> page = [
    const Text('Beranda'),
    TextField(),
    const Text('Favorite'),
    const Text('Setting'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Widgets'),
      ),
      body: Center(
        child: IndexedStack(
          alignment: AlignmentDirectional.center,
          index: _selectedIndex,
          children: page,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[50],
        iconSize: 30,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
