import 'package:flutter/material.dart';

class SampleDialog extends StatefulWidget {
  const SampleDialog({super.key});

  @override
  State<SampleDialog> createState() => _SampleDialogState();
}

class _SampleDialogState extends State<SampleDialog> {
  _showSimpleDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Ini Simple Dialog'),
            children: [
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Option ke satu'),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Option ke dua'),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Option ke tiga'),
              ),
            ],
          );
        });
  }

  _showMyDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.amber[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            title: const Text('Peringatan'),
            content:
                const Text('Apakah anda yakin untuk melanjutkan proses ini?'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Tidak')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Ya')),
            ],
          );
        });
  }

  _showCustomDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              // color: Colors.amber[200],
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      color: Colors.red[200],
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 1,
                    child: Container(
                      color: Colors.blue[200],
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  _showEntireDialog() {
    showGeneralDialog(
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return Container(
            color: Colors.red[200],
            width: double.infinity,
            height: double.infinity,
          );
        });
  }

  _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const SizedBox(
            height: 200,
            child: Text('Ini Bottom Sheet'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _showMyDialog,
              child: const Text('Show Dialog'),
            ),
            ElevatedButton(
              onPressed: _showSimpleDialog,
              child: const Text('Show Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: _showCustomDialog,
              child: const Text('Show Custom Dialog'),
            ),
            ElevatedButton(
              onPressed: _showEntireDialog,
              child: const Text('Show General Dialog'),
            ),
            ElevatedButton(
              onPressed: _showBottomSheet,
              child: const Text('Show Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
