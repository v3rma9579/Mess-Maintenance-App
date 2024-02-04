import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: TextButton(
          child: const Text('Back'),
          onPressed: () => Navigator.pop(context),
        )),
        body: const Center(child: Text('Logout Successfully')));
  }
}
