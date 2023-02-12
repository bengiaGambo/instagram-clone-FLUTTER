import 'package:flutter/material.dart';
import 'package:instagram_clone/custom_widgets/add_vertical_space.dart';
import 'package:instagram_clone/custom_widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loginButtonEnabled = false;
  final TextEditingController _password = TextEditingController();
  final TextEditingController _loginInfo = TextEditingController();

  @override
  void dispose() {
    _password.dispose();
    _loginInfo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  //logo
                  Image.asset('assets/instagram_logo.png'),
                  const AddVerticalSpace(height: 40),
                  //text fields
                  MyTextField(
                      controller: _loginInfo,
                      hintText: 'Phone number, email or username'),
                  const AddVerticalSpace(height: 12),
                  MyTextField(controller: _password, hintText: 'Password'),
                  const AddVerticalSpace(height: 19),
                  //login button
                  ElevatedButton(
                      onPressed: loginButtonEnabled ? () {} : null,
                      child: const Text('Log in')),
                  const AddVerticalSpace(height: 12),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Forgot your login details? ',
                          style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(
                          text: ' Get help logging in.',
                          style: Theme.of(context).textTheme.labelSmall),
                    ]),
                  ),
                ],
              ),
            ),
            Flexible(child: Container()),
            Divider(height: 1, color: Colors.grey[600]),
            const AddVerticalSpace(height: 16),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Don't have an account? ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' Sign up.',
                    style: Theme.of(context).textTheme.labelSmall),
              ]),
            ),
            const AddVerticalSpace(height: 16),
          ],
        ),
      ),
    );
  }
}
