import 'package:flutter/material.dart';
import 'package:learn/login.dart';
// import 'package:learn/test.dart';
// import 'package:web_dashboard_app_tut/screens/test.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return DrawerScreenState();
  }
}

class DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return TooltipVisibility(
      visible: false,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(""), backgroundColor: Colors.blue.shade600,
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login())),
                icon: SizedBox(
                    width: 25,
                    child: Image.asset('../../assets/power2.png')))
          ],
        ),
        body: Container(
          // color: Colors.red,
          height: 400,
          width: 400,
          margin: const EdgeInsets.all(30),
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text('Student Dashboard\nWelcome SHUBHAM VERMA, Love to see you again.')
          ),
        ),
        drawer: Drawer(
          semanticLabel: "hello",
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      height: 100,
                      child: Image.asset('../../assets/logo.png'),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: const Text(
                        'Mess Maintenance',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.currency_rupee),
                title: const Text("View Mess Bill"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.mail),
                title: const Text("Raise Complaints"),
              ),
              ListTile(
                onTap: () {},
                leading:  SizedBox(width: 30,child: Image.asset('../../assets/menu.png',),),
                title: const Text("Mess Menu"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.notifications),
                title: const Text("View Notice"),
              ),
              ListTile(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login())),
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
