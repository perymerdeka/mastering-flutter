import 'package:flutter/material.dart';
import 'package:nav_named/screen/home.dart';
import 'package:nav_named/screen/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/profile': (context) => const Profile()
      },
    );
  }
}
