import 'package:flutter/material.dart';
import 'package:new_project/Alertbox.dart';
import 'package:new_project/AppbarAndDrawer.dart';
import 'package:new_project/Buttons.dart';
import 'package:new_project/Container.dart';
import 'package:new_project/DateandTimePicker.dart';
import 'package:new_project/FlutterResult.dart';
import 'package:new_project/GridView.dart';
import 'package:new_project/Images.dart';
import 'package:new_project/Listview.dart';
import 'package:new_project/RadioButtonAndCheckBox.dart';
import 'package:new_project/RowAndColumn.dart';
import 'package:new_project/Stack.dart';

class FlutterScreen extends StatelessWidget {
  const FlutterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Exrecise")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FlutterRes(),
                          ),
                        );
                      },
                      child: Text("TextField"))),
              SizedBox(
                height: 10,
              ),
              // Container(
              //     width: 210,
              //     child: ElevatedButton(
              //         onPressed: () {}, child: Text("TextFormField"))),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RowAndColumns(),
                          ),
                        );
                      },
                      child: Text("Row And Column"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContainerDemo(),
                            ));
                      },
                      child: Text("Container"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AppDrawer(),
                            ));
                      },
                      child: Text("Appbar"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAlertbox()),
                        );
                      },
                      child: Text("Alertbox"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("PopupMenu"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RadioCheckbox(),
                            ));
                      },
                      child: Text("Checkbox"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mybuttons(),
                            ));
                      },
                      child: Text("Button"))),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 210,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimeDatepicker(),
                          ));
                    },
                    child: Text(
                      "DatePicker And TimePicker",
                      textAlign: TextAlign.center,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Drawer"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GridsView(),
                            ));
                      },
                      child: Text("GridView"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Listviewbuilders()));
                      },
                      child: Text("Listview"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Passing Data"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Radio Button"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Slider"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Sliver"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Snackbar"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => iStack(),
                            ));
                      },
                      child: Text("Stack"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Switch"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Validation"))),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 210,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Myimage(),
                            ));
                      },
                      child: Text("Images"))),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
