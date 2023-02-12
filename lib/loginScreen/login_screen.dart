import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset('assets/instagram_logo.png'),
            MyTextField(
              height: 44,
              isTest: true,
            ),
            MyTextField(),
          ],
        ),
      ),
    );
  }
}
