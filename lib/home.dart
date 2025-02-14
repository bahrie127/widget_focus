import 'package:flutter/material.dart';
import 'package:widget_focus/widgets/sample_appbar.dart';
import 'package:widget_focus/widgets/sample_bottom_navbar.dart';
import 'package:widget_focus/widgets/sample_button.dart';
import 'package:widget_focus/widgets/sample_card.dart';
import 'package:widget_focus/widgets/sample_component.dart';
import 'package:widget_focus/widgets/sample_container.dart';
import 'package:widget_focus/widgets/sample_datetime.dart';
import 'package:widget_focus/widgets/sample_dialog.dart';
import 'package:widget_focus/widgets/sample_drawer.dart';
import 'package:widget_focus/widgets/sample_floating_action_button.dart';
import 'package:widget_focus/widgets/sample_form.dart';
import 'package:widget_focus/widgets/sample_grid.dart';
import 'package:widget_focus/widgets/sample_image.dart';
import 'package:widget_focus/widgets/sample_list.dart';
import 'package:widget_focus/widgets/sample_stack.dart';
import 'package:widget_focus/widgets/sample_tabbar.dart';
import 'package:widget_focus/widgets/sample_tabbar_view.dart';
import 'package:widget_focus/widgets/sample_textfield.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return SampleDrawer();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return SampleContainer();
  // }

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



// Scaffold(
//       appBar: AppBar(
//         title: const Text('Latihan Widgets'),
//       ),
//       body: const SampleCard(),
//     );