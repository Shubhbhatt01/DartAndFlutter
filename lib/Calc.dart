import 'package:flutter/material.dart';

class Calculators extends StatefulWidget {
  const Calculators({super.key});

  @override
  State<Calculators> createState() => _CalculatorsState();
}

class _CalculatorsState extends State<Calculators> {
  final msg = "Enter Valid Values";
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  dynamic? Result;
  double c = 0;
  double d = 0;
  dynamic e = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calcuator Of Operators",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextFormField(
                controller: txt1,
                decoration: InputDecoration(
                  helperText: "Enter Your Input:",
                  hintText: "Your First Input",
                  //icon: Icon(Icons.star),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: txt2,
                decoration: InputDecoration(
                  hintText: "Enter Your Second Input",
                  helperText: "Enter Your Input",
                  //icon: Icon(Icons.star_border),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        dynamic input1 = txt1.text;
                        dynamic input2 = txt2.text;
                        c = double.parse(txt1.text);
                        d = double.parse(txt2.text);
                        e = c + d;
                        Result = e;
                      });
                    },
                    child: Text("Addition")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        dynamic input1 = txt1.text;
                        dynamic input2 = txt2.text;
                        c = double.parse(txt1.text);
                        d = double.parse(txt2.text);
                        e = c - d;
                        Result = e;
                      });
                    },
                    child: Text("Subtraction")),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        dynamic input1 = txt1.text;
                        dynamic input2 = txt2.text;
                        c = double.parse(txt1.text);
                        d = double.parse(txt2.text);
                        e = c / d;
                        Result = e;
                      });
                    },
                    child: Text("Division")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        dynamic input1 = txt1.text;
                        dynamic input2 = txt2.text;
                        c = double.parse(txt1.text);
                        d = double.parse(txt2.text);
                        e = c * d;
                        Result = e;
                      });
                    },
                    child: Text("Multiplicaton"))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.amber,
              child: Text(
                "Answer=$Result",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
