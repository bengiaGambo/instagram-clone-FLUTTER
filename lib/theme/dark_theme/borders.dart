import 'package:flutter/material.dart';

class MyBorder {
  OutlineInputBorder focussedTextField() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none);
  }

  OutlineInputBorder borderTextField() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none);
  }
}
