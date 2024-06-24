import 'package:flutter/material.dart';
import 'package:traverse/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traverse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Sofia' 'Sofia_Regular',
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontFamily: 'Sofia_Regular'),
          bodyMedium: TextStyle(fontFamily: 'Sofia'),
          bodyLarge: TextStyle(fontFamily: 'Sofia'),
        ),
      ),
      home: const WelcomePage(),
    );
  }
}
