import 'package:flutter/material.dart';

class SampleStack extends StatelessWidget {
  const SampleStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _stack(),
    );
  }

  Widget _stack() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 130,
              height: 130,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.purple,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 90,
              height: 90,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}

//positioned
// Widget _stack() {
//     return Container(
//       width: 300,
//       height: 300,
//       color: Colors.red,
//       child: Stack(
//         alignment: Alignment.bottomRight,
//         children: [
//           Align(
//             alignment: Alignment.topLeft,
//             child: Container(
//               width: 150,
//               height: 150,
//               color: Colors.green,
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               width: 130,
//               height: 130,
//               color: Colors.blue,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: 80,
//               height: 80,
//               color: Colors.purple,
//             ),
//           ),
//           Positioned(
//             right: 0,
//             top: 0,
//             child: Container(
//               width: 90,
//               height: 90,
//               color: Colors.yellow,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//stack alignment
// Widget _stack() {
//     return Container(
//       width: 300,
//       height: 300,
//       color: Colors.red,
//       child: Stack(
//         alignment: Alignment.bottomRight,
//         children: [
//           Align(
//             alignment: Alignment.topLeft,
//             child: Container(
//               width: 90,
//               height: 90,
//               color: Colors.green,
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               width: 80,
//               height: 80,
//               color: Colors.blue,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: 80,
//               height: 80,
//               color: Colors.purple,
//             ),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.yellow,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//x,y
// Widget _stack() {
//     return Stack(
//       alignment: Alignment(-1, 0),
//       children: [
//         Container(
//           width: 100,
//           height: 100,
//           color: Colors.red,
//         ),
//         Container(
//           width: 90,
//           height: 90,
//           color: Colors.green,
//         ),
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.blue,
//         )
//       ],
//     );
//   }

// Widget _stack() {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Container(
//           width: 100,
//           height: 100,
//           color: Colors.red,
//         ),
//         Container(
//           width: 90,
//           height: 90,
//           color: Colors.green,
//         ),
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.blue,
//         )
//       ],
//     );
//   }
