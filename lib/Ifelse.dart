import 'package:flutter/material.dart';

class IfElses extends StatefulWidget {
  //const IfElses({super.key});

  @override
  State<IfElses> createState() => _IfElsesState();
}

class _IfElsesState extends State<IfElses> {
  TextEditingController textEditingController = TextEditingController();
  String Answer = "";
  void CheckTextIsEmpty() {
    setState(() {
      if (textEditingController.text.isEmpty) {
        Answer = "Text Is Empty";
      } else {
        Answer = "Text Is Not Empty";
      }
    });
  }

  void Numbers() {
    setState(() {
      int Number = int.parse(textEditingController.text);
      if (Number < 0) {
        Answer = "Number $Number Is Negative";
      } else if (Number > 0) {
        Answer = "Number $Number Is Positive";
      } else {
        Answer = "Number $Number Is Zero";
      }
    });
  }

  void CheckOddEven() {
    setState(() {
      int Number = int.parse(textEditingController.text);
      if (Number % 2 == 0) {
        Answer = "Number $Number Is Even";
      } else {
        Answer = "Number $Number Is Odd";
      }
    });
  }

  void LeapYears() {
    setState(() {
      int Number = int.parse(textEditingController.text);
      if ((Number % 4 == 0 && Number % 100 != 0) || (Number % 400 == 0)) {
        Answer = "Year $Number is Leap Year";
      } else {
        Answer = "Year $Number Is Not Leap Year";
      }
    });
  }

  void checkVowelConsonant() {
    setState(() {
      String Ans = textEditingController.text.toLowerCase();
      if (Ans.isNotEmpty && 'aeiou'.contains(Ans.substring(0, 1))) {
        Answer = 'Character is a vowel.';
      } else {
        Answer = 'Character is a consonant.';
      }
    });
  }

  void Lowercases() {
    setState(() {
      String input = textEditingController.text;
      if (input.isNotEmpty && input == input.toUpperCase()) {
        Answer = "Character Is In Uppercase";
      } else if (input.isNotEmpty && input == input.toLowerCase()) {
        Answer = "Character Is In Lowercase";
      } else {
        Answer = "Character Is Not Aphabet";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "If Else Exercise",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    helperText: "Enter Your Values",
                    hintText: "Enter your Input",
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () => CheckTextIsEmpty(),
                  child: Text("Check Text Is Emppty Or Not?")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Numbers(),
                  child: Text("Input Value Is Negative/Positive Or Zero?")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => CheckOddEven(),
                  child: Text("Value Is Odd Or Even?")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => LeapYears(),
                  child: Text("Input Year is Leap Or Not?")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => checkVowelConsonant(),
                  child: Text("Check Character is Vowel Or Not??")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Lowercases(),
                  child: Text("Check Input Is In Uppercase Or Lowercase?")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Check Value Is Special Char/Digit/Alphabet?")),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.amber,
                child: Text(
                  "Result = $Answer",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
