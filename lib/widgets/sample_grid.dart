import 'package:flutter/material.dart';

class SampleGrid extends StatelessWidget {
  SampleGrid({Key? key}) : super(key: key);
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: colorCodes.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 10,
        maxCrossAxisExtent: 140,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.purple[colorCodes[index]],
        );
      },
    );
  }
}


/**
 *  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 2,
      children: [
        Container(
          color: Colors.purple[100],
        ),
        Container(
          color: Colors.purple[200],
        ),
        Container(
          color: Colors.purple[300],
        ),
        Container(
          color: Colors.purple[400],
        ),
        Container(
          color: Colors.purple[500],
        ),
        Container(
          color: Colors.purple[600],
        ),
        Container(
          color: Colors.purple[700],
        ),
        Container(
          color: Colors.purple[800],
        ),
        Container(
          color: Colors.purple[900],
        ),
      ],
    );
  }
}
 */


/**
 * Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          color: Colors.purple[100],
        ),
        Container(
          color: Colors.purple[200],
        ),
        Container(
          color: Colors.purple[300],
        ),
        Container(
          color: Colors.purple[400],
        ),
        Container(
          color: Colors.purple[500],
        ),
        Container(
          color: Colors.purple[600],
        ),
        Container(
          color: Colors.purple[700],
        ),
        Container(
          color: Colors.purple[800],
        ),
        Container(
          color: Colors.purple[900],
        ),
      ],
    );
  }
}
 */




/**
 * Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Container(
          color: Colors.purple[100],
        ),
        Container(
          color: Colors.purple[200],
        ),
        Container(
          color: Colors.purple[300],
        ),
        Container(
          color: Colors.purple[400],
        ),
        Container(
          color: Colors.purple[500],
        ),
        Container(
          color: Colors.purple[600],
        ),
        Container(
          color: Colors.purple[700],
        ),
        Container(
          color: Colors.purple[800],
        ),
        Container(
          color: Colors.purple[900],
        ),
      ],
    );
  }
 */