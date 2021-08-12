import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Row dan Column"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Widget 1"), Text("widget 2"), Text("Widget 3")],
        ),
      ),
    );
  }
}
