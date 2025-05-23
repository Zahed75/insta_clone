import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Screen/home/auth.dart';
import 'package:insta_clone/Screen/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent, // Set default button color
            foregroundColor: Colors.white, // Optional: text/icon color
          ),
        ),
        useMaterial3: true,
      ),

      home: AuthenticationWidget(),
    );
  }
}
