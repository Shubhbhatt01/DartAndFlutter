import 'package:flutter/material.dart';
import 'package:new_project/Project.dart';

void main() {
  runApp(Project());
}

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Work In Dart And Flutter",
      home: Projects(),
    );
  }
}
