import 'package:flutter/material.dart';

class StringOutput extends StatefulWidget {
  final String strout;
  StringOutput(this.strout);
  @override
  _StringOutputState createState() => _StringOutputState(strout);
}

class _StringOutputState extends State<StringOutput> {
  final String strout;
  dynamic Errors = "Not Valid";
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  String Answer = "";
  _StringOutputState(this.strout);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercise Results",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 350,
              child: TextFormField(
                controller: txt1,
                decoration: InputDecoration(
                  label: Text(
                    "Enter Your Input:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1)),
                ),
              ),
            ),
            if (strout == "0103" ||
                strout == "0104" ||
                strout == "0201" ||
                strout == "0203" ||
                strout == "0205")
              Container(
                height: 100,
                width: 350,
                child: TextFormField(
                  controller: txt2,
                  decoration: InputDecoration(
                    label: Text(
                      "Enter Your Input:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  ),
                ),
              ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    final input1 = txt1.text;
                    final input2 = txt2.text;
                    if (strout == "0101") {
                      Answer = input1;
                    } else if (strout == "0102") {
                      Answer = "Length Of String: ${input1.length}";
                    } else if (strout == "0103") {
                      Answer = "Merged String: $input1$input2";
                    } else if (strout == "0104") {
                      if (input1.contains(input2)) {
                        Answer = "index of $input2:${input1.indexOf(input2)}";
                      }
                    } else if (strout == "0105") {
                      Answer = "Split Character: ${input1.split("")}";
                    } else if (strout == "0106") {
                      Answer = "reversed: ${input1.split("").reversed.join()}";
                    } else if (strout == "0107") {
                      final word = input1.split(" ");
                      Answer = "Number Of Words:${word.length}";
                    } else if (strout == "0108") {
                      Answer = "Convert To Lowercase: ${input1.toLowerCase()}";
                    } else if (strout == "0201") {
                      Answer =
                          "Insert Element At zero Index: ${input1.split("")..insert(0, input2)}";
                    } else if (strout == "0202") {
                      Answer =
                          "Clear All Elements:${input1.split("")..clear()}";
                    } else if (strout == "0203") {
                      if (input1.contains(input2)) {
                        Answer =
                            "Index Of Element:${input1.split('').indexOf(input2)}";
                      } else {
                        Answer = Errors;
                      }
                    } else if (strout == "0204") {
                      Answer = "Reversed List:${input1.split("").reversed}";
                    } else if (strout == "0205") {
                      Answer = "Add Element:${input1.split("")..add(input2)}";
                    } else if (strout == "0206") {
                      Answer = "Length Of List:${input1.split("").length}";
                    } else if (strout == "0207") {
                      Answer =
                          "Remove Last Element:${input1.split("")..removeLast()}";
                    }
                  });
                },
                child: Text("Submit")),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.amberAccent,
              padding: EdgeInsets.all(35),
              child: Text(
                "Result:$Answer",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
