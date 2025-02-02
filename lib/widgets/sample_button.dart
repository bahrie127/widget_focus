import 'package:flutter/material.dart';

class SampleButton extends StatelessWidget {
  const SampleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(30)),
                  // shape:
                  //     CircleBorder(side: BorderSide(color: Colors.blueAccent)),
                  minimumSize: Size(300, 200),
                  elevation: 10,
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.amber[300],
                  textStyle: TextStyle(fontSize: 20)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30)),
              // shape:
              //     CircleBorder(side: BorderSide(color: Colors.blueAccent)),
              // minimumSize: Size(300, 200),
              elevation: 10,
              backgroundColor: Colors.red[400],
              // onPrimary: Colors.amber[300],
              textStyle: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: Text('Text Button'),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30)),
              // shape:
              //     CircleBorder(side: BorderSide(color: Colors.blueAccent)),
              // minimumSize: Size(300, 200),
              elevation: 10,
              backgroundColor: Colors.red[400],
              // onPrimary: Colors.amber[300],
              textStyle: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: Text('Outlined Butoon'),
          ),
        ],
      ),
    );
  }
}
