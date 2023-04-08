import 'package:flutter/material.dart';
import 'package:hackathon_april/providers/mentor.dart';
import 'package:hackathon_april/screens/nav_bar_screen.dart';
import 'package:provider/provider.dart';
import 'theme.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => MentorList()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: basisTheme(),
        home: const NavigationBarScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
