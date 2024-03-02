import 'package:flutter/material.dart';

class TextFieldd extends StatefulWidget {
  final controller;
  final hintText;
  final ispassword;
  TextFieldd({this.controller, this.hintText,this.ispassword});
  @override
  State<StatefulWidget> createState() {
    return TextFieldState();
  }
}

class TextFieldState extends State<TextFieldd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 350,
      child: TextFormField(
        obscureText: widget.ispassword,
        controller: widget.controller,
        decoration: InputDecoration(
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
            border: const OutlineInputBorder(), labelText: widget.hintText),
      ),
    );
  }
}
