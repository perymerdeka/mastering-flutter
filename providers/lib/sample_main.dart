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
          backgroundColor: Colors.black,
          title: Text(
            'Latihan Provider',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                color: Colors.lightBlue,
                duration: Duration(milliseconds: 500),
                margin: EdgeInsets.all(5.0),
                height: 100,
                width: 100,
              ),
              Container(
                child: Text('AB'),
              ),
              Switch(value: true, onChanged: (value) {}),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Text('LB'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
