import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String data = "Belum ada data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(text: TextSpan(text: 'Dialog')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Delete This Item'),
                  content: Text('Are You Sure to Delete This Item'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            data = "Input Yes";
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('Yes')),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          data = "input No";
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text('No'),
                    )
                  ],
                );
              });
        },
        child: Icon(Icons.delete),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
