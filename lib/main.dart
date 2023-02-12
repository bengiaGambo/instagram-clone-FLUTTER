import 'package:flutter/material.dart';
import 'package:instagram_clone/loginScreen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _darkTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
      outlineBorder: BorderSide.none,
      fillColor: Colors.grey,
      filled: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: _darkTheme,
      home: const LoginScreen(),
    );
  }
}
