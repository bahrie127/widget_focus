import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SampleDateTime extends StatefulWidget {
  const SampleDateTime({super.key});

  @override
  State<SampleDateTime> createState() => _SampleDateTimeState();
}

class _SampleDateTimeState extends State<SampleDateTime> {
  late DateTime dateTime;
  late int timestamp;
  late DateTime anotherDateTime;
  late String dateString;
  late DateTime newDate;

  late DateTime selectedDate;
  late TimeOfDay selectedTime;
  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
    timestamp = dateTime.microsecondsSinceEpoch;
    anotherDateTime = DateTime.fromMicrosecondsSinceEpoch(timestamp);
    dateString = DateFormat('yyyy-MM-dd hh:mm').format(anotherDateTime);
    newDate = DateTime.parse(dateString);

    selectedDate = DateTime.now();
    selectedTime = const TimeOfDay(hour: 20, minute: 21);
  }

  void _selectedTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  void _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2045),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
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
            Text(DateFormat('yyyy/MM/dd').format(selectedDate)),
            ElevatedButton(
              onPressed: () {
                _selectedDate(context);
              },
              child: const Text('Pilih Tanggal'),
            ),
            Text('${selectedTime.hour} : ${selectedTime.minute}'),
            ElevatedButton(
              onPressed: () {
                _selectedTime(context);
              },
              child: const Text('Pilih Jam'),
            ),
          ],
        ),
      ),
    );
  }
}
