import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Sample'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('$counter', style: TextStyle(fontSize: 20.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                if (counter != 1) {
                 setState(() {
                    counter--;
                 });
                }
              }, child: Icon(Icons.remove)),
              ElevatedButton(onPressed: () {
                setState(() {
                  counter++;
                });
              }, child: Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}