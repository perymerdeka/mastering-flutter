import 'package:flutter/material.dart';
import 'package:simple_api/post_result_model.dart';

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
              Text((postResult != null)
                  ? postResult!.id.toString() +
                      ' | ' +
                      postResult!.name.toString() +
                      ' | ' +
                      postResult!.job.toString() +
                      ' | ' +
                      postResult!.created.toString()
                  : 'tidak ada tdata'),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI('feri', 'fullstack dev')
                      .then((value) => postResult = value);
                  setState(() {});
                },
                child: Text("POST"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
