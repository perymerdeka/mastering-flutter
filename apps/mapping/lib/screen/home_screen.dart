import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> mylist = [
    {
      'name': 'feri',
      'age': 20,
      'favColor': [
        'Red',
        'Green',
        'Blue',
        'Purple',
        'Black',
        'White',
        'Purple',
        'Black',
        'White',
      ]
    },
    {
      'name': 'Lukman',
      'age': 21,
      'favColor': [
        'Purple',
        'Black',
        'White',
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping List'),
      ),
      body: ListView(
          children: mylist.map((e) {
        List<dynamic> favColor = e['favColor'];
        return Card(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Column(
                    children: [Text('${e["name"]}'), Text('${e["age"]}')],
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: favColor.map((color) {
                    return Container(
                      color: Colors.amber,
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      padding: EdgeInsets.all(8),
                      child: Text('$color'),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        );
      }).toList()),
    );
  }
}
