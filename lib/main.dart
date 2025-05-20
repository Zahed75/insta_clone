import 'package:flutter/material.dart';
import 'package:insta_clone/Screen/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.redAccent,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 221, 68, 68),
          foregroundColor: Colors.white,
        ),
      ),
      home: Home(),
    );
  }
}
