import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  const SampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        spacing: 8,
        runSpacing: 2,
        // direction: Axis.vertical,
        alignment: WrapAlignment.center,
        // runAlignment: WrapAlignment.center,
        children: const [
          Chip(
            label: Text('Laila Majnun'),
            avatar: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('LM'),
            ),
          ),
          Chip(
            label: Text('Roni '),
            avatar: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('RR'),
            ),
          ),
          Chip(
            label: Text('Safik Rozak'),
            avatar: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('SR'),
            ),
          ),
          Chip(
            label: Text('Prabu Hartono'),
            avatar: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('PH'),
            ),
          ),
          Chip(
            label: Text('Siti'),
            avatar: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('SN'),
            ),
          ),
          Chip(
            label: Text('Luluk Rohimah'),
            avatar: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('LR'),
            ),
          ),
        ],
      ),
    );
  }
}

//wrap
// Wrap(
//         spacing: 8,
//         runSpacing: 2,
//         // direction: Axis.vertical,
//         alignment: WrapAlignment.center,
//         // runAlignment: WrapAlignment.center,
//         children: const [
//           Chip(
//             label: Text('Laila Majnun'),
//             avatar: CircleAvatar(
//               backgroundColor: Colors.deepPurple,
//               child: Text('LM'),
//             ),
//           ),
//           Chip(
//             label: Text('Roni '),
//             avatar: CircleAvatar(
//               backgroundColor: Colors.deepPurple,
//               child: Text('RR'),
//             ),
//           ),
//           Chip(
//             label: Text('Safik Rozak'),
//             avatar: CircleAvatar(
//               backgroundColor: Colors.deepPurple,
//               child: Text('SR'),
//             ),
//           ),
//           Chip(
//             label: Text('Prabu Hartono'),
//             avatar: CircleAvatar(
//               backgroundColor: Colors.deepPurple,
//               child: Text('PH'),
//             ),
//           ),
//           Chip(
//             label: Text('Siti'),
//             avatar: CircleAvatar(
//               backgroundColor: Colors.deepPurple,
//               child: Text('SN'),
//             ),
//           ),
//           Chip(
//             label: Text('Luluk Rohimah'),
//             avatar: CircleAvatar(
//               backgroundColor: Colors.deepPurple,
//               child: Text('LR'),
//             ),
//           ),
//         ],
//       ),

//card
// Card(
//         elevation: 3,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const ListTile(
//               leading: Icon(Icons.album),
//               title: Text('Indonesia Raya'),
//               subtitle: Text('Kumpulan lagu lagu nasional'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text('Pinjam'),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text('Beli'),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),

//aspect ratio
// Container(
//       color: Colors.green,
//       alignment: Alignment.center,
//       width: double.infinity,
//       height: 100,
//       child: AspectRatio(
//         aspectRatio: 1 / 2,
//         child: Container(
//           color: Colors.blue,
//         ),
//       ),
    // );
