import "package:flutter/material.dart"; // widgets such as container div hai
import "./login.dart";

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...
void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
