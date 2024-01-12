import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  const Myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Images",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/images/shubh.jpg")),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                height: 150,
                width: 150,
                child: Image.network("https://picsum.photos/200")),
          ],
          
        ),
      ),
    );
  }
}
