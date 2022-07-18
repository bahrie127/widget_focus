import 'package:flutter/material.dart';

class SampleFloatingActionButton extends StatelessWidget {
  const SampleFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget'),
      ),
      body: const Center(
        child: Text('Floating action button'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          // FloatingActionButton.extended(
          //   onPressed: () {},
          //   label: const Text('Favorite'),
          //   icon: const Icon(Icons.favorite),
          // ),

          Container(
        margin: const EdgeInsets.only(top: 30),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 10,
          backgroundColor: Colors.amber[600],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // foregroundColor: Colors.red[300],
          // mini: true,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


//sizedbox
// SizedBox(
//         width: 200,
//         height: 200,
//         child: FloatingActionButton(
//           onPressed: () {},
//           backgroundColor: Colors.amber[600],
//           foregroundColor: Colors.red[300],
//           // mini: true,
//           child: const Icon(Icons.add),
//         ),
//       ),