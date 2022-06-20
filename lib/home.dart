import 'package:flutter/material.dart';
import 'package:widget_focus/widgets/sample_container.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Widgets'),
      ),
      body: const SampleContainer(),
    );
  }
}
