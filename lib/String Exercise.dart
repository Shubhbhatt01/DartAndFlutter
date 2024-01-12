import 'package:flutter/material.dart';
import 'package:new_project/StringResults.dart';

class StringExercise extends StatelessWidget {
  const StringExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "String All Exercise",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0101"))));
                  },
                  child: const Text("0101 - Print String")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0102"))));
                  },
                  child: const Text("0102 - Length Of String")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0103"))));
                  },
                  child: const Text("0103 - Join Strings")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0104"))));
                  },
                  child: const Text(
                    "0104 - Index Of First Element",
                    textAlign: TextAlign.center,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0105"))));
                  },
                  child: const Text(
                    "0105 - Print Separate Character",
                    textAlign: TextAlign.center,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0106"))));
                  },
                  child: const Text("0106 - Reverse String")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0107"))));
                  },
                  child: const Text("0107 - Total No Of Word")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringOutput("0108"))));
                  },
                  child: const Text(
                    "0108 - Convert Into The Lowercase",
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
