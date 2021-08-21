import 'package:flutter/material.dart';

List<Color> myColor = [Colors.amber, Colors.blue, Colors.red];

class SeparatorView extends StatelessWidget {
  const SeparatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Separate ListView'),
      ),
      body: ListView.separated(
        itemCount: myColor.length,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            height: 300,
            color: myColor[index],
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 20,
          );
        },
      ),
    );
  }
}
