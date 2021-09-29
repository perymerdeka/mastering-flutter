### Penggunaan Statefull widget

contoh penggunaan statefull widget, Statefull widget digunakan untuk mengupdate suatu UI atau tampilan contoh penggunaan nya seperti ini

```dart
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
```

outputnya seperti ini

![contoh penggunaan statefull widget](docs/result.png)

### Dokumentasi

* https://flutter.dev/docs/development/ui/interactive



---
[Extract Widget](../ext_widget/README.md) <> [Mapping List](../mapping/README.md)