import 'package:flutter/material.dart';

class SampleTextField extends StatefulWidget {
  const SampleTextField({super.key});

  @override
  State<SampleTextField> createState() => _SampleTextFieldState();
}

class _SampleTextFieldState extends State<SampleTextField> {
  late final TextEditingController _controller;

  var str = '';
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: 'initial value');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  FocusNode first = FocusNode();
  FocusNode second = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                // controller: _controller,
                onChanged: (value) {
                  str = value;
                },
                // autofocus: true,
                focusNode: first,
              ),
              TextField(
                // controller: _controller,
                onChanged: (value) {
                  str = value;
                },
                // autofocus: true,
                focusNode: second,
                // keyboardType: TextInputType.number,
                // textCapitalization: TextCapitalization.words,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.amber[800]),
                // maxLines: 4,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add),
                    labelText: 'Password',
                    // hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => SecondPage(title: str),
          //   ),
          // );

          FocusScope.of(context).requestFocus(second);
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String title;
  const SecondPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
