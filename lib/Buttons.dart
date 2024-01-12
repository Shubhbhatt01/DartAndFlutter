import 'package:flutter/material.dart';

class Mybuttons extends StatefulWidget {
  const Mybuttons({super.key});

  @override
  State<Mybuttons> createState() => _MybuttonsState();
}

class _MybuttonsState extends State<Mybuttons> {
  @override
  double value1 = 0;
  //double value2=0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text("You Clicked The Elevated Button!!"),
                    action: SnackBarAction(
                      label: "Okay",
                      onPressed: () {},
                      textColor: Colors.amber,
                    ),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.blue,
                    duration: Duration(seconds: 7),
                    margin: EdgeInsets.all(10),
                    elevation: 20,
                    showCloseIcon: true,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("Elevated Button")),
            SizedBox(
              height: 10,
            ),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(onPressed: () {}, child: Text("outlined Button")),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton.large(
                tooltip: "Floating Action Button",
                onPressed: () {},
                child: Text(
                  "Floating Button",
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 20,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  //size: 30,
                )),
            Text(
              "Volume",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Slider(
                value: value1,
                allowedInteraction: SliderInteraction.tapAndSlide,
                inactiveColor: Colors.amber,
                activeColor: Colors.blue,
                min: 0,
                max: 100,
                divisions: 100,
                label: value1.toString(),
                onChanged: (double Newvalue) {
                  setState(() {
                    value1 = Newvalue;
                  });
                })
          ],
        ),
      ),
    );
  }
}
