import 'package:flutter/material.dart';
import 'package:udemy_final_project/screens/home_screen.dart';
import 'package:udemy_final_project/theme/elevated_button_theme.dart';

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
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(style: customButtonStyle),
      ),
      home: const HomeScreen(),
    );
  }
}
