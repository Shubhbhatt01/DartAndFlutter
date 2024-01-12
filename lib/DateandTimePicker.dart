import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeDatepicker extends StatefulWidget {
  const TimeDatepicker({super.key});

  @override
  State<TimeDatepicker> createState() => _TimeDatepickerState();
}

class _TimeDatepickerState extends State<TimeDatepicker> {
  final dates = "";
  final times = "";
  String Formateddate = "";
  String Formatedtime = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date And Time Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? dates = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1980),
                      lastDate: DateTime(2060));
                  if (dates != null) {
                    Formateddate = DateFormat("dd/MM/yyyy").format(dates);
                    setState(() {});
                  }
                },
                child: Text("Select Date")),
            SizedBox(
              height: 20,
            ),
            Text(
              Formateddate,
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? times = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                  if (times != null) {
                    setState(() {
                      Formatedtime = times.format(context);
                    });
                  }
                },
                child: Text("Select Time")),
            SizedBox(
              height: 20,
            ),
            Text(
              Formatedtime,
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
