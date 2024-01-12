import 'package:flutter/material.dart';

class FlutterRes extends StatefulWidget {
  const FlutterRes({super.key});

  @override
  State<FlutterRes> createState() => _FlutterResState();
}

class _FlutterResState extends State<FlutterRes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Results"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 200, right: 200),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  hintStyle: TextStyle(color: Colors.red),
                  labelText: 'Name',
                  icon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 900,
              child: TextField(
                decoration: InputDecoration(
                    label: Text('Email'),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    helperText: 'Email Address',
                    hintText: "Enter Your Email",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
