import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile Example'),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(20),
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
            onTap: () {
              return; 
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('feri Lukmansyah'),
            subtitle: Text('Orangnya Ganteng'),
            leading: CircleAvatar(),
            trailing: Text('10:20'),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
