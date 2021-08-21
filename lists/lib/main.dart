import 'package:flutter/material.dart';
import 'package:lists/pages/generator.dart';
import 'package:lists/pages/separator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListGeneratorView(),
    );
  }
}