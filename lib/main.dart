import 'package:flutter/material.dart';
import 'package:hackathon_april/screens/home_screen.dart';
import 'package:hackathon_april/screens/nav_bar_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: basisTheme(),
      home: const NavigationBarScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
