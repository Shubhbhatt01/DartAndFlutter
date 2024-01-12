import 'package:flutter/material.dart';

class GridsView extends StatelessWidget {
  const GridsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        //scrollDirection:Axis.horizontal,
        children: List.generate(25, (id) {
          return Container(
            height: 200,
            width: 200,
            color: Colors.orange,
            child: Center(child: Text("Container:$id")),
          );
        }),
      ),
    );
  }
}
