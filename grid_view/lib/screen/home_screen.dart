import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Container> mycolors = List.generate(100, (index) {
    return Container(
      width: 150,
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Sample'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4.0,
          childAspectRatio: 4 / 4 /// Cross = lebar, main = Tinggi
        ),
        children: mycolors,
      ),
    );
  }
}
