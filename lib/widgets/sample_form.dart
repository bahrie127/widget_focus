import 'package:flutter/material.dart';

class SampleForm extends StatefulWidget {
  const SampleForm({super.key});

  @override
  State<SampleForm> createState() => _SampleFormState();
}

class _SampleFormState extends State<SampleForm> {
  var selected = 'Satu';
  final dropdownList = <String>['Satu', 'Dua', 'Tiga', 'Empat', 'Lima'];

  var isChecked = false;
  var sex = 'male';
  var isOn = false;
  final _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: _globalKey,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tolong di isi dulu datanya';
                    }
                    return null;
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _globalKey.currentState!.validate();
              },
              child: const Text('validate'),
            ),
            Switch(
              value: isOn,
              onChanged: (bool? val) {
                if (val != null) {
                  setState(() {
                    isOn = val;
                  });
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'male',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) {
                        sex = val;
                      }
                    });
                  },
                ),
                const Text('Male'),
              ],
            ),
            Container(
              color: Colors.blueAccent,
              child: RadioListTile(
                title: const Text('Male'),
                subtitle: const Text('Pilih jenis kelamin anda'),
                value: 'male',
                groupValue: sex,
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      sex = val;
                    }
                  });
                },
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              child: RadioListTile(
                title: const Text('Female'),
                value: 'female',
                groupValue: sex,
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      sex = val;
                    }
                  });
                },
              ),
            ),
            Checkbox(
                value: isChecked,
                activeColor: Colors.deepPurple,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      isChecked = val;
                    }
                  });
                }),
            DropdownButton(
              value: selected,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 40,
              style: TextStyle(color: Colors.blue[600]),
              underline: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.deepOrange,
                      width: 3,
                    ),
                  ),
                ),
              ),
              items: dropdownList
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  if (val != null) selected = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
