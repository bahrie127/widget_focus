import 'package:flutter/material.dart';
import 'package:widget_focus/widgets/sample_component.dart';
import 'package:widget_focus/widgets/sample_container.dart';
import 'package:widget_focus/widgets/sample_grid.dart';
import 'package:widget_focus/widgets/sample_image.dart';
import 'package:widget_focus/widgets/sample_list.dart';
import 'package:widget_focus/widgets/sample_stack.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Widgets'),
      ),
      body: const SampleStack(),
    );
  }
}
