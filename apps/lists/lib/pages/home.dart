import 'package:flutter/material.dart';

/// List of Widget
List<Widget> myList = [
  Container(
    height: 300,
    width: 300,
    color: Colors.red,
  ),
  Container(
    height: 300,
    width: 300,
    color: Colors.blue,
  ),
  Container(
    height: 300,
    width: 300,
    color: Colors.green,
  ),
  Container(
    height: 300,
    width: 300,
    color: Colors.amber,
  ),
  Text('Ini adalah Text')
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan ListView'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: myList,
      ),
    );
  }
}
