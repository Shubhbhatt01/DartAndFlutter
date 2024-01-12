import 'package:flutter/material.dart';
import 'package:new_project/StringResults.dart';

class ListExercise extends StatelessWidget {
  const ListExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List All Exercise",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StringOutput("0201"))));
                    },
                    child: Text(
                      "0201 - Insert Element At Zero Place",
                      textAlign: TextAlign.center,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StringOutput("0202"))));
                    },
                    child: Text("0202 - Clear All Elements")),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StringOutput("0203"))));
                    },
                    child: Text(
                      "0203 - Check The Index Of element",
                      textAlign: TextAlign.center,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StringOutput("0204"))));
                    },
                    child: Text("0204 - Print Reversed List")),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StringOutput("0205"))));
                    },
                    child: Text("0205 - Add Element In List")),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StringOutput("0206"))));
                    },
                    child: Text("0206 - Check Length Of List")),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StringOutput("0207"))));
                    },
                    child: Text(
                      "0207 - Remove Last Element Of List",
                      textAlign: TextAlign.center,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
