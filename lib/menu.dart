// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MessMenu extends StatefulWidget {
  const MessMenu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MessMenuState createState() => _MessMenuState();
}

class _MessMenuState extends State<MessMenu> {
  // Initial Selected Value
  List<String> items = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thurday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  String currentItem = "";
  @override
  void initState() {
    currentItem = items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.blue.shade600,
      ),
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Today's Mess Menu",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 4,
            ),
            const SizedBox(height: 40),
            DropdownButton(
              value: currentItem,
              alignment: Alignment.topLeft,
              items: items
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (String? value) => setState(
                () {
                  if (value != null) currentItem = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
