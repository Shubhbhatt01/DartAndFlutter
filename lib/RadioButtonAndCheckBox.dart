import 'package:flutter/material.dart';

class RadioCheckbox extends StatefulWidget {
  const RadioCheckbox({super.key});

  @override
  State<RadioCheckbox> createState() => _RadioCheckboxState();
}

class _RadioCheckboxState extends State<RadioCheckbox> {
  @override
  String _gropValue = "";
  bool? value1 = false;
  bool? value2 = false;
  bool Switchvar1 = false;
  bool Switchvar2 = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buttons",
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            offset: Offset(0, 40),
            clipBehavior: Clip.hardEdge,
            icon: Icon(Icons.settings),
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Priview",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Are You Aware About This?",
              style: TextStyle(fontSize: 22, color: Colors.amber),
            ),
            Transform.scale(
              scale: 1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      value: "Yes",
                      groupValue: _gropValue,
                      onChanged: (newvalue) {
                        setState(() {
                          _gropValue = "Yes";
                        });
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Radio(
                      value: "No",
                      groupValue: _gropValue,
                      onChanged: (newvalue) {
                        setState(() {
                          _gropValue = "No";
                        });
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Do You Like Cricket?",
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: value1,
                    onChanged: (bool? newvalue) {
                      setState(() {
                        value1 = newvalue;
                      });
                    }),
                Text(
                  "Yes",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Checkbox(
                    value: value2,
                    onChanged: (bool? newvalue) {
                      setState(() {
                        value2 = newvalue;
                      });
                    }),
                Text(
                  "No",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Slider(value: value, onChanged: onChanged)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Blutooth",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1,
                  child: Switch(
                      activeColor: Colors.blueAccent,
                      activeTrackColor: Colors.red,
                      inactiveThumbColor: Colors.white,
                      value: Switchvar1,
                      onChanged: (bool Newvalue) {
                        setState(() {
                          Switchvar1 = Newvalue;
                        });
                      }),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "WiFi",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1,
                  child: Switch(
                      activeColor: Colors.purple,
                      activeTrackColor: Colors.lightGreen,
                      inactiveThumbColor: Colors.white,
                      value: Switchvar2,
                      onChanged: (bool Newvalue) {
                        setState(() {
                          Switchvar2 = Newvalue;
                        });
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
