import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleDrawer extends StatelessWidget {
  const SampleDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: Drawer(
        child: Container(
          color: Colors.amber[50],
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    // radius: 80,
                    child: FlutterLogo(size: 50),
                  ),
                  decoration: BoxDecoration(color: Colors.deepOrange[200]),
                  accountName: const Text('Zaki Rozak'),
                  accountEmail: const Text('rozak.zaki@gmail.com'),
                ),
                // DrawerHeader(
                //   decoration: BoxDecoration(color: Colors.pink[100]),
                //   child: Container(
                //       color: Colors.green[100], child: Text('Settings')),
                // ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Menu 3'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: const Text('Open Drawer'),
            ),
          );
        },
      ),
    );
  }
}
