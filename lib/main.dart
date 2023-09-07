// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/profile_page.dart';
import 'pages/skeleton_page.dart';
import 'pages/signup_page.dart';
import 'theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/loginpage': (context) => LoginPage(),
        '/skeletonpage': (context) => const SkeletonPage(),
        '/settingspage': (context) => const ProfilePage(),
      },
    );
  }
}
