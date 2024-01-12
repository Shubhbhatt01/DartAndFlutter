import 'package:flutter/material.dart';
import 'package:new_project/Calc.dart';
import 'package:new_project/Ifelse.dart';
import 'package:new_project/List%20Exercise.dart';
//import 'package:new_project/Loop.dart';
import 'package:new_project/String%20Exercise.dart';

class DartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Of Dart Exercise",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => StringExercise())));
                  },
                  child: Text("01 - String")),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ListExercise())));
                    },
                    child: Text("02 - List"))),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Calculators(),
                          ));
                    },
                    child: Text("03 - Operator"))),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IfElses(),
                        ));
                  },
                  child: Text(
                    "04 - Conditional Statement",
                    textAlign: TextAlign.center,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //     width: 200,
            //     child: ElevatedButton(
            //         onPressed: () {}, child: Text("05 - Switch"))),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     width: 200,
            //     child: ElevatedButton(
            //         onPressed: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => Loops(),
            //               ));
            //         },
            //         child: Text("06 - loop"))),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     width: 200,
            //     child: ElevatedButton(
            //         onPressed: () {}, child: Text("07 - For-In-Each"))),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     width: 200,
            //     child: ElevatedButton(
            //         onPressed: () {}, child: Text("08 - Mix Exercise"))),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   width: 200,
            //   child: ElevatedButton(
            //       onPressed: () {},
            //       child: Text(
            //         "09 - Class And Objects",
            //         textAlign: TextAlign.center,
            //       )),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     width: 200,
            //     child:
            //         ElevatedButton(onPressed: () {}, child: Text("10 - Map"))),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     width: 200,
            //     child: ElevatedButton(
            //         onPressed: () {}, child: Text("11 - Inharitance"))),
          ],
        ),
      ),
    );
  }
}
