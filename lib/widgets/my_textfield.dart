import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final double height;
  final bool isTest;
  const MyTextField({super.key, this.height = 0, this.isTest = false});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isTest ? widget.height : null,
      child: const TextField(
        decoration: InputDecoration(),
        maxLines: 1,
        autocorrect: false,
        enableInteractiveSelection: false,
      ),
    );
  }
}
