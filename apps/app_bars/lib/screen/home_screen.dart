import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        leading: Container(
          color: Colors.amber,
        ),
        leadingWidth: 50,
        actions: [
          Container(
            width: 50,
            color: Colors.red,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: Container(
            width: 100,
          ),
        ),
        flexibleSpace: Container(
          height: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}
