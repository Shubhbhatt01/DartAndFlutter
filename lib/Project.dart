import 'package:flutter/material.dart';
import 'package:new_project/DartScreen.dart';
import 'package:new_project/FlutterScreen.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Work Of Dart And Flutter In One",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 210,
                    width: 180,
                    child: Image.asset(
                      "assets/images/DartLogo.png",
                      height: 400,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DartScreen())));
                      },
                      child: Text("Dart Exercise")),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 190,
                      width: 180,
                      child: Image(
                        image: AssetImage('assets/images/fluter.png'),
                        height: 20,
                        width: 20,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => FlutterScreen()),
                            ));
                      },
                      child: Text("Flutter Exercise")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
