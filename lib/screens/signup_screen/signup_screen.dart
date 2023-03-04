import 'package:flutter/material.dart';
import 'package:instagram_clone/custom_widgets/add_custom_space.dart';
import 'package:instagram_clone/custom_widgets/my_textfield.dart';

import '../../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loginButtonEnabled = false;
  bool isUsername = true;
  bool isEmail = false;
  bool isPassword = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //Enter username
            Visibility(
              visible: isUsername,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    //Choose user name
                    Text('Choose a username',
                        style: Theme.of(context).textTheme.labelLarge),
                    const AddVerticalSpace(height: 24),
                    Text('You can always change it later.',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: greyText)),

                    const AddVerticalSpace(height: 24),
                    //text fields
                    MyTextField(
                        controller: _userNameController, hintText: 'Username'),
                    const AddVerticalSpace(height: 12),
                    //login button
                    ElevatedButton(
                        onPressed: loginButtonEnabled ? () {} : null,
                        child: const Text('Next')),
                  ],
                ),
              ),
            ),
            //enter password
            Visibility(
              visible: isPassword,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    //Choose user name
                    Text('Create a password',
                        style: Theme.of(context).textTheme.labelLarge),
                    const AddVerticalSpace(height: 24),
                    Text(
                        'For security, your password must be 6 characters or more.',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: greyText)),

                    const AddVerticalSpace(height: 24),
                    //text fields
                    MyTextField(
                        controller: _passwordController, hintText: 'Password'),
                    const AddVerticalSpace(height: 12),
                    //login button
                    ElevatedButton(
                        onPressed: loginButtonEnabled ? () {} : null,
                        child: const Text('Next')),
                  ],
                ),
              ),
            ),
            //enter email
            Visibility(
              visible: isEmail,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    //Choose user name
                    Text('Enter your email',
                        style: Theme.of(context).textTheme.labelLarge),
                    const AddVerticalSpace(height: 24),
                    Text('use email to login',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: greyText)),

                    const AddVerticalSpace(height: 24),
                    //text fields
                    MyTextField(
                        controller: _emailController, hintText: 'Email'),
                    const AddVerticalSpace(height: 12),
                    //login button
                    ElevatedButton(
                        onPressed: loginButtonEnabled ? () {} : null,
                        child: const Text('Next')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
