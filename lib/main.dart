


import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/core/theme/theme.dart';
import 'package:riverpod_tutorial/feature/auth/view/pages/signup_page.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context ) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: SignupPage(),
    );
  }
}