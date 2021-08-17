### Visible dan Invisible Widget

#### Visible

atau widget yang bisa ditampilkan atau yang terlihat/terdisplay

contoh

* Text
* Container
* Table

dan masih banyak lain nya cek di [https://flutter.dev/docs/development/ui/widgets](https://flutter.dev/docs/development/ui/widgets)

#### Invisible

widget yang tidak terlihat atau biasa disebut `Layouting/Controling Widget`

**Stack**

digunakan untuk menyusin widget ke depan (menumpuk)

contoh

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh Stack'),),
      body: Stack(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.green,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.orange,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.purple,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
```

hasilnya seperti ini

![widget stack](docs/stack.png)

---
[Statefull vs Stateless](../states/README.md)  <> [List View]()

