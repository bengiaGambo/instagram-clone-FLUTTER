import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  const MyTextField({super.key, this.hintText = '', required this.controller});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: widget.hintText),
      maxLines: 1,
      autocorrect: false,
      cursorColor: Colors.white,
      cursorWidth: 0.5,
      cursorHeight: 20,
    );
  }
}
