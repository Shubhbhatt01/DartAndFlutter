import 'package:flutter/material.dart';

class iStack extends StatelessWidget {
  const iStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stacks"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          //fit: StackFit.expand,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            Positioned(
              top: 100,
              left: 45,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ),
            Positioned(
                top: 140,
                left: 90,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.lightBlue,
                )),
            Positioned(
                top: 180,
                left: 135,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.brown,
                ))
          ],
        ),
      ),
    );
  }
}
