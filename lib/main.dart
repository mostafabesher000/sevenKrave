import 'package:flutter/material.dart';
import 'package:task_1/screens/login_screen.dart';
import 'package:task_1/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterScreen(),
    );
  }
}
