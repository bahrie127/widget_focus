import 'package:flutter/material.dart';

class SampleTabbar extends StatelessWidget {
  const SampleTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Tabbar'),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.deepOrangeAccent[200],
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.deepOrangeAccent[100],
            unselectedLabelColor: Colors.white60,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black26),
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                ),
                text: 'Mobil',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bus,
                ),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike,
                ),
                text: 'Sepeda',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_car,
                ),
                text: 'Mobil',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bus,
                ),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike,
                ),
                text: 'Sepeda',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_car,
                ),
                text: 'Mobil',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bus,
                ),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike,
                ),
                text: 'Sepeda',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_car,
                ),
                text: 'Mobil',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bus,
                ),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike,
                ),
                text: 'Sepeda',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Ini Halaman mobil'),
            ),
            Center(
              child: Text('Ini Halaman Bus'),
            ),
            Center(
              child: Text('Ini Halaman Sepeda'),
            ),
            Center(
              child: Text('Ini Halaman mobil'),
            ),
            Center(
              child: Text('Ini Halaman Bus'),
            ),
            Center(
              child: Text('Ini Halaman Sepeda'),
            ),
            Center(
              child: Text('Ini Halaman mobil'),
            ),
            Center(
              child: Text('Ini Halaman Bus'),
            ),
            Center(
              child: Text('Ini Halaman Sepeda'),
            ),
            Center(
              child: Text('Ini Halaman mobil'),
            ),
            Center(
              child: Text('Ini Halaman Bus'),
            ),
            Center(
              child: Text('Ini Halaman Sepeda'),
            ),
          ],
        ),
      ),
    );
  }
}


//tabbar
// Scaffold(
//         appBar: AppBar(
//           title: const Text('Demo Tabbar'),
//           bottom: TabBar(
//             isScrollable: true,
//             indicatorColor: Colors.deepOrangeAccent[200],
//             indicatorSize: TabBarIndicatorSize.tab,
//             labelColor: Colors.deepOrangeAccent[100],
//             unselectedLabelColor: Colors.white60,
//             indicator: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20), color: Colors.black26),
//             tabs: const [
//               Tab(
//                 icon: Icon(
//                   Icons.directions_car,
//                 ),
//                 text: 'Mobil',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bus,
//                 ),
//                 text: 'Bus',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bike,
//                 ),
//                 text: 'Sepeda',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_car,
//                 ),
//                 text: 'Mobil',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bus,
//                 ),
//                 text: 'Bus',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bike,
//                 ),
//                 text: 'Sepeda',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_car,
//                 ),
//                 text: 'Mobil',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bus,
//                 ),
//                 text: 'Bus',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bike,
//                 ),
//                 text: 'Sepeda',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_car,
//                 ),
//                 text: 'Mobil',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bus,
//                 ),
//                 text: 'Bus',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.directions_bike,
//                 ),
//                 text: 'Sepeda',
//               ),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(
//               child: Text('Ini Halaman mobil'),
//             ),
//             Center(
//               child: Text('Ini Halaman Bus'),
//             ),
//             Center(
//               child: Text('Ini Halaman Sepeda'),
//             ),
//             Center(
//               child: Text('Ini Halaman mobil'),
//             ),
//             Center(
//               child: Text('Ini Halaman Bus'),
//             ),
//             Center(
//               child: Text('Ini Halaman Sepeda'),
//             ),
//             Center(
//               child: Text('Ini Halaman mobil'),
//             ),
//             Center(
//               child: Text('Ini Halaman Bus'),
//             ),
//             Center(
//               child: Text('Ini Halaman Sepeda'),
//             ),
//             Center(
//               child: Text('Ini Halaman mobil'),
//             ),
//             Center(
//               child: Text('Ini Halaman Bus'),
//             ),
//             Center(
//               child: Text('Ini Halaman Sepeda'),
//             ),
//           ],
//         ),
//       ),