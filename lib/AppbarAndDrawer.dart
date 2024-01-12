import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: Text("AppBar And Drawer"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
            Center(
              child: Text(
                "Home",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            Center(
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.login_outlined)),
            Center(
              child: Text(
                "Log-Out",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://in.pinterest.com/pin/493777546647904700/"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text("Header"),
              ),
              ListTile(
                leading: Icon(Icons.people),
                iconColor: Colors.deepPurple[400],
                textColor: Colors.black,
                title: Text("Your Profile"),
                hoverColor: Colors.red,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.deepPurple[400],
                textColor: Colors.black,
                title: Text("Settings"),
                hoverColor: Colors.blue[600],
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded),
                iconColor: Colors.deepPurple[400],
                textColor: Colors.red,
                title: Text("Log Out"),
                hoverColor: Colors.amber,
                // onTap: () {
                //   Navigator.pop(context);
                // },
                onLongPress: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 400,
              title: Text("Sliver"),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://picsum.photos/200/300",
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
