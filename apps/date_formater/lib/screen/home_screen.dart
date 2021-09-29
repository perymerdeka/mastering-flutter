import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Format'),
      ),
      body: Center(
        child: Text(DateFormat.yMMMEd().add_Hms().format(DateTime.now()),style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
