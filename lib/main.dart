import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_screen/home_screen.dart';
import 'package:instagram_clone/theme/dark_theme/dark_theme.dart';
import 'package:instagram_clone/utils/handle_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: DarkTheme().darkTheme,
      home: const HomeScreen(),
      onGenerateRoute: GenerateRoute.generateRoute,
    );
  }
}
