import 'package:flutter/material.dart';
import 'package:simple_api/post_result_model.dart';
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
  PostResult? postResult;
  UserModel? userModel;

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
              Text((userModel != null)
                  ? userModel!.id.toString() +
                      ' | ' +
                      userModel!.name.toString()
                  : 'tidak ada data'),
              RaisedButton(
                onPressed: () {
                  UserModel.connectToAPI('1')
                      .then((value) => userModel = value);
                  setState(() {});
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
