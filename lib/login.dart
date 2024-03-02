import 'dart:ui';
import 'package:learn/drawer.dart';
// import 'package:learn/test.dart';

import 'components/textfield.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import "./admin.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 1,
            automaticallyImplyLeading: false,
            actions: [
              Center(
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  const DrawerScreen())),
                  child: const Text('Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const SizedBox(
                width: 35,
              ),
              Center(
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DrawerScreen())),
                  child: const Text('About',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const SizedBox(
                width: 35,
              ),
              Center(
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DrawerScreen())),
                  child: const Text('Services',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const SizedBox(
                width: 35,
              ),
              Center(
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DrawerScreen())),
                  child: const Text('Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )
            ]),
        body: // Text('Hi Harsh here')
            DecoratedBox(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('../assets/pic3.jpg'), fit: BoxFit.cover)),
          child: Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3.5,
                  sigmaY: 3.5,
                ),
                child: Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(colors: [
                        Colors.grey.shade50,
                        Colors.black12,
                        const Color.fromARGB(9, 89, 101, 113)
                      ], begin: Alignment.topRight)),
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                        height: 125,
                        width: 125,
                        child: Image(
                          image: AssetImage('../assets/bitlogo.png'),
                        )),
                    const Text(
                      "Mess Maintenance System",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    TextFieldd(
                        controller: username,
                        hintText: 'Enter Username',
                        ispassword: false),
                    TextFieldd(
                        controller: password,
                        hintText: 'Enter Password',
                        ispassword: true),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DrawerScreen())),
                        //  async {
                        //   try {
                        //     final credential = await FirebaseAuth.instance
                        //         .signInWithEmailAndPassword(
                        //             email: username.text, password: password.text);
                        //   } on FirebaseAuthException catch (e) {
                        //     if (e.code == 'user-not-found') {
                        //       print('No user found for that email.');
                        //     } else if (e.code == 'wrong-password') {
                        //       print('Wrong password provided for that user.');
                        //     }
                        //   }
                        //   print(username.text);
                        //   print(password.text);
                        // },
                        child: const Text('Login')),
                  ]),
                ),
              ),
            ),
          ),
        ));
  }
}
