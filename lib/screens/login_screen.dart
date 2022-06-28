import 'package:flutter/material.dart';
import 'package:task_1/widgets/bottom_screen.dart';
import 'package:task_1/widgets/input_field.dart';
import 'package:task_1/widgets/top_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopScreen(
              height: 100,
              isLogin: true,
            ),
            InputField(input: 'Phone Number'),
            BottomScreen(isLogin: true),
          ],
        ),
      ),
    );
  }
}
