import 'package:flutter/material.dart';

class MyAlertbox extends StatelessWidget {
  const MyAlertbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertbox"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext) {
                    return AlertDialog(
                      title: Text("Are You Sure You Want To Quit?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("No"))
                      ],
                    );
                  });
            },
            child: Text("Exit The Application")),
      ),
    );
  }
}
