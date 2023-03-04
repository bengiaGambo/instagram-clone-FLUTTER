import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_screen/home_screen.dart';
import 'package:instagram_clone/screens/signup_screen/signup_screen.dart';

class GenerateRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        throw {};
    }
  }
}
