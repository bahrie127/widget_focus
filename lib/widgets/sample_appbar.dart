import 'package:flutter/material.dart';

class SampleAppBar extends StatefulWidget {
  const SampleAppBar({super.key});

  @override
  State<SampleAppBar> createState() => _SampleAppBarState();
}

class _SampleAppBarState extends State<SampleAppBar> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // leadingWidth: 100,
      //  automaticallyImplyLeading: false
      //   elevation: 10,
      //   toolbarHeight: 100,
      //   toolbarOpacity: 0.5,
      //   backgroundColor: Colors.blueGrey[500],
      //   leading: Container(color: Colors.amber),
      //   title: const Text('Halaman pertama'),
      //   centerTitle: true,
      //   actions: const [
      //     Icon(Icons.settings),
      //     SizedBox(
      //       width: 8,
      //     ),
      //     Icon(Icons.more),
      //   ],
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Sliver App Bar',
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.amber,
                height: 100,
                child: Center(
                  child: Text(
                    '$index',
                    textScaleFactor: 5,
                  ),
                ),
              );
            }, childCount: 20),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('pinned'),
                Switch(
                  value: _pinned,
                  onChanged: (bool val) {
                    setState(
                      () {
                        _pinned = val;
                      },
                    );
                  },
                ),
                const Text('snap'),
                Switch(
                  value: _snap,
                  onChanged: (bool val) {
                    setState(
                      () {
                        _snap = val;
                        _floating = _floating || _snap;
                      },
                    );
                  },
                ),
                const Text('floating'),
                Switch(
                  value: _floating,
                  onChanged: (bool val) {
                    setState(
                      () {
                        _floating = val;
                      },
                    );
                  },
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}


//appbar
// AppBar(
//         // leadingWidth: 100,
//         elevation: 10,
//         toolbarHeight: 100,
//         toolbarOpacity: 0.5,
//         backgroundColor: Colors.blueGrey[500],
//         leading: Container(color: Colors.amber),
//         title: const Text('Halaman pertama'),
//         centerTitle: true,
//         actions: const [
//           Icon(Icons.settings),
//           SizedBox(
//             width: 8,
//           ),
//           Icon(Icons.more),
//         ],
//       ),
//     );