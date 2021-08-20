## ListView dan ListView.builder

### ListView

`ListView` biasa digunakan untuk membuat *children* (kumpulan widget) menjadi *Scrollable* atau dapat di scroll

contoh kodenya seperti ini


```dart
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan ListView'),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.green,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
```

![contoh list view](docs/listview.png)

### Beberapa Property yang sering dipakai di ListView

ada beberapa property yang sering dipake di listview diantaranya

* `scrollDirection`


**ScrollDirecction**

contoh kodenya seperti ini

```dart
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan ListView'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.green,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
```

outputnya seperti ini

![scroll dirextion](docs/haorzontal.png)