import 'package:flutter/material.dart';
import 'package:simple_api/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // call model
  UserModel? userModel;

  // model process initialize
  String output = "tidak ada data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan API"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(output),
              ElevatedButton(
                onPressed: () {
                  UserModel.getUsers('1').then((users) {
                    output = '';
                    for (int i= 0; i < users.length; i++)
                      output = output + "[ " + users[i].name.toString() + " ] ";
                    setState(() {});
                  });
                },
                child: Text("GET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
