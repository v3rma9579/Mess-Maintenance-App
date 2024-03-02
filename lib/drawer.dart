// ignore_for_file: unused_local_variable

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:learn/login.dart';
import 'package:learn/mail.dart';
import 'package:learn/menu.dart';
import 'package:learn/profile.dart';
import 'package:learn/test.dart';
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
    final Map<String, double> dataMap;

  // const PieChart({super.key, required this.dataMap});
    return TooltipVisibility(
      visible: false,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(""),
          backgroundColor: Colors.blue.shade600,
          
          actions: [
            IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
                icon: SizedBox(
                    width: 25, child: Image.asset('../../assets/power2.png'))),
          ],
        ),
        // body: Padding(
        //   padding: const EdgeInsets.all(2),
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(),
        //     height: 150,
        //     width: 150,
        //     decoration: const BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage("assets/man.png"),
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),

        // ),

        // body: const Center(
        //   child: PieChart(
        //     dataMap : {
        //       'Flutter' : 50,
        //       'React Native' : 30,
        //       'Ionic' : 20,
        //     }

        //   ),
        // ),
        
        drawerEnableOpenDragGesture: true,
        drawer: Drawer(
          semanticLabel: "",
          
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DrawerScreen())),
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                // onTap: () {},
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfilePage())),
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.currency_rupee),
                title: const Text("View Mess Bill"),
              ),
              ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailComposer())),
                leading: const Icon(Icons.mail),
                title: const Text("Raise Complaints"),
              ),
              ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const DrawerScreen())),
                leading: const Icon(Icons.feedback),
                title: const Text("Feedback"),
              ),
              ListTile(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MessMenu())),
                leading: SizedBox(
                  width: 30,
                  child: Image.asset(
                    '../../assets/menu.png',
                  ),
                ),
                title: const Text("Mess Menu"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.notifications),
                title: const Text("View Notice"),
              ),
              ListTile(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
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

class PieChart extends StatelessWidget {
  final Map<String, double> dataMap;

  const PieChart({super.key, required this.dataMap});
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
  }