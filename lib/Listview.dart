import 'package:flutter/material.dart';

class Listviewbuilders extends StatelessWidget {
  //const Listviewbuilders({super.key});
  List<String> Values = [
    "1.Virat Kohli",
    "2.Rohit Sharma",
    "3.Shubhman Gill",
    "4.Suryakumar Yadav",
    "5.Ravindra Jadeja",
    "6.Mohamad Shami",
    "7.Jasprit Bumrah",
    "8.Mohamad Siraj",
    "9.Kuldip Yadav",
    "10.Hardik Pandya",
    "11.Lokesh Rahul",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Builder"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: Values.length,
            itemBuilder: (context, mindex) {
              return Card(
                color: Colors.pinkAccent,
                child: ListTile(
                  title: Text(Values[mindex]),
                  leading: Icon(Icons.person),
                ),
              );
            }));
  }
}
