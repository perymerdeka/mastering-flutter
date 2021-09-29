import 'package:flutter/material.dart';

List<Color> myColor = [Colors.amber, Colors.blue, Colors.red];

class Homes extends StatelessWidget {
  const Homes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan ListView'),
        ),
        body: ListView.builder(
          
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(height: 300, width: 300, color: myColor[index]);
          },
        ));
  }
}
